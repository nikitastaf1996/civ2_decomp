.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80045370, 0x8

glabel func_80045370
    /* 35B70 80045370 0800E003 */  jr         $ra
    /* 35B74 80045374 00000000 */   nop
endlabel func_80045370
