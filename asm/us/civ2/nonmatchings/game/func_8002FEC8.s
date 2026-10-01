.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002FEC8, 0x8

glabel func_8002FEC8
    /* 206C8 8002FEC8 0800E003 */  jr         $ra
    /* 206CC 8002FECC 00000000 */   nop
endlabel func_8002FEC8
