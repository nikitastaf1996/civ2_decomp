.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80071BE8, 0x8

glabel func_80071BE8
    /* 623E8 80071BE8 0800E003 */  jr         $ra
    /* 623EC 80071BEC 21100000 */   addu      $v0, $zero, $zero
endlabel func_80071BE8
