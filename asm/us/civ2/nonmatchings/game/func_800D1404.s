.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D1404, 0x8

glabel func_800D1404
    /* C1C04 800D1404 0800E003 */  jr         $ra
    /* C1C08 800D1408 00000000 */   nop
endlabel func_800D1404
