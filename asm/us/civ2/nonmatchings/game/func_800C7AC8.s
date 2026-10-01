.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C7AC8, 0xAC

glabel func_800C7AC8
    /* B82C8 800C7AC8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B82CC 800C7ACC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* B82D0 800C7AD0 1800B2AF */  sw         $s2, 0x18($sp)
    /* B82D4 800C7AD4 1400B1AF */  sw         $s1, 0x14($sp)
    /* B82D8 800C7AD8 1000B0AF */  sw         $s0, 0x10($sp)
    /* B82DC 800C7ADC 21888000 */  addu       $s1, $a0, $zero
    /* B82E0 800C7AE0 540C80AF */  sw         $zero, %gp_rel(D_8015912C)($gp)
    /* B82E4 800C7AE4 C002248E */  lw         $a0, 0x2C0($s1)
    /* B82E8 800C7AE8 00000000 */  nop
    /* B82EC 800C7AEC 04008010 */  beqz       $a0, .L800C7B00
    /* B82F0 800C7AF0 2190A000 */   addu      $s2, $a1, $zero
    /* B82F4 800C7AF4 E511040C */  jal        func_80104794
    /* B82F8 800C7AF8 00000000 */   nop
    /* B82FC 800C7AFC C00220AE */  sw         $zero, 0x2C0($s1)
  .L800C7B00:
    /* B8300 800C7B00 08022426 */  addiu      $a0, $s1, 0x208
    /* B8304 800C7B04 12ED030C */  jal        func_800FB448
    /* B8308 800C7B08 02000524 */   addiu     $a1, $zero, 0x2
    /* B830C 800C7B0C 74012426 */  addiu      $a0, $s1, 0x174
    /* B8310 800C7B10 12ED030C */  jal        func_800FB448
    /* B8314 800C7B14 02000524 */   addiu     $a1, $zero, 0x2
    /* B8318 800C7B18 48012426 */  addiu      $a0, $s1, 0x148
    /* B831C 800C7B1C 4CE1030C */  jal        func_800F8530
    /* B8320 800C7B20 02000524 */   addiu     $a1, $zero, 0x2
    /* B8324 800C7B24 84003026 */  addiu      $s0, $s1, 0x84
    /* B8328 800C7B28 0180023C */  lui        $v0, %hi(D_800138BC)
    /* B832C 800C7B2C BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* B8330 800C7B30 AC0022AE */  sw         $v0, 0xAC($s1)
    /* B8334 800C7B34 B0002426 */  addiu      $a0, $s1, 0xB0
    /* B8338 800C7B38 F5E9030C */  jal        func_800FA7D4
    /* B833C 800C7B3C 21280000 */   addu      $a1, $zero, $zero
    /* B8340 800C7B40 21200002 */  addu       $a0, $s0, $zero
    /* B8344 800C7B44 4CE1030C */  jal        func_800F8530
    /* B8348 800C7B48 02000524 */   addiu     $a1, $zero, 0x2
    /* B834C 800C7B4C 21202002 */  addu       $a0, $s1, $zero
    /* B8350 800C7B50 F5E9030C */  jal        func_800FA7D4
    /* B8354 800C7B54 21284002 */   addu      $a1, $s2, $zero
    /* B8358 800C7B58 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* B835C 800C7B5C 1800B28F */  lw         $s2, 0x18($sp)
    /* B8360 800C7B60 1400B18F */  lw         $s1, 0x14($sp)
    /* B8364 800C7B64 1000B08F */  lw         $s0, 0x10($sp)
    /* B8368 800C7B68 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B836C 800C7B6C 0800E003 */  jr         $ra
    /* B8370 800C7B70 00000000 */   nop
endlabel func_800C7AC8
