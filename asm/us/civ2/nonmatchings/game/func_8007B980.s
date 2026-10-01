.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007B980, 0x6C

glabel func_8007B980
    /* 6C180 8007B980 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6C184 8007B984 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 6C188 8007B988 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6C18C 8007B98C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6C190 8007B990 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6C194 8007B994 2190A000 */  addu       $s2, $a1, $zero
    /* 6C198 8007B998 FFFF1024 */  addiu      $s0, $zero, -0x1
    /* 6C19C 8007B99C E6ED010C */  jal        func_8007B798
    /* 6C1A0 8007B9A0 FFFF1124 */   addiu     $s1, $zero, -0x1
  .L8007B9A4:
    /* 6C1A4 8007B9A4 09004004 */  bltz       $v0, .L8007B9CC
    /* 6C1A8 8007B9A8 00000000 */   nop
    /* 6C1AC 8007B9AC 01001026 */  addiu      $s0, $s0, 0x1
    /* 6C1B0 8007B9B0 02005016 */  bne        $s2, $s0, .L8007B9BC
    /* 6C1B4 8007B9B4 00000000 */   nop
    /* 6C1B8 8007B9B8 21884000 */  addu       $s1, $v0, $zero
  .L8007B9BC:
    /* 6C1BC 8007B9BC BFED010C */  jal        func_8007B6FC
    /* 6C1C0 8007B9C0 21204000 */   addu      $a0, $v0, $zero
    /* 6C1C4 8007B9C4 F7FF2006 */  bltz       $s1, .L8007B9A4
    /* 6C1C8 8007B9C8 00000000 */   nop
  .L8007B9CC:
    /* 6C1CC 8007B9CC 21102002 */  addu       $v0, $s1, $zero
    /* 6C1D0 8007B9D0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 6C1D4 8007B9D4 1800B28F */  lw         $s2, 0x18($sp)
    /* 6C1D8 8007B9D8 1400B18F */  lw         $s1, 0x14($sp)
    /* 6C1DC 8007B9DC 1000B08F */  lw         $s0, 0x10($sp)
    /* 6C1E0 8007B9E0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6C1E4 8007B9E4 0800E003 */  jr         $ra
    /* 6C1E8 8007B9E8 00000000 */   nop
endlabel func_8007B980
