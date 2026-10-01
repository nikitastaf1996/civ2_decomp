.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80013F40, 0x8

glabel func_80013F40
    /* 4740 80013F40 0800E003 */  jr         $ra
    /* 4744 80013F44 00000000 */   nop
endlabel func_80013F40
