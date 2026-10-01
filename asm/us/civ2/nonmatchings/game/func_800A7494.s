.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A7494, 0x8

glabel func_800A7494
    /* 97C94 800A7494 0800E003 */  jr         $ra
    /* 97C98 800A7498 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_800A7494
