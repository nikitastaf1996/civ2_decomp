.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CE230, 0x8

glabel func_800CE230
    /* BEA30 800CE230 0800E003 */  jr         $ra
    /* BEA34 800CE234 00000000 */   nop
endlabel func_800CE230
