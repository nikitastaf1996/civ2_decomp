.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80096638, 0x8

glabel func_80096638
    /* 86E38 80096638 0800E003 */  jr         $ra
    /* 86E3C 8009663C 21100000 */   addu      $v0, $zero, $zero
endlabel func_80096638
