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
 l     ��������  ��  ��        i         I      �� ���� 0 removepunct removePunct   ��  o      ���� 0 
thisstring 
thisString��  ��    k     ?       r         c         l     ����  n         2    ��
�� 
cha   o     ���� 0 
thisstring 
thisString��  ��    m    ��
�� 
list  o      ���� 0 thelist theList      r        n       !   4   	 �� "
�� 
cobj " m   
 ����  ! o    	���� 0 thelist theList  o      ���� 0 c     # $ # r     % & % J    ����   & o      ���� 0 
returnlist   $  ' ( ' X    : )�� * ) Z   $ 5 + ,���� + H   $ ( - - E   $ ' . / . o   $ %���� 0 char   / m   % & 0 0 � 1 1  : , s   + 1 2 3 2 n   + . 4 5 4 1   , .��
�� 
pcnt 5 o   + ,���� 0 char   3 l      6���� 6 n       7 8 7  ;   / 0 8 o   . /���� 0 
returnlist  ��  ��  ��  ��  �� 0 char   * o    ���� 0 thelist theList (  9�� 9 L   ; ? : : c   ; > ; < ; o   ; <���� 0 
returnlist   < m   < =��
�� 
ctxt��     = > = l     ��������  ��  ��   >  ? @ ? i     A B A I      �� C���� 0 do_sync   C  D�� D o      ���� 0 folder_location  ��  ��   B O     � E F E Q    � G H I G k    � J J  K L K O    M N M r     O P O l    Q���� Q e     R R n     S T S 2    ��
�� 
cTrk T 4    �� U
�� 
cUsP U m     V V � W W  P h o n e _ p l a y l i s t��  ��   P o      ���� 0 these_tracks   N m     X X�                                                                                  hook  alis    2  Mac                        �jH+    3
iTunes.app                                                      �Ɓi�        ����  	                Applications    �[�      ƁM�      3  Mac:Applications:iTunes.app    
 i T u n e s . a p p    M a c  Applications/iTunes.app   / ��   L  Y Z Y r     [ \ [ J    ����   \ o      ���� 0 itemlist   Z  ] ^ ] r     _ ` _ J    ����   ` o      ���� 0 
album_list   ^  a b a r     # c d c m     !��
�� boovfals d o      ���� 0 album_check   b  e f e X   $ � g�� h g O   4 � i j i k   8 � k k  l m l r   8 M n o n b   8 K p q p b   8 B r s r n  8 @ t u t I   9 @�� v���� 0 removepunct removePunct v  w�� w l  9 < x���� x n   9 < y z y 1   : <��
�� 
pArt z o   9 :���� 0 currenttrack currentTrack��  ��  ��  ��   u  f   8 9 s m   @ A { { � | |    -   q n  B J } ~ } I   C J�� ���� 0 removepunct removePunct   ��� � l  C F ����� � n   C F � � � 1   D F��
�� 
pAlb � o   C D���� 0 currenttrack currentTrack��  ��  ��  ��   ~  f   B C o o      ���� 0 
foldername   m  � � � r   N S � � � n   N Q � � � 1   O Q��
�� 
pLoc � o   N O���� 0 currenttrack currentTrack � o      ���� 0 tracklocation trackLocation �  � � � l  T T��������  ��  ��   �  � � � X   T � ��� � � k   d � � �  � � � I  d o�� ���
�� .sysodlogaskr        TEXT � n   d k � � � 4  h k�� �
�� 
cobj � m   i j����  � l  d h ����� � e   d h � � n   d h � � � 1   e g��
�� 
pcnt � o   d e���� 0 currentalbum currentAlbum��  ��  ��   �  ��� � Z   p � � ����� � =  p y � � � o   p q���� 0 
foldername   � n   q x � � � 4  u x�� �
�� 
cobj � m   v w����  � l  q u ����� � e   q u � � n   q u � � � 1   r t��
�� 
pcnt � o   q r���� 0 currentalbum currentAlbum��  ��   � k   | � � �  � � � s   | � � � � o   | }���� 0 tracklocation trackLocation � l      ����� � n       � � �  ;   � � � l  } � ����� � e   } � � � n   } � � � � 1   ~ ���
�� 
pcnt � o   } ~���� 0 currentalbum currentAlbum��  ��  ��  ��   �  � � � r   � � � � � m   � ���
�� boovtrue � o      ���� 0 album_check   �  ��� �  S   � ���  ��  ��  ��  �� 0 currentalbum currentAlbum � o   W X���� 0 
album_list   �  � � � Z   � � � ����� � H   � � � � o   � ����� 0 album_check   � k   � � � �  � � � s   � � � � � l  � � ����� � N   � � � � J   � � � �  � � � o   � ����� 0 
foldername   �  ��� � o   � ����� 0 tracklocation trackLocation��  ��  ��   � l      ����� � n       � � �  ;   � � � o   � ����� 0 
album_list  ��  ��   �  ��� � r   � � � � � m   � ���
�� boovfals � o      ���� 0 album_check  ��  ��  ��   �  ��� � l  � ���������  ��  ��  ��   j m   4 5 � ��                                                                                  hook  alis    2  Mac                        �jH+    3
iTunes.app                                                      �Ɓi�        ����  	                Applications    �[�      ƁM�      3  Mac:Applications:iTunes.app    
 i T u n e s . a p p    M a c  Applications/iTunes.app   / ��  �� 0 currenttrack currentTrack h o   ' (���� 0 these_tracks   f  ��� � I  � ��� ���
�� .sysodlogaskr        TEXT � l  � � ����� � I  � �� ��~
� .corecnte****       **** � o   � ��}�} 0 
album_list  �~  ��  ��  ��  ��   H R      �| ��{
�| .ascrerr ****      � **** � o      �z�z 0 msg  �{   I I  � ��y ��x
�y .sysodlogaskr        TEXT � o   � ��w�w 0 msg  �x   F m      � ��                                                                                  MACS  alis    V  Mac                        �jH+    +
Finder.app                                                       ��Ƙh        ����  	                CoreServices    �[�      ƘK�      +   �   �  *Mac:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    M a c  &System/Library/CoreServices/Finder.app  / ��   @  � � � l     �v�u�t�v  �u  �t   �  � � � l     �s�r�q�s  �r  �q   �  � � � i     � � � I      �p ��o�p 0 	add_track   �  ��n � o      �m�m 0 currenttrack currentTrack�n  �o   � l     �l�k�j�l  �k  �j   �  � � � l     �i�h�g�i  �h  �g   �  � � � l     �f�e�d�f  �e  �d   �  � � � l     �c�b�a�c  �b  �a   �  � � � l     �`�_�^�`  �_  �^   �  � � � l     �]�\�[�]  �\  �[   �  � � � l     �Z�Y�X�Z  �Y  �X   �  � � � l     �W�V�U�W  �V  �U   �  � � � l      �T � ��T   �82				if not (folder foldername of folder_location exists) then					--display dialog "Nieuwe track: " & foldername & "-" & name of trackLocation & "      " & "oude foldernaam: " & thefolder as text					display dialog (count of itemlist)					if (count of itemlist) is greater than 0 then						with timeout of 1000 seconds							duplicate itemlist to thefolder						end timeout						set itemlist to {}						display dialog "itemlist weer leeg gemaakt"					end if					set thefolder to make new folder at folder_location with properties {name:foldername}				else					set thefolder to folder foldername of folder_location				end if								--check if file already exist in destination folder				--display dialog name of trackLocation & "   -   " & (name of every item of thefolder)				if name of trackLocation is not in (get the name of every item in thefolder) then					copy trackLocation to the end of itemlist					--display dialog name of trackLocation & "  -  " & (count of itemlist)				else					--display dialog name of currentTrack & " bestaat al"				end if							end repeat						try				with timeout of 1000 seconds --copying a big album can cost some time, applescriptrunner times out after 2 minutes by default					duplicate itemlist to thefolder				end timeout			on error errStr number errorNumber				if errorNumber is not equal to -15267 then --another check for "file already exist" but itemlist should not be containing items that already exist					error errStr number errorNumber				end if			end try			--delete everything else			(*			tell application "System Events" to set folder_content to the name of every item in folder_location			repeat with file_item in folder_content				if file_item is not in album_list then					delete item file_item of folder_location				end if			end repeat
			*)
			    � � � �d  	 	 	 	 i f   n o t   ( f o l d e r   f o l d e r n a m e   o f   f o l d e r _ l o c a t i o n   e x i s t s )   t h e n  	 	 	 	 	 - - d i s p l a y   d i a l o g   " N i e u w e   t r a c k :   "   &   f o l d e r n a m e   &   " - "   &   n a m e   o f   t r a c k L o c a t i o n   &   "             "   &   " o u d e   f o l d e r n a a m :   "   &   t h e f o l d e r   a s   t e x t  	 	 	 	 	 d i s p l a y   d i a l o g   ( c o u n t   o f   i t e m l i s t )  	 	 	 	 	 i f   ( c o u n t   o f   i t e m l i s t )   i s   g r e a t e r   t h a n   0   t h e n  	 	 	 	 	 	 w i t h   t i m e o u t   o f   1 0 0 0   s e c o n d s  	 	 	 	 	 	 	 d u p l i c a t e   i t e m l i s t   t o   t h e f o l d e r  	 	 	 	 	 	 e n d   t i m e o u t  	 	 	 	 	 	 s e t   i t e m l i s t   t o   { }  	 	 	 	 	 	 d i s p l a y   d i a l o g   " i t e m l i s t   w e e r   l e e g   g e m a a k t "  	 	 	 	 	 e n d   i f  	 	 	 	 	 s e t   t h e f o l d e r   t o   m a k e   n e w   f o l d e r   a t   f o l d e r _ l o c a t i o n   w i t h   p r o p e r t i e s   { n a m e : f o l d e r n a m e }  	 	 	 	 e l s e  	 	 	 	 	 s e t   t h e f o l d e r   t o   f o l d e r   f o l d e r n a m e   o f   f o l d e r _ l o c a t i o n  	 	 	 	 e n d   i f  	 	 	 	  	 	 	 	 - - c h e c k   i f   f i l e   a l r e a d y   e x i s t   i n   d e s t i n a t i o n   f o l d e r  	 	 	 	 - - d i s p l a y   d i a l o g   n a m e   o f   t r a c k L o c a t i o n   &   "       -       "   &   ( n a m e   o f   e v e r y   i t e m   o f   t h e f o l d e r )  	 	 	 	 i f   n a m e   o f   t r a c k L o c a t i o n   i s   n o t   i n   ( g e t   t h e   n a m e   o f   e v e r y   i t e m   i n   t h e f o l d e r )   t h e n  	 	 	 	 	 c o p y   t r a c k L o c a t i o n   t o   t h e   e n d   o f   i t e m l i s t  	 	 	 	 	 - - d i s p l a y   d i a l o g   n a m e   o f   t r a c k L o c a t i o n   &   "     -     "   &   ( c o u n t   o f   i t e m l i s t )  	 	 	 	 e l s e  	 	 	 	 	 - - d i s p l a y   d i a l o g   n a m e   o f   c u r r e n t T r a c k   &   "   b e s t a a t   a l "  	 	 	 	 e n d   i f  	 	 	 	  	 	 	 e n d   r e p e a t  	 	 	  	 	 	 t r y  	 	 	 	 w i t h   t i m e o u t   o f   1 0 0 0   s e c o n d s   - - c o p y i n g   a   b i g   a l b u m   c a n   c o s t   s o m e   t i m e ,   a p p l e s c r i p t r u n n e r   t i m e s   o u t   a f t e r   2   m i n u t e s   b y   d e f a u l t  	 	 	 	 	 d u p l i c a t e   i t e m l i s t   t o   t h e f o l d e r  	 	 	 	 e n d   t i m e o u t  	 	 	 o n   e r r o r   e r r S t r   n u m b e r   e r r o r N u m b e r  	 	 	 	 i f   e r r o r N u m b e r   i s   n o t   e q u a l   t o   - 1 5 2 6 7   t h e n   - - a n o t h e r   c h e c k   f o r   " f i l e   a l r e a d y   e x i s t "   b u t   i t e m l i s t   s h o u l d   n o t   b e   c o n t a i n i n g   i t e m s   t h a t   a l r e a d y   e x i s t  	 	 	 	 	 e r r o r   e r r S t r   n u m b e r   e r r o r N u m b e r  	 	 	 	 e n d   i f  	 	 	 e n d   t r y  	 	 	 - - d e l e t e   e v e r y t h i n g   e l s e  	 	 	 ( *  	 	 	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "   t o   s e t   f o l d e r _ c o n t e n t   t o   t h e   n a m e   o f   e v e r y   i t e m   i n   f o l d e r _ l o c a t i o n  	 	 	 r e p e a t   w i t h   f i l e _ i t e m   i n   f o l d e r _ c o n t e n t  	 	 	 	 i f   f i l e _ i t e m   i s   n o t   i n   a l b u m _ l i s t   t h e n  	 	 	 	 	 d e l e t e   i t e m   f i l e _ i t e m   o f   f o l d e r _ l o c a t i o n  	 	 	 	 e n d   i f  	 	 	 e n d   r e p e a t 
 	 	 	 * ) 
 	 	 	 �  ��S � l     �R�Q�P�R  �Q  �P  �S       �O � � � ��O   � �N�M�L�N 0 removepunct removePunct�M 0 do_sync  �L 0 	add_track   � �K �J�I � ��H�K 0 removepunct removePunct�J �G ��G  �  �F�F 0 
thisstring 
thisString�I   � �E�D�C�B�A�E 0 
thisstring 
thisString�D 0 thelist theList�C 0 c  �B 0 
returnlist  �A 0 char   � �@�?�>�=�< 0�;�:
�@ 
cha 
�? 
list
�> 
cobj
�= 
kocl
�< .corecnte****       ****
�; 
pcnt
�: 
ctxt�H @��-�&E�O��l/E�OjvE�O %�[��l kh �� ��,�6GY h[OY��O��& � �9 B�8�7 � ��6�9 0 do_sync  �8 �5 ��5  �  �4�4 0 folder_location  �7   � 
�3�2�1�0�/�.�-�,�+�*�3 0 folder_location  �2 0 these_tracks  �1 0 itemlist  �0 0 
album_list  �/ 0 album_check  �. 0 currenttrack currentTrack�- 0 
foldername  �, 0 tracklocation trackLocation�+ 0 currentalbum currentAlbum�* 0 msg   �  � X�) V�(�'�&�%�$�# {�"�!� ���
�) 
cUsP
�( 
cTrk
�' 
kocl
�& 
cobj
�% .corecnte****       ****
�$ 
pArt�# 0 removepunct removePunct
�" 
pAlb
�! 
pLoc
�  
pcnt
� .sysodlogaskr        TEXT� 0 msg  �  �6 �� � �� *��/�-EE�UOjvE�OjvE�OfE�O ��[��l kh � t)��,k+ 	�%)��,k+ 	%E�O��,E�O =�[��l kh ��,E�k/j O���,E�k/  ���,E6GOeE�OY h[OY��O� ��lv�6GOfE�Y hOPU[OY��O�j j W X  �j U � � ��� � �� 0 	add_track  � ��   �� 0 currenttrack currentTrack�   � �� 0 currenttrack currentTrack   � h ascr  ��ޭ