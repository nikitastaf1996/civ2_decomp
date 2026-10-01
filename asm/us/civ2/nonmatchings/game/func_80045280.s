.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80045280, 0x8

glabel func_80045280
    /* 35A80 80045280 0800E003 */  jr         $ra
    /* 35A84 80045284 00000000 */   nop
endlabel func_80045280
