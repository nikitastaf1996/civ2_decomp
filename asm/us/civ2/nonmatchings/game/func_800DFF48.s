.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DFF48, 0x8

glabel func_800DFF48
    /* D0748 800DFF48 0800E003 */  jr         $ra
    /* D074C 800DFF4C 00000000 */   nop
endlabel func_800DFF48
