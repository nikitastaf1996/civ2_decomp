.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6E00, 0x20

glabel func_800C6E00
    /* B7600 800C6E00 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B7604 800C6E04 1000BFAF */  sw         $ra, 0x10($sp)
    /* B7608 800C6E08 9987030C */  jal        func_800E1E64
    /* B760C 800C6E0C 00000000 */   nop
    /* B7610 800C6E10 1000BF8F */  lw         $ra, 0x10($sp)
    /* B7614 800C6E14 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B7618 800C6E18 0800E003 */  jr         $ra
    /* B761C 800C6E1C 00000000 */   nop
endlabel func_800C6E00
