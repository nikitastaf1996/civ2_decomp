.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006CEC4, 0x8

glabel func_8006CEC4
    /* 5D6C4 8006CEC4 0800E003 */  jr         $ra
    /* 5D6C8 8006CEC8 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_8006CEC4
