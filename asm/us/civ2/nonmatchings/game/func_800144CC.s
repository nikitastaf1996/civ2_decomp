.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800144CC, 0x8

glabel func_800144CC
    /* 4CCC 800144CC 0800E003 */  jr         $ra
    /* 4CD0 800144D0 00000000 */   nop
endlabel func_800144CC
