.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A3BA0, 0x8

glabel func_800A3BA0
    /* 943A0 800A3BA0 0800E003 */  jr         $ra
    /* 943A4 800A3BA4 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_800A3BA0
