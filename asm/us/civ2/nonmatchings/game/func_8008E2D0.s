.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008E2D0, 0x6C0

glabel func_8008E2D0
    /* 7EAD0 8008E2D0 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 7EAD4 8008E2D4 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* 7EAD8 8008E2D8 6800BEAF */  sw         $fp, 0x68($sp)
    /* 7EADC 8008E2DC 6400B7AF */  sw         $s7, 0x64($sp)
    /* 7EAE0 8008E2E0 6000B6AF */  sw         $s6, 0x60($sp)
    /* 7EAE4 8008E2E4 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 7EAE8 8008E2E8 5800B4AF */  sw         $s4, 0x58($sp)
    /* 7EAEC 8008E2EC 5400B3AF */  sw         $s3, 0x54($sp)
    /* 7EAF0 8008E2F0 5000B2AF */  sw         $s2, 0x50($sp)
    /* 7EAF4 8008E2F4 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 7EAF8 8008E2F8 21A08000 */  addu       $s4, $a0, $zero
    /* 7EAFC 8008E2FC 97018006 */  bltz       $s4, .L8008E95C
    /* 7EB00 8008E300 4800B0AF */   sw        $s0, 0x48($sp)
    /* 7EB04 8008E304 1280033C */  lui        $v1, %hi(D_80122AB0)
    /* 7EB08 8008E308 B02A6324 */  addiu      $v1, $v1, %lo(D_80122AB0)
    /* 7EB0C 8008E30C 00006C8C */  lw         $t4, 0x0($v1)
    /* 7EB10 8008E310 00000000 */  nop
    /* 7EB14 8008E314 1000ACAF */  sw         $t4, 0x10($sp)
    /* 7EB18 8008E318 01000224 */  addiu      $v0, $zero, 0x1
    /* 7EB1C 8008E31C 000062AC */  sw         $v0, 0x0($v1)
    /* 7EB20 8008E320 40101400 */  sll        $v0, $s4, 1
    /* 7EB24 8008E324 21105400 */  addu       $v0, $v0, $s4
    /* 7EB28 8008E328 80100200 */  sll        $v0, $v0, 2
    /* 7EB2C 8008E32C 23105400 */  subu       $v0, $v0, $s4
    /* 7EB30 8008E330 C0100200 */  sll        $v0, $v0, 3
    /* 7EB34 8008E334 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 7EB38 8008E338 21082200 */  addu       $at, $at, $v0
    /* 7EB3C 8008E33C D03E3E84 */  lh         $fp, %lo(D_80113ED0)($at)
    /* 7EB40 8008E340 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 7EB44 8008E344 21082200 */  addu       $at, $at, $v0
    /* 7EB48 8008E348 D23E3784 */  lh         $s7, %lo(D_80113ED2)($at)
    /* 7EB4C 8008E34C 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 7EB50 8008E350 21082200 */  addu       $at, $at, $v0
    /* 7EB54 8008E354 D83E3680 */  lb         $s6, %lo(D_80113ED8)($at)
    /* 7EB58 8008E358 00000000 */  nop
    /* 7EB5C 8008E35C 40101600 */  sll        $v0, $s6, 1
    /* 7EB60 8008E360 21105600 */  addu       $v0, $v0, $s6
    /* 7EB64 8008E364 80100200 */  sll        $v0, $v0, 2
    /* 7EB68 8008E368 23105600 */  subu       $v0, $v0, $s6
    /* 7EB6C 8008E36C 00110200 */  sll        $v0, $v0, 4
    /* 7EB70 8008E370 23105600 */  subu       $v0, $v0, $s6
    /* 7EB74 8008E374 C0100200 */  sll        $v0, $v0, 3
    /* 7EB78 8008E378 1180013C */  lui        $at, %hi(D_801176FA)
    /* 7EB7C 8008E37C 21082200 */  addu       $at, $at, $v0
    /* 7EB80 8008E380 FA762394 */  lhu        $v1, %lo(D_801176FA)($at)
    /* 7EB84 8008E384 00000000 */  nop
    /* 7EB88 8008E388 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 7EB8C 8008E38C 1180013C */  lui        $at, %hi(D_801176FA)
    /* 7EB90 8008E390 21082200 */  addu       $at, $at, $v0
    /* 7EB94 8008E394 FA7623A4 */  sh         $v1, %lo(D_801176FA)($at)
    /* 7EB98 8008E398 2120C003 */  addu       $a0, $fp, $zero
    /* 7EB9C 8008E39C 2128E002 */  addu       $a1, $s7, $zero
    /* 7EBA0 8008E3A0 02000624 */  addiu      $a2, $zero, 0x2
    /* 7EBA4 8008E3A4 7261020C */  jal        func_800985C8
    /* 7EBA8 8008E3A8 21380000 */   addu      $a3, $zero, $zero
  .L8008E3AC:
    /* 7EBAC 8008E3AC 1280103C */  lui        $s0, %hi(D_8011A280)
    /* 7EBB0 8008E3B0 80A21086 */  lh         $s0, %lo(D_8011A280)($s0)
  .L8008E3B4:
    /* 7EBB4 8008E3B4 00000000 */  nop
    /* 7EBB8 8008E3B8 FFFF1026 */  addiu      $s0, $s0, -0x1
  .L8008E3BC:
    /* 7EBBC 8008E3BC 55000006 */  bltz       $s0, .L8008E514
    /* 7EBC0 8008E3C0 40101000 */   sll       $v0, $s0, 1
    /* 7EBC4 8008E3C4 21105000 */  addu       $v0, $v0, $s0
    /* 7EBC8 8008E3C8 80100200 */  sll        $v0, $v0, 2
    /* 7EBCC 8008E3CC 21105000 */  addu       $v0, $v0, $s0
    /* 7EBD0 8008E3D0 40200200 */  sll        $a0, $v0, 1
    /* 7EBD4 8008E3D4 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* 7EBD8 8008E3D8 21082400 */  addu       $at, $at, $a0
    /* 7EBDC 8008E3DC C4D62290 */  lbu        $v0, %lo(D_8010D6C4)($at)
    /* 7EBE0 8008E3E0 00000000 */  nop
    /* 7EBE4 8008E3E4 F3FF5414 */  bne        $v0, $s4, .L8008E3B4
    /* 7EBE8 8008E3E8 09000224 */   addiu     $v0, $zero, 0x9
    /* 7EBEC 8008E3EC 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 7EBF0 8008E3F0 21082400 */  addu       $at, $at, $a0
    /* 7EBF4 8008E3F4 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 7EBF8 8008E3F8 00000000 */  nop
    /* 7EBFC 8008E3FC 06006214 */  bne        $v1, $v0, .L8008E418
    /* 7EC00 8008E400 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 7EC04 8008E404 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* 7EC08 8008E408 21082400 */  addu       $at, $at, $a0
    /* 7EC0C 8008E40C C4D622A0 */  sb         $v0, %lo(D_8010D6C4)($at)
    /* 7EC10 8008E410 EF380208 */  j          .L8008E3BC
    /* 7EC14 8008E414 FFFF1026 */   addiu     $s0, $s0, -0x1
  .L8008E418:
    /* 7EC18 8008E418 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 7EC1C 8008E41C 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 7EC20 8008E420 00000000 */  nop
    /* 7EC24 8008E424 0710A202 */  srav       $v0, $v0, $s5
    /* 7EC28 8008E428 01004230 */  andi       $v0, $v0, 0x1
    /* 7EC2C 8008E42C 35004014 */  bnez       $v0, .L8008E504
    /* 7EC30 8008E430 40101000 */   sll       $v0, $s0, 1
    /* 7EC34 8008E434 21105000 */  addu       $v0, $v0, $s0
    /* 7EC38 8008E438 80100200 */  sll        $v0, $v0, 2
    /* 7EC3C 8008E43C 21105000 */  addu       $v0, $v0, $s0
    /* 7EC40 8008E440 40980200 */  sll        $s3, $v0, 1
    /* 7EC44 8008E444 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 7EC48 8008E448 21083300 */  addu       $at, $at, $s3
    /* 7EC4C 8008E44C B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 7EC50 8008E450 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 7EC54 8008E454 21083300 */  addu       $at, $at, $s3
    /* 7EC58 8008E458 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 7EC5C 8008E45C 1E26020C */  jal        func_80089878
    /* 7EC60 8008E460 00000000 */   nop
    /* 7EC64 8008E464 21884000 */  addu       $s1, $v0, $zero
    /* 7EC68 8008E468 26002006 */  bltz       $s1, .L8008E504
    /* 7EC6C 8008E46C 00000000 */   nop
    /* 7EC70 8008E470 24003412 */  beq        $s1, $s4, .L8008E504
    /* 7EC74 8008E474 00000000 */   nop
    /* 7EC78 8008E478 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 7EC7C 8008E47C 21083300 */  addu       $at, $at, $s3
    /* 7EC80 8008E480 BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* 7EC84 8008E484 00000000 */  nop
    /* 7EC88 8008E488 80180200 */  sll        $v1, $v0, 2
    /* 7EC8C 8008E48C 21186200 */  addu       $v1, $v1, $v0
    /* 7EC90 8008E490 80180300 */  sll        $v1, $v1, 2
    /* 7EC94 8008E494 1180013C */  lui        $at, %hi(D_8010D28E)
    /* 7EC98 8008E498 21082300 */  addu       $at, $at, $v1
    /* 7EC9C 8008E49C 8ED23280 */  lb         $s2, %lo(D_8010D28E)($at)
    /* 7ECA0 8008E4A0 01000224 */  addiu      $v0, $zero, 0x1
    /* 7ECA4 8008E4A4 0B004216 */  bne        $s2, $v0, .L8008E4D4
    /* 7ECA8 8008E4A8 40101100 */   sll       $v0, $s1, 1
    /* 7ECAC 8008E4AC 21200002 */  addu       $a0, $s0, $zero
    /* 7ECB0 8008E4B0 F2F6010C */  jal        func_8007DBC8
    /* 7ECB4 8008E4B4 01000524 */   addiu     $a1, $zero, 0x1
    /* 7ECB8 8008E4B8 06005214 */  bne        $v0, $s2, .L8008E4D4
    /* 7ECBC 8008E4BC 40101100 */   sll       $v0, $s1, 1
    /* 7ECC0 8008E4C0 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* 7ECC4 8008E4C4 21083300 */  addu       $at, $at, $s3
    /* 7ECC8 8008E4C8 C4D631A0 */  sb         $s1, %lo(D_8010D6C4)($at)
    /* 7ECCC 8008E4CC EF380208 */  j          .L8008E3BC
    /* 7ECD0 8008E4D0 FFFF1026 */   addiu     $s0, $s0, -0x1
  .L8008E4D4:
    /* 7ECD4 8008E4D4 21105100 */  addu       $v0, $v0, $s1
    /* 7ECD8 8008E4D8 80100200 */  sll        $v0, $v0, 2
    /* 7ECDC 8008E4DC 23105100 */  subu       $v0, $v0, $s1
    /* 7ECE0 8008E4E0 C0100200 */  sll        $v0, $v0, 3
    /* 7ECE4 8008E4E4 1180013C */  lui        $at, %hi(D_80113ED4)
    /* 7ECE8 8008E4E8 21082200 */  addu       $at, $at, $v0
    /* 7ECEC 8008E4EC D43E238C */  lw         $v1, %lo(D_80113ED4)($at)
    /* 7ECF0 8008E4F0 00000000 */  nop
    /* 7ECF4 8008E4F4 20006334 */  ori        $v1, $v1, 0x20
    /* 7ECF8 8008E4F8 1180013C */  lui        $at, %hi(D_80113ED4)
    /* 7ECFC 8008E4FC 21082200 */  addu       $at, $at, $v0
    /* 7ED00 8008E500 D43E23AC */  sw         $v1, %lo(D_80113ED4)($at)
  .L8008E504:
    /* 7ED04 8008E504 35F9010C */  jal        func_8007E4D4
    /* 7ED08 8008E508 21200002 */   addu      $a0, $s0, $zero
    /* 7ED0C 8008E50C EB380208 */  j          .L8008E3AC
    /* 7ED10 8008E510 00000000 */   nop
  .L8008E514:
    /* 7ED14 8008E514 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 7ED18 8008E518 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 7ED1C 8008E51C 00000000 */  nop
    /* 7ED20 8008E520 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 7ED24 8008E524 2A108202 */  slt        $v0, $s4, $v0
    /* 7ED28 8008E528 25004010 */  beqz       $v0, .L8008E5C0
    /* 7ED2C 8008E52C 21888002 */   addu      $s1, $s4, $zero
    /* 7ED30 8008E530 11800B3C */  lui        $t3, %hi(D_80113ED0)
    /* 7ED34 8008E534 D03E6B25 */  addiu      $t3, $t3, %lo(D_80113ED0)
    /* 7ED38 8008E538 11800A3C */  lui        $t2, %hi(D_80113F28)
    /* 7ED3C 8008E53C 283F4A25 */  addiu      $t2, $t2, %lo(D_80113F28)
    /* 7ED40 8008E540 1280093C */  lui        $t1, %hi(D_8011A282)
    /* 7ED44 8008E544 82A22925 */  addiu      $t1, $t1, %lo(D_8011A282)
    /* 7ED48 8008E548 40101100 */  sll        $v0, $s1, 1
  .L8008E54C:
    /* 7ED4C 8008E54C 21105100 */  addu       $v0, $v0, $s1
    /* 7ED50 8008E550 80100200 */  sll        $v0, $v0, 2
    /* 7ED54 8008E554 23105100 */  subu       $v0, $v0, $s1
    /* 7ED58 8008E558 C0100200 */  sll        $v0, $v0, 3
    /* 7ED5C 8008E55C 21384B00 */  addu       $a3, $v0, $t3
    /* 7ED60 8008E560 21304A00 */  addu       $a2, $v0, $t2
    /* 7ED64 8008E564 5000C824 */  addiu      $t0, $a2, 0x50
  .L8008E568:
    /* 7ED68 8008E568 0000C28C */  lw         $v0, 0x0($a2)
    /* 7ED6C 8008E56C 0400C38C */  lw         $v1, 0x4($a2)
    /* 7ED70 8008E570 0800C48C */  lw         $a0, 0x8($a2)
    /* 7ED74 8008E574 0C00C58C */  lw         $a1, 0xC($a2)
    /* 7ED78 8008E578 0000E2AC */  sw         $v0, 0x0($a3)
    /* 7ED7C 8008E57C 0400E3AC */  sw         $v1, 0x4($a3)
    /* 7ED80 8008E580 0800E4AC */  sw         $a0, 0x8($a3)
    /* 7ED84 8008E584 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 7ED88 8008E588 1000C624 */  addiu      $a2, $a2, 0x10
    /* 7ED8C 8008E58C F6FFC814 */  bne        $a2, $t0, .L8008E568
    /* 7ED90 8008E590 1000E724 */   addiu     $a3, $a3, 0x10
    /* 7ED94 8008E594 0000C28C */  lw         $v0, 0x0($a2)
    /* 7ED98 8008E598 0400C38C */  lw         $v1, 0x4($a2)
    /* 7ED9C 8008E59C 0000E2AC */  sw         $v0, 0x0($a3)
    /* 7EDA0 8008E5A0 0400E3AC */  sw         $v1, 0x4($a3)
    /* 7EDA4 8008E5A4 01003126 */  addiu      $s1, $s1, 0x1
    /* 7EDA8 8008E5A8 00002285 */  lh         $v0, 0x0($t1)
    /* 7EDAC 8008E5AC 00000000 */  nop
    /* 7EDB0 8008E5B0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 7EDB4 8008E5B4 2A102202 */  slt        $v0, $s1, $v0
    /* 7EDB8 8008E5B8 E4FF4014 */  bnez       $v0, .L8008E54C
    /* 7EDBC 8008E5BC 40101100 */   sll       $v0, $s1, 1
  .L8008E5C0:
    /* 7EDC0 8008E5C0 1280033C */  lui        $v1, %hi(D_8011A282)
    /* 7EDC4 8008E5C4 82A26324 */  addiu      $v1, $v1, %lo(D_8011A282)
    /* 7EDC8 8008E5C8 00006294 */  lhu        $v0, 0x0($v1)
    /* 7EDCC 8008E5CC 00000000 */  nop
    /* 7EDD0 8008E5D0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 7EDD4 8008E5D4 000062A4 */  sh         $v0, 0x0($v1)
    /* 7EDD8 8008E5D8 00140200 */  sll        $v0, $v0, 16
    /* 7EDDC 8008E5DC 31004018 */  blez       $v0, .L8008E6A4
    /* 7EDE0 8008E5E0 21880000 */   addu      $s1, $zero, $zero
    /* 7EDE4 8008E5E4 1180133C */  lui        $s3, %hi(D_80113F18)
    /* 7EDE8 8008E5E8 183F7326 */  addiu      $s3, $s3, %lo(D_80113F18)
    /* 7EDEC 8008E5EC 40101100 */  sll        $v0, $s1, 1
  .L8008E5F0:
    /* 7EDF0 8008E5F0 21105100 */  addu       $v0, $v0, $s1
    /* 7EDF4 8008E5F4 80100200 */  sll        $v0, $v0, 2
    /* 7EDF8 8008E5F8 23105100 */  subu       $v0, $v0, $s1
    /* 7EDFC 8008E5FC C0100200 */  sll        $v0, $v0, 3
    /* 7EE00 8008E600 1180013C */  lui        $at, %hi(D_80113F0E)
    /* 7EE04 8008E604 21082200 */  addu       $at, $at, $v0
    /* 7EE08 8008E608 0E3F2280 */  lb         $v0, %lo(D_80113F0E)($at)
    /* 7EE0C 8008E60C 00000000 */  nop
    /* 7EE10 8008E610 FFFF5024 */  addiu      $s0, $v0, -0x1
    /* 7EE14 8008E614 1C000006 */  bltz       $s0, .L8008E688
    /* 7EE18 8008E618 40101100 */   sll       $v0, $s1, 1
    /* 7EE1C 8008E61C 21105100 */  addu       $v0, $v0, $s1
    /* 7EE20 8008E620 80100200 */  sll        $v0, $v0, 2
    /* 7EE24 8008E624 23105100 */  subu       $v0, $v0, $s1
    /* 7EE28 8008E628 C0100200 */  sll        $v0, $v0, 3
    /* 7EE2C 8008E62C 21905300 */  addu       $s2, $v0, $s3
    /* 7EE30 8008E630 40101000 */  sll        $v0, $s0, 1
  .L8008E634:
    /* 7EE34 8008E634 21105200 */  addu       $v0, $v0, $s2
    /* 7EE38 8008E638 00004284 */  lh         $v0, 0x0($v0)
    /* 7EE3C 8008E63C 00000000 */  nop
    /* 7EE40 8008E640 06005414 */  bne        $v0, $s4, .L8008E65C
    /* 7EE44 8008E644 40101000 */   sll       $v0, $s0, 1
    /* 7EE48 8008E648 21202002 */  addu       $a0, $s1, $zero
    /* 7EE4C 8008E64C BF34020C */  jal        func_8008D2FC
    /* 7EE50 8008E650 21280002 */   addu      $a1, $s0, $zero
    /* 7EE54 8008E654 A0390208 */  j          .L8008E680
    /* 7EE58 8008E658 FFFF1026 */   addiu     $s0, $s0, -0x1
  .L8008E65C:
    /* 7EE5C 8008E65C 21205200 */  addu       $a0, $v0, $s2
    /* 7EE60 8008E660 00008284 */  lh         $v0, 0x0($a0)
    /* 7EE64 8008E664 00000000 */  nop
    /* 7EE68 8008E668 21184000 */  addu       $v1, $v0, $zero
    /* 7EE6C 8008E66C 2A108202 */  slt        $v0, $s4, $v0
    /* 7EE70 8008E670 02004010 */  beqz       $v0, .L8008E67C
    /* 7EE74 8008E674 FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 7EE78 8008E678 000082A4 */  sh         $v0, 0x0($a0)
  .L8008E67C:
    /* 7EE7C 8008E67C FFFF1026 */  addiu      $s0, $s0, -0x1
  .L8008E680:
    /* 7EE80 8008E680 ECFF0106 */  bgez       $s0, .L8008E634
    /* 7EE84 8008E684 40101000 */   sll       $v0, $s0, 1
  .L8008E688:
    /* 7EE88 8008E688 01003126 */  addiu      $s1, $s1, 0x1
    /* 7EE8C 8008E68C 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 7EE90 8008E690 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 7EE94 8008E694 00000000 */  nop
    /* 7EE98 8008E698 2A102202 */  slt        $v0, $s1, $v0
    /* 7EE9C 8008E69C D4FF4014 */  bnez       $v0, .L8008E5F0
    /* 7EEA0 8008E6A0 40101100 */   sll       $v0, $s1, 1
  .L8008E6A4:
    /* 7EEA4 8008E6A4 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 7EEA8 8008E6A8 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 7EEAC 8008E6AC 00000000 */  nop
    /* 7EEB0 8008E6B0 20004018 */  blez       $v0, .L8008E734
    /* 7EEB4 8008E6B4 21800000 */   addu      $s0, $zero, $zero
    /* 7EEB8 8008E6B8 FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 7EEBC 8008E6BC 1180063C */  lui        $a2, %hi(D_8010D6B4)
    /* 7EEC0 8008E6C0 B4D6C624 */  addiu      $a2, $a2, %lo(D_8010D6B4)
    /* 7EEC4 8008E6C4 1280053C */  lui        $a1, %hi(D_8011A280)
    /* 7EEC8 8008E6C8 80A2A524 */  addiu      $a1, $a1, %lo(D_8011A280)
    /* 7EECC 8008E6CC 40101000 */  sll        $v0, $s0, 1
  .L8008E6D0:
    /* 7EED0 8008E6D0 21105000 */  addu       $v0, $v0, $s0
    /* 7EED4 8008E6D4 80100200 */  sll        $v0, $v0, 2
    /* 7EED8 8008E6D8 21105000 */  addu       $v0, $v0, $s0
    /* 7EEDC 8008E6DC 40180200 */  sll        $v1, $v0, 1
    /* 7EEE0 8008E6E0 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* 7EEE4 8008E6E4 21082300 */  addu       $at, $at, $v1
    /* 7EEE8 8008E6E8 C4D62280 */  lb         $v0, %lo(D_8010D6C4)($at)
    /* 7EEEC 8008E6EC 00000000 */  nop
    /* 7EEF0 8008E6F0 0A004710 */  beq        $v0, $a3, .L8008E71C
    /* 7EEF4 8008E6F4 21204000 */   addu      $a0, $v0, $zero
    /* 7EEF8 8008E6F8 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* 7EEFC 8008E6FC 21082300 */  addu       $at, $at, $v1
    /* 7EF00 8008E700 C4D62290 */  lbu        $v0, %lo(D_8010D6C4)($at)
    /* 7EF04 8008E704 00000000 */  nop
    /* 7EF08 8008E708 2A108202 */  slt        $v0, $s4, $v0
    /* 7EF0C 8008E70C 03004010 */  beqz       $v0, .L8008E71C
    /* 7EF10 8008E710 21186600 */   addu      $v1, $v1, $a2
    /* 7EF14 8008E714 FFFF8224 */  addiu      $v0, $a0, -0x1
    /* 7EF18 8008E718 100062A0 */  sb         $v0, 0x10($v1)
  .L8008E71C:
    /* 7EF1C 8008E71C 01001026 */  addiu      $s0, $s0, 0x1
    /* 7EF20 8008E720 0000A284 */  lh         $v0, 0x0($a1)
    /* 7EF24 8008E724 00000000 */  nop
    /* 7EF28 8008E728 2A100202 */  slt        $v0, $s0, $v0
    /* 7EF2C 8008E72C E8FF4014 */  bnez       $v0, .L8008E6D0
    /* 7EF30 8008E730 40101000 */   sll       $v0, $s0, 1
  .L8008E734:
    /* 7EF34 8008E734 21880000 */  addu       $s1, $zero, $zero
    /* 7EF38 8008E738 1280053C */  lui        $a1, %hi(D_8011A342)
    /* 7EF3C 8008E73C 42A3A524 */  addiu      $a1, $a1, %lo(D_8011A342)
    /* 7EF40 8008E740 FEFF0624 */  addiu      $a2, $zero, -0x2
    /* 7EF44 8008E744 40101100 */  sll        $v0, $s1, 1
  .L8008E748:
    /* 7EF48 8008E748 21184500 */  addu       $v1, $v0, $a1
    /* 7EF4C 8008E74C 00006284 */  lh         $v0, 0x0($v1)
    /* 7EF50 8008E750 00000000 */  nop
    /* 7EF54 8008E754 02005414 */  bne        $v0, $s4, .L8008E760
    /* 7EF58 8008E758 40101100 */   sll       $v0, $s1, 1
    /* 7EF5C 8008E75C 000066A4 */  sh         $a2, 0x0($v1)
  .L8008E760:
    /* 7EF60 8008E760 21204500 */  addu       $a0, $v0, $a1
    /* 7EF64 8008E764 00008284 */  lh         $v0, 0x0($a0)
    /* 7EF68 8008E768 00000000 */  nop
    /* 7EF6C 8008E76C 21184000 */  addu       $v1, $v0, $zero
    /* 7EF70 8008E770 2A108202 */  slt        $v0, $s4, $v0
    /* 7EF74 8008E774 02004010 */  beqz       $v0, .L8008E780
    /* 7EF78 8008E778 FFFF6224 */   addiu     $v0, $v1, -0x1
    /* 7EF7C 8008E77C 000082A4 */  sh         $v0, 0x0($a0)
  .L8008E780:
    /* 7EF80 8008E780 01003126 */  addiu      $s1, $s1, 0x1
    /* 7EF84 8008E784 1C00222A */  slti       $v0, $s1, 0x1C
    /* 7EF88 8008E788 EFFF4014 */  bnez       $v0, .L8008E748
    /* 7EF8C 8008E78C 40101100 */   sll       $v0, $s1, 1
    /* 7EF90 8008E790 21980000 */  addu       $s3, $zero, $zero
    /* 7EF94 8008E794 21880000 */  addu       $s1, $zero, $zero
  .L8008E798:
    /* 7EF98 8008E798 2D00222A */  slti       $v0, $s1, 0x2D
    /* 7EF9C 8008E79C 3C004010 */  beqz       $v0, .L8008E890
    /* 7EFA0 8008E7A0 00000000 */   nop
    /* 7EFA4 8008E7A4 1280013C */  lui        $at, %hi(D_8011AC3C)
    /* 7EFA8 8008E7A8 21083100 */  addu       $at, $at, $s1
    /* 7EFAC 8008E7AC 3CAC2480 */  lb         $a0, %lo(D_8011AC3C)($at)
    /* 7EFB0 8008E7B0 173B030C */  jal        func_800CEC5C
    /* 7EFB4 8008E7B4 2120C403 */   addu      $a0, $fp, $a0
    /* 7EFB8 8008E7B8 21904000 */  addu       $s2, $v0, $zero
    /* 7EFBC 8008E7BC 1280013C */  lui        $at, %hi(D_8011AC6C)
    /* 7EFC0 8008E7C0 21083100 */  addu       $at, $at, $s1
    /* 7EFC4 8008E7C4 6CAC2280 */  lb         $v0, %lo(D_8011AC6C)($at)
    /* 7EFC8 8008E7C8 00000000 */  nop
    /* 7EFCC 8008E7CC 2180E202 */  addu       $s0, $s7, $v0
    /* 7EFD0 8008E7D0 0D000006 */  bltz       $s0, .L8008E808
    /* 7EFD4 8008E7D4 21180000 */   addu      $v1, $zero, $zero
    /* 7EFD8 8008E7D8 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 7EFDC 8008E7DC 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 7EFE0 8008E7E0 00000000 */  nop
    /* 7EFE4 8008E7E4 2A100202 */  slt        $v0, $s0, $v0
    /* 7EFE8 8008E7E8 07004010 */  beqz       $v0, .L8008E808
    /* 7EFEC 8008E7EC 00000000 */   nop
    /* 7EFF0 8008E7F0 05004006 */  bltz       $s2, .L8008E808
    /* 7EFF4 8008E7F4 00000000 */   nop
    /* 7EFF8 8008E7F8 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 7EFFC 8008E7FC 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 7F000 8008E800 00000000 */  nop
    /* 7F004 8008E804 2A184202 */  slt        $v1, $s2, $v0
  .L8008E808:
    /* 7F008 8008E808 1F006010 */  beqz       $v1, .L8008E888
    /* 7F00C 8008E80C 21204002 */   addu      $a0, $s2, $zero
    /* 7F010 8008E810 F760020C */  jal        func_800983DC
    /* 7F014 8008E814 21280002 */   addu      $a1, $s0, $zero
    /* 7F018 8008E818 1B004014 */  bnez       $v0, .L8008E888
    /* 7F01C 8008E81C 21204002 */   addu      $a0, $s2, $zero
    /* 7F020 8008E820 D161020C */  jal        func_80098744
    /* 7F024 8008E824 21280002 */   addu      $a1, $s0, $zero
    /* 7F028 8008E828 21204002 */  addu       $a0, $s2, $zero
    /* 7F02C 8008E82C 21280002 */  addu       $a1, $s0, $zero
    /* 7F030 8008E830 DA61020C */  jal        func_80098768
    /* 7F034 8008E834 08004634 */   ori       $a2, $v0, 0x8
    /* 7F038 8008E838 1500222A */  slti       $v0, $s1, 0x15
    /* 7F03C 8008E83C 12004010 */  beqz       $v0, .L8008E888
    /* 7F040 8008E840 21204002 */   addu      $a0, $s2, $zero
    /* 7F044 8008E844 5061020C */  jal        func_80098540
    /* 7F048 8008E848 21280002 */   addu      $a1, $s0, $zero
    /* 7F04C 8008E84C 05005614 */  bne        $v0, $s6, .L8008E864
    /* 7F050 8008E850 21204002 */   addu      $a0, $s2, $zero
    /* 7F054 8008E854 21280002 */  addu       $a1, $s0, $zero
    /* 7F058 8008E858 5961020C */  jal        func_80098564
    /* 7F05C 8008E85C 21300000 */   addu      $a2, $zero, $zero
    /* 7F060 8008E860 21204002 */  addu       $a0, $s2, $zero
  .L8008E864:
    /* 7F064 8008E864 4F62020C */  jal        func_8009893C
    /* 7F068 8008E868 21280002 */   addu      $a1, $s0, $zero
    /* 7F06C 8008E86C 21A84000 */  addu       $s5, $v0, $zero
    /* 7F070 8008E870 0500A01A */  blez       $s5, .L8008E888
    /* 7F074 8008E874 00000000 */   nop
    /* 7F078 8008E878 0300B612 */  beq        $s5, $s6, .L8008E888
    /* 7F07C 8008E87C 01000224 */   addiu     $v0, $zero, 0x1
    /* 7F080 8008E880 0410A202 */  sllv       $v0, $v0, $s5
    /* 7F084 8008E884 25986202 */  or         $s3, $s3, $v0
  .L8008E888:
    /* 7F088 8008E888 E6390208 */  j          .L8008E798
    /* 7F08C 8008E88C 01003126 */   addiu     $s1, $s1, 0x1
  .L8008E890:
    /* 7F090 8008E890 18006012 */  beqz       $s3, .L8008E8F4
    /* 7F094 8008E894 00000000 */   nop
    /* 7F098 8008E898 2120C003 */  addu       $a0, $fp, $zero
    /* 7F09C 8008E89C 04EE010C */  jal        func_8007B810
    /* 7F0A0 8008E8A0 2128E002 */   addu      $a1, $s7, $zero
    /* 7F0A4 8008E8A4 21804000 */  addu       $s0, $v0, $zero
    /* 7F0A8 8008E8A8 12000006 */  bltz       $s0, .L8008E8F4
    /* 7F0AC 8008E8AC 40101000 */   sll       $v0, $s0, 1
  .L8008E8B0:
    /* 7F0B0 8008E8B0 21105000 */  addu       $v0, $v0, $s0
    /* 7F0B4 8008E8B4 80100200 */  sll        $v0, $v0, 2
    /* 7F0B8 8008E8B8 21105000 */  addu       $v0, $v0, $s0
    /* 7F0BC 8008E8BC 40100200 */  sll        $v0, $v0, 1
    /* 7F0C0 8008E8C0 1180013C */  lui        $at, %hi(D_8010D6BD)
    /* 7F0C4 8008E8C4 21082200 */  addu       $at, $at, $v0
    /* 7F0C8 8008E8C8 BDD62390 */  lbu        $v1, %lo(D_8010D6BD)($at)
    /* 7F0CC 8008E8CC 00000000 */  nop
    /* 7F0D0 8008E8D0 25187300 */  or         $v1, $v1, $s3
    /* 7F0D4 8008E8D4 1180013C */  lui        $at, %hi(D_8010D6BD)
    /* 7F0D8 8008E8D8 21082200 */  addu       $at, $at, $v0
    /* 7F0DC 8008E8DC BDD623A0 */  sb         $v1, %lo(D_8010D6BD)($at)
    /* 7F0E0 8008E8E0 BFED010C */  jal        func_8007B6FC
    /* 7F0E4 8008E8E4 21200002 */   addu      $a0, $s0, $zero
    /* 7F0E8 8008E8E8 21804000 */  addu       $s0, $v0, $zero
    /* 7F0EC 8008E8EC F0FF0106 */  bgez       $s0, .L8008E8B0
    /* 7F0F0 8008E8F0 40101000 */   sll       $v0, $s0, 1
  .L8008E8F4:
    /* 7F0F4 8008E8F4 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 7F0F8 8008E8F8 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 7F0FC 8008E8FC 00000000 */  nop
    /* 7F100 8008E900 0A004018 */  blez       $v0, .L8008E92C
    /* 7F104 8008E904 21800000 */   addu      $s0, $zero, $zero
  .L8008E908:
    /* 7F108 8008E908 4932020C */  jal        func_8008C924
    /* 7F10C 8008E90C 21200002 */   addu      $a0, $s0, $zero
    /* 7F110 8008E910 01001026 */  addiu      $s0, $s0, 0x1
    /* 7F114 8008E914 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 7F118 8008E918 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 7F11C 8008E91C 00000000 */  nop
    /* 7F120 8008E920 2A100202 */  slt        $v0, $s0, $v0
    /* 7F124 8008E924 F8FF4014 */  bnez       $v0, .L8008E908
    /* 7F128 8008E928 00000000 */   nop
  .L8008E92C:
    /* 7F12C 8008E92C 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* 7F130 8008E930 F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* 7F134 8008E934 9E61030C */  jal        func_800D8678
    /* 7F138 8008E938 21288002 */   addu      $a1, $s4, $zero
    /* 7F13C 8008E93C 1280043C */  lui        $a0, %hi(D_80122AB0)
    /* 7F140 8008E940 B02A8424 */  addiu      $a0, $a0, %lo(D_80122AB0)
    /* 7F144 8008E944 1000AC8F */  lw         $t4, 0x10($sp)
    /* 7F148 8008E948 00000000 */  nop
    /* 7F14C 8008E94C 03008015 */  bnez       $t4, .L8008E95C
    /* 7F150 8008E950 00008CAC */   sw        $t4, 0x0($a0)
    /* 7F154 8008E954 B358030C */  jal        func_800D62CC
    /* 7F158 8008E958 48F18424 */   addiu     $a0, $a0, -0xEB8
  .L8008E95C:
    /* 7F15C 8008E95C 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* 7F160 8008E960 6800BE8F */  lw         $fp, 0x68($sp)
    /* 7F164 8008E964 6400B78F */  lw         $s7, 0x64($sp)
    /* 7F168 8008E968 6000B68F */  lw         $s6, 0x60($sp)
    /* 7F16C 8008E96C 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 7F170 8008E970 5800B48F */  lw         $s4, 0x58($sp)
    /* 7F174 8008E974 5400B38F */  lw         $s3, 0x54($sp)
    /* 7F178 8008E978 5000B28F */  lw         $s2, 0x50($sp)
    /* 7F17C 8008E97C 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 7F180 8008E980 4800B08F */  lw         $s0, 0x48($sp)
    /* 7F184 8008E984 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 7F188 8008E988 0800E003 */  jr         $ra
    /* 7F18C 8008E98C 00000000 */   nop
endlabel func_8008E2D0
