.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80091924, 0x8

glabel func_80091924
    /* 82124 80091924 0800E003 */  jr         $ra
    /* 82128 80091928 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_80091924
