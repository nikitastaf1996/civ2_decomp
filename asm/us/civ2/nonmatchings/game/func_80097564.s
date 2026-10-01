.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097564, 0x8

glabel func_80097564
    /* 87D64 80097564 0800E003 */  jr         $ra
    /* 87D68 80097568 21100000 */   addu      $v0, $zero, $zero
endlabel func_80097564
