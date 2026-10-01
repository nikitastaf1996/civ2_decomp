.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DF23C, 0x114

glabel func_800DF23C
    /* CFA3C 800DF23C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* CFA40 800DF240 3000BFAF */  sw         $ra, 0x30($sp)
    /* CFA44 800DF244 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* CFA48 800DF248 2800B0AF */  sw         $s0, 0x28($sp)
    /* CFA4C 800DF24C 21888000 */  addu       $s1, $a0, $zero
    /* CFA50 800DF250 2180A000 */  addu       $s0, $a1, $zero
    /* CFA54 800DF254 7907040C */  jal        func_80101DE4
    /* CFA58 800DF258 01000424 */   addiu     $a0, $zero, 0x1
    /* CFA5C 800DF25C 16000224 */  addiu      $v0, $zero, 0x16
    /* CFA60 800DF260 1800A2A7 */  sh         $v0, 0x18($sp)
    /* CFA64 800DF264 10000224 */  addiu      $v0, $zero, 0x10
    /* CFA68 800DF268 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* CFA6C 800DF26C 26010224 */  addiu      $v0, $zero, 0x126
    /* CFA70 800DF270 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* CFA74 800DF274 E0000224 */  addiu      $v0, $zero, 0xE0
    /* CFA78 800DF278 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* CFA7C 800DF27C 1000A0AF */  sw         $zero, 0x10($sp)
    /* CFA80 800DF280 1800A427 */  addiu      $a0, $sp, 0x18
    /* CFA84 800DF284 A0000524 */  addiu      $a1, $zero, 0xA0
    /* CFA88 800DF288 78000624 */  addiu      $a2, $zero, 0x78
    /* CFA8C 800DF28C 7D1C040C */  jal        func_801071F4
    /* CFA90 800DF290 401F0724 */   addiu     $a3, $zero, 0x1F40
    /* CFA94 800DF294 B31E040C */  jal        func_80107ACC
    /* CFA98 800DF298 00000000 */   nop
    /* CFA9C 800DF29C 7907040C */  jal        func_80101DE4
    /* CFAA0 800DF2A0 01000424 */   addiu     $a0, $zero, 0x1
    /* CFAA4 800DF2A4 1680023C */  lui        $v0, %hi(D_8015933C)
    /* CFAA8 800DF2A8 3C934280 */  lb         $v0, %lo(D_8015933C)($v0)
    /* CFAAC 800DF2AC 00000000 */  nop
    /* CFAB0 800DF2B0 0A004010 */  beqz       $v0, .L800DF2DC
    /* CFAB4 800DF2B4 F0000324 */   addiu     $v1, $zero, 0xF0
    /* CFAB8 800DF2B8 2000A0A7 */  sh         $zero, 0x20($sp)
    /* CFABC 800DF2BC 2200A3A7 */  sh         $v1, 0x22($sp)
    /* CFAC0 800DF2C0 40010224 */  addiu      $v0, $zero, 0x140
    /* CFAC4 800DF2C4 2400A2A7 */  sh         $v0, 0x24($sp)
    /* CFAC8 800DF2C8 2600A3A7 */  sh         $v1, 0x26($sp)
    /* CFACC 800DF2CC 2000A427 */  addiu      $a0, $sp, 0x20
    /* CFAD0 800DF2D0 21280000 */  addu       $a1, $zero, $zero
    /* CFAD4 800DF2D4 C07C0308 */  j          .L800DF300
    /* CFAD8 800DF2D8 21300000 */   addu      $a2, $zero, $zero
  .L800DF2DC:
    /* CFADC 800DF2DC 2000A0A7 */  sh         $zero, 0x20($sp)
    /* CFAE0 800DF2E0 2200A0A7 */  sh         $zero, 0x22($sp)
    /* CFAE4 800DF2E4 40010224 */  addiu      $v0, $zero, 0x140
    /* CFAE8 800DF2E8 2400A2A7 */  sh         $v0, 0x24($sp)
    /* CFAEC 800DF2EC F0000224 */  addiu      $v0, $zero, 0xF0
    /* CFAF0 800DF2F0 2600A2A7 */  sh         $v0, 0x26($sp)
    /* CFAF4 800DF2F4 2000A427 */  addiu      $a0, $sp, 0x20
    /* CFAF8 800DF2F8 21280000 */  addu       $a1, $zero, $zero
    /* CFAFC 800DF2FC F0000624 */  addiu      $a2, $zero, 0xF0
  .L800DF300:
    /* CFB00 800DF300 078E030C */  jal        MoveImage
    /* CFB04 800DF304 00000000 */   nop
    /* CFB08 800DF308 1800A0A7 */  sh         $zero, 0x18($sp)
    /* CFB0C 800DF30C 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* CFB10 800DF310 40010224 */  addiu      $v0, $zero, 0x140
    /* CFB14 800DF314 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* CFB18 800DF318 F0000224 */  addiu      $v0, $zero, 0xF0
    /* CFB1C 800DF31C 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* CFB20 800DF320 1800A427 */  addiu      $a0, $sp, 0x18
    /* CFB24 800DF324 A314020C */  jal        func_8008528C
    /* CFB28 800DF328 21280000 */   addu      $a1, $zero, $zero
    /* CFB2C 800DF32C 1C07040C */  jal        func_80101C70
    /* CFB30 800DF330 00000000 */   nop
    /* CFB34 800DF334 B00330A6 */  sh         $s0, 0x3B0($s1)
    /* CFB38 800DF338 3000BF8F */  lw         $ra, 0x30($sp)
    /* CFB3C 800DF33C 2C00B18F */  lw         $s1, 0x2C($sp)
    /* CFB40 800DF340 2800B08F */  lw         $s0, 0x28($sp)
    /* CFB44 800DF344 3800BD27 */  addiu      $sp, $sp, 0x38
    /* CFB48 800DF348 0800E003 */  jr         $ra
    /* CFB4C 800DF34C 00000000 */   nop
endlabel func_800DF23C
