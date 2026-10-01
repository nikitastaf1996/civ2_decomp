.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097504, 0x8

glabel func_80097504
    /* 87D04 80097504 0800E003 */  jr         $ra
    /* 87D08 80097508 21100000 */   addu      $v0, $zero, $zero
endlabel func_80097504
