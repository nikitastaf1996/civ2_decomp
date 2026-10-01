.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80096620, 0x8

glabel func_80096620
    /* 86E20 80096620 0800E003 */  jr         $ra
    /* 86E24 80096624 21100000 */   addu      $v0, $zero, $zero
endlabel func_80096620
