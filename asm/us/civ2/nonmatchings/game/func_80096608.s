.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80096608, 0x8

glabel func_80096608
    /* 86E08 80096608 0800E003 */  jr         $ra
    /* 86E0C 8009660C 21100000 */   addu      $v0, $zero, $zero
endlabel func_80096608
