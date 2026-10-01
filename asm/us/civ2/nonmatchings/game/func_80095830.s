.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80095830, 0x8

glabel func_80095830
    /* 86030 80095830 0800E003 */  jr         $ra
    /* 86034 80095834 00000000 */   nop
endlabel func_80095830
