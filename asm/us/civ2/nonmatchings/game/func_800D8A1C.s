.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D8A1C, 0xCC

glabel func_800D8A1C
    /* C921C 800D8A1C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C9220 800D8A20 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* C9224 800D8A24 1800B2AF */  sw         $s2, 0x18($sp)
    /* C9228 800D8A28 1400B1AF */  sw         $s1, 0x14($sp)
    /* C922C 800D8A2C 1000B0AF */  sw         $s0, 0x10($sp)
    /* C9230 800D8A30 21908000 */  addu       $s2, $a0, $zero
    /* C9234 800D8A34 21800000 */  addu       $s0, $zero, $zero
    /* C9238 800D8A38 80101000 */  sll        $v0, $s0, 2
  .L800D8A3C:
    /* C923C 800D8A3C 21885200 */  addu       $s1, $v0, $s2
    /* C9240 800D8A40 C00F248E */  lw         $a0, 0xFC0($s1)
    /* C9244 800D8A44 00000000 */  nop
    /* C9248 800D8A48 04008010 */  beqz       $a0, .L800D8A5C
    /* C924C 800D8A4C 00000000 */   nop
    /* C9250 800D8A50 E511040C */  jal        func_80104794
    /* C9254 800D8A54 00000000 */   nop
    /* C9258 800D8A58 C00F20AE */  sw         $zero, 0xFC0($s1)
  .L800D8A5C:
    /* C925C 800D8A5C 01001026 */  addiu      $s0, $s0, 0x1
    /* C9260 800D8A60 0A00022A */  slti       $v0, $s0, 0xA
    /* C9264 800D8A64 F5FF4014 */  bnez       $v0, .L800D8A3C
    /* C9268 800D8A68 80101000 */   sll       $v0, $s0, 2
    /* C926C 800D8A6C 21800000 */  addu       $s0, $zero, $zero
    /* C9270 800D8A70 1280113C */  lui        $s1, %hi(D_80122C38)
    /* C9274 800D8A74 382C3126 */  addiu      $s1, $s1, %lo(D_80122C38)
  .L800D8A78:
    /* C9278 800D8A78 0400022A */  slti       $v0, $s0, 0x4
    /* C927C 800D8A7C 0B004010 */  beqz       $v0, .L800D8AAC
    /* C9280 800D8A80 C0201000 */   sll       $a0, $s0, 3
    /* C9284 800D8A84 21209000 */  addu       $a0, $a0, $s0
    /* C9288 800D8A88 80200400 */  sll        $a0, $a0, 2
    /* C928C 800D8A8C 21209000 */  addu       $a0, $a0, $s0
    /* C9290 800D8A90 80200400 */  sll        $a0, $a0, 2
    /* C9294 800D8A94 21209100 */  addu       $a0, $a0, $s1
    /* C9298 800D8A98 21280000 */  addu       $a1, $zero, $zero
    /* C929C 800D8A9C A9E0030C */  jal        func_800F82A4
    /* C92A0 800D8AA0 21300000 */   addu      $a2, $zero, $zero
    /* C92A4 800D8AA4 9E620308 */  j          .L800D8A78
    /* C92A8 800D8AA8 01001026 */   addiu     $s0, $s0, 0x1
  .L800D8AAC:
    /* C92AC 800D8AAC 7CEA030C */  jal        func_800FA9F0
    /* C92B0 800D8AB0 2C004426 */   addiu     $a0, $s2, 0x2C
    /* C92B4 800D8AB4 21204002 */  addu       $a0, $s2, $zero
    /* C92B8 800D8AB8 21280000 */  addu       $a1, $zero, $zero
    /* C92BC 800D8ABC A9E0030C */  jal        func_800F82A4
    /* C92C0 800D8AC0 21300000 */   addu      $a2, $zero, $zero
    /* C92C4 800D8AC4 5D5F030C */  jal        func_800D7D74
    /* C92C8 800D8AC8 00000000 */   nop
    /* C92CC 800D8ACC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* C92D0 800D8AD0 1800B28F */  lw         $s2, 0x18($sp)
    /* C92D4 800D8AD4 1400B18F */  lw         $s1, 0x14($sp)
    /* C92D8 800D8AD8 1000B08F */  lw         $s0, 0x10($sp)
    /* C92DC 800D8ADC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C92E0 800D8AE0 0800E003 */  jr         $ra
    /* C92E4 800D8AE4 00000000 */   nop
endlabel func_800D8A1C
