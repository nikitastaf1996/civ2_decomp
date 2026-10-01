.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800975D4, 0x8

glabel func_800975D4
    /* 87DD4 800975D4 0800E003 */  jr         $ra
    /* 87DD8 800975D8 FFFF0224 */   addiu     $v0, $zero, -0x1
endlabel func_800975D4
