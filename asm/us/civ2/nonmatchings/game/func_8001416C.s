.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001416C, 0x94

glabel func_8001416C
    /* 496C 8001416C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4970 80014170 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4974 80014174 21808000 */  addu       $s0, $a0, $zero
    /* 4978 80014178 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 497C 8001417C 2188A000 */  addu       $s1, $a1, $zero
    /* 4980 80014180 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4984 80014184 2190C000 */  addu       $s2, $a2, $zero
    /* 4988 80014188 2400BFAF */  sw         $ra, 0x24($sp)
    /* 498C 8001418C 6184030C */  jal        VSync
    /* 4990 80014190 21200000 */   addu      $a0, $zero, $zero
    /* 4994 80014194 1000A427 */  addiu      $a0, $sp, 0x10
    /* 4998 80014198 40010224 */  addiu      $v0, $zero, 0x140
    /* 499C 8001419C 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 49A0 800141A0 E0010224 */  addiu      $v0, $zero, 0x1E0
    /* 49A4 800141A4 FF000532 */  andi       $a1, $s0, 0xFF
    /* 49A8 800141A8 FF002632 */  andi       $a2, $s1, 0xFF
    /* 49AC 800141AC FF004732 */  andi       $a3, $s2, 0xFF
    /* 49B0 800141B0 1000A0A7 */  sh         $zero, 0x10($sp)
    /* 49B4 800141B4 1200A0A7 */  sh         $zero, 0x12($sp)
    /* 49B8 800141B8 8D8D030C */  jal        ClearImage
    /* 49BC 800141BC 1600A2A7 */   sh        $v0, 0x16($sp)
    /* 49C0 800141C0 068D030C */  jal        SetDispMask
    /* 49C4 800141C4 01000424 */   addiu     $a0, $zero, 0x1
    /* 49C8 800141C8 21800000 */  addu       $s0, $zero, $zero
  .L800141CC:
    /* 49CC 800141CC 6184030C */  jal        VSync
    /* 49D0 800141D0 21200000 */   addu      $a0, $zero, $zero
    /* 49D4 800141D4 01001026 */  addiu      $s0, $s0, 0x1
    /* 49D8 800141D8 1E00022A */  slti       $v0, $s0, 0x1E
    /* 49DC 800141DC FBFF4014 */  bnez       $v0, .L800141CC
    /* 49E0 800141E0 00000000 */   nop
    /* 49E4 800141E4 2400BF8F */  lw         $ra, 0x24($sp)
    /* 49E8 800141E8 2000B28F */  lw         $s2, 0x20($sp)
    /* 49EC 800141EC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 49F0 800141F0 1800B08F */  lw         $s0, 0x18($sp)
    /* 49F4 800141F4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 49F8 800141F8 0800E003 */  jr         $ra
    /* 49FC 800141FC 00000000 */   nop
endlabel func_8001416C
