.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097494, 0x8

glabel func_80097494
    /* 87C94 80097494 0800E003 */  jr         $ra
    /* 87C98 80097498 21100000 */   addu      $v0, $zero, $zero
endlabel func_80097494
