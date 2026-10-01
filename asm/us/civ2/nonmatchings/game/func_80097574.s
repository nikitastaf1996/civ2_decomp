.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097574, 0x8

glabel func_80097574
    /* 87D74 80097574 0800E003 */  jr         $ra
    /* 87D78 80097578 00000000 */   nop
endlabel func_80097574
