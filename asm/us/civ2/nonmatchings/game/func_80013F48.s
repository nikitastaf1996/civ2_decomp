.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80013F48, 0x8

glabel func_80013F48
    /* 4748 80013F48 0800E003 */  jr         $ra
    /* 474C 80013F4C 00000000 */   nop
endlabel func_80013F48
