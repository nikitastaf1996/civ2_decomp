.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A3BA8, 0x8

glabel func_800A3BA8
    /* 943A8 800A3BA8 0800E003 */  jr         $ra
    /* 943AC 800A3BAC 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_800A3BA8
