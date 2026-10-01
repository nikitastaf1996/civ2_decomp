.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097404, 0x8

glabel func_80097404
    /* 87C04 80097404 0800E003 */  jr         $ra
    /* 87C08 80097408 00000000 */   nop
endlabel func_80097404
