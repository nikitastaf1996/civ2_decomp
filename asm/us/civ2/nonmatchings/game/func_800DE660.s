.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DE660, 0x8

glabel func_800DE660
    /* CEE60 800DE660 0800E003 */  jr         $ra
    /* CEE64 800DE664 00000000 */   nop
endlabel func_800DE660
