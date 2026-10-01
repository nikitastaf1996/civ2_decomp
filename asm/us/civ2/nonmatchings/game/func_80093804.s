.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80093804, 0x8

glabel func_80093804
    /* 84004 80093804 0800E003 */  jr         $ra
    /* 84008 80093808 00000000 */   nop
endlabel func_80093804
