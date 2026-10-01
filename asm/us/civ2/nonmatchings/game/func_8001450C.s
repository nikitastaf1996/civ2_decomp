.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001450C, 0x8

glabel func_8001450C
    /* 4D0C 8001450C 0800E003 */  jr         $ra
    /* 4D10 80014510 00000000 */   nop
endlabel func_8001450C
