.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800945B0, 0x8

glabel func_800945B0
    /* 84DB0 800945B0 0800E003 */  jr         $ra
    /* 84DB4 800945B4 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_800945B0
