.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008FAB0, 0x8

glabel func_8008FAB0
    /* 802B0 8008FAB0 0800E003 */  jr         $ra
    /* 802B4 8008FAB4 00000000 */   nop
endlabel func_8008FAB0
