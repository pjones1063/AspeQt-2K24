;  This program is free software; you can redistribute it and/or modify
;  it under the terms of the GNU General Public License as published by
;  the Free Software Foundation; either version 2 of the License, or
;  (at your option) any later version.
;
;  This program is distributed in the hope that it will be useful,
;  but WITHOUT ANY WARRANTY; without even the implied warranty of
;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;  GNU General Public License for more details.
;
;  You should have received a copy of the GNU General Public License
;  along with this program; if not, write to the Free Software
;  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;   write A000 BFFF /home/paul/eclipse-workspace/8-bit-bin/menu_cart_noboot.img 
;	OPT h-t+

	 icl 'menu_sym.asm'
	 org $BFFA
 	.word Start
 	.word $0400
 	.word Init
	    
	org $A000	
Start
	jsr printf
	.byte 125,155,'AspeQT             www.13leader.net',155
	.byte         '------             cart        2k24',155,155,155,0
	
	icl 'menu.asm'		
	icl 'printf.asm'	
	
 