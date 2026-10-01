.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80092B5C, 0x84

glabel func_80092B5C
    /* 8335C 80092B5C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 83360 80092B60 2000BFAF */  sw         $ra, 0x20($sp)
    /* 83364 80092B64 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 83368 80092B68 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8336C 80092B6C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 83370 80092B70 1000B0AF */  sw         $s0, 0x10($sp)
    /* 83374 80092B74 21808000 */  addu       $s0, $a0, $zero
    /* 83378 80092B78 2198A000 */  addu       $s3, $a1, $zero
    /* 8337C 80092B7C 0180123C */  lui        $s2, %hi(D_800138BC)
    /* 83380 80092B80 BC385226 */  addiu      $s2, $s2, %lo(D_800138BC)
    /* 83384 80092B84 280012AE */  sw         $s2, 0x28($s0)
    /* 83388 80092B88 2C001126 */  addiu      $s1, $s0, 0x2C
    /* 8338C 80092B8C 7CEA030C */  jal        func_800FA9F0
    /* 83390 80092B90 21202002 */   addu      $a0, $s1, $zero
    /* 83394 80092B94 21200002 */  addu       $a0, $s0, $zero
    /* 83398 80092B98 21280000 */  addu       $a1, $zero, $zero
    /* 8339C 80092B9C A9E0030C */  jal        func_800F82A4
    /* 833A0 80092BA0 21300000 */   addu      $a2, $zero, $zero
    /* 833A4 80092BA4 280012AE */  sw         $s2, 0x28($s0)
    /* 833A8 80092BA8 21202002 */  addu       $a0, $s1, $zero
    /* 833AC 80092BAC F5E9030C */  jal        func_800FA7D4
    /* 833B0 80092BB0 21280000 */   addu      $a1, $zero, $zero
    /* 833B4 80092BB4 21200002 */  addu       $a0, $s0, $zero
    /* 833B8 80092BB8 4CE1030C */  jal        func_800F8530
    /* 833BC 80092BBC 21286002 */   addu      $a1, $s3, $zero
    /* 833C0 80092BC0 2000BF8F */  lw         $ra, 0x20($sp)
    /* 833C4 80092BC4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 833C8 80092BC8 1800B28F */  lw         $s2, 0x18($sp)
    /* 833CC 80092BCC 1400B18F */  lw         $s1, 0x14($sp)
    /* 833D0 80092BD0 1000B08F */  lw         $s0, 0x10($sp)
    /* 833D4 80092BD4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 833D8 80092BD8 0800E003 */  jr         $ra
    /* 833DC 80092BDC 00000000 */   nop
endlabel func_80092B5C
