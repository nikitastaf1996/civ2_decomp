.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009EEB0, 0x20

glabel func_8009EEB0
    /* 8F6B0 8009EEB0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8F6B4 8009EEB4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8F6B8 8009EEB8 B47B020C */  jal        func_8009EED0
    /* 8F6BC 8009EEBC 21280000 */   addu      $a1, $zero, $zero
    /* 8F6C0 8009EEC0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8F6C4 8009EEC4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8F6C8 8009EEC8 0800E003 */  jr         $ra
    /* 8F6CC 8009EECC 00000000 */   nop
endlabel func_8009EEB0
