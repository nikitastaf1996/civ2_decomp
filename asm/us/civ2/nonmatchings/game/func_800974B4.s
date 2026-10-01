.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800974B4, 0x8

glabel func_800974B4
    /* 87CB4 800974B4 0800E003 */  jr         $ra
    /* 87CB8 800974B8 21100000 */   addu      $v0, $zero, $zero
endlabel func_800974B4
