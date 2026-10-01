.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800974A4, 0x8

glabel func_800974A4
    /* 87CA4 800974A4 0800E003 */  jr         $ra
    /* 87CA8 800974A8 21100000 */   addu      $v0, $zero, $zero
endlabel func_800974A4
