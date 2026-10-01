.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800973FC, 0x8

glabel func_800973FC
    /* 87BFC 800973FC 0800E003 */  jr         $ra
    /* 87C00 80097400 21100000 */   addu      $v0, $zero, $zero
endlabel func_800973FC
