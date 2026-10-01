.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80089980, 0x1A0

glabel func_80089980
    /* 7A180 80089980 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 7A184 80089984 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 7A188 80089988 3800BEAF */  sw         $fp, 0x38($sp)
    /* 7A18C 8008998C 3400B7AF */  sw         $s7, 0x34($sp)
    /* 7A190 80089990 3000B6AF */  sw         $s6, 0x30($sp)
    /* 7A194 80089994 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 7A198 80089998 2800B4AF */  sw         $s4, 0x28($sp)
    /* 7A19C 8008999C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 7A1A0 800899A0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 7A1A4 800899A4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7A1A8 800899A8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 7A1AC 800899AC 21F08000 */  addu       $fp, $a0, $zero
    /* 7A1B0 800899B0 21B8A000 */  addu       $s7, $a1, $zero
    /* 7A1B4 800899B4 21A0C000 */  addu       $s4, $a2, $zero
    /* 7A1B8 800899B8 2188E000 */  addu       $s1, $a3, $zero
    /* 7A1BC 800899BC 0F270224 */  addiu      $v0, $zero, 0x270F
    /* 7A1C0 800899C0 4C0382AF */  sw         $v0, %gp_rel(D_80158824)($gp)
    /* 7A1C4 800899C4 07002006 */  bltz       $s1, .L800899E4
    /* 7A1C8 800899C8 FFFF1524 */   addiu     $s5, $zero, -0x1
    /* 7A1CC 800899CC 2E61020C */  jal        func_800984B8
    /* 7A1D0 800899D0 00000000 */   nop
    /* 7A1D4 800899D4 21B04000 */  addu       $s6, $v0, $zero
    /* 7A1D8 800899D8 0200C106 */  bgez       $s6, .L800899E4
    /* 7A1DC 800899DC 00000000 */   nop
    /* 7A1E0 800899E0 FFFF1124 */  addiu      $s1, $zero, -0x1
  .L800899E4:
    /* 7A1E4 800899E4 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 7A1E8 800899E8 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 7A1EC 800899EC 00000000 */  nop
    /* 7A1F0 800899F0 3D004018 */  blez       $v0, .L80089AE8
    /* 7A1F4 800899F4 21800000 */   addu      $s0, $zero, $zero
    /* 7A1F8 800899F8 40101000 */  sll        $v0, $s0, 1
  .L800899FC:
    /* 7A1FC 800899FC 21105000 */  addu       $v0, $v0, $s0
    /* 7A200 80089A00 80100200 */  sll        $v0, $v0, 2
    /* 7A204 80089A04 23105000 */  subu       $v0, $v0, $s0
    /* 7A208 80089A08 C0100200 */  sll        $v0, $v0, 3
    /* 7A20C 80089A0C 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 7A210 80089A10 21082200 */  addu       $at, $at, $v0
    /* 7A214 80089A14 D03E3384 */  lh         $s3, %lo(D_80113ED0)($at)
    /* 7A218 80089A18 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 7A21C 80089A1C 21082200 */  addu       $at, $at, $v0
    /* 7A220 80089A20 D23E3284 */  lh         $s2, %lo(D_80113ED2)($at)
    /* 7A224 80089A24 03002006 */  bltz       $s1, .L80089A34
    /* 7A228 80089A28 00000000 */   nop
    /* 7A22C 80089A2C 27003616 */  bne        $s1, $s6, .L80089ACC
    /* 7A230 80089A30 00000000 */   nop
  .L80089A34:
    /* 7A234 80089A34 11008006 */  bltz       $s4, .L80089A7C
    /* 7A238 80089A38 40101000 */   sll       $v0, $s0, 1
    /* 7A23C 80089A3C 21105000 */  addu       $v0, $v0, $s0
    /* 7A240 80089A40 80100200 */  sll        $v0, $v0, 2
    /* 7A244 80089A44 23105000 */  subu       $v0, $v0, $s0
    /* 7A248 80089A48 C0100200 */  sll        $v0, $v0, 3
    /* 7A24C 80089A4C 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 7A250 80089A50 21082200 */  addu       $at, $at, $v0
    /* 7A254 80089A54 D83E2380 */  lb         $v1, %lo(D_80113ED8)($at)
    /* 7A258 80089A58 FF008232 */  andi       $v0, $s4, 0xFF
    /* 7A25C 80089A5C 07006210 */  beq        $v1, $v0, .L80089A7C
    /* 7A260 80089A60 00000000 */   nop
    /* 7A264 80089A64 5000A88F */  lw         $t0, 0x50($sp)
    /* 7A268 80089A68 00000000 */  nop
    /* 7A26C 80089A6C 17000005 */  bltz       $t0, .L80089ACC
    /* 7A270 80089A70 00000000 */   nop
    /* 7A274 80089A74 15006814 */  bne        $v1, $t0, .L80089ACC
    /* 7A278 80089A78 00000000 */   nop
  .L80089A7C:
    /* 7A27C 80089A7C FEFF0224 */  addiu      $v0, $zero, -0x2
    /* 7A280 80089A80 06002216 */  bne        $s1, $v0, .L80089A9C
    /* 7A284 80089A84 2120C003 */   addu      $a0, $fp, $zero
    /* 7A288 80089A88 21200002 */  addu       $a0, $s0, $zero
    /* 7A28C 80089A8C C826020C */  jal        func_80089B20
    /* 7A290 80089A90 22000524 */   addiu     $a1, $zero, 0x22
    /* 7A294 80089A94 0D004010 */  beqz       $v0, .L80089ACC
    /* 7A298 80089A98 2120C003 */   addu      $a0, $fp, $zero
  .L80089A9C:
    /* 7A29C 80089A9C 2128E002 */  addu       $a1, $s7, $zero
    /* 7A2A0 80089AA0 21306002 */  addu       $a2, $s3, $zero
    /* 7A2A4 80089AA4 A73B030C */  jal        func_800CEE9C
    /* 7A2A8 80089AA8 21384002 */   addu      $a3, $s2, $zero
    /* 7A2AC 80089AAC 21184000 */  addu       $v1, $v0, $zero
    /* 7A2B0 80089AB0 4C03828F */  lw         $v0, %gp_rel(D_80158824)($gp)
    /* 7A2B4 80089AB4 00000000 */  nop
    /* 7A2B8 80089AB8 2A104300 */  slt        $v0, $v0, $v1
    /* 7A2BC 80089ABC 03004014 */  bnez       $v0, .L80089ACC
    /* 7A2C0 80089AC0 00000000 */   nop
    /* 7A2C4 80089AC4 4C0383AF */  sw         $v1, %gp_rel(D_80158824)($gp)
    /* 7A2C8 80089AC8 21A80002 */  addu       $s5, $s0, $zero
  .L80089ACC:
    /* 7A2CC 80089ACC 01001026 */  addiu      $s0, $s0, 0x1
    /* 7A2D0 80089AD0 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 7A2D4 80089AD4 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 7A2D8 80089AD8 00000000 */  nop
    /* 7A2DC 80089ADC 2A100202 */  slt        $v0, $s0, $v0
    /* 7A2E0 80089AE0 C6FF4014 */  bnez       $v0, .L800899FC
    /* 7A2E4 80089AE4 40101000 */   sll       $v0, $s0, 1
  .L80089AE8:
    /* 7A2E8 80089AE8 2110A002 */  addu       $v0, $s5, $zero
    /* 7A2EC 80089AEC 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 7A2F0 80089AF0 3800BE8F */  lw         $fp, 0x38($sp)
    /* 7A2F4 80089AF4 3400B78F */  lw         $s7, 0x34($sp)
    /* 7A2F8 80089AF8 3000B68F */  lw         $s6, 0x30($sp)
    /* 7A2FC 80089AFC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 7A300 80089B00 2800B48F */  lw         $s4, 0x28($sp)
    /* 7A304 80089B04 2400B38F */  lw         $s3, 0x24($sp)
    /* 7A308 80089B08 2000B28F */  lw         $s2, 0x20($sp)
    /* 7A30C 80089B0C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 7A310 80089B10 1800B08F */  lw         $s0, 0x18($sp)
    /* 7A314 80089B14 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 7A318 80089B18 0800E003 */  jr         $ra
    /* 7A31C 80089B1C 00000000 */   nop
endlabel func_80089980
