.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004E188, 0x358

glabel func_8004E188
    /* 3E988 8004E188 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 3E98C 8004E18C 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 3E990 8004E190 3800BEAF */  sw         $fp, 0x38($sp)
    /* 3E994 8004E194 3400B7AF */  sw         $s7, 0x34($sp)
    /* 3E998 8004E198 3000B6AF */  sw         $s6, 0x30($sp)
    /* 3E99C 8004E19C 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 3E9A0 8004E1A0 2800B4AF */  sw         $s4, 0x28($sp)
    /* 3E9A4 8004E1A4 2400B3AF */  sw         $s3, 0x24($sp)
    /* 3E9A8 8004E1A8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3E9AC 8004E1AC 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3E9B0 8004E1B0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3E9B4 8004E1B4 21888000 */  addu       $s1, $a0, $zero
    /* 3E9B8 8004E1B8 2190A000 */  addu       $s2, $a1, $zero
    /* 3E9BC 8004E1BC 40101100 */  sll        $v0, $s1, 1
    /* 3E9C0 8004E1C0 21105100 */  addu       $v0, $v0, $s1
    /* 3E9C4 8004E1C4 80100200 */  sll        $v0, $v0, 2
    /* 3E9C8 8004E1C8 23105100 */  subu       $v0, $v0, $s1
    /* 3E9CC 8004E1CC 00110200 */  sll        $v0, $v0, 4
    /* 3E9D0 8004E1D0 23105100 */  subu       $v0, $v0, $s1
    /* 3E9D4 8004E1D4 C0100200 */  sll        $v0, $v0, 3
    /* 3E9D8 8004E1D8 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 3E9DC 8004E1DC B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 3E9E0 8004E1E0 80181200 */  sll        $v1, $s2, 2
    /* 3E9E4 8004E1E4 21104400 */  addu       $v0, $v0, $a0
    /* 3E9E8 8004E1E8 21186200 */  addu       $v1, $v1, $v0
    /* 3E9EC 8004E1EC 0000628C */  lw         $v0, 0x0($v1)
    /* 3E9F0 8004E1F0 00000000 */  nop
    /* 3E9F4 8004E1F4 01004230 */  andi       $v0, $v0, 0x1
    /* 3E9F8 8004E1F8 AC004010 */  beqz       $v0, .L8004E4AC
    /* 3E9FC 8004E1FC 01001024 */   addiu     $s0, $zero, 0x1
    /* 3EA00 8004E200 1180143C */  lui        $s4, %hi(D_801176B4)
    /* 3EA04 8004E204 B4769426 */  addiu      $s4, $s4, %lo(D_801176B4)
    /* 3EA08 8004E208 80981200 */  sll        $s3, $s2, 2
    /* 3EA0C 8004E20C 1280153C */  lui        $s5, %hi(D_8011A275)
    /* 3EA10 8004E210 75A2B526 */  addiu      $s5, $s5, %lo(D_8011A275)
    /* 3EA14 8004E214 08001E3C */  lui        $fp, (0x80800 >> 16)
    /* 3EA18 8004E218 0008DE37 */  ori        $fp, $fp, (0x80800 & 0xFFFF)
    /* 3EA1C 8004E21C 40101100 */  sll        $v0, $s1, 1
    /* 3EA20 8004E220 21105100 */  addu       $v0, $v0, $s1
    /* 3EA24 8004E224 80B80200 */  sll        $s7, $v0, 2
    /* 3EA28 8004E228 23B8F102 */  subu       $s7, $s7, $s1
    /* 3EA2C 8004E22C 40B01200 */  sll        $s6, $s2, 1
    /* 3EA30 8004E230 21B0D202 */  addu       $s6, $s6, $s2
  .L8004E234:
    /* 3EA34 8004E234 0800022A */  slti       $v0, $s0, 0x8
    /* 3EA38 8004E238 9C004010 */  beqz       $v0, .L8004E4AC
    /* 3EA3C 8004E23C 00000000 */   nop
    /* 3EA40 8004E240 98001112 */  beq        $s0, $s1, .L8004E4A4
    /* 3EA44 8004E244 00000000 */   nop
    /* 3EA48 8004E248 96001212 */  beq        $s0, $s2, .L8004E4A4
    /* 3EA4C 8004E24C 40101100 */   sll       $v0, $s1, 1
    /* 3EA50 8004E250 21105100 */  addu       $v0, $v0, $s1
    /* 3EA54 8004E254 80100200 */  sll        $v0, $v0, 2
    /* 3EA58 8004E258 23105100 */  subu       $v0, $v0, $s1
    /* 3EA5C 8004E25C 00110200 */  sll        $v0, $v0, 4
    /* 3EA60 8004E260 23105100 */  subu       $v0, $v0, $s1
    /* 3EA64 8004E264 C0100200 */  sll        $v0, $v0, 3
    /* 3EA68 8004E268 80181000 */  sll        $v1, $s0, 2
    /* 3EA6C 8004E26C 21105400 */  addu       $v0, $v0, $s4
    /* 3EA70 8004E270 21186200 */  addu       $v1, $v1, $v0
    /* 3EA74 8004E274 0000628C */  lw         $v0, 0x0($v1)
    /* 3EA78 8004E278 00000000 */  nop
    /* 3EA7C 8004E27C 08004230 */  andi       $v0, $v0, 0x8
    /* 3EA80 8004E280 88004010 */  beqz       $v0, .L8004E4A4
    /* 3EA84 8004E284 40101000 */   sll       $v0, $s0, 1
    /* 3EA88 8004E288 21105000 */  addu       $v0, $v0, $s0
    /* 3EA8C 8004E28C 80100200 */  sll        $v0, $v0, 2
    /* 3EA90 8004E290 23105000 */  subu       $v0, $v0, $s0
    /* 3EA94 8004E294 00110200 */  sll        $v0, $v0, 4
    /* 3EA98 8004E298 23105000 */  subu       $v0, $v0, $s0
    /* 3EA9C 8004E29C C0100200 */  sll        $v0, $v0, 3
    /* 3EAA0 8004E2A0 21105400 */  addu       $v0, $v0, $s4
    /* 3EAA4 8004E2A4 21106202 */  addu       $v0, $s3, $v0
    /* 3EAA8 8004E2A8 0000438C */  lw         $v1, 0x0($v0)
    /* 3EAAC 8004E2AC 00000000 */  nop
    /* 3EAB0 8004E2B0 08206230 */  andi       $v0, $v1, 0x2008
    /* 3EAB4 8004E2B4 7B004014 */  bnez       $v0, .L8004E4A4
    /* 3EAB8 8004E2B8 01006230 */   andi      $v0, $v1, 0x1
    /* 3EABC 8004E2BC 79004010 */  beqz       $v0, .L8004E4A4
    /* 3EAC0 8004E2C0 00000000 */   nop
    /* 3EAC4 8004E2C4 5D54020C */  jal        func_80095174
    /* 3EAC8 8004E2C8 21202002 */   addu      $a0, $s1, $zero
    /* 3EACC 8004E2CC 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 3EAD0 8004E2D0 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 3EAD4 8004E2D4 A587030C */  jal        func_800E1E94
    /* 3EAD8 8004E2D8 21284000 */   addu      $a1, $v0, $zero
    /* 3EADC 8004E2DC 5D54020C */  jal        func_80095174
    /* 3EAE0 8004E2E0 21200002 */   addu      $a0, $s0, $zero
    /* 3EAE4 8004E2E4 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* 3EAE8 8004E2E8 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* 3EAEC 8004E2EC A587030C */  jal        func_800E1E94
    /* 3EAF0 8004E2F0 21284000 */   addu      $a1, $v0, $zero
    /* 3EAF4 8004E2F4 5D54020C */  jal        func_80095174
    /* 3EAF8 8004E2F8 21204002 */   addu      $a0, $s2, $zero
    /* 3EAFC 8004E2FC 1280043C */  lui        $a0, %hi(D_8011FDE8)
    /* 3EB00 8004E300 E8FD8424 */  addiu      $a0, $a0, %lo(D_8011FDE8)
    /* 3EB04 8004E304 A587030C */  jal        func_800E1E94
    /* 3EB08 8004E308 21284000 */   addu      $a1, $v0, $zero
    /* 3EB0C 8004E30C 0000A392 */  lbu        $v1, 0x0($s5)
    /* 3EB10 8004E310 00000000 */  nop
    /* 3EB14 8004E314 07104302 */  srav       $v0, $v1, $s2
    /* 3EB18 8004E318 01004230 */  andi       $v0, $v0, 0x1
    /* 3EB1C 8004E31C 3D004010 */  beqz       $v0, .L8004E414
    /* 3EB20 8004E320 07102302 */   srav      $v0, $v1, $s1
    /* 3EB24 8004E324 01004230 */  andi       $v0, $v0, 0x1
    /* 3EB28 8004E328 5E004014 */  bnez       $v0, .L8004E4A4
    /* 3EB2C 8004E32C 00000000 */   nop
    /* 3EB30 8004E330 7F00A282 */  lb         $v0, 0x7F($s5)
    /* 3EB34 8004E334 1380073C */  lui        $a3, %hi(D_80135A70)
    /* 3EB38 8004E338 705AE724 */  addiu      $a3, $a3, %lo(D_80135A70)
    /* 3EB3C 8004E33C 03004010 */  beqz       $v0, .L8004E34C
    /* 3EB40 8004E340 00000000 */   nop
    /* 3EB44 8004E344 1380073C */  lui        $a3, %hi(D_80135B04)
    /* 3EB48 8004E348 045BE724 */  addiu      $a3, $a3, %lo(D_80135B04)
  .L8004E34C:
    /* 3EB4C 8004E34C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3EB50 8004E350 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3EB54 8004E354 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3EB58 8004E358 C3E90534 */  ori        $a1, $zero, 0xE9C3
    /* 3EB5C 8004E35C 18E3020C */  jal        func_800B8C60
    /* 3EB60 8004E360 21300000 */   addu      $a2, $zero, $zero
    /* 3EB64 8004E364 21200002 */  addu       $a0, $s0, $zero
    /* 3EB68 8004E368 21284002 */  addu       $a1, $s2, $zero
    /* 3EB6C 8004E36C F427010C */  jal        func_80049FD0
    /* 3EB70 8004E370 64000624 */   addiu     $a2, $zero, 0x64
    /* 3EB74 8004E374 21200002 */  addu       $a0, $s0, $zero
    /* 3EB78 8004E378 21284002 */  addu       $a1, $s2, $zero
    /* 3EB7C 8004E37C A275030C */  jal        func_800DD688
    /* 3EB80 8004E380 01240624 */   addiu     $a2, $zero, 0x2401
    /* 3EB84 8004E384 40101000 */  sll        $v0, $s0, 1
    /* 3EB88 8004E388 21105000 */  addu       $v0, $v0, $s0
    /* 3EB8C 8004E38C 80100200 */  sll        $v0, $v0, 2
    /* 3EB90 8004E390 23105000 */  subu       $v0, $v0, $s0
    /* 3EB94 8004E394 00110200 */  sll        $v0, $v0, 4
    /* 3EB98 8004E398 23105000 */  subu       $v0, $v0, $s0
    /* 3EB9C 8004E39C C0100200 */  sll        $v0, $v0, 3
    /* 3EBA0 8004E3A0 21105400 */  addu       $v0, $v0, $s4
    /* 3EBA4 8004E3A4 21106202 */  addu       $v0, $s3, $v0
    /* 3EBA8 8004E3A8 0000438C */  lw         $v1, 0x0($v0)
    /* 3EBAC 8004E3AC 00000000 */  nop
    /* 3EBB0 8004E3B0 25187E00 */  or         $v1, $v1, $fp
    /* 3EBB4 8004E3B4 000043AC */  sw         $v1, 0x0($v0)
    /* 3EBB8 8004E3B8 00111700 */  sll        $v0, $s7, 4
    /* 3EBBC 8004E3BC 23105100 */  subu       $v0, $v0, $s1
    /* 3EBC0 8004E3C0 C0100200 */  sll        $v0, $v0, 3
    /* 3EBC4 8004E3C4 21105400 */  addu       $v0, $v0, $s4
    /* 3EBC8 8004E3C8 21106202 */  addu       $v0, $s3, $v0
    /* 3EBCC 8004E3CC 0000438C */  lw         $v1, 0x0($v0)
    /* 3EBD0 8004E3D0 00000000 */  nop
    /* 3EBD4 8004E3D4 25187E00 */  or         $v1, $v1, $fp
    /* 3EBD8 8004E3D8 000043AC */  sw         $v1, 0x0($v0)
    /* 3EBDC 8004E3DC 80101600 */  sll        $v0, $s6, 2
    /* 3EBE0 8004E3E0 23105200 */  subu       $v0, $v0, $s2
    /* 3EBE4 8004E3E4 00110200 */  sll        $v0, $v0, 4
    /* 3EBE8 8004E3E8 23105200 */  subu       $v0, $v0, $s2
    /* 3EBEC 8004E3EC C0100200 */  sll        $v0, $v0, 3
    /* 3EBF0 8004E3F0 40181000 */  sll        $v1, $s0, 1
    /* 3EBF4 8004E3F4 1180083C */  lui        $t0, %hi(D_80117A56)
    /* 3EBF8 8004E3F8 567A0825 */  addiu      $t0, $t0, %lo(D_80117A56)
    /* 3EBFC 8004E3FC 21104800 */  addu       $v0, $v0, $t0
    /* 3EC00 8004E400 21186200 */  addu       $v1, $v1, $v0
    /* 3EC04 8004E404 1280023C */  lui        $v0, %hi(D_8011A262)
    /* 3EC08 8004E408 62A24294 */  lhu        $v0, %lo(D_8011A262)($v0)
    /* 3EC0C 8004E40C 29390108 */  j          .L8004E4A4
    /* 3EC10 8004E410 000062A4 */   sh        $v0, 0x0($v1)
  .L8004E414:
    /* 3EC14 8004E414 0000A292 */  lbu        $v0, 0x0($s5)
    /* 3EC18 8004E418 00000000 */  nop
    /* 3EC1C 8004E41C 07102202 */  srav       $v0, $v0, $s1
    /* 3EC20 8004E420 01004230 */  andi       $v0, $v0, 0x1
    /* 3EC24 8004E424 1F004010 */  beqz       $v0, .L8004E4A4
    /* 3EC28 8004E428 00000000 */   nop
    /* 3EC2C 8004E42C 7F00A282 */  lb         $v0, 0x7F($s5)
    /* 3EC30 8004E430 1380073C */  lui        $a3, %hi(D_80135A70)
    /* 3EC34 8004E434 705AE724 */  addiu      $a3, $a3, %lo(D_80135A70)
    /* 3EC38 8004E438 03004010 */  beqz       $v0, .L8004E448
    /* 3EC3C 8004E43C 00000000 */   nop
    /* 3EC40 8004E440 1380073C */  lui        $a3, %hi(D_80135B04)
    /* 3EC44 8004E444 045BE724 */  addiu      $a3, $a3, %lo(D_80135B04)
  .L8004E448:
    /* 3EC48 8004E448 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3EC4C 8004E44C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3EC50 8004E450 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3EC54 8004E454 4FEA0534 */  ori        $a1, $zero, 0xEA4F
    /* 3EC58 8004E458 18E3020C */  jal        func_800B8C60
    /* 3EC5C 8004E45C 21300000 */   addu      $a2, $zero, $zero
    /* 3EC60 8004E460 21200002 */  addu       $a0, $s0, $zero
    /* 3EC64 8004E464 21284002 */  addu       $a1, $s2, $zero
    /* 3EC68 8004E468 A275030C */  jal        func_800DD688
    /* 3EC6C 8004E46C 01240624 */   addiu     $a2, $zero, 0x2401
    /* 3EC70 8004E470 40101000 */  sll        $v0, $s0, 1
    /* 3EC74 8004E474 21105000 */  addu       $v0, $v0, $s0
    /* 3EC78 8004E478 80100200 */  sll        $v0, $v0, 2
    /* 3EC7C 8004E47C 23105000 */  subu       $v0, $v0, $s0
    /* 3EC80 8004E480 00110200 */  sll        $v0, $v0, 4
    /* 3EC84 8004E484 23105000 */  subu       $v0, $v0, $s0
    /* 3EC88 8004E488 C0100200 */  sll        $v0, $v0, 3
    /* 3EC8C 8004E48C 21105400 */  addu       $v0, $v0, $s4
    /* 3EC90 8004E490 21106202 */  addu       $v0, $s3, $v0
    /* 3EC94 8004E494 0000438C */  lw         $v1, 0x0($v0)
    /* 3EC98 8004E498 00000000 */  nop
    /* 3EC9C 8004E49C 25187E00 */  or         $v1, $v1, $fp
    /* 3ECA0 8004E4A0 000043AC */  sw         $v1, 0x0($v0)
  .L8004E4A4:
    /* 3ECA4 8004E4A4 8D380108 */  j          .L8004E234
    /* 3ECA8 8004E4A8 01001026 */   addiu     $s0, $s0, 0x1
  .L8004E4AC:
    /* 3ECAC 8004E4AC 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 3ECB0 8004E4B0 3800BE8F */  lw         $fp, 0x38($sp)
    /* 3ECB4 8004E4B4 3400B78F */  lw         $s7, 0x34($sp)
    /* 3ECB8 8004E4B8 3000B68F */  lw         $s6, 0x30($sp)
    /* 3ECBC 8004E4BC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 3ECC0 8004E4C0 2800B48F */  lw         $s4, 0x28($sp)
    /* 3ECC4 8004E4C4 2400B38F */  lw         $s3, 0x24($sp)
    /* 3ECC8 8004E4C8 2000B28F */  lw         $s2, 0x20($sp)
    /* 3ECCC 8004E4CC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3ECD0 8004E4D0 1800B08F */  lw         $s0, 0x18($sp)
    /* 3ECD4 8004E4D4 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 3ECD8 8004E4D8 0800E003 */  jr         $ra
    /* 3ECDC 8004E4DC 00000000 */   nop
endlabel func_8004E188
