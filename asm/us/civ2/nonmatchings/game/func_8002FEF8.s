.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002FEF8, 0x8

glabel func_8002FEF8
    /* 206F8 8002FEF8 0800E003 */  jr         $ra
    /* 206FC 8002FEFC 00000000 */   nop
endlabel func_8002FEF8
