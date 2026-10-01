.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800973E4, 0x8

glabel func_800973E4
    /* 87BE4 800973E4 0800E003 */  jr         $ra
    /* 87BE8 800973E8 21100000 */   addu      $v0, $zero, $zero
endlabel func_800973E4
