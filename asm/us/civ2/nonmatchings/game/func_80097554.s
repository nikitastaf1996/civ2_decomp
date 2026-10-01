.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097554, 0x8

glabel func_80097554
    /* 87D54 80097554 0800E003 */  jr         $ra
    /* 87D58 80097558 00000000 */   nop
endlabel func_80097554
