.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80045288, 0x8

glabel func_80045288
    /* 35A88 80045288 0800E003 */  jr         $ra
    /* 35A8C 8004528C 00000000 */   nop
endlabel func_80045288
