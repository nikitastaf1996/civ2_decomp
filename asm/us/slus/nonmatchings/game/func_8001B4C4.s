.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B4C4, 0x20

glabel func_8001B4C4
    /* BCC4 8001B4C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BCC8 8001B4C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* BCCC 8001B4CC 226D000C */  jal        func_8001B488
    /* BCD0 8001B4D0 20000424 */   addiu     $a0, $zero, 0x20
    /* BCD4 8001B4D4 1000BF8F */  lw         $ra, 0x10($sp)
    /* BCD8 8001B4D8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BCDC 8001B4DC 0800E003 */  jr         $ra
    /* BCE0 8001B4E0 00000000 */   nop
endlabel func_8001B4C4
