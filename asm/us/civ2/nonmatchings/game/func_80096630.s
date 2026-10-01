.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80096630, 0x8

glabel func_80096630
    /* 86E30 80096630 0800E003 */  jr         $ra
    /* 86E34 80096634 00000000 */   nop
endlabel func_80096630
