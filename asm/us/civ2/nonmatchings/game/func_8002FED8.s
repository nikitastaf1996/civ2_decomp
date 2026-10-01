.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002FED8, 0x8

glabel func_8002FED8
    /* 206D8 8002FED8 0800E003 */  jr         $ra
    /* 206DC 8002FEDC 00000000 */   nop
endlabel func_8002FED8
