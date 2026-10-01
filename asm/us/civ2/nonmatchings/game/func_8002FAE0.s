.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002FAE0, 0x8

glabel func_8002FAE0
    /* 202E0 8002FAE0 0800E003 */  jr         $ra
    /* 202E4 8002FAE4 21100000 */   addu      $v0, $zero, $zero
endlabel func_8002FAE0
