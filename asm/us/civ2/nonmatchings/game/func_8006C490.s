.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006C490, 0x8

glabel func_8006C490
    /* 5CC90 8006C490 0800E003 */  jr         $ra
    /* 5CC94 8006C494 21100000 */   addu      $v0, $zero, $zero
endlabel func_8006C490
