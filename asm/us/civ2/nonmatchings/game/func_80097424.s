.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097424, 0x8

glabel func_80097424
    /* 87C24 80097424 0800E003 */  jr         $ra
    /* 87C28 80097428 00000000 */   nop
endlabel func_80097424
