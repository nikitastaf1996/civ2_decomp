.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80090558, 0x8

glabel func_80090558
    /* 80D58 80090558 0800E003 */  jr         $ra
    /* 80D5C 8009055C 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_80090558
