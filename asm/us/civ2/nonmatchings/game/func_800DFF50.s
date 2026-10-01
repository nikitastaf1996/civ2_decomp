.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DFF50, 0x8

glabel func_800DFF50
    /* D0750 800DFF50 0800E003 */  jr         $ra
    /* D0754 800DFF54 00000000 */   nop
endlabel func_800DFF50
