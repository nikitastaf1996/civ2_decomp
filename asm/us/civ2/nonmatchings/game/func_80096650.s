.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80096650, 0x8

glabel func_80096650
    /* 86E50 80096650 0800E003 */  jr         $ra
    /* 86E54 80096654 21100000 */   addu      $v0, $zero, $zero
endlabel func_80096650
