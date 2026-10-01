.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80077C88, 0x8

glabel func_80077C88
    /* 68488 80077C88 0800E003 */  jr         $ra
    /* 6848C 80077C8C 21100000 */   addu      $v0, $zero, $zero
endlabel func_80077C88
