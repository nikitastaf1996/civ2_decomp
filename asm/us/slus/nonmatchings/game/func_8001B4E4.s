.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B4E4, 0x20

glabel func_8001B4E4
    /* BCE4 8001B4E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BCE8 8001B4E8 1000BFAF */  sw         $ra, 0x10($sp)
    /* BCEC 8001B4EC 226D000C */  jal        func_8001B488
    /* BCF0 8001B4F0 2E000424 */   addiu     $a0, $zero, 0x2E
    /* BCF4 8001B4F4 1000BF8F */  lw         $ra, 0x10($sp)
    /* BCF8 8001B4F8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BCFC 8001B4FC 0800E003 */  jr         $ra
    /* BD00 8001B500 00000000 */   nop
endlabel func_8001B4E4
