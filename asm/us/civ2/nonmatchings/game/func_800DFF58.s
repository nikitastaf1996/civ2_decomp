.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DFF58, 0x8

glabel func_800DFF58
    /* D0758 800DFF58 0800E003 */  jr         $ra
    /* D075C 800DFF5C 00000000 */   nop
endlabel func_800DFF58
