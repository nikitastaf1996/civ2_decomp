.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097594, 0x8

glabel func_80097594
    /* 87D94 80097594 0800E003 */  jr         $ra
    /* 87D98 80097598 21100000 */   addu      $v0, $zero, $zero
endlabel func_80097594
