.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005E260, 0x6F4

glabel func_8005E260
    /* 4EA60 8005E260 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 4EA64 8005E264 2800BFAF */  sw         $ra, 0x28($sp)
    /* 4EA68 8005E268 2400B3AF */  sw         $s3, 0x24($sp)
    /* 4EA6C 8005E26C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4EA70 8005E270 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4EA74 8005E274 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4EA78 8005E278 21888000 */  addu       $s1, $a0, $zero
    /* 4EA7C 8005E27C 2190A000 */  addu       $s2, $a1, $zero
    /* 4EA80 8005E280 40101100 */  sll        $v0, $s1, 1
    /* 4EA84 8005E284 21105100 */  addu       $v0, $v0, $s1
    /* 4EA88 8005E288 80100200 */  sll        $v0, $v0, 2
    /* 4EA8C 8005E28C 21105100 */  addu       $v0, $v0, $s1
    /* 4EA90 8005E290 40100200 */  sll        $v0, $v0, 1
    /* 4EA94 8005E294 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4EA98 8005E298 21082200 */  addu       $at, $at, $v0
    /* 4EA9C 8005E29C BBD63380 */  lb         $s3, %lo(D_8010D6BB)($at)
    /* 4EAA0 8005E2A0 F7F5010C */  jal        func_8007D7DC
    /* 4EAA4 8005E2A4 02000524 */   addiu     $a1, $zero, 0x2
    /* 4EAA8 8005E2A8 02004228 */  slti       $v0, $v0, 0x2
    /* 4EAAC 8005E2AC A1014010 */  beqz       $v0, .L8005E934
    /* 4EAB0 8005E2B0 40101300 */   sll       $v0, $s3, 1
    /* 4EAB4 8005E2B4 21105300 */  addu       $v0, $v0, $s3
    /* 4EAB8 8005E2B8 80100200 */  sll        $v0, $v0, 2
    /* 4EABC 8005E2BC 23105300 */  subu       $v0, $v0, $s3
    /* 4EAC0 8005E2C0 00110200 */  sll        $v0, $v0, 4
    /* 4EAC4 8005E2C4 23105300 */  subu       $v0, $v0, $s3
    /* 4EAC8 8005E2C8 C0100200 */  sll        $v0, $v0, 3
    /* 4EACC 8005E2CC 1180013C */  lui        $at, %hi(D_801176A7)
    /* 4EAD0 8005E2D0 21082200 */  addu       $at, $at, $v0
    /* 4EAD4 8005E2D4 A7762390 */  lbu        $v1, %lo(D_801176A7)($at)
    /* 4EAD8 8005E2D8 06000224 */  addiu      $v0, $zero, 0x6
    /* 4EADC 8005E2DC 11006214 */  bne        $v1, $v0, .L8005E324
    /* 4EAE0 8005E2E0 00000000 */   nop
    /* 4EAE4 8005E2E4 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4EAE8 8005E2E8 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4EAEC 8005E2EC 00000000 */  nop
    /* 4EAF0 8005E2F0 07104202 */  srav       $v0, $v0, $s2
    /* 4EAF4 8005E2F4 01004230 */  andi       $v0, $v0, 0x1
    /* 4EAF8 8005E2F8 8E014010 */  beqz       $v0, .L8005E934
    /* 4EAFC 8005E2FC 89F00534 */   ori       $a1, $zero, 0xF089
    /* 4EB00 8005E300 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4EB04 8005E304 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4EB08 8005E308 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4EB0C 8005E30C 1380073C */  lui        $a3, %hi(D_80135380)
    /* 4EB10 8005E310 8053E724 */  addiu      $a3, $a3, %lo(D_80135380)
    /* 4EB14 8005E314 18E3020C */  jal        func_800B8C60
    /* 4EB18 8005E318 21300000 */   addu      $a2, $zero, $zero
    /* 4EB1C 8005E31C 4D7A0108 */  j          .L8005E934
    /* 4EB20 8005E320 00000000 */   nop
  .L8005E324:
    /* 4EB24 8005E324 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4EB28 8005E328 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4EB2C 8005E32C 00000000 */  nop
    /* 4EB30 8005E330 07104202 */  srav       $v0, $v0, $s2
    /* 4EB34 8005E334 01004230 */  andi       $v0, $v0, 0x1
    /* 4EB38 8005E338 07004014 */  bnez       $v0, .L8005E358
    /* 4EB3C 8005E33C 40101100 */   sll       $v0, $s1, 1
    /* 4EB40 8005E340 1180053C */  lui        $a1, %hi(D_8010D627)
    /* 4EB44 8005E344 27D6A580 */  lb         $a1, %lo(D_8010D627)($a1)
    /* 4EB48 8005E348 8ACA010C */  jal        func_80072A28
    /* 4EB4C 8005E34C 21204002 */   addu      $a0, $s2, $zero
    /* 4EB50 8005E350 78014010 */  beqz       $v0, .L8005E934
    /* 4EB54 8005E354 40101100 */   sll       $v0, $s1, 1
  .L8005E358:
    /* 4EB58 8005E358 21105100 */  addu       $v0, $v0, $s1
    /* 4EB5C 8005E35C 80100200 */  sll        $v0, $v0, 2
    /* 4EB60 8005E360 21105100 */  addu       $v0, $v0, $s1
    /* 4EB64 8005E364 40100200 */  sll        $v0, $v0, 1
    /* 4EB68 8005E368 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4EB6C 8005E36C 21082200 */  addu       $at, $at, $v0
    /* 4EB70 8005E370 B4D62584 */  lh         $a1, %lo(D_8010D6B4)($at)
    /* 4EB74 8005E374 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4EB78 8005E378 21082200 */  addu       $at, $at, $v0
    /* 4EB7C 8005E37C B6D62684 */  lh         $a2, %lo(D_8010D6B6)($at)
    /* 4EB80 8005E380 FD6D010C */  jal        func_8005B7F4
    /* 4EB84 8005E384 21206002 */   addu      $a0, $s3, $zero
    /* 4EB88 8005E388 21204000 */  addu       $a0, $v0, $zero
    /* 4EB8C 8005E38C 40101200 */  sll        $v0, $s2, 1
    /* 4EB90 8005E390 21105200 */  addu       $v0, $v0, $s2
    /* 4EB94 8005E394 80100200 */  sll        $v0, $v0, 2
    /* 4EB98 8005E398 23105200 */  subu       $v0, $v0, $s2
    /* 4EB9C 8005E39C 00110200 */  sll        $v0, $v0, 4
    /* 4EBA0 8005E3A0 23105200 */  subu       $v0, $v0, $s2
    /* 4EBA4 8005E3A4 C0100200 */  sll        $v0, $v0, 3
    /* 4EBA8 8005E3A8 1180013C */  lui        $at, %hi(D_801176A7)
    /* 4EBAC 8005E3AC 21082200 */  addu       $at, $at, $v0
    /* 4EBB0 8005E3B0 A7762390 */  lbu        $v1, %lo(D_801176A7)($at)
    /* 4EBB4 8005E3B4 03000224 */  addiu      $v0, $zero, 0x3
    /* 4EBB8 8005E3B8 06006214 */  bne        $v1, $v0, .L8005E3D4
    /* 4EBBC 8005E3BC 40101300 */   sll       $v0, $s3, 1
    /* 4EBC0 8005E3C0 0A000224 */  addiu      $v0, $zero, 0xA
    /* 4EBC4 8005E3C4 2A104400 */  slt        $v0, $v0, $a0
    /* 4EBC8 8005E3C8 02004010 */  beqz       $v0, .L8005E3D4
    /* 4EBCC 8005E3CC 40101300 */   sll       $v0, $s3, 1
    /* 4EBD0 8005E3D0 0A000424 */  addiu      $a0, $zero, 0xA
  .L8005E3D4:
    /* 4EBD4 8005E3D4 21105300 */  addu       $v0, $v0, $s3
    /* 4EBD8 8005E3D8 80100200 */  sll        $v0, $v0, 2
    /* 4EBDC 8005E3DC 23105300 */  subu       $v0, $v0, $s3
    /* 4EBE0 8005E3E0 00110200 */  sll        $v0, $v0, 4
    /* 4EBE4 8005E3E4 23105300 */  subu       $v0, $v0, $s3
    /* 4EBE8 8005E3E8 C0100200 */  sll        $v0, $v0, 3
    /* 4EBEC 8005E3EC 1180013C */  lui        $at, %hi(D_80117694)
    /* 4EBF0 8005E3F0 21082200 */  addu       $at, $at, $v0
    /* 4EBF4 8005E3F4 9476228C */  lw         $v0, %lo(D_80117694)($at)
    /* 4EBF8 8005E3F8 00000000 */  nop
    /* 4EBFC 8005E3FC EE025024 */  addiu      $s0, $v0, 0x2EE
    /* 4EC00 8005E400 02008224 */  addiu      $v0, $a0, 0x2
    /* 4EC04 8005E404 1A000202 */  div        $zero, $s0, $v0
    /* 4EC08 8005E408 02004014 */  bnez       $v0, .L8005E414
    /* 4EC0C 8005E40C 00000000 */   nop
    /* 4EC10 8005E410 0D000700 */  break      7
  .L8005E414:
    /* 4EC14 8005E414 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 4EC18 8005E418 04004114 */  bne        $v0, $at, .L8005E42C
    /* 4EC1C 8005E41C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 4EC20 8005E420 02000116 */  bne        $s0, $at, .L8005E42C
    /* 4EC24 8005E424 00000000 */   nop
    /* 4EC28 8005E428 0D000600 */  break      6
  .L8005E42C:
    /* 4EC2C 8005E42C 12800000 */  mflo       $s0
    /* 4EC30 8005E430 40101100 */  sll        $v0, $s1, 1
    /* 4EC34 8005E434 21105100 */  addu       $v0, $v0, $s1
    /* 4EC38 8005E438 80100200 */  sll        $v0, $v0, 2
    /* 4EC3C 8005E43C 21105100 */  addu       $v0, $v0, $s1
    /* 4EC40 8005E440 40100200 */  sll        $v0, $v0, 1
    /* 4EC44 8005E444 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4EC48 8005E448 21082200 */  addu       $at, $at, $v0
    /* 4EC4C 8005E44C BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4EC50 8005E450 00000000 */  nop
    /* 4EC54 8005E454 80100300 */  sll        $v0, $v1, 2
    /* 4EC58 8005E458 21104300 */  addu       $v0, $v0, $v1
    /* 4EC5C 8005E45C 80100200 */  sll        $v0, $v0, 2
    /* 4EC60 8005E460 1180013C */  lui        $at, %hi(D_8010D28C)
    /* 4EC64 8005E464 21082200 */  addu       $at, $at, $v0
    /* 4EC68 8005E468 8CD22280 */  lb         $v0, %lo(D_8010D28C)($at)
    /* 4EC6C 8005E46C 00000000 */  nop
    /* 4EC70 8005E470 18000202 */  mult       $s0, $v0
    /* 4EC74 8005E474 12800000 */  mflo       $s0
    /* 4EC78 8005E478 02000106 */  bgez       $s0, .L8005E484
    /* 4EC7C 8005E47C 40101100 */   sll       $v0, $s1, 1
    /* 4EC80 8005E480 30751024 */  addiu      $s0, $zero, 0x7530
  .L8005E484:
    /* 4EC84 8005E484 21105100 */  addu       $v0, $v0, $s1
    /* 4EC88 8005E488 80100200 */  sll        $v0, $v0, 2
    /* 4EC8C 8005E48C 21105100 */  addu       $v0, $v0, $s1
    /* 4EC90 8005E490 40100200 */  sll        $v0, $v0, 1
    /* 4EC94 8005E494 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4EC98 8005E498 21082200 */  addu       $at, $at, $v0
    /* 4EC9C 8005E49C BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4ECA0 8005E4A0 00000000 */  nop
    /* 4ECA4 8005E4A4 80100300 */  sll        $v0, $v1, 2
    /* 4ECA8 8005E4A8 21104300 */  addu       $v0, $v0, $v1
    /* 4ECAC 8005E4AC 80100200 */  sll        $v0, $v0, 2
    /* 4ECB0 8005E4B0 1180013C */  lui        $at, %hi(D_8010D28E)
    /* 4ECB4 8005E4B4 21082200 */  addu       $at, $at, $v0
    /* 4ECB8 8005E4B8 8ED22380 */  lb         $v1, %lo(D_8010D28E)($at)
    /* 4ECBC 8005E4BC 05000224 */  addiu      $v0, $zero, 0x5
    /* 4ECC0 8005E4C0 03006210 */  beq        $v1, $v0, .L8005E4D0
    /* 4ECC4 8005E4C4 C2171000 */   srl       $v0, $s0, 31
    /* 4ECC8 8005E4C8 21100202 */  addu       $v0, $s0, $v0
    /* 4ECCC 8005E4CC 43800200 */  sra        $s0, $v0, 1
  .L8005E4D0:
    /* 4ECD0 8005E4D0 40101100 */  sll        $v0, $s1, 1
    /* 4ECD4 8005E4D4 21105100 */  addu       $v0, $v0, $s1
    /* 4ECD8 8005E4D8 80100200 */  sll        $v0, $v0, 2
    /* 4ECDC 8005E4DC 21105100 */  addu       $v0, $v0, $s1
    /* 4ECE0 8005E4E0 40100200 */  sll        $v0, $v0, 1
    /* 4ECE4 8005E4E4 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4ECE8 8005E4E8 21082200 */  addu       $at, $at, $v0
    /* 4ECEC 8005E4EC BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4ECF0 8005E4F0 00000000 */  nop
    /* 4ECF4 8005E4F4 80100300 */  sll        $v0, $v1, 2
    /* 4ECF8 8005E4F8 21104300 */  addu       $v0, $v0, $v1
    /* 4ECFC 8005E4FC 80100200 */  sll        $v0, $v0, 2
    /* 4ED00 8005E500 1180013C */  lui        $at, %hi(D_8010D28E)
    /* 4ED04 8005E504 21082200 */  addu       $at, $at, $v0
    /* 4ED08 8005E508 8ED22380 */  lb         $v1, %lo(D_8010D28E)($at)
    /* 4ED0C 8005E50C 07000224 */  addiu      $v0, $zero, 0x7
    /* 4ED10 8005E510 08006214 */  bne        $v1, $v0, .L8005E534
    /* 4ED14 8005E514 00000000 */   nop
    /* 4ED18 8005E518 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4ED1C 8005E51C 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4ED20 8005E520 00000000 */  nop
    /* 4ED24 8005E524 07104202 */  srav       $v0, $v0, $s2
    /* 4ED28 8005E528 01004230 */  andi       $v0, $v0, 0x1
    /* 4ED2C 8005E52C 01014010 */  beqz       $v0, .L8005E934
    /* 4ED30 8005E530 00000000 */   nop
  .L8005E534:
    /* 4ED34 8005E534 8A54020C */  jal        func_80095228
    /* 4ED38 8005E538 21206002 */   addu      $a0, $s3, $zero
    /* 4ED3C 8005E53C 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 4ED40 8005E540 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 4ED44 8005E544 A587030C */  jal        func_800E1E94
    /* 4ED48 8005E548 21284000 */   addu      $a1, $v0, $zero
    /* 4ED4C 8005E54C 40101100 */  sll        $v0, $s1, 1
    /* 4ED50 8005E550 21105100 */  addu       $v0, $v0, $s1
    /* 4ED54 8005E554 80100200 */  sll        $v0, $v0, 2
    /* 4ED58 8005E558 21105100 */  addu       $v0, $v0, $s1
    /* 4ED5C 8005E55C 40100200 */  sll        $v0, $v0, 1
    /* 4ED60 8005E560 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4ED64 8005E564 21082200 */  addu       $at, $at, $v0
    /* 4ED68 8005E568 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4ED6C 8005E56C 00000000 */  nop
    /* 4ED70 8005E570 80100300 */  sll        $v0, $v1, 2
    /* 4ED74 8005E574 21104300 */  addu       $v0, $v0, $v1
    /* 4ED78 8005E578 80100200 */  sll        $v0, $v0, 2
    /* 4ED7C 8005E57C 1180013C */  lui        $at, %hi(D_8010D27C)
    /* 4ED80 8005E580 21082200 */  addu       $at, $at, $v0
    /* 4ED84 8005E584 7CD2258C */  lw         $a1, %lo(D_8010D27C)($at)
    /* 4ED88 8005E588 ABAC020C */  jal        func_800AB2AC
    /* 4ED8C 8005E58C 01000424 */   addiu     $a0, $zero, 0x1
    /* 4ED90 8005E590 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4ED94 8005E594 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4ED98 8005E598 00000000 */  nop
    /* 4ED9C 8005E59C 07104202 */  srav       $v0, $v0, $s2
    /* 4EDA0 8005E5A0 01004230 */  andi       $v0, $v0, 0x1
    /* 4EDA4 8005E5A4 13004014 */  bnez       $v0, .L8005E5F4
    /* 4EDA8 8005E5A8 40101200 */   sll       $v0, $s2, 1
    /* 4EDAC 8005E5AC 21105200 */  addu       $v0, $v0, $s2
    /* 4EDB0 8005E5B0 80100200 */  sll        $v0, $v0, 2
    /* 4EDB4 8005E5B4 23105200 */  subu       $v0, $v0, $s2
    /* 4EDB8 8005E5B8 00110200 */  sll        $v0, $v0, 4
    /* 4EDBC 8005E5BC 23105200 */  subu       $v0, $v0, $s2
    /* 4EDC0 8005E5C0 C0100200 */  sll        $v0, $v0, 3
    /* 4EDC4 8005E5C4 1180013C */  lui        $at, %hi(D_80117694)
    /* 4EDC8 8005E5C8 21082200 */  addu       $at, $at, $v0
    /* 4EDCC 8005E5CC 9476228C */  lw         $v0, %lo(D_80117694)($at)
    /* 4EDD0 8005E5D0 00000000 */  nop
    /* 4EDD4 8005E5D4 C21F0200 */  srl        $v1, $v0, 31
    /* 4EDD8 8005E5D8 21104300 */  addu       $v0, $v0, $v1
    /* 4EDDC 8005E5DC 43100200 */  sra        $v0, $v0, 1
    /* 4EDE0 8005E5E0 2A105000 */  slt        $v0, $v0, $s0
    /* 4EDE4 8005E5E4 D3004014 */  bnez       $v0, .L8005E934
    /* 4EDE8 8005E5E8 40101200 */   sll       $v0, $s2, 1
    /* 4EDEC 8005E5EC 95790108 */  j          .L8005E654
    /* 4EDF0 8005E5F0 00000000 */   nop
  .L8005E5F4:
    /* 4EDF4 8005E5F4 1280013C */  lui        $at, %hi(D_8011FF28)
    /* 4EDF8 8005E5F8 28FF30AC */  sw         $s0, %lo(D_8011FF28)($at)
    /* 4EDFC 8005E5FC 21105200 */  addu       $v0, $v0, $s2
    /* 4EE00 8005E600 80100200 */  sll        $v0, $v0, 2
    /* 4EE04 8005E604 23105200 */  subu       $v0, $v0, $s2
    /* 4EE08 8005E608 00110200 */  sll        $v0, $v0, 4
    /* 4EE0C 8005E60C 23105200 */  subu       $v0, $v0, $s2
    /* 4EE10 8005E610 C0100200 */  sll        $v0, $v0, 3
    /* 4EE14 8005E614 1180013C */  lui        $at, %hi(D_80117694)
    /* 4EE18 8005E618 21082200 */  addu       $at, $at, $v0
    /* 4EE1C 8005E61C 9476228C */  lw         $v0, %lo(D_80117694)($at)
    /* 4EE20 8005E620 00000000 */  nop
    /* 4EE24 8005E624 2A105000 */  slt        $v0, $v0, $s0
    /* 4EE28 8005E628 02004014 */  bnez       $v0, .L8005E634
    /* 4EE2C 8005E62C 79D70534 */   ori       $a1, $zero, 0xD779
    /* 4EE30 8005E630 E0D70534 */  ori        $a1, $zero, 0xD7E0
  .L8005E634:
    /* 4EE34 8005E634 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4EE38 8005E638 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4EE3C 8005E63C 21300000 */  addu       $a2, $zero, $zero
    /* 4EE40 8005E640 63E4020C */  jal        func_800B918C
    /* 4EE44 8005E644 21382002 */   addu      $a3, $s1, $zero
    /* 4EE48 8005E648 01000324 */  addiu      $v1, $zero, 0x1
    /* 4EE4C 8005E64C B9004314 */  bne        $v0, $v1, .L8005E934
    /* 4EE50 8005E650 40101200 */   sll       $v0, $s2, 1
  .L8005E654:
    /* 4EE54 8005E654 21105200 */  addu       $v0, $v0, $s2
    /* 4EE58 8005E658 80100200 */  sll        $v0, $v0, 2
    /* 4EE5C 8005E65C 23105200 */  subu       $v0, $v0, $s2
    /* 4EE60 8005E660 00110200 */  sll        $v0, $v0, 4
    /* 4EE64 8005E664 23105200 */  subu       $v0, $v0, $s2
    /* 4EE68 8005E668 C0100200 */  sll        $v0, $v0, 3
    /* 4EE6C 8005E66C 1180013C */  lui        $at, %hi(D_80117694)
    /* 4EE70 8005E670 21082200 */  addu       $at, $at, $v0
    /* 4EE74 8005E674 9476238C */  lw         $v1, %lo(D_80117694)($at)
    /* 4EE78 8005E678 00000000 */  nop
    /* 4EE7C 8005E67C 23187000 */  subu       $v1, $v1, $s0
    /* 4EE80 8005E680 1180013C */  lui        $at, %hi(D_80117694)
    /* 4EE84 8005E684 21082200 */  addu       $at, $at, $v0
    /* 4EE88 8005E688 947623AC */  sw         $v1, %lo(D_80117694)($at)
    /* 4EE8C 8005E68C 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 4EE90 8005E690 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 4EE94 8005E694 00000000 */  nop
    /* 4EE98 8005E698 05004216 */  bne        $s2, $v0, .L8005E6B0
    /* 4EE9C 8005E69C 00000000 */   nop
    /* 4EEA0 8005E6A0 9FBF000C */  jal        func_8002FE7C
    /* 4EEA4 8005E6A4 01000424 */   addiu     $a0, $zero, 0x1
    /* 4EEA8 8005E6A8 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 4EEAC 8005E6AC B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
  .L8005E6B0:
    /* 4EEB0 8005E6B0 00000000 */  nop
    /* 4EEB4 8005E6B4 03006212 */  beq        $s3, $v0, .L8005E6C4
    /* 4EEB8 8005E6B8 00000000 */   nop
    /* 4EEBC 8005E6BC 06004216 */  bne        $s2, $v0, .L8005E6D8
    /* 4EEC0 8005E6C0 00000000 */   nop
  .L8005E6C4:
    /* 4EEC4 8005E6C4 44000424 */  addiu      $a0, $zero, 0x44
    /* 4EEC8 8005E6C8 01000524 */  addiu      $a1, $zero, 0x1
    /* 4EECC 8005E6CC 21300000 */  addu       $a2, $zero, $zero
    /* 4EED0 8005E6D0 2B9D020C */  jal        func_800A74AC
    /* 4EED4 8005E6D4 21380000 */   addu      $a3, $zero, $zero
  .L8005E6D8:
    /* 4EED8 8005E6D8 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4EEDC 8005E6DC 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4EEE0 8005E6E0 00000000 */  nop
    /* 4EEE4 8005E6E4 07106202 */  srav       $v0, $v0, $s3
    /* 4EEE8 8005E6E8 01004230 */  andi       $v0, $v0, 0x1
    /* 4EEEC 8005E6EC 19004010 */  beqz       $v0, .L8005E754
    /* 4EEF0 8005E6F0 40101100 */   sll       $v0, $s1, 1
    /* 4EEF4 8005E6F4 21105100 */  addu       $v0, $v0, $s1
    /* 4EEF8 8005E6F8 80100200 */  sll        $v0, $v0, 2
    /* 4EEFC 8005E6FC 21105100 */  addu       $v0, $v0, $s1
    /* 4EF00 8005E700 40100200 */  sll        $v0, $v0, 1
    /* 4EF04 8005E704 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4EF08 8005E708 21082200 */  addu       $at, $at, $v0
    /* 4EF0C 8005E70C B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 4EF10 8005E710 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4EF14 8005E714 21082200 */  addu       $at, $at, $v0
    /* 4EF18 8005E718 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 4EF1C 8005E71C 6D7C020C */  jal        func_8009F1B4
    /* 4EF20 8005E720 21306002 */   addu      $a2, $s3, $zero
    /* 4EF24 8005E724 5D54020C */  jal        func_80095174
    /* 4EF28 8005E728 21204002 */   addu      $a0, $s2, $zero
    /* 4EF2C 8005E72C 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* 4EF30 8005E730 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* 4EF34 8005E734 A587030C */  jal        func_800E1E94
    /* 4EF38 8005E738 21284000 */   addu      $a1, $v0, $zero
    /* 4EF3C 8005E73C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4EF40 8005E740 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4EF44 8005E744 6AD80534 */  ori        $a1, $zero, 0xD86A
    /* 4EF48 8005E748 21300000 */  addu       $a2, $zero, $zero
    /* 4EF4C 8005E74C 63E4020C */  jal        func_800B918C
    /* 4EF50 8005E750 21382002 */   addu      $a3, $s1, $zero
  .L8005E754:
    /* 4EF54 8005E754 40181300 */  sll        $v1, $s3, 1
    /* 4EF58 8005E758 21187300 */  addu       $v1, $v1, $s3
    /* 4EF5C 8005E75C 80180300 */  sll        $v1, $v1, 2
    /* 4EF60 8005E760 23187300 */  subu       $v1, $v1, $s3
    /* 4EF64 8005E764 00190300 */  sll        $v1, $v1, 4
    /* 4EF68 8005E768 23187300 */  subu       $v1, $v1, $s3
    /* 4EF6C 8005E76C C0180300 */  sll        $v1, $v1, 3
    /* 4EF70 8005E770 40101100 */  sll        $v0, $s1, 1
    /* 4EF74 8005E774 21105100 */  addu       $v0, $v0, $s1
    /* 4EF78 8005E778 80100200 */  sll        $v0, $v0, 2
    /* 4EF7C 8005E77C 21105100 */  addu       $v0, $v0, $s1
    /* 4EF80 8005E780 40800200 */  sll        $s0, $v0, 1
    /* 4EF84 8005E784 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4EF88 8005E788 21083000 */  addu       $at, $at, $s0
    /* 4EF8C 8005E78C BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* 4EF90 8005E790 1180053C */  lui        $a1, %hi(D_80117763)
    /* 4EF94 8005E794 6377A524 */  addiu      $a1, $a1, %lo(D_80117763)
    /* 4EF98 8005E798 21186500 */  addu       $v1, $v1, $a1
    /* 4EF9C 8005E79C 21186200 */  addu       $v1, $v1, $v0
    /* 4EFA0 8005E7A0 00006290 */  lbu        $v0, 0x0($v1)
    /* 4EFA4 8005E7A4 00000000 */  nop
    /* 4EFA8 8005E7A8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4EFAC 8005E7AC 000062A0 */  sb         $v0, 0x0($v1)
    /* 4EFB0 8005E7B0 40101200 */  sll        $v0, $s2, 1
    /* 4EFB4 8005E7B4 21105200 */  addu       $v0, $v0, $s2
    /* 4EFB8 8005E7B8 80100200 */  sll        $v0, $v0, 2
    /* 4EFBC 8005E7BC 23105200 */  subu       $v0, $v0, $s2
    /* 4EFC0 8005E7C0 00110200 */  sll        $v0, $v0, 4
    /* 4EFC4 8005E7C4 23105200 */  subu       $v0, $v0, $s2
    /* 4EFC8 8005E7C8 C0100200 */  sll        $v0, $v0, 3
    /* 4EFCC 8005E7CC 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4EFD0 8005E7D0 21083000 */  addu       $at, $at, $s0
    /* 4EFD4 8005E7D4 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4EFD8 8005E7D8 21204500 */  addu       $a0, $v0, $a1
    /* 4EFDC 8005E7DC 21208300 */  addu       $a0, $a0, $v1
    /* 4EFE0 8005E7E0 00008390 */  lbu        $v1, 0x0($a0)
    /* 4EFE4 8005E7E4 00000000 */  nop
    /* 4EFE8 8005E7E8 01006324 */  addiu      $v1, $v1, 0x1
    /* 4EFEC 8005E7EC 000083A0 */  sb         $v1, 0x0($a0)
    /* 4EFF0 8005E7F0 2DFFA524 */  addiu      $a1, $a1, -0xD3
    /* 4EFF4 8005E7F4 21284500 */  addu       $a1, $v0, $a1
    /* 4EFF8 8005E7F8 1180013C */  lui        $at, %hi(D_801176AE)
    /* 4EFFC 8005E7FC 21082200 */  addu       $at, $at, $v0
    /* 4F000 8005E800 AE762294 */  lhu        $v0, %lo(D_801176AE)($at)
    /* 4F004 8005E804 00000000 */  nop
    /* 4F008 8005E808 01004224 */  addiu      $v0, $v0, 0x1
    /* 4F00C 8005E80C 1E00A2A4 */  sh         $v0, 0x1E($a1)
    /* 4F010 8005E810 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4F014 8005E814 21083000 */  addu       $at, $at, $s0
    /* 4F018 8005E818 BBD632A0 */  sb         $s2, %lo(D_8010D6BB)($at)
    /* 4F01C 8005E81C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4F020 8005E820 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* 4F024 8005E824 21083000 */  addu       $at, $at, $s0
    /* 4F028 8005E828 C4D622A0 */  sb         $v0, %lo(D_8010D6C4)($at)
    /* 4F02C 8005E82C 1180013C */  lui        $at, %hi(D_8010D6BC)
    /* 4F030 8005E830 21083000 */  addu       $at, $at, $s0
    /* 4F034 8005E834 BCD620A0 */  sb         $zero, %lo(D_8010D6BC)($at)
    /* 4F038 8005E838 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 4F03C 8005E83C 21083000 */  addu       $at, $at, $s0
    /* 4F040 8005E840 C3D622A0 */  sb         $v0, %lo(D_8010D6C3)($at)
    /* 4F044 8005E844 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4F048 8005E848 21083000 */  addu       $at, $at, $s0
    /* 4F04C 8005E84C B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 4F050 8005E850 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4F054 8005E854 21083000 */  addu       $at, $at, $s0
    /* 4F058 8005E858 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 4F05C 8005E85C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4F060 8005E860 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4F064 8005E864 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 4F068 8005E868 6026020C */  jal        func_80089980
    /* 4F06C 8005E86C FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 4F070 8005E870 21184000 */  addu       $v1, $v0, $zero
    /* 4F074 8005E874 0E006004 */  bltz       $v1, .L8005E8B0
    /* 4F078 8005E878 40100300 */   sll       $v0, $v1, 1
    /* 4F07C 8005E87C 21104300 */  addu       $v0, $v0, $v1
    /* 4F080 8005E880 80100200 */  sll        $v0, $v0, 2
    /* 4F084 8005E884 23104300 */  subu       $v0, $v0, $v1
    /* 4F088 8005E888 C0100200 */  sll        $v0, $v0, 3
    /* 4F08C 8005E88C 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 4F090 8005E890 21082200 */  addu       $at, $at, $v0
    /* 4F094 8005E894 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* 4F098 8005E898 00000000 */  nop
    /* 4F09C 8005E89C 05005214 */  bne        $v0, $s2, .L8005E8B4
    /* 4F0A0 8005E8A0 21202002 */   addu      $a0, $s1, $zero
    /* 4F0A4 8005E8A4 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* 4F0A8 8005E8A8 21083000 */  addu       $at, $at, $s0
    /* 4F0AC 8005E8AC C4D623A0 */  sb         $v1, %lo(D_8010D6C4)($at)
  .L8005E8B0:
    /* 4F0B0 8005E8B0 21202002 */  addu       $a0, $s1, $zero
  .L8005E8B4:
    /* 4F0B4 8005E8B4 9EF3010C */  jal        func_8007CE78
    /* 4F0B8 8005E8B8 21286002 */   addu      $a1, $s3, $zero
    /* 4F0BC 8005E8BC 40801100 */  sll        $s0, $s1, 1
    /* 4F0C0 8005E8C0 21801102 */  addu       $s0, $s0, $s1
    /* 4F0C4 8005E8C4 80801000 */  sll        $s0, $s0, 2
    /* 4F0C8 8005E8C8 21801102 */  addu       $s0, $s0, $s1
    /* 4F0CC 8005E8CC 40801000 */  sll        $s0, $s0, 1
    /* 4F0D0 8005E8D0 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4F0D4 8005E8D4 21083000 */  addu       $at, $at, $s0
    /* 4F0D8 8005E8D8 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 4F0DC 8005E8DC 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4F0E0 8005E8E0 21083000 */  addu       $at, $at, $s0
    /* 4F0E4 8005E8E4 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 4F0E8 8005E8E8 1061020C */  jal        func_80098440
    /* 4F0EC 8005E8EC 21304002 */   addu      $a2, $s2, $zero
    /* 4F0F0 8005E8F0 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4F0F4 8005E8F4 21083000 */  addu       $at, $at, $s0
    /* 4F0F8 8005E8F8 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 4F0FC 8005E8FC 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4F100 8005E900 21083000 */  addu       $at, $at, $s0
    /* 4F104 8005E904 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 4F108 8005E908 426F020C */  jal        func_8009BD08
    /* 4F10C 8005E90C 00000000 */   nop
    /* 4F110 8005E910 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4F114 8005E914 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4F118 8005E918 00000000 */  nop
    /* 4F11C 8005E91C 07106202 */  srav       $v0, $v0, $s3
    /* 4F120 8005E920 01004230 */  andi       $v0, $v0, 0x1
    /* 4F124 8005E924 03004010 */  beqz       $v0, .L8005E934
    /* 4F128 8005E928 00000000 */   nop
    /* 4F12C 8005E92C 079E020C */  jal        func_800A781C
    /* 4F130 8005E930 1E000424 */   addiu     $a0, $zero, 0x1E
  .L8005E934:
    /* 4F134 8005E934 2800BF8F */  lw         $ra, 0x28($sp)
    /* 4F138 8005E938 2400B38F */  lw         $s3, 0x24($sp)
    /* 4F13C 8005E93C 2000B28F */  lw         $s2, 0x20($sp)
    /* 4F140 8005E940 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4F144 8005E944 1800B08F */  lw         $s0, 0x18($sp)
    /* 4F148 8005E948 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 4F14C 8005E94C 0800E003 */  jr         $ra
    /* 4F150 8005E950 00000000 */   nop
endlabel func_8005E260
