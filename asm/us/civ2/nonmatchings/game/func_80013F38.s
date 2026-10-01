.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80013F38, 0x8

glabel func_80013F38
    /* 4738 80013F38 0800E003 */  jr         $ra
    /* 473C 80013F3C 00000000 */   nop
endlabel func_80013F38
