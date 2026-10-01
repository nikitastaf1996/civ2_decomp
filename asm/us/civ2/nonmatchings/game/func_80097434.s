.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097434, 0x8

glabel func_80097434
    /* 87C34 80097434 0800E003 */  jr         $ra
    /* 87C38 80097438 00000000 */   nop
endlabel func_80097434
