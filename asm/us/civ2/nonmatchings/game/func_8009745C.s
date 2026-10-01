.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009745C, 0x8

glabel func_8009745C
    /* 87C5C 8009745C 0800E003 */  jr         $ra
    /* 87C60 80097460 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_8009745C
