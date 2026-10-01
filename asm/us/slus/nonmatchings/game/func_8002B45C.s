.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B45C, 0x94

glabel func_8002B45C
    /* 1BC5C 8002B45C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1BC60 8002B460 2400BFAF */  sw         $ra, 0x24($sp)
    /* 1BC64 8002B464 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1BC68 8002B468 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1BC6C 8002B46C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1BC70 8002B470 21808000 */  addu       $s0, $a0, $zero
    /* 1BC74 8002B474 2188A000 */  addu       $s1, $a1, $zero
    /* 1BC78 8002B478 2190C000 */  addu       $s2, $a2, $zero
    /* 1BC7C 8002B47C 23B3000C */  jal        VSync
    /* 1BC80 8002B480 21200000 */   addu      $a0, $zero, $zero
    /* 1BC84 8002B484 1000A0A7 */  sh         $zero, 0x10($sp)
    /* 1BC88 8002B488 1200A0A7 */  sh         $zero, 0x12($sp)
    /* 1BC8C 8002B48C 00020224 */  addiu      $v0, $zero, 0x200
    /* 1BC90 8002B490 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 1BC94 8002B494 E0010224 */  addiu      $v0, $zero, 0x1E0
    /* 1BC98 8002B498 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 1BC9C 8002B49C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1BCA0 8002B4A0 FF000532 */  andi       $a1, $s0, 0xFF
    /* 1BCA4 8002B4A4 FF002632 */  andi       $a2, $s1, 0xFF
    /* 1BCA8 8002B4A8 9BCF000C */  jal        ClearImage
    /* 1BCAC 8002B4AC FF004732 */   andi      $a3, $s2, 0xFF
    /* 1BCB0 8002B4B0 14CF000C */  jal        SetDispMask
    /* 1BCB4 8002B4B4 01000424 */   addiu     $a0, $zero, 0x1
    /* 1BCB8 8002B4B8 21800000 */  addu       $s0, $zero, $zero
  .L8002B4BC:
    /* 1BCBC 8002B4BC 23B3000C */  jal        VSync
    /* 1BCC0 8002B4C0 21200000 */   addu      $a0, $zero, $zero
    /* 1BCC4 8002B4C4 01001026 */  addiu      $s0, $s0, 0x1
    /* 1BCC8 8002B4C8 1E00022A */  slti       $v0, $s0, 0x1E
    /* 1BCCC 8002B4CC FBFF4014 */  bnez       $v0, .L8002B4BC
    /* 1BCD0 8002B4D0 00000000 */   nop
    /* 1BCD4 8002B4D4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 1BCD8 8002B4D8 2000B28F */  lw         $s2, 0x20($sp)
    /* 1BCDC 8002B4DC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 1BCE0 8002B4E0 1800B08F */  lw         $s0, 0x18($sp)
    /* 1BCE4 8002B4E4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1BCE8 8002B4E8 0800E003 */  jr         $ra
    /* 1BCEC 8002B4EC 00000000 */   nop
endlabel func_8002B45C
