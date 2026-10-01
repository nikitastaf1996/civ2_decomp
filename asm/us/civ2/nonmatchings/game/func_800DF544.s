.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DF544, 0x8

glabel func_800DF544
    /* CFD44 800DF544 0800E003 */  jr         $ra
    /* CFD48 800DF548 21100000 */   addu      $v0, $zero, $zero
endlabel func_800DF544
