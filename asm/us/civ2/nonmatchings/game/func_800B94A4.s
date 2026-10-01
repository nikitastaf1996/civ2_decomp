.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B94A4, 0x118

glabel func_800B94A4
    /* A9CA4 800B94A4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A9CA8 800B94A8 2800B2AF */  sw         $s2, 0x28($sp)
    /* A9CAC 800B94AC 21908000 */  addu       $s2, $a0, $zero
    /* A9CB0 800B94B0 2400B1AF */  sw         $s1, 0x24($sp)
    /* A9CB4 800B94B4 21880000 */  addu       $s1, $zero, $zero
    /* A9CB8 800B94B8 2000B0AF */  sw         $s0, 0x20($sp)
    /* A9CBC 800B94BC 21804002 */  addu       $s0, $s2, $zero
    /* A9CC0 800B94C0 2C00BFAF */  sw         $ra, 0x2C($sp)
  .L800B94C4:
    /* A9CC4 800B94C4 8803048E */  lw         $a0, 0x388($s0)
    /* A9CC8 800B94C8 00000000 */  nop
    /* A9CCC 800B94CC 04008010 */  beqz       $a0, .L800B94E0
    /* A9CD0 800B94D0 00000000 */   nop
    /* A9CD4 800B94D4 E511040C */  jal        func_80104794
    /* A9CD8 800B94D8 00000000 */   nop
    /* A9CDC 800B94DC 880300AE */  sw         $zero, 0x388($s0)
  .L800B94E0:
    /* A9CE0 800B94E0 01003126 */  addiu      $s1, $s1, 0x1
    /* A9CE4 800B94E4 0A00222A */  slti       $v0, $s1, 0xA
    /* A9CE8 800B94E8 F6FF4014 */  bnez       $v0, .L800B94C4
    /* A9CEC 800B94EC 04001026 */   addiu     $s0, $s0, 0x4
    /* A9CF0 800B94F0 3403428E */  lw         $v0, 0x334($s2)
    /* A9CF4 800B94F4 00000000 */  nop
    /* A9CF8 800B94F8 29004004 */  bltz       $v0, .L800B95A0
    /* A9CFC 800B94FC 2C004426 */   addiu     $a0, $s2, 0x2C
    /* A9D00 800B9500 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A9D04 800B9504 D9DC030C */  jal        func_800F7364
    /* A9D08 800B9508 340342AE */   sw        $v0, 0x334($s2)
    /* A9D0C 800B950C C74A020C */  jal        func_80092B1C
    /* A9D10 800B9510 21204002 */   addu      $a0, $s2, $zero
    /* A9D14 800B9514 1280023C */  lui        $v0, %hi(D_8011E748)
    /* A9D18 800B9518 48E7428C */  lw         $v0, %lo(D_8011E748)($v0)
    /* A9D1C 800B951C 00000000 */  nop
    /* A9D20 800B9520 0C004014 */  bnez       $v0, .L800B9554
    /* A9D24 800B9524 00000000 */   nop
    /* A9D28 800B9528 1680023C */  lui        $v0, %hi(D_8015877C)
    /* A9D2C 800B952C 7C87428C */  lw         $v0, %lo(D_8015877C)($v0)
    /* A9D30 800B9530 00000000 */  nop
    /* A9D34 800B9534 07004010 */  beqz       $v0, .L800B9554
    /* A9D38 800B9538 40010424 */   addiu     $a0, $zero, 0x140
    /* A9D3C 800B953C 0E1F040C */  jal        func_80107C38
    /* A9D40 800B9540 F0000524 */   addiu     $a1, $zero, 0xF0
    /* A9D44 800B9544 1280013C */  lui        $at, %hi(D_8011E748)
    /* A9D48 800B9548 48E722AC */  sw         $v0, %lo(D_8011E748)($at)
    /* A9D4C 800B954C 5674020C */  jal        func_8009D158
    /* A9D50 800B9550 00000000 */   nop
  .L800B9554:
    /* A9D54 800B9554 1800A427 */  addiu      $a0, $sp, 0x18
    /* A9D58 800B9558 21280000 */  addu       $a1, $zero, $zero
    /* A9D5C 800B955C 78000624 */  addiu      $a2, $zero, 0x78
    /* A9D60 800B9560 40010224 */  addiu      $v0, $zero, 0x140
    /* A9D64 800B9564 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* A9D68 800B9568 F0000224 */  addiu      $v0, $zero, 0xF0
    /* A9D6C 800B956C 28025026 */  addiu      $s0, $s2, 0x228
    /* A9D70 800B9570 E8030724 */  addiu      $a3, $zero, 0x3E8
    /* A9D74 800B9574 1800A0A7 */  sh         $zero, 0x18($sp)
    /* A9D78 800B9578 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* A9D7C 800B957C 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* A9D80 800B9580 011D040C */  jal        func_80107404
    /* A9D84 800B9584 1000B0AF */   sw        $s0, 0x10($sp)
    /* A9D88 800B9588 B31E040C */  jal        func_80107ACC
    /* A9D8C 800B958C 00000000 */   nop
    /* A9D90 800B9590 21200002 */  addu       $a0, $s0, $zero
    /* A9D94 800B9594 21280000 */  addu       $a1, $zero, $zero
    /* A9D98 800B9598 A9E0030C */  jal        func_800F82A4
    /* A9D9C 800B959C 21300000 */   addu      $a2, $zero, $zero
  .L800B95A0:
    /* A9DA0 800B95A0 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* A9DA4 800B95A4 2800B28F */  lw         $s2, 0x28($sp)
    /* A9DA8 800B95A8 2400B18F */  lw         $s1, 0x24($sp)
    /* A9DAC 800B95AC 2000B08F */  lw         $s0, 0x20($sp)
    /* A9DB0 800B95B0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* A9DB4 800B95B4 0800E003 */  jr         $ra
    /* A9DB8 800B95B8 00000000 */   nop
endlabel func_800B94A4
