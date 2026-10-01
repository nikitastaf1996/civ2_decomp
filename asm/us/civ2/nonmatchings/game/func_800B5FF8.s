.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B5FF8, 0x8

glabel func_800B5FF8
    /* A67F8 800B5FF8 0800E003 */  jr         $ra
    /* A67FC 800B5FFC 00000000 */   nop
endlabel func_800B5FF8
