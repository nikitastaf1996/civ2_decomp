.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D89FC, 0x20

glabel func_800D89FC
    /* C91FC 800D89FC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C9200 800D8A00 1000BFAF */  sw         $ra, 0x10($sp)
    /* C9204 800D8A04 E841030C */  jal        func_800D07A0
    /* C9208 800D8A08 00000000 */   nop
    /* C920C 800D8A0C 1000BF8F */  lw         $ra, 0x10($sp)
    /* C9210 800D8A10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C9214 800D8A14 0800E003 */  jr         $ra
    /* C9218 800D8A18 00000000 */   nop
endlabel func_800D89FC
