.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B1F0, 0x8

glabel func_8002B1F0
    /* 1B9F0 8002B1F0 0800E003 */  jr         $ra
    /* 1B9F4 8002B1F4 00000000 */   nop
endlabel func_8002B1F0
