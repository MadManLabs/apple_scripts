FasdUAS 1.101.10   ��   ��    k             l      �� ��   
Sample Rule Action Script

Copyright � 2003 Apple Computer, Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
       	  l     ������  ��   	  
  
 l      �� ��   ��
This script is an example of how to write an AppleScript that can be
attached as a rule action. See Mail Help for details and Mail's 
AppleScript dictionary for the full terminology for the 'perform mail
action with messages' handler.

If you attach this script to a rule action, and the rule
matches an incoming message, a dialog box will display, showing
the name of the rule that matched and the subject of the message
that matched. One dialog per matched message will appear.

This is also an example of how you can write scripts that appear in the
Scripts menu and can pass in parameters for the selected messages and/or
mailboxes in Mail's main viewer window.
         l     ������  ��     ��  w          i         I     ��  
�� .emalcpmanull���   @ mssg  o      ���� 0 themessages theMessages  �� ��
�� 
pmar  o      ���� 0 therule theRule��    O     y    k    x       r        b        b    	   !   b     " # " m     $ $ � �This AppleScript is intended to be used as an AppleScript rule action, but is also an example of how to write scripts that act on a selection of messages or mailboxes.    # o    ��
�� 
ret  ! o    ��
�� 
ret   m   	 
 % % ^ XTo view this script, hold down the option key and select it again from the Scripts menu.     o      ���� 0 thetext theText   & ' & X    X (�� ) ( k    S * *  + , + r    # - . - n    ! / 0 / 1    !��
�� 
subj 0 o    ���� 0 eachmessage eachMessage . o      ���� 0 
thesubject 
theSubject ,  1�� 1 Q   $ S 2 3�� 2 k   ' J 4 4  5 6 5 l  ' '�� 7��   7 6 0 If this is not being executed as a rule action,    6  8 9 8 l  ' '�� :��   : 6 0 getting the name of theRule variable will fail.    9  ; < ; r   ' , = > = n   ' * ? @ ? 1   ( *��
�� 
pnam @ o   ' (���� 0 therule theRule > o      ���� 0 therulename theRuleName <  A B A r   - 4 C D C b   - 2 E F E b   - 0 G H G m   - . I I  The rule named '    H o   . /���� 0 therulename theRuleName F m   0 1 J J  ' matched this message:    D o      ���� 0 thetext theText B  K L K r   5 @ M N M b   5 > O P O b   5 < Q R Q b   5 : S T S b   5 8 U V U o   5 6���� 0 thetext theText V o   6 7��
�� 
ret  T o   8 9��
�� 
ret  R m   : ; W W  	Subject:     P o   < =���� 0 
thesubject 
theSubject N o      ���� 0 thetext theText L  X Y X I  A F�� Z��
�� .sysodlogaskr        TEXT Z o   A B���� 0 thetext theText��   Y  [�� [ r   G J \ ] \ m   G H ^ ^       ] o      ���� 0 thetext theText��   3 R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  �� 0 eachmessage eachMessage ) o    ���� 0 themessages theMessages '  _�� _ Z   Y x ` a���� ` >  Y ^ b c b o   Y Z���� 0 thetext theText c m   Z ] d d       a I  a t�� e f
�� .sysodlogaskr        TEXT e o   a b���� 0 thetext theText f �� g h
�� 
btns g J   e j i i  j�� j m   e h k k  OK   ��   h �� l��
�� 
dflt l m   m n���� ��  ��  ��  ��    m       �null     � ��  �6Mail.appD���p���1�$��Հ��0� �L��   )       �� �0� �����emal  alis    ,  Home                       �Q�H+    �6Mail.app                                                        ��3 �        ����  	                build     ��Y      �3co      �6  Home:build:Mail.app     M a i l . a p p  
  H o m e  /build/Mail.app   /Volumes/Home    ��  ��       �� m n��   m ��
�� .emalcpmanull���   @ mssg n �� ���� o p��
�� .emalcpmanull���   @ mssg�� 0 themessages theMessages�� ������
�� 
pmar�� 0 therule theRule��   o �������������� 0 themessages theMessages�� 0 therule theRule�� 0 thetext theText�� 0 eachmessage eachMessage�� 0 
thesubject 
theSubject�� 0 therulename theRuleName p   $�� %���������� I J W�� ^���� d�� k����
�� 
ret 
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
subj
�� 
pnam
�� .sysodlogaskr        TEXT��  ��  
�� 
btns
�� 
dflt�� �� z� v��%�%�%E�O I�[��l kh ��,E�O (��,E�O�%�%E�O��%�%�%�%E�O�j O�E�W X  h[OY��O�a  �a a kva ka  Y hU ascr  ��ޭ