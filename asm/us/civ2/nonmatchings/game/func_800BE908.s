.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BE908, 0x8

glabel func_800BE908
    /* AF108 800BE908 0800E003 */  jr         $ra
    /* AF10C 800BE90C 00000000 */   nop
endlabel func_800BE908
