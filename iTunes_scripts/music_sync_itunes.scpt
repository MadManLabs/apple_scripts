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
 l      ��  ��    � �
set sync_lib to (load script file "Mac:Users:freekkalter:Library:Scripts:music_sync_lib.scpt")tell application "Finder" to set thefolder to folder "music" of desktoptell sync_lib to do_sync(thefolder)     �  � 
 s e t   s y n c _ l i b   t o   ( l o a d   s c r i p t   f i l e   " M a c : U s e r s : f r e e k k a l t e r : L i b r a r y : S c r i p t s : m u s i c _ s y n c _ l i b . s c p t " )  t e l l   a p p l i c a t i o n   " F i n d e r "   t o   s e t   t h e f o l d e r   t o   f o l d e r   " m u s i c "   o f   d e s k t o p  t e l l   s y n c _ l i b   t o   d o _ s y n c ( t h e f o l d e r )       l     ��������  ��  ��        l     ��������  ��  ��        l    
 ����  r     
    l     ����  I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
file  m       �   r M a c : U s e r s : f r e e k k a l t e r : L i b r a r y : S c r i p t s : m u s i c _ s y n c _ l i b . s c p t��  ��  ��    o      ���� 0 sync_lib  ��  ��        l    ����  r       !   m     " " � # #  D E S I R E ! o      ���� 0 mobile_name  ��  ��     $ % $ l   J &���� & O    J ' ( ' Z    I ) *���� ) I   �� +��
�� .coredoexbool        obj  + 4    �� ,
�� 
cdis , o    ���� 0 mobile_name  ��   * Z    E - .���� - l   ) /���� / I   )�� 0��
�� .coredoexbool        obj  0 n    % 1 2 1 4   " %�� 3
�� 
cfol 3 m   # $ 4 4 � 5 5 
 M u s i c 2 4    "�� 6
�� 
cdis 6 o     !���� 0 mobile_name  ��  ��  ��   . k   , A 7 7  8 9 8 r   , 5 : ; : n   , 3 < = < 4   0 3�� >
�� 
cfol > m   1 2 ? ? � @ @ 
 M u s i c = 4   , 0�� A
�� 
cdis A o   . /���� 0 mobile_name   ; o      ���� 0 	thefolder   9  B�� B O  6 A C D C I   : @�� E���� 0 do_sync   E  F�� F o   ; <���� 0 	thefolder  ��  ��   D o   6 7���� 0 sync_lib  ��  ��  ��  ��  ��   ( m     G G�                                                                                  MACS  alis    V  Mac                        �jH+    +
Finder.app                                                       ��Ƙh        ����  	                CoreServices    �[�      ƘK�      +   �   �  *Mac:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    M a c  &System/Library/CoreServices/Finder.app  / ��  ��  ��   %  H I H l  K X J���� J r   K X K L K l  K T M���� M I  K T�� N O
�� .earsffdralis        afdr N m   K L��
�� appfegfp O �� P��
�� 
rtyp P m   M P��
�� 
utxt��  ��  ��   L o      ���� 0 	front_app  ��  ��   I  Q R Q l  Y l S���� S O  Y l T U T I  d k�� V��
�� .sysodlogaskr        TEXT V m   d g W W � X X   p h o n e   s y n c   k l a a r��   U 4   Y a�� Y
�� 
capp Y o   ] `���� 0 	front_app  ��  ��   R  Z�� Z l     ��������  ��  ��  ��       �� [ \��   [ ��
�� .aevtoappnull  �   � **** \ �� ]���� ^ _��
�� .aevtoappnull  �   � **** ] k     l ` `   a a   b b  $ c c  H d d  Q����  ��  ��   ^   _ �� ���� "�� G������ 4 ?���������������� W��
�� 
file
�� .sysoloadscpt        file�� 0 sync_lib  �� 0 mobile_name  
�� 
cdis
�� .coredoexbool        obj 
�� 
cfol�� 0 	thefolder  �� 0 do_sync  
�� appfegfp
�� 
rtyp
�� 
utxt
�� .earsffdralis        afdr�� 0 	front_app  
�� 
capp
�� .sysodlogaskr        TEXT�� m*��/j E�O�E�O� 8*��/j  ,*��/��/j  *��/��/E�O� *�k+ UY hY hUO��a l E` O*a _ / 	a j U ascr  ��ޭ