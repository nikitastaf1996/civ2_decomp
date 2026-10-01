.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80095ED8, 0x8

glabel func_80095ED8
    /* 866D8 80095ED8 0800E003 */  jr         $ra
    /* 866DC 80095EDC 00000000 */   nop
endlabel func_80095ED8
