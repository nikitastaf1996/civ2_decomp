.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800142B4, 0x8

glabel func_800142B4
    /* 4AB4 800142B4 0800E003 */  jr         $ra
    /* 4AB8 800142B8 21100000 */   addu      $v0, $zero, $zero
endlabel func_800142B4
