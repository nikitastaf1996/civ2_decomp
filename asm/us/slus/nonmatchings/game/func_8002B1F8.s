.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B1F8, 0x8

glabel func_8002B1F8
    /* 1B9F8 8002B1F8 0800E003 */  jr         $ra
    /* 1B9FC 8002B1FC 00000000 */   nop
endlabel func_8002B1F8
