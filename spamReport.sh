# ! / b i n / b a s h   - x e 
 #   s p a m - l o o k u p . s h :   L o o k   u p   a b u s e   c o n t a c t   t o   r e p o r t   a   s p a m m e r . 
 #   T h a n k s ,   M i c h a e l   Z i c k . 
 #   C h e c k   f o r   c o m m a n d - l i n e   a r g . 
 A R G C O U N T = 1 
 E _ W R O N G A R G S = 8 5 
 i f   [   $ #   - n e   " $ A R G C O U N T "   ] 
 t h e n 
 e c h o   " U s a g e :   ` b a s e n a m e   $ 0 `   d o m a i n - n a m e " 
 e x i t   $ E _ W R O N G A R G S 
 f i 
 d i g   + s h o r t   $ 1 . c o n t a c t s . a b u s e . n e t   - c   i n   - t   t x t 
 #   A l s o   t r y : 
 #   d i g   + n s s e a r c h   $ 1 
 #   T r i e s   t o   f i n d   " a u t h o r i t a t i v e   n a m e   s e r v e r s "   a n d   d i s p l a y   S O A   r e c o r d s . 
 #   T h e   f o l l o w i n g   a l s o   w o r k s : 
 #   w h o i s   - h   w h o i s . a b u s e . n e t   $ 1 
 #   ^ ^   ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^   S p e c i f y   h o s t . 
 #   C a n   e v e n   l o o k u p   m u l t i p l e   s p a m m e r s   w i t h   t h i s ,   i . e . " 
 #   w h o i s   - h   w h o i s . a b u s e . n e t   $ s p a m d o m a i n 1   $ s p a m d o m a i n 2   .   .   . 
 #   E x e r c i s e : 
 #   - - - - - - - - 
 #   E x p a n d   t h e   f u n c t i o n a l i t y   o f   t h i s   s c r i p t 
 # +   s o   t h a t   i t   a u t o m a t i c a l l y   e - m a i l s   a   n o t i f i c a t i o n 
 # +   t o   t h e   r e s p o n s i b l e   I S P ' s   c o n t a c t   a d d r e s s ( e s ) . 
 #   H i n t :   u s e   t h e   " m a i l "   c o m m a n d . 
 e x i t   $ ? 
 #   s p a m - l o o k u p . s h   c h i n a t i e t o n g . c o m 
 #   A   k n o w n   s p a m   d o m a i n . 
 #   " c r n e t _ m g r @ c h i n a t i e t o n g . c o m " 
 #   " c r n e t _ t e c @ c h i n a t i e t o n g . c o m " 
 #   " p o s t m a s t e r @ c h i n a t i e t o n g . c o m " 
 #   F o r   a   m o r e   e l a b o r a t e   v e r s i o n   o f   t h i s   s c r i p t , 
 # +   s e e   t h e   S p a m V i z   h o m e   p a g e ,   h t t p : / / w w w . s p a m v i z . n e t / i n d e x . h t m l . 
 