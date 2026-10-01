.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80092B1C, 0x40

glabel func_80092B1C
    /* 8331C 80092B1C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 83320 80092B20 1400BFAF */  sw         $ra, 0x14($sp)
    /* 83324 80092B24 1000B0AF */  sw         $s0, 0x10($sp)
    /* 83328 80092B28 A54A020C */  jal        func_80092A94
    /* 8332C 80092B2C 21808000 */   addu      $s0, $a0, $zero
    /* 83330 80092B30 7CEA030C */  jal        func_800FA9F0
    /* 83334 80092B34 2C000426 */   addiu     $a0, $s0, 0x2C
    /* 83338 80092B38 21200002 */  addu       $a0, $s0, $zero
    /* 8333C 80092B3C 21280000 */  addu       $a1, $zero, $zero
    /* 83340 80092B40 A9E0030C */  jal        func_800F82A4
    /* 83344 80092B44 21300000 */   addu      $a2, $zero, $zero
    /* 83348 80092B48 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8334C 80092B4C 1000B08F */  lw         $s0, 0x10($sp)
    /* 83350 80092B50 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 83354 80092B54 0800E003 */  jr         $ra
    /* 83358 80092B58 00000000 */   nop
endlabel func_80092B1C
