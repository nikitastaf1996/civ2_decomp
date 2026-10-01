.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BBB50, 0x8

glabel func_800BBB50
    /* AC350 800BBB50 0800E003 */  jr         $ra
    /* AC354 800BBB54 00000000 */   nop
endlabel func_800BBB50
