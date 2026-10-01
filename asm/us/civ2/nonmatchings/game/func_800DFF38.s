.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DFF38, 0x8

glabel func_800DFF38
    /* D0738 800DFF38 0800E003 */  jr         $ra
    /* D073C 800DFF3C 00000000 */   nop
endlabel func_800DFF38
