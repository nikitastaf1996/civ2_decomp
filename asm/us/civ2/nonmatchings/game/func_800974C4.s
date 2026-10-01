.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800974C4, 0x8

glabel func_800974C4
    /* 87CC4 800974C4 0800E003 */  jr         $ra
    /* 87CC8 800974C8 21100000 */   addu      $v0, $zero, $zero
endlabel func_800974C4
