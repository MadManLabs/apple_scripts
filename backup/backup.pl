#!/usr/bin/perl

use Getopt::Long;
use strict;
use warnings;
use Sys::Syslog;

openlog("backup: ", "pid", "LOG_LOCAL6" );

my $network ='';
my $restore = '';
my $incremental = '';
my $help = '';
my $timeout = 0;
if(!GetOptions("help" => \$help, "network=s" => \$network, "restore" => \$restore, "timeout:i" => \$timeout, "incremental" => \$incremental)){
			
}
if(($restore && $incremental)||($help)){
	die "Usage backup.pl [Options]\
           --network:   Check if your on local network, so it uses internal ip-adresses.\
           --restore:   Put a backup back, not to be used in conjuction with incremental \
           --timeout:   Number of seconds before checked wich network your on, this is for when your computer comes out of sleep\
                        it gives your network card some time to init and logon to the network.\
           --incremental: This does a incremental backup, it shifts everything on the remote server by calling \$incremental_command.\
           --help       Displays this message.";	
}
if($timeout){
	sleep($timeout);
}

my $client = "/Users/freekkalter/";
my $server = "fkalter\@amsterdam";
my $server_external = "fkalter\@kalter.dnsalias.org";
my $folder_root = "/home/fkalter/macBackup/";
my $folder = $folder_root . "macBackup.0/";

# my $server="fkalter\@192.168.2.4:/home/fkalter/macBackup/";

my $excludes="/Users/freekkalter/Library/Scripts/backup/excludes";
my $sshkey="/Users/freekkalter/Library/Scripts/backup/id_rsa";
`/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -I` =~ / SSID: (\w*)/;
my $current_network = $1;

my $rsync = "/usr/bin/rsync";
my $options = "--verbose --ignore-errors --stats --compress --recursive --times --perms --links --human-readable";
my $backup_options =  "$options --delete --exclude-from=$excludes --delete-excluded";
my $restore_options = "$options";

my $incremental_command = "/home/fkalter/scripts/incremental_prepare.pl $folder_root macBackup";

if($network){
	if(($network eq $current_network) or ($network eq "cable")){
		if($restore){
			call_it("$rsync -e \"ssh -i $sshkey\" $restore_options $server:$folder $client", "restore");
		}else{
			if($incremental){
				 print `ssh $server '$incremental_command'`; #ssh into server and prepare incremental backup
			}
			call_it("$rsync -e \"ssh -i $sshkey\" $backup_options $client $server:$folder","backup");			
		}
	}else{syslog("notice", "Not on $network\n");}
	
}else{if($restore){
	call_it("$rsync -e \"ssh -i $sshkey\" $restore_options $server_external:$folder $client", "restore");
}else{
	if($incremental){
		 print `ssh $server_external '$incremental_command'`; #ssh into server and prepare incremental backup
	}
	call_it("$rsync -e \"ssh -i $sshkey\" $backup_options $client $server_external:$folder", "backup");
}}				

closelog();

sub call_it{
	my ($command, $action) = @_;
	syslog("notice", "$action started\n");
# 	my $output = `$command`;

	if(my $ret_code = system($command)){
		syslog("notice", "rsync-$action failed with code: $ret_code\n");
	}else{
		syslog("notice", "$action succeeded\n");
	}
}
