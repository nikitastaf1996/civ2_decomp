.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80095EE8, 0x8

glabel func_80095EE8
    /* 866E8 80095EE8 0800E003 */  jr         $ra
    /* 866EC 80095EEC 00000000 */   nop
endlabel func_80095EE8
