.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097444, 0x8

glabel func_80097444
    /* 87C44 80097444 0800E003 */  jr         $ra
    /* 87C48 80097448 00000000 */   nop
endlabel func_80097444
