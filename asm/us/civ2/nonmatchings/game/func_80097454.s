.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097454, 0x8

glabel func_80097454
    /* 87C54 80097454 0800E003 */  jr         $ra
    /* 87C58 80097458 21100000 */   addu      $v0, $zero, $zero
endlabel func_80097454
