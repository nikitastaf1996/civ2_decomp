.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D8888, 0x8

glabel func_800D8888
    /* C9088 800D8888 0800E003 */  jr         $ra
    /* C908C 800D888C 00000000 */   nop
endlabel func_800D8888
