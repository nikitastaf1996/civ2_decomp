.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A198, 0x20

glabel func_8001A198
    /* A998 8001A198 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A99C 8001A19C 1000BFAF */  sw         $ra, 0x10($sp)
    /* A9A0 8001A1A0 7062000C */  jal        func_800189C0
    /* A9A4 8001A1A4 FFFFA530 */   andi      $a1, $a1, 0xFFFF
    /* A9A8 8001A1A8 1000BF8F */  lw         $ra, 0x10($sp)
    /* A9AC 8001A1AC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A9B0 8001A1B0 0800E003 */  jr         $ra
    /* A9B4 8001A1B4 00000000 */   nop
endlabel func_8001A198
