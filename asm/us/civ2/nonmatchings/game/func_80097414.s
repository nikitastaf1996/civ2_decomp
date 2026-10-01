.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097414, 0x8

glabel func_80097414
    /* 87C14 80097414 0800E003 */  jr         $ra
    /* 87C18 80097418 00000000 */   nop
endlabel func_80097414
