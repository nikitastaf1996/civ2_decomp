.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DE668, 0x8

glabel func_800DE668
    /* CEE68 800DE668 0800E003 */  jr         $ra
    /* CEE6C 800DE66C 00000000 */   nop
endlabel func_800DE668
