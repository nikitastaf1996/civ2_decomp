.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E0E4, 0x704

glabel func_8001E0E4
    /* E8E4 8001E0E4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* E8E8 8001E0E8 2400BFAF */  sw         $ra, 0x24($sp)
    /* E8EC 8001E0EC 2000B4AF */  sw         $s4, 0x20($sp)
    /* E8F0 8001E0F0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* E8F4 8001E0F4 1800B2AF */  sw         $s2, 0x18($sp)
    /* E8F8 8001E0F8 1400B1AF */  sw         $s1, 0x14($sp)
    /* E8FC 8001E0FC 1000B0AF */  sw         $s0, 0x10($sp)
    /* E900 8001E100 0C25020C */  jal        func_80089430
    /* E904 8001E104 21808000 */   addu      $s0, $a0, $zero
    /* E908 8001E108 01000224 */  addiu      $v0, $zero, 0x1
    /* E90C 8001E10C 1280013C */  lui        $at, %hi(D_80122AB0)
    /* E910 8001E110 B02A22AC */  sw         $v0, %lo(D_80122AB0)($at)
    /* E914 8001E114 1680043C */  lui        $a0, %hi(D_80158864)
    /* E918 8001E118 6488848C */  lw         $a0, %lo(D_80158864)($a0)
    /* E91C 8001E11C 00000000 */  nop
    /* E920 8001E120 08009280 */  lb         $s2, 0x8($a0)
    /* E924 8001E124 1280033C */  lui        $v1, %hi(D_8011A262)
    /* E928 8001E128 62A26394 */  lhu        $v1, %lo(D_8011A262)($v1)
    /* E92C 8001E12C 00000000 */  nop
    /* E930 8001E130 3F006330 */  andi       $v1, $v1, 0x3F
    /* E934 8001E134 0B008290 */  lbu        $v0, 0xB($a0)
    /* E938 8001E138 00000000 */  nop
    /* E93C 8001E13C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* E940 8001E140 3F004230 */  andi       $v0, $v0, 0x3F
    /* E944 8001E144 02006214 */  bne        $v1, $v0, .L8001E150
    /* E948 8001E148 00000000 */   nop
    /* E94C 8001E14C 0A0092A0 */  sb         $s2, 0xA($a0)
  .L8001E150:
    /* E950 8001E150 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* E954 8001E154 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* E958 8001E158 00000000 */  nop
    /* E95C 8001E15C 06004216 */  bne        $s2, $v0, .L8001E178
    /* E960 8001E160 21180000 */   addu      $v1, $zero, $zero
    /* E964 8001E164 1280023C */  lui        $v0, %hi(D_8011A275)
    /* E968 8001E168 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* E96C 8001E16C 00000000 */  nop
    /* E970 8001E170 07104202 */  srav       $v0, $v0, $s2
    /* E974 8001E174 01004330 */  andi       $v1, $v0, 0x1
  .L8001E178:
    /* E978 8001E178 BC0083AF */  sw         $v1, %gp_rel(D_80158594)($gp)
    /* E97C 8001E17C B80080AF */  sw         $zero, %gp_rel(D_80158590)($gp)
    /* E980 8001E180 1680043C */  lui        $a0, %hi(D_80158864)
    /* E984 8001E184 6488848C */  lw         $a0, %lo(D_80158864)($a0)
    /* E988 8001E188 00000000 */  nop
    /* E98C 8001E18C 0400828C */  lw         $v0, 0x4($a0)
    /* E990 8001E190 BFFF033C */  lui        $v1, (0xFFBFFFBB >> 16)
    /* E994 8001E194 BBFF6334 */  ori        $v1, $v1, (0xFFBFFFBB & 0xFFFF)
    /* E998 8001E198 24104300 */  and        $v0, $v0, $v1
    /* E99C 8001E19C 040082AC */  sw         $v0, 0x4($a0)
    /* E9A0 8001E1A0 1280023C */  lui        $v0, %hi(D_80122AA4)
    /* E9A4 8001E1A4 A42A428C */  lw         $v0, %lo(D_80122AA4)($v0)
    /* E9A8 8001E1A8 00000000 */  nop
    /* E9AC 8001E1AC 26105000 */  xor        $v0, $v0, $s0
    /* E9B0 8001E1B0 0100422C */  sltiu      $v0, $v0, 0x1
    /* E9B4 8001E1B4 300082AF */  sw         $v0, %gp_rel(D_80158508)($gp)
    /* E9B8 8001E1B8 340080AF */  sw         $zero, %gp_rel(D_8015850C)($gp)
    /* E9BC 8001E1BC 1C009084 */  lh         $s0, 0x1C($a0)
    /* E9C0 8001E1C0 4964000C */  jal        func_80019124
    /* E9C4 8001E1C4 00000000 */   nop
    /* E9C8 8001E1C8 7E014014 */  bnez       $v0, .L8001E7C4
    /* E9CC 8001E1CC 19FC0224 */   addiu     $v0, $zero, -0x3E7
    /* E9D0 8001E1D0 0C63000C */  jal        func_80018C30
    /* E9D4 8001E1D4 01000424 */   addiu     $a0, $zero, 0x1
    /* E9D8 8001E1D8 3000828F */  lw         $v0, %gp_rel(D_80158508)($gp)
    /* E9DC 8001E1DC 00000000 */  nop
    /* E9E0 8001E1E0 09004010 */  beqz       $v0, .L8001E208
    /* E9E4 8001E1E4 00000000 */   nop
    /* E9E8 8001E1E8 3400828F */  lw         $v0, %gp_rel(D_8015850C)($gp)
    /* E9EC 8001E1EC 00000000 */  nop
    /* E9F0 8001E1F0 05004010 */  beqz       $v0, .L8001E208
    /* E9F4 8001E1F4 00000000 */   nop
    /* E9F8 8001E1F8 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* E9FC 8001E1FC F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* EA00 8001E200 B358030C */  jal        func_800D62CC
    /* EA04 8001E204 00000000 */   nop
  .L8001E208:
    /* EA08 8001E208 440F828F */  lw         $v0, %gp_rel(D_8015941C)($gp)
    /* EA0C 8001E20C 00000000 */  nop
    /* EA10 8001E210 04004010 */  beqz       $v0, .L8001E224
    /* EA14 8001E214 64140424 */   addiu     $a0, $zero, 0x1464
    /* EA18 8001E218 21280000 */  addu       $a1, $zero, $zero
    /* EA1C 8001E21C 2963000C */  jal        func_80018CA4
    /* EA20 8001E220 21300000 */   addu      $a2, $zero, $zero
  .L8001E224:
    /* EA24 8001E224 1680053C */  lui        $a1, %hi(D_80158864)
    /* EA28 8001E228 6488A58C */  lw         $a1, %lo(D_80158864)($a1)
    /* EA2C 8001E22C 00000000 */  nop
    /* EA30 8001E230 0900A380 */  lb         $v1, 0x9($a1)
    /* EA34 8001E234 1280023C */  lui        $v0, %hi(D_8011A5CA)
    /* EA38 8001E238 CAA54290 */  lbu        $v0, %lo(D_8011A5CA)($v0)
    /* EA3C 8001E23C 00000000 */  nop
    /* EA40 8001E240 18006200 */  mult       $v1, $v0
    /* EA44 8001E244 1180033C */  lui        $v1, %hi(D_8010BA3C)
    /* EA48 8001E248 3CBA638C */  lw         $v1, %lo(D_8010BA3C)($v1)
    /* EA4C 8001E24C 12600000 */  mflo       $t4
    /* EA50 8001E250 23186C00 */  subu       $v1, $v1, $t4
    /* EA54 8001E254 4C00848F */  lw         $a0, %gp_rel(D_80158524)($gp)
    /* EA58 8001E258 4800828F */  lw         $v0, %gp_rel(D_80158520)($gp)
    /* EA5C 8001E25C 00000000 */  nop
    /* EA60 8001E260 18008200 */  mult       $a0, $v0
    /* EA64 8001E264 12600000 */  mflo       $t4
    /* EA68 8001E268 23206C00 */  subu       $a0, $v1, $t4
    /* EA6C 8001E26C E00084AF */  sw         $a0, %gp_rel(D_801585B8)($gp)
    /* EA70 8001E270 1C00A394 */  lhu        $v1, 0x1C($a1)
    /* EA74 8001E274 E0008297 */  lhu        $v0, %gp_rel(D_801585B8)($gp)
    /* EA78 8001E278 00000000 */  nop
    /* EA7C 8001E27C 21106200 */  addu       $v0, $v1, $v0
    /* EA80 8001E280 1300001A */  blez       $s0, .L8001E2D0
    /* EA84 8001E284 1C00A2A4 */   sh        $v0, 0x1C($a1)
    /* EA88 8001E288 00140200 */  sll        $v0, $v0, 16
    /* EA8C 8001E28C 031C0200 */  sra        $v1, $v0, 16
    /* EA90 8001E290 2A107000 */  slt        $v0, $v1, $s0
    /* EA94 8001E294 0E004010 */  beqz       $v0, .L8001E2D0
    /* EA98 8001E298 40100400 */   sll       $v0, $a0, 1
    /* EA9C 8001E29C 21104400 */  addu       $v0, $v0, $a0
    /* EAA0 8001E2A0 21106200 */  addu       $v0, $v1, $v0
    /* EAA4 8001E2A4 0A004104 */  bgez       $v0, .L8001E2D0
    /* EAA8 8001E2A8 00000000 */   nop
    /* EAAC 8001E2AC 1280023C */  lui        $v0, %hi(D_8011A25C)
    /* EAB0 8001E2B0 5CA24294 */  lhu        $v0, %lo(D_8011A25C)($v0)
    /* EAB4 8001E2B4 00000000 */  nop
    /* EAB8 8001E2B8 80004230 */  andi       $v0, $v0, 0x80
    /* EABC 8001E2BC 04004014 */  bnez       $v0, .L8001E2D0
    /* EAC0 8001E2C0 B2140424 */   addiu     $a0, $zero, 0x14B2
    /* EAC4 8001E2C4 21280000 */  addu       $a1, $zero, $zero
    /* EAC8 8001E2C8 2963000C */  jal        func_80018CA4
    /* EACC 8001E2CC 21300000 */   addu      $a2, $zero, $zero
  .L8001E2D0:
    /* EAD0 8001E2D0 8366000C */  jal        func_80019A0C
    /* EAD4 8001E2D4 00000000 */   nop
    /* EAD8 8001E2D8 D970000C */  jal        func_8001C364
    /* EADC 8001E2DC 00000000 */   nop
    /* EAE0 8001E2E0 01000224 */  addiu      $v0, $zero, 0x1
    /* EAE4 8001E2E4 2C0082AF */  sw         $v0, %gp_rel(D_80158504)($gp)
    /* EAE8 8001E2E8 280082AF */  sw         $v0, %gp_rel(D_80158500)($gp)
    /* EAEC 8001E2EC 3C0080AF */  sw         $zero, %gp_rel(D_80158514)($gp)
    /* EAF0 8001E2F0 EC0080AF */  sw         $zero, %gp_rel(D_801585C4)($gp)
    /* EAF4 8001E2F4 0C63000C */  jal        func_80018C30
    /* EAF8 8001E2F8 01000424 */   addiu     $a0, $zero, 0x1
    /* EAFC 8001E2FC 2C0080AF */  sw         $zero, %gp_rel(D_80158504)($gp)
    /* EB00 8001E300 5400858F */  lw         $a1, %gp_rel(D_8015852C)($gp)
    /* EB04 8001E304 1180043C */  lui        $a0, %hi(D_8010BA40)
    /* EB08 8001E308 40BA848C */  lw         $a0, %lo(D_8010BA40)($a0)
    /* EB0C 8001E30C 00000000 */  nop
    /* EB10 8001E310 2A108500 */  slt        $v0, $a0, $a1
    /* EB14 8001E314 12004010 */  beqz       $v0, .L8001E360
    /* EB18 8001E318 40181200 */   sll       $v1, $s2, 1
    /* EB1C 8001E31C 21187200 */  addu       $v1, $v1, $s2
    /* EB20 8001E320 80180300 */  sll        $v1, $v1, 2
    /* EB24 8001E324 23187200 */  subu       $v1, $v1, $s2
    /* EB28 8001E328 00190300 */  sll        $v1, $v1, 4
    /* EB2C 8001E32C 23187200 */  subu       $v1, $v1, $s2
    /* EB30 8001E330 C0180300 */  sll        $v1, $v1, 3
    /* EB34 8001E334 2310A400 */  subu       $v0, $a1, $a0
    /* EB38 8001E338 80200200 */  sll        $a0, $v0, 2
    /* EB3C 8001E33C 21208200 */  addu       $a0, $a0, $v0
    /* EB40 8001E340 1180013C */  lui        $at, %hi(D_80117A48)
    /* EB44 8001E344 21082300 */  addu       $at, $at, $v1
    /* EB48 8001E348 487A2294 */  lhu        $v0, %lo(D_80117A48)($at)
    /* EB4C 8001E34C 00000000 */  nop
    /* EB50 8001E350 21104400 */  addu       $v0, $v0, $a0
    /* EB54 8001E354 1180013C */  lui        $at, %hi(D_80117A48)
    /* EB58 8001E358 21082300 */  addu       $at, $at, $v1
    /* EB5C 8001E35C 487A22A4 */  sh         $v0, %lo(D_80117A48)($at)
  .L8001E360:
    /* EB60 8001E360 1280023C */  lui        $v0, %hi(D_8011A5D5)
    /* EB64 8001E364 D5A54290 */  lbu        $v0, %lo(D_8011A5D5)($v0)
    /* EB68 8001E368 5000848F */  lw         $a0, %gp_rel(D_80158528)($gp)
    /* EB6C 8001E36C 1680033C */  lui        $v1, %hi(D_80158864)
    /* EB70 8001E370 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* EB74 8001E374 23208200 */  subu       $a0, $a0, $v0
    /* EB78 8001E378 09006680 */  lb         $a2, 0x9($v1)
    /* EB7C 8001E37C F53A030C */  jal        func_800CEBD4
    /* EB80 8001E380 21280000 */   addu      $a1, $zero, $zero
    /* EB84 8001E384 40181200 */  sll        $v1, $s2, 1
    /* EB88 8001E388 21187200 */  addu       $v1, $v1, $s2
    /* EB8C 8001E38C 80180300 */  sll        $v1, $v1, 2
    /* EB90 8001E390 23187200 */  subu       $v1, $v1, $s2
    /* EB94 8001E394 00190300 */  sll        $v1, $v1, 4
    /* EB98 8001E398 23187200 */  subu       $v1, $v1, $s2
    /* EB9C 8001E39C C0180300 */  sll        $v1, $v1, 3
    /* EBA0 8001E3A0 1180013C */  lui        $at, %hi(D_80117A48)
    /* EBA4 8001E3A4 21082300 */  addu       $at, $at, $v1
    /* EBA8 8001E3A8 487A2494 */  lhu        $a0, %lo(D_80117A48)($at)
    /* EBAC 8001E3AC 00000000 */  nop
    /* EBB0 8001E3B0 21208200 */  addu       $a0, $a0, $v0
    /* EBB4 8001E3B4 1180013C */  lui        $at, %hi(D_80117A48)
    /* EBB8 8001E3B8 21082300 */  addu       $at, $at, $v1
    /* EBBC 8001E3BC 487A24A4 */  sh         $a0, %lo(D_80117A48)($at)
    /* EBC0 8001E3C0 01000624 */  addiu      $a2, $zero, 0x1
    /* EBC4 8001E3C4 02000B24 */  addiu      $t3, $zero, 0x2
    /* EBC8 8001E3C8 01000A24 */  addiu      $t2, $zero, 0x1
    /* EBCC 8001E3CC 03000924 */  addiu      $t1, $zero, 0x3
    /* EBD0 8001E3D0 04000824 */  addiu      $t0, $zero, 0x4
    /* EBD4 8001E3D4 40101200 */  sll        $v0, $s2, 1
    /* EBD8 8001E3D8 21105200 */  addu       $v0, $v0, $s2
    /* EBDC 8001E3DC 80100200 */  sll        $v0, $v0, 2
    /* EBE0 8001E3E0 23105200 */  subu       $v0, $v0, $s2
    /* EBE4 8001E3E4 00110200 */  sll        $v0, $v0, 4
    /* EBE8 8001E3E8 23105200 */  subu       $v0, $v0, $s2
    /* EBEC 8001E3EC C0100200 */  sll        $v0, $v0, 3
    /* EBF0 8001E3F0 1180033C */  lui        $v1, %hi(D_80117A48)
    /* EBF4 8001E3F4 487A6324 */  addiu      $v1, $v1, %lo(D_80117A48)
    /* EBF8 8001E3F8 21384300 */  addu       $a3, $v0, $v1
  .L8001E3FC:
    /* EBFC 8001E3FC 1400CB10 */  beq        $a2, $t3, .L8001E450
    /* EC00 8001E400 21280000 */   addu      $a1, $zero, $zero
    /* EC04 8001E404 0300C228 */  slti       $v0, $a2, 0x3
    /* EC08 8001E408 05004010 */  beqz       $v0, .L8001E420
    /* EC0C 8001E40C 00000000 */   nop
    /* EC10 8001E410 0900CA10 */  beq        $a2, $t2, .L8001E438
    /* EC14 8001E414 00000000 */   nop
    /* EC18 8001E418 1E790008 */  j          .L8001E478
    /* EC1C 8001E41C 00000000 */   nop
  .L8001E420:
    /* EC20 8001E420 0F00C910 */  beq        $a2, $t1, .L8001E460
    /* EC24 8001E424 00000000 */   nop
    /* EC28 8001E428 1100C810 */  beq        $a2, $t0, .L8001E470
    /* EC2C 8001E42C 00000000 */   nop
    /* EC30 8001E430 1E790008 */  j          .L8001E478
    /* EC34 8001E434 00000000 */   nop
  .L8001E438:
    /* EC38 8001E438 1680023C */  lui        $v0, %hi(D_80158864)
    /* EC3C 8001E43C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* EC40 8001E440 00000000 */  nop
    /* EC44 8001E444 09004580 */  lb         $a1, 0x9($v0)
    /* EC48 8001E448 1E790008 */  j          .L8001E478
    /* EC4C 8001E44C 00000000 */   nop
  .L8001E450:
    /* EC50 8001E450 1280053C */  lui        $a1, %hi(D_8011A5D5)
    /* EC54 8001E454 D5A5A590 */  lbu        $a1, %lo(D_8011A5D5)($a1)
    /* EC58 8001E458 1E790008 */  j          .L8001E478
    /* EC5C 8001E45C 00000000 */   nop
  .L8001E460:
    /* EC60 8001E460 1280053C */  lui        $a1, %hi(D_8011A5D6)
    /* EC64 8001E464 D6A5A590 */  lbu        $a1, %lo(D_8011A5D6)($a1)
    /* EC68 8001E468 1E790008 */  j          .L8001E478
    /* EC6C 8001E46C 00000000 */   nop
  .L8001E470:
    /* EC70 8001E470 1280053C */  lui        $a1, %hi(D_8011A5D7)
    /* EC74 8001E474 D7A5A590 */  lbu        $a1, %lo(D_8011A5D7)($a1)
  .L8001E478:
    /* EC78 8001E478 5000828F */  lw         $v0, %gp_rel(D_80158528)($gp)
    /* EC7C 8001E47C 00000000 */  nop
    /* EC80 8001E480 2A10A200 */  slt        $v0, $a1, $v0
    /* EC84 8001E484 09004010 */  beqz       $v0, .L8001E4AC
    /* EC88 8001E488 40200600 */   sll       $a0, $a2, 1
    /* EC8C 8001E48C 21208700 */  addu       $a0, $a0, $a3
    /* EC90 8001E490 50008397 */  lhu        $v1, %gp_rel(D_80158528)($gp)
    /* EC94 8001E494 00000000 */  nop
    /* EC98 8001E498 23186500 */  subu       $v1, $v1, $a1
    /* EC9C 8001E49C 00008294 */  lhu        $v0, 0x0($a0)
    /* ECA0 8001E4A0 00000000 */  nop
    /* ECA4 8001E4A4 23104300 */  subu       $v0, $v0, $v1
    /* ECA8 8001E4A8 000082A4 */  sh         $v0, 0x0($a0)
  .L8001E4AC:
    /* ECAC 8001E4AC 0100C624 */  addiu      $a2, $a2, 0x1
    /* ECB0 8001E4B0 0700C228 */  slti       $v0, $a2, 0x7
    /* ECB4 8001E4B4 D1FF4014 */  bnez       $v0, .L8001E3FC
    /* ECB8 8001E4B8 21204002 */   addu      $a0, $s2, $zero
    /* ECBC 8001E4BC C17B030C */  jal        func_800DEF04
    /* ECC0 8001E4C0 15000524 */   addiu     $a1, $zero, 0x15
    /* ECC4 8001E4C4 08004014 */  bnez       $v0, .L8001E4E8
    /* ECC8 8001E4C8 01001424 */   addiu     $s4, $zero, 0x1
    /* ECCC 8001E4CC 1680043C */  lui        $a0, %hi(D_80158860)
    /* ECD0 8001E4D0 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* ECD4 8001E4D4 C826020C */  jal        func_80089B20
    /* ECD8 8001E4D8 21000524 */   addiu     $a1, $zero, 0x21
    /* ECDC 8001E4DC 02004014 */  bnez       $v0, .L8001E4E8
    /* ECE0 8001E4E0 01001424 */   addiu     $s4, $zero, 0x1
    /* ECE4 8001E4E4 21A00000 */  addu       $s4, $zero, $zero
  .L8001E4E8:
    /* ECE8 8001E4E8 40101200 */  sll        $v0, $s2, 1
    /* ECEC 8001E4EC 21105200 */  addu       $v0, $v0, $s2
    /* ECF0 8001E4F0 80100200 */  sll        $v0, $v0, 2
    /* ECF4 8001E4F4 23105200 */  subu       $v0, $v0, $s2
    /* ECF8 8001E4F8 00110200 */  sll        $v0, $v0, 4
    /* ECFC 8001E4FC 23105200 */  subu       $v0, $v0, $s2
    /* ED00 8001E500 C0100200 */  sll        $v0, $v0, 3
    /* ED04 8001E504 1180013C */  lui        $at, %hi(D_80117698)
    /* ED08 8001E508 21082200 */  addu       $at, $at, $v0
    /* ED0C 8001E50C 98762384 */  lh         $v1, %lo(D_80117698)($at)
    /* ED10 8001E510 00000000 */  nop
    /* ED14 8001E514 40100300 */  sll        $v0, $v1, 1
    /* ED18 8001E518 21104300 */  addu       $v0, $v0, $v1
    /* ED1C 8001E51C 00110200 */  sll        $v0, $v0, 4
    /* ED20 8001E520 1180013C */  lui        $at, %hi(D_80116AD2)
    /* ED24 8001E524 21082200 */  addu       $at, $at, $v0
    /* ED28 8001E528 D26A2380 */  lb         $v1, %lo(D_80116AD2)($at)
    /* ED2C 8001E52C 07000224 */  addiu      $v0, $zero, 0x7
    /* ED30 8001E530 23984300 */  subu       $s3, $v0, $v1
    /* ED34 8001E534 1680043C */  lui        $a0, %hi(D_80158860)
    /* ED38 8001E538 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* ED3C 8001E53C C826020C */  jal        func_80089B20
    /* ED40 8001E540 05000524 */   addiu     $a1, $zero, 0x5
    /* ED44 8001E544 02004010 */  beqz       $v0, .L8001E550
    /* ED48 8001E548 00000000 */   nop
    /* ED4C 8001E54C FEFF7326 */  addiu      $s3, $s3, -0x2
  .L8001E550:
    /* ED50 8001E550 1680043C */  lui        $a0, %hi(D_80158860)
    /* ED54 8001E554 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* ED58 8001E558 C826020C */  jal        func_80089B20
    /* ED5C 8001E55C 0A000524 */   addiu     $a1, $zero, 0xA
    /* ED60 8001E560 02004010 */  beqz       $v0, .L8001E56C
    /* ED64 8001E564 21800000 */   addu      $s0, $zero, $zero
    /* ED68 8001E568 FFFF7326 */  addiu      $s3, $s3, -0x1
  .L8001E56C:
    /* ED6C 8001E56C 1680043C */  lui        $a0, %hi(D_80158860)
    /* ED70 8001E570 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* ED74 8001E574 C826020C */  jal        func_80089B20
    /* ED78 8001E578 04000524 */   addiu     $a1, $zero, 0x4
    /* ED7C 8001E57C 0C004010 */  beqz       $v0, .L8001E5B0
    /* ED80 8001E580 00000000 */   nop
    /* ED84 8001E584 1680043C */  lui        $a0, %hi(D_80158860)
    /* ED88 8001E588 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* ED8C 8001E58C C826020C */  jal        func_80089B20
    /* ED90 8001E590 0B000524 */   addiu     $a1, $zero, 0xB
    /* ED94 8001E594 05004014 */  bnez       $v0, .L8001E5AC
    /* ED98 8001E598 21204002 */   addu      $a0, $s2, $zero
    /* ED9C 8001E59C C17B030C */  jal        func_800DEF04
    /* EDA0 8001E5A0 0A000524 */   addiu     $a1, $zero, 0xA
    /* EDA4 8001E5A4 02004010 */  beqz       $v0, .L8001E5B0
    /* EDA8 8001E5A8 00000000 */   nop
  .L8001E5AC:
    /* EDAC 8001E5AC 01001024 */  addiu      $s0, $zero, 0x1
  .L8001E5B0:
    /* EDB0 8001E5B0 02000012 */  beqz       $s0, .L8001E5BC
    /* EDB4 8001E5B4 00000000 */   nop
    /* EDB8 8001E5B8 FFFF7326 */  addiu      $s3, $s3, -0x1
  .L8001E5BC:
    /* EDBC 8001E5BC B17B030C */  jal        func_800DEEC4
    /* EDC0 8001E5C0 0D000424 */   addiu     $a0, $zero, 0xD
    /* EDC4 8001E5C4 1680033C */  lui        $v1, %hi(D_80158860)
    /* EDC8 8001E5C8 6088638C */  lw         $v1, %lo(D_80158860)($v1)
    /* EDCC 8001E5CC 00000000 */  nop
    /* EDD0 8001E5D0 37004310 */  beq        $v0, $v1, .L8001E6B0
    /* EDD4 8001E5D4 40801200 */   sll       $s0, $s2, 1
    /* EDD8 8001E5D8 21801202 */  addu       $s0, $s0, $s2
    /* EDDC 8001E5DC 80801000 */  sll        $s0, $s0, 2
    /* EDE0 8001E5E0 23801202 */  subu       $s0, $s0, $s2
    /* EDE4 8001E5E4 00811000 */  sll        $s0, $s0, 4
    /* EDE8 8001E5E8 23801202 */  subu       $s0, $s0, $s2
    /* EDEC 8001E5EC C0801000 */  sll        $s0, $s0, 3
    /* EDF0 8001E5F0 1180013C */  lui        $at, %hi(D_80117698)
    /* EDF4 8001E5F4 21083000 */  addu       $at, $at, $s0
    /* EDF8 8001E5F8 98762384 */  lh         $v1, %lo(D_80117698)($at)
    /* EDFC 8001E5FC 00000000 */  nop
    /* EE00 8001E600 40100300 */  sll        $v0, $v1, 1
    /* EE04 8001E604 21104300 */  addu       $v0, $v0, $v1
    /* EE08 8001E608 00110200 */  sll        $v0, $v0, 4
    /* EE0C 8001E60C 1180013C */  lui        $at, %hi(D_80116AD0)
    /* EE10 8001E610 21082200 */  addu       $at, $at, $v0
    /* EE14 8001E614 D06A3180 */  lb         $s1, %lo(D_80116AD0)($at)
    /* EE18 8001E618 00000000 */  nop
    /* EE1C 8001E61C 01003126 */  addiu      $s1, $s1, 0x1
    /* EE20 8001E620 5C00828F */  lw         $v0, %gp_rel(D_80158534)($gp)
    /* EE24 8001E624 00000000 */  nop
    /* EE28 8001E628 21882202 */  addu       $s1, $s1, $v0
    /* EE2C 8001E62C 0100843A */  xori       $a0, $s4, 0x1
    /* EE30 8001E630 04209100 */  sllv       $a0, $s1, $a0
    /* EE34 8001E634 21280000 */  addu       $a1, $zero, $zero
    /* EE38 8001E638 F53A030C */  jal        func_800CEBD4
    /* EE3C 8001E63C 63000624 */   addiu     $a2, $zero, 0x63
    /* EE40 8001E640 18005300 */  mult       $v0, $s3
    /* EE44 8001E644 12180000 */  mflo       $v1
    /* EE48 8001E648 1180013C */  lui        $at, %hi(D_80117A54)
    /* EE4C 8001E64C 21083000 */  addu       $at, $at, $s0
    /* EE50 8001E650 547A2294 */  lhu        $v0, %lo(D_80117A54)($at)
    /* EE54 8001E654 00000000 */  nop
    /* EE58 8001E658 23104300 */  subu       $v0, $v0, $v1
    /* EE5C 8001E65C 1180013C */  lui        $at, %hi(D_80117A54)
    /* EE60 8001E660 21083000 */  addu       $at, $at, $s0
    /* EE64 8001E664 547A22A4 */  sh         $v0, %lo(D_80117A54)($at)
    /* EE68 8001E668 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* EE6C 8001E66C 01000424 */  addiu      $a0, $zero, 0x1
    /* EE70 8001E670 23209400 */  subu       $a0, $a0, $s4
    /* EE74 8001E674 18002402 */  mult       $s1, $a0
    /* EE78 8001E678 12200000 */  mflo       $a0
    /* EE7C 8001E67C 21280000 */  addu       $a1, $zero, $zero
    /* EE80 8001E680 F53A030C */  jal        func_800CEBD4
    /* EE84 8001E684 63000624 */   addiu     $a2, $zero, 0x63
    /* EE88 8001E688 18005300 */  mult       $v0, $s3
    /* EE8C 8001E68C 12180000 */  mflo       $v1
    /* EE90 8001E690 1180013C */  lui        $at, %hi(D_80117A52)
    /* EE94 8001E694 21083000 */  addu       $at, $at, $s0
    /* EE98 8001E698 527A2294 */  lhu        $v0, %lo(D_80117A52)($at)
    /* EE9C 8001E69C 00000000 */  nop
    /* EEA0 8001E6A0 23104300 */  subu       $v0, $v0, $v1
    /* EEA4 8001E6A4 1180013C */  lui        $at, %hi(D_80117A52)
    /* EEA8 8001E6A8 21083000 */  addu       $at, $at, $s0
    /* EEAC 8001E6AC 527A22A4 */  sh         $v0, %lo(D_80117A52)($at)
  .L8001E6B0:
    /* EEB0 8001E6B0 9E72000C */  jal        func_8001CA78
    /* EEB4 8001E6B4 00000000 */   nop
    /* EEB8 8001E6B8 5274000C */  jal        func_8001D148
    /* EEBC 8001E6BC 00000000 */   nop
    /* EEC0 8001E6C0 1280023C */  lui        $v0, %hi(D_8011A275)
    /* EEC4 8001E6C4 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* EEC8 8001E6C8 00000000 */  nop
    /* EECC 8001E6CC 07104202 */  srav       $v0, $v0, $s2
    /* EED0 8001E6D0 01004230 */  andi       $v0, $v0, 0x1
    /* EED4 8001E6D4 05004010 */  beqz       $v0, .L8001E6EC
    /* EED8 8001E6D8 00000000 */   nop
    /* EEDC 8001E6DC C074000C */  jal        func_8001D300
    /* EEE0 8001E6E0 00000000 */   nop
    /* EEE4 8001E6E4 2076000C */  jal        func_8001D880
    /* EEE8 8001E6E8 00000000 */   nop
  .L8001E6EC:
    /* EEEC 8001E6EC 8077000C */  jal        func_8001DE00
    /* EEF0 8001E6F0 00000000 */   nop
    /* EEF4 8001E6F4 1180023C */  lui        $v0, %hi(D_8010BA40)
    /* EEF8 8001E6F8 40BA428C */  lw         $v0, %lo(D_8010BA40)($v0)
    /* EEFC 8001E6FC 00000000 */  nop
    /* EF00 8001E700 40180200 */  sll        $v1, $v0, 1
    /* EF04 8001E704 5400828F */  lw         $v0, %gp_rel(D_8015852C)($gp)
    /* EF08 8001E708 00000000 */  nop
    /* EF0C 8001E70C 23186200 */  subu       $v1, $v1, $v0
    /* EF10 8001E710 40101200 */  sll        $v0, $s2, 1
    /* EF14 8001E714 21105200 */  addu       $v0, $v0, $s2
    /* EF18 8001E718 80100200 */  sll        $v0, $v0, 2
    /* EF1C 8001E71C 23105200 */  subu       $v0, $v0, $s2
    /* EF20 8001E720 00110200 */  sll        $v0, $v0, 4
    /* EF24 8001E724 23105200 */  subu       $v0, $v0, $s2
    /* EF28 8001E728 C0200200 */  sll        $a0, $v0, 3
    /* EF2C 8001E72C 1180013C */  lui        $at, %hi(D_80117A46)
    /* EF30 8001E730 21082400 */  addu       $at, $at, $a0
    /* EF34 8001E734 467A2284 */  lh         $v0, %lo(D_80117A46)($at)
    /* EF38 8001E738 00000000 */  nop
    /* EF3C 8001E73C 2A106200 */  slt        $v0, $v1, $v0
    /* EF40 8001E740 04004014 */  bnez       $v0, .L8001E754
    /* EF44 8001E744 00000000 */   nop
    /* EF48 8001E748 1180013C */  lui        $at, %hi(D_80117A46)
    /* EF4C 8001E74C 21082400 */  addu       $at, $at, $a0
    /* EF50 8001E750 467A23A4 */  sh         $v1, %lo(D_80117A46)($at)
  .L8001E754:
    /* EF54 8001E754 1280103C */  lui        $s0, %hi(D_80122AB0)
    /* EF58 8001E758 B02A1026 */  addiu      $s0, $s0, %lo(D_80122AB0)
    /* EF5C 8001E75C 000000AE */  sw         $zero, 0x0($s0)
    /* EF60 8001E760 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* EF64 8001E764 380082AF */  sw         $v0, %gp_rel(D_80158510)($gp)
    /* EF68 8001E768 3000828F */  lw         $v0, %gp_rel(D_80158508)($gp)
    /* EF6C 8001E76C 00000000 */  nop
    /* EF70 8001E770 05004010 */  beqz       $v0, .L8001E788
    /* EF74 8001E774 00000000 */   nop
    /* EF78 8001E778 7B51000C */  jal        func_800145EC
    /* EF7C 8001E77C 00000000 */   nop
    /* EF80 8001E780 B358030C */  jal        func_800D62CC
    /* EF84 8001E784 48F10426 */   addiu     $a0, $s0, -0xEB8
  .L8001E788:
    /* EF88 8001E788 B800828F */  lw         $v0, %gp_rel(D_80158590)($gp)
    /* EF8C 8001E78C 00000000 */  nop
    /* EF90 8001E790 07004010 */  beqz       $v0, .L8001E7B0
    /* EF94 8001E794 00000000 */   nop
    /* EF98 8001E798 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* EF9C 8001E79C F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* EFA0 8001E7A0 1680053C */  lui        $a1, %hi(D_80158860)
    /* EFA4 8001E7A4 6088A58C */  lw         $a1, %lo(D_80158860)($a1)
    /* EFA8 8001E7A8 EA5D030C */  jal        func_800D77A8
    /* EFAC 8001E7AC 01000624 */   addiu     $a2, $zero, 0x1
  .L8001E7B0:
    /* EFB0 8001E7B0 280080AF */  sw         $zero, %gp_rel(D_80158500)($gp)
    /* EFB4 8001E7B4 8C00838F */  lw         $v1, %gp_rel(D_80158564)($gp)
    /* EFB8 8001E7B8 9000828F */  lw         $v0, %gp_rel(D_80158568)($gp)
    /* EFBC 8001E7BC 00000000 */  nop
    /* EFC0 8001E7C0 23106200 */  subu       $v0, $v1, $v0
  .L8001E7C4:
    /* EFC4 8001E7C4 2400BF8F */  lw         $ra, 0x24($sp)
    /* EFC8 8001E7C8 2000B48F */  lw         $s4, 0x20($sp)
    /* EFCC 8001E7CC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* EFD0 8001E7D0 1800B28F */  lw         $s2, 0x18($sp)
    /* EFD4 8001E7D4 1400B18F */  lw         $s1, 0x14($sp)
    /* EFD8 8001E7D8 1000B08F */  lw         $s0, 0x10($sp)
    /* EFDC 8001E7DC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* EFE0 8001E7E0 0800E003 */  jr         $ra
    /* EFE4 8001E7E4 00000000 */   nop
endlabel func_8001E0E4
