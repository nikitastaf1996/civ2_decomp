.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80095EE0, 0x8

glabel func_80095EE0
    /* 866E0 80095EE0 0800E003 */  jr         $ra
    /* 866E4 80095EE4 00000000 */   nop
endlabel func_80095EE0
