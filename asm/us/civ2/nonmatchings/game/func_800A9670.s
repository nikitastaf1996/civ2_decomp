.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A9670, 0x8

glabel func_800A9670
    /* 99E70 800A9670 0800E003 */  jr         $ra
    /* 99E74 800A9674 00000000 */   nop
endlabel func_800A9670
