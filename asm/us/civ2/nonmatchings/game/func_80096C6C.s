.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80096C6C, 0x8

glabel func_80096C6C
    /* 8746C 80096C6C 0800E003 */  jr         $ra
    /* 87470 80096C70 00000000 */   nop
endlabel func_80096C6C
