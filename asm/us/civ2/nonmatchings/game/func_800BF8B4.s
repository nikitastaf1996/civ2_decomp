.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BF8B4, 0x8

glabel func_800BF8B4
    /* B00B4 800BF8B4 0800E003 */  jr         $ra
    /* B00B8 800BF8B8 00000000 */   nop
endlabel func_800BF8B4
