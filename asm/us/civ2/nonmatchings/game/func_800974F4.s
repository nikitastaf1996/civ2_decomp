.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800974F4, 0x8

glabel func_800974F4
    /* 87CF4 800974F4 0800E003 */  jr         $ra
    /* 87CF8 800974F8 21100000 */   addu      $v0, $zero, $zero
endlabel func_800974F4
