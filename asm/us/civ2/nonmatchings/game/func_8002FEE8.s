.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002FEE8, 0x8

glabel func_8002FEE8
    /* 206E8 8002FEE8 0800E003 */  jr         $ra
    /* 206EC 8002FEEC 00000000 */   nop
endlabel func_8002FEE8
