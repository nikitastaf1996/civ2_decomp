.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800973F4, 0x8

glabel func_800973F4
    /* 87BF4 800973F4 0800E003 */  jr         $ra
    /* 87BF8 800973F8 21100000 */   addu      $v0, $zero, $zero
endlabel func_800973F4
