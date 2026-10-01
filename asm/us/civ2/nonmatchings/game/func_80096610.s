.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80096610, 0x8

glabel func_80096610
    /* 86E10 80096610 0800E003 */  jr         $ra
    /* 86E14 80096614 21100000 */   addu      $v0, $zero, $zero
endlabel func_80096610
