.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DFF40, 0x8

glabel func_800DFF40
    /* D0740 800DFF40 0800E003 */  jr         $ra
    /* D0744 800DFF44 00000000 */   nop
endlabel func_800DFF40
