FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
	Author: 		Freek Kalter
	Date:			01-03-2010
	Description:	This script syncs the playlist Phone_music with my phone. The phone is recongized by its name when connected. The script is triggered by a watcpath in launchd.
     � 	 	� 
 	 A u t h o r :   	 	 F r e e k   K a l t e r 
 	 D a t e : 	 	 	 0 1 - 0 3 - 2 0 1 0 
 	 D e s c r i p t i o n : 	 T h i s   s c r i p t   s y n c s   t h e   p l a y l i s t   P h o n e _ m u s i c   w i t h   m y   p h o n e .   T h e   p h o n e   i s   r e c o n g i z e d   b y   i t s   n a m e   w h e n   c o n n e c t e d .   T h e   s c r i p t   i s   t r i g g e r e d   b y   a   w a t c p a t h   i n   l a u n c h d . 
   
  
 l     ��������  ��  ��        i         I     ��  
�� .facofgetnull���     alis  o      ���� 0 this_folder    �� ��
�� 
flst  o      ���� 0 added_items  ��    k     e       r     
    l     ����  I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
file  m       �   r M a c : U s e r s : f r e e k k a l t e r : L i b r a r y : S c r i p t s : m u s i c _ s y n c _ l i b . s c p t��  ��  ��    o      ���� 0 sync_lib        r         m     ! ! � " "  D E S I R E   o      ���� 0 mobile_name     #�� # O    e $ % $ k    d & &  ' ( ' I   �� )��
�� .sysodelanull��� ��� nmbr ) m    ���� ��   (  *�� * Z    d + ,���� + I   !�� -��
�� .coredoexbool        obj  - 4    �� .
�� 
cdis . m     / / � 0 0  D E S I R E��   , Z   $ ` 1 2���� 1 I  $ ,�� 3��
�� .coredoexbool        obj  3 4   $ (�� 4
�� 
cdis 4 o   & '���� 0 mobile_name  ��   2 Z   / \ 5 6���� 5 l  / : 7���� 7 I  / :�� 8��
�� .coredoexbool        obj  8 n   / 6 9 : 9 4   3 6�� ;
�� 
cfol ; m   4 5 < < � = = 
 M u s i c : 4   / 3�� >
�� 
cdis > o   1 2���� 0 mobile_name  ��  ��  ��   6 k   = X ? ?  @ A @ l  = =�� B C��   B ) #display dialog "phone sync gestart"    C � D D F d i s p l a y   d i a l o g   " p h o n e   s y n c   g e s t a r t " A  E F E r   = F G H G n   = D I J I 4   A D�� K
�� 
cfol K m   B C L L � M M 
 M u s i c J 4   = A�� N
�� 
cdis N o   ? @���� 0 mobile_name   H o      ���� 0 	thefolder   F  O P O O  G R Q R Q I   K Q�� S���� 0 do_sync   S  T�� T o   L M���� 0 	thefolder  ��  ��   R o   G H���� 0 sync_lib   P  U�� U I  S X�� V��
�� .sysodlogaskr        TEXT V m   S T W W � X X   p h o n e   s y n c   k l a a r��  ��  ��  ��  ��  ��  ��  ��  ��   % m     Y Y�                                                                                  MACS  alis    V  Mac                        �jH+    +
Finder.app                                                       ��Ƙh        ����  	                CoreServices    �[�      ƘK�      +   �   �  *Mac:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    M a c  &System/Library/CoreServices/Finder.app  / ��  ��     Z�� Z l     ��������  ��  ��  ��       �� [ \��   [ ��
�� .facofgetnull���     alis \ �� ���� ] ^��
�� .facofgetnull���     alis�� 0 this_folder  �� ������
�� 
flst�� 0 added_items  ��   ] ������������ 0 this_folder  �� 0 added_items  �� 0 sync_lib  �� 0 mobile_name  �� 0 	thefolder   ^ �� �� ! Y������ /���� < L�� W��
�� 
file
�� .sysoloadscpt        file�� 
�� .sysodelanull��� ��� nmbr
�� 
cdis
�� .coredoexbool        obj 
�� 
cfol�� 0 do_sync  
�� .sysodlogaskr        TEXT�� f*��/j E�O�E�O� S�j O*��/j 	 A*�/j 	 2*�/��/j 	  *�/��/E�O� *�k+ UO�j Y hY hY hU ascr  ��ޭ