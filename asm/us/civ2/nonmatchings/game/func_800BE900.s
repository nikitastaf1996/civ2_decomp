.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BE900, 0x8

glabel func_800BE900
    /* AF100 800BE900 0800E003 */  jr         $ra
    /* AF104 800BE904 00000000 */   nop
endlabel func_800BE900
