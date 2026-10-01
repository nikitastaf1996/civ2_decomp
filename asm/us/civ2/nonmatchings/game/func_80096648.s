.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80096648, 0x8

glabel func_80096648
    /* 86E48 80096648 0800E003 */  jr         $ra
    /* 86E4C 8009664C 00000000 */   nop
endlabel func_80096648
