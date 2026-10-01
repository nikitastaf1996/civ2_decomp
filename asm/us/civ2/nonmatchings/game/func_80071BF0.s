.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80071BF0, 0x8

glabel func_80071BF0
    /* 623F0 80071BF0 0800E003 */  jr         $ra
    /* 623F4 80071BF4 21100000 */   addu      $v0, $zero, $zero
endlabel func_80071BF0
