FasdUAS 1.101.10   ��   ��    l      ����  i         I     ��  
�� .facofgetnull���     alis  o      ���� 0 this_folder    �� 	��
�� 
flst 	 o      ���� 0 added_items  ��    Q      
   
 k           I   �� ��
�� .sysodlogaskr        TEXT  l    ����  I   �� ��
�� .corecnte****       ****  o    ���� 0 added_items  ��  ��  ��  ��     ��  l    ��  ��   �		repeat with itemtohandle in (added_items)			--tell application "Finder" to display dialog (name of this_folder) as text			display dialog (count of added_items)						if (count of added_items) is less than 10 then				tell application "Finder"					if kind of itemtohandle is equal to "Folder" then						display dialog ("find '" & (POSIX path of itemtohandle) & "' -size -10M -type f -maxdepth 1 -print")					end if				end tell			else				display dialog "More then 10 items"			end if		end repeat
		     �  �  	 	 r e p e a t   w i t h   i t e m t o h a n d l e   i n   ( a d d e d _ i t e m s )  	 	 	 - - t e l l   a p p l i c a t i o n   " F i n d e r "   t o   d i s p l a y   d i a l o g   ( n a m e   o f   t h i s _ f o l d e r )   a s   t e x t  	 	 	 d i s p l a y   d i a l o g   ( c o u n t   o f   a d d e d _ i t e m s )  	 	 	  	 	 	 i f   ( c o u n t   o f   a d d e d _ i t e m s )   i s   l e s s   t h a n   1 0   t h e n  	 	 	 	 t e l l   a p p l i c a t i o n   " F i n d e r "  	 	 	 	 	 i f   k i n d   o f   i t e m t o h a n d l e   i s   e q u a l   t o   " F o l d e r "   t h e n  	 	 	 	 	 	 d i s p l a y   d i a l o g   ( " f i n d   ' "   &   ( P O S I X   p a t h   o f   i t e m t o h a n d l e )   &   " '   - s i z e   - 1 0 M   - t y p e   f   - m a x d e p t h   1   - p r i n t " )  	 	 	 	 	 e n d   i f  	 	 	 	 e n d   t e l l  	 	 	 e l s e  	 	 	 	 d i s p l a y   d i a l o g   " M o r e   t h e n   1 0   i t e m s "  	 	 	 e n d   i f  	 	 e n d   r e p e a t 
 	 	��    R      �� ��
�� .ascrerr ****      � ****  o      ���� 0 errmesg  ��    I   �� ��
�� .sysodlogaskr        TEXT  o    ���� 0 errmesg  ��  ��  ��       ��  ��    ��
�� .facofgetnull���     alis  �� ����  ��
�� .facofgetnull���     alis�� 0 this_folder  �� ������
�� 
flst�� 0 added_items  ��    �������� 0 this_folder  �� 0 added_items  �� 0 errmesg    ��������
�� .corecnte****       ****
�� .sysodlogaskr        TEXT�� 0 errmesg  ��  ��  �j  j OPW X  �j ascr  ��ޭ