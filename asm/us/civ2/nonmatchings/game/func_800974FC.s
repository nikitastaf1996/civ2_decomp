.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800974FC, 0x8

glabel func_800974FC
    /* 87CFC 800974FC 0800E003 */  jr         $ra
    /* 87D00 80097500 21100000 */   addu      $v0, $zero, $zero
endlabel func_800974FC
