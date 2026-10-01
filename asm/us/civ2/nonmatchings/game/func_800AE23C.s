.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AE23C, 0x61C

glabel func_800AE23C
    /* 9EA3C 800AE23C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9EA40 800AE240 2000BFAF */  sw         $ra, 0x20($sp)
    /* 9EA44 800AE244 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9EA48 800AE248 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9EA4C 800AE24C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9EA50 800AE250 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9EA54 800AE254 FED4030C */  jal        func_800F53F8
    /* 9EA58 800AE258 08040424 */   addiu     $a0, $zero, 0x408
    /* 9EA5C 800AE25C 21984000 */  addu       $s3, $v0, $zero
    /* 9EA60 800AE260 7CD6030C */  jal        func_800F59F0
    /* 9EA64 800AE264 21206002 */   addu      $a0, $s3, $zero
    /* 9EA68 800AE268 F00982AF */  sw         $v0, %gp_rel(D_80158EC8)($gp)
    /* 9EA6C 800AE26C E8004224 */  addiu      $v0, $v0, 0xE8
    /* 9EA70 800AE270 F40982AF */  sw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EA74 800AE274 21880000 */  addu       $s1, $zero, $zero
    /* 9EA78 800AE278 80801100 */  sll        $s0, $s1, 2
  .L800AE27C:
    /* 9EA7C 800AE27C 21801102 */  addu       $s0, $s0, $s1
    /* 9EA80 800AE280 C0801000 */  sll        $s0, $s0, 3
    /* 9EA84 800AE284 F409848F */  lw         $a0, %gp_rel(D_80158ECC)($gp)
    /* 9EA88 800AE288 AD9E030C */  jal        SetPolyFT4
    /* 9EA8C 800AE28C 21200402 */   addu      $a0, $s0, $a0
    /* 9EA90 800AE290 8009828F */  lw         $v0, %gp_rel(D_80158E58)($gp)
    /* 9EA94 800AE294 00000000 */  nop
    /* 9EA98 800AE298 1C00428C */  lw         $v0, 0x1C($v0)
    /* 9EA9C 800AE29C 01000424 */  addiu      $a0, $zero, 0x1
    /* 9EAA0 800AE2A0 0C004684 */  lh         $a2, 0xC($v0)
    /* 9EAA4 800AE2A4 0E004784 */  lh         $a3, 0xE($v0)
    /* 9EAA8 800AE2A8 819E030C */  jal        GetTPage
    /* 9EAAC 800AE2AC 21280000 */   addu      $a1, $zero, $zero
    /* 9EAB0 800AE2B0 F409838F */  lw         $v1, %gp_rel(D_80158ECC)($gp)
    /* 9EAB4 800AE2B4 00000000 */  nop
    /* 9EAB8 800AE2B8 21180302 */  addu       $v1, $s0, $v1
    /* 9EABC 800AE2BC 160062A4 */  sh         $v0, 0x16($v1)
    /* 9EAC0 800AE2C0 8009828F */  lw         $v0, %gp_rel(D_80158E58)($gp)
    /* 9EAC4 800AE2C4 00000000 */  nop
    /* 9EAC8 800AE2C8 1C00428C */  lw         $v0, 0x1C($v0)
    /* 9EACC 800AE2CC 00000000 */  nop
    /* 9EAD0 800AE2D0 14004484 */  lh         $a0, 0x14($v0)
    /* 9EAD4 800AE2D4 16004584 */  lh         $a1, 0x16($v0)
    /* 9EAD8 800AE2D8 919E030C */  jal        GetClut
    /* 9EADC 800AE2DC 01003126 */   addiu     $s1, $s1, 0x1
    /* 9EAE0 800AE2E0 F409838F */  lw         $v1, %gp_rel(D_80158ECC)($gp)
    /* 9EAE4 800AE2E4 00000000 */  nop
    /* 9EAE8 800AE2E8 21800302 */  addu       $s0, $s0, $v1
    /* 9EAEC 800AE2EC 0E0002A6 */  sh         $v0, 0xE($s0)
    /* 9EAF0 800AE2F0 1400222A */  slti       $v0, $s1, 0x14
    /* 9EAF4 800AE2F4 E1FF4014 */  bnez       $v0, .L800AE27C
    /* 9EAF8 800AE2F8 80801100 */   sll       $s0, $s1, 2
    /* 9EAFC 800AE2FC 8009828F */  lw         $v0, %gp_rel(D_80158E58)($gp)
    /* 9EB00 800AE300 00000000 */  nop
    /* 9EB04 800AE304 1C00438C */  lw         $v1, 0x1C($v0)
    /* 9EB08 800AE308 00000000 */  nop
    /* 9EB0C 800AE30C 0C006294 */  lhu        $v0, 0xC($v1)
    /* 9EB10 800AE310 00000000 */  nop
    /* 9EB14 800AE314 3F004830 */  andi       $t0, $v0, 0x3F
    /* 9EB18 800AE318 40400800 */  sll        $t0, $t0, 1
    /* 9EB1C 800AE31C 0E006990 */  lbu        $t1, 0xE($v1)
    /* 9EB20 800AE320 21880000 */  addu       $s1, $zero, $zero
    /* 9EB24 800AE324 1280073C */  lui        $a3, %hi(D_801202B0)
    /* 9EB28 800AE328 B002E724 */  addiu      $a3, $a3, %lo(D_801202B0)
    /* 9EB2C 800AE32C 12800A3C */  lui        $t2, %hi(D_801202B6)
    /* 9EB30 800AE330 B6024A25 */  addiu      $t2, $t2, %lo(D_801202B6)
  .L800AE334:
    /* 9EB34 800AE334 1000222A */  slti       $v0, $s1, 0x10
    /* 9EB38 800AE338 73004010 */  beqz       $v0, .L800AE508
    /* 9EB3C 800AE33C 80281100 */   sll       $a1, $s1, 2
    /* 9EB40 800AE340 F409838F */  lw         $v1, %gp_rel(D_80158ECC)($gp)
    /* 9EB44 800AE344 2128B100 */  addu       $a1, $a1, $s1
    /* 9EB48 800AE348 C0280500 */  sll        $a1, $a1, 3
    /* 9EB4C 800AE34C 2118A300 */  addu       $v1, $a1, $v1
    /* 9EB50 800AE350 C0301100 */  sll        $a2, $s1, 3
    /* 9EB54 800AE354 2120C700 */  addu       $a0, $a2, $a3
    /* 9EB58 800AE358 00008284 */  lh         $v0, 0x0($a0)
    /* 9EB5C 800AE35C 00000000 */  nop
    /* 9EB60 800AE360 C0100200 */  sll        $v0, $v0, 3
    /* 9EB64 800AE364 1280013C */  lui        $at, %hi(D_801201C8)
    /* 9EB68 800AE368 21082200 */  addu       $at, $at, $v0
    /* 9EB6C 800AE36C C8012290 */  lbu        $v0, %lo(D_801201C8)($at)
    /* 9EB70 800AE370 00000000 */  nop
    /* 9EB74 800AE374 7C004224 */  addiu      $v0, $v0, 0x7C
    /* 9EB78 800AE378 21104800 */  addu       $v0, $v0, $t0
    /* 9EB7C 800AE37C 0C0062A0 */  sb         $v0, 0xC($v1)
    /* 9EB80 800AE380 F409838F */  lw         $v1, %gp_rel(D_80158ECC)($gp)
    /* 9EB84 800AE384 00000000 */  nop
    /* 9EB88 800AE388 2118A300 */  addu       $v1, $a1, $v1
    /* 9EB8C 800AE38C 00008284 */  lh         $v0, 0x0($a0)
    /* 9EB90 800AE390 00000000 */  nop
    /* 9EB94 800AE394 C0100200 */  sll        $v0, $v0, 3
    /* 9EB98 800AE398 1280013C */  lui        $at, %hi(D_801201CA)
    /* 9EB9C 800AE39C 21082200 */  addu       $at, $at, $v0
    /* 9EBA0 800AE3A0 CA012290 */  lbu        $v0, %lo(D_801201CA)($at)
    /* 9EBA4 800AE3A4 00000000 */  nop
    /* 9EBA8 800AE3A8 5E004224 */  addiu      $v0, $v0, 0x5E
    /* 9EBAC 800AE3AC 21104900 */  addu       $v0, $v0, $t1
    /* 9EBB0 800AE3B0 0D0062A0 */  sb         $v0, 0xD($v1)
    /* 9EBB4 800AE3B4 F409838F */  lw         $v1, %gp_rel(D_80158ECC)($gp)
    /* 9EBB8 800AE3B8 00000000 */  nop
    /* 9EBBC 800AE3BC 2118A300 */  addu       $v1, $a1, $v1
    /* 9EBC0 800AE3C0 0200E424 */  addiu      $a0, $a3, 0x2
    /* 9EBC4 800AE3C4 2120C400 */  addu       $a0, $a2, $a0
    /* 9EBC8 800AE3C8 00008284 */  lh         $v0, 0x0($a0)
    /* 9EBCC 800AE3CC 00000000 */  nop
    /* 9EBD0 800AE3D0 C0100200 */  sll        $v0, $v0, 3
    /* 9EBD4 800AE3D4 1280013C */  lui        $at, %hi(D_801201C8)
    /* 9EBD8 800AE3D8 21082200 */  addu       $at, $at, $v0
    /* 9EBDC 800AE3DC C8012290 */  lbu        $v0, %lo(D_801201C8)($at)
    /* 9EBE0 800AE3E0 00000000 */  nop
    /* 9EBE4 800AE3E4 7C004224 */  addiu      $v0, $v0, 0x7C
    /* 9EBE8 800AE3E8 21104800 */  addu       $v0, $v0, $t0
    /* 9EBEC 800AE3EC 140062A0 */  sb         $v0, 0x14($v1)
    /* 9EBF0 800AE3F0 F409838F */  lw         $v1, %gp_rel(D_80158ECC)($gp)
    /* 9EBF4 800AE3F4 00000000 */  nop
    /* 9EBF8 800AE3F8 2118A300 */  addu       $v1, $a1, $v1
    /* 9EBFC 800AE3FC 00008284 */  lh         $v0, 0x0($a0)
    /* 9EC00 800AE400 00000000 */  nop
    /* 9EC04 800AE404 C0100200 */  sll        $v0, $v0, 3
    /* 9EC08 800AE408 1280013C */  lui        $at, %hi(D_801201CA)
    /* 9EC0C 800AE40C 21082200 */  addu       $at, $at, $v0
    /* 9EC10 800AE410 CA012290 */  lbu        $v0, %lo(D_801201CA)($at)
    /* 9EC14 800AE414 00000000 */  nop
    /* 9EC18 800AE418 5E004224 */  addiu      $v0, $v0, 0x5E
    /* 9EC1C 800AE41C 21104900 */  addu       $v0, $v0, $t1
    /* 9EC20 800AE420 150062A0 */  sb         $v0, 0x15($v1)
    /* 9EC24 800AE424 F409838F */  lw         $v1, %gp_rel(D_80158ECC)($gp)
    /* 9EC28 800AE428 00000000 */  nop
    /* 9EC2C 800AE42C 2118A300 */  addu       $v1, $a1, $v1
    /* 9EC30 800AE430 0400E424 */  addiu      $a0, $a3, 0x4
    /* 9EC34 800AE434 2120C400 */  addu       $a0, $a2, $a0
    /* 9EC38 800AE438 00008284 */  lh         $v0, 0x0($a0)
    /* 9EC3C 800AE43C 00000000 */  nop
    /* 9EC40 800AE440 C0100200 */  sll        $v0, $v0, 3
    /* 9EC44 800AE444 1280013C */  lui        $at, %hi(D_801201C8)
    /* 9EC48 800AE448 21082200 */  addu       $at, $at, $v0
    /* 9EC4C 800AE44C C8012290 */  lbu        $v0, %lo(D_801201C8)($at)
    /* 9EC50 800AE450 00000000 */  nop
    /* 9EC54 800AE454 7C004224 */  addiu      $v0, $v0, 0x7C
    /* 9EC58 800AE458 21104800 */  addu       $v0, $v0, $t0
    /* 9EC5C 800AE45C 1C0062A0 */  sb         $v0, 0x1C($v1)
    /* 9EC60 800AE460 F409838F */  lw         $v1, %gp_rel(D_80158ECC)($gp)
    /* 9EC64 800AE464 00000000 */  nop
    /* 9EC68 800AE468 2118A300 */  addu       $v1, $a1, $v1
    /* 9EC6C 800AE46C 00008284 */  lh         $v0, 0x0($a0)
    /* 9EC70 800AE470 00000000 */  nop
    /* 9EC74 800AE474 C0100200 */  sll        $v0, $v0, 3
    /* 9EC78 800AE478 1280013C */  lui        $at, %hi(D_801201CA)
    /* 9EC7C 800AE47C 21082200 */  addu       $at, $at, $v0
    /* 9EC80 800AE480 CA012290 */  lbu        $v0, %lo(D_801201CA)($at)
    /* 9EC84 800AE484 00000000 */  nop
    /* 9EC88 800AE488 5E004224 */  addiu      $v0, $v0, 0x5E
    /* 9EC8C 800AE48C 21104900 */  addu       $v0, $v0, $t1
    /* 9EC90 800AE490 1D0062A0 */  sb         $v0, 0x1D($v1)
    /* 9EC94 800AE494 F409838F */  lw         $v1, %gp_rel(D_80158ECC)($gp)
    /* 9EC98 800AE498 00000000 */  nop
    /* 9EC9C 800AE49C 2118A300 */  addu       $v1, $a1, $v1
    /* 9ECA0 800AE4A0 2130CA00 */  addu       $a2, $a2, $t2
    /* 9ECA4 800AE4A4 0000C284 */  lh         $v0, 0x0($a2)
    /* 9ECA8 800AE4A8 00000000 */  nop
    /* 9ECAC 800AE4AC C0100200 */  sll        $v0, $v0, 3
    /* 9ECB0 800AE4B0 1280013C */  lui        $at, %hi(D_801201C8)
    /* 9ECB4 800AE4B4 21082200 */  addu       $at, $at, $v0
    /* 9ECB8 800AE4B8 C8012290 */  lbu        $v0, %lo(D_801201C8)($at)
    /* 9ECBC 800AE4BC 00000000 */  nop
    /* 9ECC0 800AE4C0 7C004224 */  addiu      $v0, $v0, 0x7C
    /* 9ECC4 800AE4C4 21104800 */  addu       $v0, $v0, $t0
    /* 9ECC8 800AE4C8 240062A0 */  sb         $v0, 0x24($v1)
    /* 9ECCC 800AE4CC F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9ECD0 800AE4D0 00000000 */  nop
    /* 9ECD4 800AE4D4 2128A200 */  addu       $a1, $a1, $v0
    /* 9ECD8 800AE4D8 0000C284 */  lh         $v0, 0x0($a2)
    /* 9ECDC 800AE4DC 00000000 */  nop
    /* 9ECE0 800AE4E0 C0100200 */  sll        $v0, $v0, 3
    /* 9ECE4 800AE4E4 1280013C */  lui        $at, %hi(D_801201CA)
    /* 9ECE8 800AE4E8 21082200 */  addu       $at, $at, $v0
    /* 9ECEC 800AE4EC CA012290 */  lbu        $v0, %lo(D_801201CA)($at)
    /* 9ECF0 800AE4F0 00000000 */  nop
    /* 9ECF4 800AE4F4 5E004224 */  addiu      $v0, $v0, 0x5E
    /* 9ECF8 800AE4F8 21104900 */  addu       $v0, $v0, $t1
    /* 9ECFC 800AE4FC 2500A2A0 */  sb         $v0, 0x25($a1)
    /* 9ED00 800AE500 CDB80208 */  j          .L800AE334
    /* 9ED04 800AE504 01003126 */   addiu     $s1, $s1, 0x1
  .L800AE508:
    /* 9ED08 800AE508 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9ED0C 800AE50C 05000725 */  addiu      $a3, $t0, 0x5
    /* 9ED10 800AE510 8C0247A0 */  sb         $a3, 0x28C($v0)
    /* 9ED14 800AE514 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9ED18 800AE518 05002525 */  addiu      $a1, $t1, 0x5
    /* 9ED1C 800AE51C 8D0245A0 */  sb         $a1, 0x28D($v0)
    /* 9ED20 800AE520 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9ED24 800AE524 F4FF0625 */  addiu      $a2, $t0, -0xC
    /* 9ED28 800AE528 940246A0 */  sb         $a2, 0x294($v0)
    /* 9ED2C 800AE52C F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9ED30 800AE530 00000000 */  nop
    /* 9ED34 800AE534 950245A0 */  sb         $a1, 0x295($v0)
    /* 9ED38 800AE538 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9ED3C 800AE53C 00000000 */  nop
    /* 9ED40 800AE540 9C0247A0 */  sb         $a3, 0x29C($v0)
    /* 9ED44 800AE544 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9ED48 800AE548 0A002325 */  addiu      $v1, $t1, 0xA
    /* 9ED4C 800AE54C 9D0243A0 */  sb         $v1, 0x29D($v0)
    /* 9ED50 800AE550 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9ED54 800AE554 00000000 */  nop
    /* 9ED58 800AE558 A40246A0 */  sb         $a2, 0x2A4($v0)
    /* 9ED5C 800AE55C F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9ED60 800AE560 00000000 */  nop
    /* 9ED64 800AE564 A50243A0 */  sb         $v1, 0x2A5($v0)
    /* 9ED68 800AE568 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9ED6C 800AE56C 00000000 */  nop
    /* 9ED70 800AE570 B40247A0 */  sb         $a3, 0x2B4($v0)
    /* 9ED74 800AE574 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9ED78 800AE578 00000000 */  nop
    /* 9ED7C 800AE57C B50245A0 */  sb         $a1, 0x2B5($v0)
    /* 9ED80 800AE580 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9ED84 800AE584 0A000325 */  addiu      $v1, $t0, 0xA
    /* 9ED88 800AE588 BC0243A0 */  sb         $v1, 0x2BC($v0)
    /* 9ED8C 800AE58C F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9ED90 800AE590 00000000 */  nop
    /* 9ED94 800AE594 BD0245A0 */  sb         $a1, 0x2BD($v0)
    /* 9ED98 800AE598 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9ED9C 800AE59C 00000000 */  nop
    /* 9EDA0 800AE5A0 C40247A0 */  sb         $a3, 0x2C4($v0)
    /* 9EDA4 800AE5A4 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EDA8 800AE5A8 B8FF2425 */  addiu      $a0, $t1, -0x48
    /* 9EDAC 800AE5AC C50244A0 */  sb         $a0, 0x2C5($v0)
    /* 9EDB0 800AE5B0 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EDB4 800AE5B4 00000000 */  nop
    /* 9EDB8 800AE5B8 CC0243A0 */  sb         $v1, 0x2CC($v0)
    /* 9EDBC 800AE5BC F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EDC0 800AE5C0 00000000 */  nop
    /* 9EDC4 800AE5C4 CD0244A0 */  sb         $a0, 0x2CD($v0)
    /* 9EDC8 800AE5C8 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EDCC 800AE5CC EFFF0325 */  addiu      $v1, $t0, -0x11
    /* 9EDD0 800AE5D0 DC0243A0 */  sb         $v1, 0x2DC($v0)
    /* 9EDD4 800AE5D4 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EDD8 800AE5D8 00000000 */  nop
    /* 9EDDC 800AE5DC DD0245A0 */  sb         $a1, 0x2DD($v0)
    /* 9EDE0 800AE5E0 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EDE4 800AE5E4 00000000 */  nop
    /* 9EDE8 800AE5E8 E40246A0 */  sb         $a2, 0x2E4($v0)
    /* 9EDEC 800AE5EC F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EDF0 800AE5F0 00000000 */  nop
    /* 9EDF4 800AE5F4 E50245A0 */  sb         $a1, 0x2E5($v0)
    /* 9EDF8 800AE5F8 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EDFC 800AE5FC 00000000 */  nop
    /* 9EE00 800AE600 EC0243A0 */  sb         $v1, 0x2EC($v0)
    /* 9EE04 800AE604 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EE08 800AE608 00000000 */  nop
    /* 9EE0C 800AE60C ED0244A0 */  sb         $a0, 0x2ED($v0)
    /* 9EE10 800AE610 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EE14 800AE614 00000000 */  nop
    /* 9EE18 800AE618 F40246A0 */  sb         $a2, 0x2F4($v0)
    /* 9EE1C 800AE61C F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EE20 800AE620 00000000 */  nop
    /* 9EE24 800AE624 F50244A0 */  sb         $a0, 0x2F5($v0)
    /* 9EE28 800AE628 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EE2C 800AE62C 00000000 */  nop
    /* 9EE30 800AE630 040347A0 */  sb         $a3, 0x304($v0)
    /* 9EE34 800AE634 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EE38 800AE638 B3FF2325 */  addiu      $v1, $t1, -0x4D
    /* 9EE3C 800AE63C 050343A0 */  sb         $v1, 0x305($v0)
    /* 9EE40 800AE640 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EE44 800AE644 00000000 */  nop
    /* 9EE48 800AE648 0C0346A0 */  sb         $a2, 0x30C($v0)
    /* 9EE4C 800AE64C F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EE50 800AE650 00000000 */  nop
    /* 9EE54 800AE654 0D0343A0 */  sb         $v1, 0x30D($v0)
    /* 9EE58 800AE658 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EE5C 800AE65C 00000000 */  nop
    /* 9EE60 800AE660 140347A0 */  sb         $a3, 0x314($v0)
    /* 9EE64 800AE664 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EE68 800AE668 00000000 */  nop
    /* 9EE6C 800AE66C 150344A0 */  sb         $a0, 0x315($v0)
    /* 9EE70 800AE670 F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EE74 800AE674 00000000 */  nop
    /* 9EE78 800AE678 1C0346A0 */  sb         $a2, 0x31C($v0)
    /* 9EE7C 800AE67C F409828F */  lw         $v0, %gp_rel(D_80158ECC)($gp)
    /* 9EE80 800AE680 00000000 */  nop
    /* 9EE84 800AE684 1D0344A0 */  sb         $a0, 0x31D($v0)
    /* 9EE88 800AE688 800A0224 */  addiu      $v0, $zero, 0xA80
    /* 9EE8C 800AE68C 840982AF */  sw         $v0, %gp_rel(D_80158E5C)($gp)
    /* 9EE90 800AE690 401F0224 */  addiu      $v0, $zero, 0x1F40
    /* 9EE94 800AE694 880982AF */  sw         $v0, %gp_rel(D_80158E60)($gp)
    /* 9EE98 800AE698 90011024 */  addiu      $s0, $zero, 0x190
    /* 9EE9C 800AE69C 1280123C */  lui        $s2, %hi(D_801208B8)
    /* 9EEA0 800AE6A0 B8085226 */  addiu      $s2, $s2, %lo(D_801208B8)
  .L800AE6A4:
    /* 9EEA4 800AE6A4 8809828F */  lw         $v0, %gp_rel(D_80158E60)($gp)
    /* 9EEA8 800AE6A8 00000000 */  nop
    /* 9EEAC 800AE6AC F5014228 */  slti       $v0, $v0, 0x1F5
    /* 9EEB0 800AE6B0 05004010 */  beqz       $v0, .L800AE6C8
    /* 9EEB4 800AE6B4 00000000 */   nop
    /* 9EEB8 800AE6B8 8409828F */  lw         $v0, %gp_rel(D_80158E5C)($gp)
    /* 9EEBC 800AE6BC 00000000 */  nop
    /* 9EEC0 800AE6C0 5C004010 */  beqz       $v0, .L800AE834
    /* 9EEC4 800AE6C4 00000000 */   nop
  .L800AE6C8:
    /* 9EEC8 800AE6C8 8409848F */  lw         $a0, %gp_rel(D_80158E5C)($gp)
    /* 9EECC 800AE6CC 00000000 */  nop
    /* 9EED0 800AE6D0 40008324 */  addiu      $v1, $a0, 0x40
    /* 9EED4 800AE6D4 02006104 */  bgez       $v1, .L800AE6E0
    /* 9EED8 800AE6D8 21106000 */   addu      $v0, $v1, $zero
    /* 9EEDC 800AE6DC 3F108224 */  addiu      $v0, $a0, 0x103F
  .L800AE6E0:
    /* 9EEE0 800AE6E0 03130200 */  sra        $v0, $v0, 12
    /* 9EEE4 800AE6E4 00130200 */  sll        $v0, $v0, 12
    /* 9EEE8 800AE6E8 23106200 */  subu       $v0, $v1, $v0
    /* 9EEEC 800AE6EC 840982AF */  sw         $v0, %gp_rel(D_80158E5C)($gp)
    /* 9EEF0 800AE6F0 8809828F */  lw         $v0, %gp_rel(D_80158E60)($gp)
    /* 9EEF4 800AE6F4 00000000 */  nop
    /* 9EEF8 800AE6F8 23105000 */  subu       $v0, $v0, $s0
    /* 9EEFC 800AE6FC 880982AF */  sw         $v0, %gp_rel(D_80158E60)($gp)
    /* 9EF00 800AE700 3300022A */  slti       $v0, $s0, 0x33
    /* 9EF04 800AE704 02004014 */  bnez       $v0, .L800AE710
    /* 9EF08 800AE708 00000000 */   nop
    /* 9EF0C 800AE70C FBFF1026 */  addiu      $s0, $s0, -0x5
  .L800AE710:
    /* 9EF10 800AE710 8809828F */  lw         $v0, %gp_rel(D_80158E60)($gp)
    /* 9EF14 800AE714 00000000 */  nop
    /* 9EF18 800AE718 F4014228 */  slti       $v0, $v0, 0x1F4
    /* 9EF1C 800AE71C 03004010 */  beqz       $v0, .L800AE72C
    /* 9EF20 800AE720 00000000 */   nop
    /* 9EF24 800AE724 F4010224 */  addiu      $v0, $zero, 0x1F4
    /* 9EF28 800AE728 880982AF */  sw         $v0, %gp_rel(D_80158E60)($gp)
  .L800AE72C:
    /* 9EF2C 800AE72C 8409848F */  lw         $a0, %gp_rel(D_80158E5C)($gp)
    /* 9EF30 800AE730 00000000 */  nop
    /* 9EF34 800AE734 00048324 */  addiu      $v1, $a0, 0x400
    /* 9EF38 800AE738 02006104 */  bgez       $v1, .L800AE744
    /* 9EF3C 800AE73C 21106000 */   addu      $v0, $v1, $zero
    /* 9EF40 800AE740 FF138224 */  addiu      $v0, $a0, 0x13FF
  .L800AE744:
    /* 9EF44 800AE744 03230200 */  sra        $a0, $v0, 12
    /* 9EF48 800AE748 00130400 */  sll        $v0, $a0, 12
    /* 9EF4C 800AE74C 23206200 */  subu       $a0, $v1, $v0
    /* 9EF50 800AE750 00088228 */  slti       $v0, $a0, 0x800
    /* 9EF54 800AE754 02004014 */  bnez       $v0, .L800AE760
    /* 9EF58 800AE758 00000000 */   nop
    /* 9EF5C 800AE75C 00F88424 */  addiu      $a0, $a0, -0x800
  .L800AE760:
    /* 9EF60 800AE760 02008104 */  bgez       $a0, .L800AE76C
    /* 9EF64 800AE764 21108000 */   addu      $v0, $a0, $zero
    /* 9EF68 800AE768 0F008224 */  addiu      $v0, $a0, 0xF
  .L800AE76C:
    /* 9EF6C 800AE76C 03110200 */  sra        $v0, $v0, 4
    /* 9EF70 800AE770 40004424 */  addiu      $a0, $v0, 0x40
    /* 9EF74 800AE774 21880000 */  addu       $s1, $zero, $zero
  .L800AE778:
    /* 9EF78 800AE778 40101100 */  sll        $v0, $s1, 1
    /* 9EF7C 800AE77C 21105200 */  addu       $v0, $v0, $s2
    /* 9EF80 800AE780 000044A4 */  sh         $a0, 0x0($v0)
    /* 9EF84 800AE784 01003126 */  addiu      $s1, $s1, 0x1
    /* 9EF88 800AE788 1000222A */  slti       $v0, $s1, 0x10
    /* 9EF8C 800AE78C FAFF4014 */  bnez       $v0, .L800AE778
    /* 9EF90 800AE790 00120400 */   sll       $v0, $a0, 8
    /* 9EF94 800AE794 23184400 */  subu       $v1, $v0, $a0
    /* 9EF98 800AE798 02006104 */  bgez       $v1, .L800AE7A4
    /* 9EF9C 800AE79C 21106000 */   addu      $v0, $v1, $zero
    /* 9EFA0 800AE7A0 7F006224 */  addiu      $v0, $v1, 0x7F
  .L800AE7A4:
    /* 9EFA4 800AE7A4 C3190200 */  sra        $v1, $v0, 7
    /* 9EFA8 800AE7A8 00016228 */  slti       $v0, $v1, 0x100
    /* 9EFAC 800AE7AC 03004014 */  bnez       $v0, .L800AE7BC
    /* 9EFB0 800AE7B0 40006228 */   slti      $v0, $v1, 0x40
    /* 9EFB4 800AE7B4 F2B90208 */  j          .L800AE7C8
    /* 9EFB8 800AE7B8 FF000324 */   addiu     $v1, $zero, 0xFF
  .L800AE7BC:
    /* 9EFBC 800AE7BC 02004010 */  beqz       $v0, .L800AE7C8
    /* 9EFC0 800AE7C0 00000000 */   nop
    /* 9EFC4 800AE7C4 40000324 */  addiu      $v1, $zero, 0x40
  .L800AE7C8:
    /* 9EFC8 800AE7C8 1280023C */  lui        $v0, %hi(D_801208D8)
    /* 9EFCC 800AE7CC D8084224 */  addiu      $v0, $v0, %lo(D_801208D8)
    /* 9EFD0 800AE7D0 000043A4 */  sh         $v1, 0x0($v0)
    /* 9EFD4 800AE7D4 020043A4 */  sh         $v1, 0x2($v0)
    /* 9EFD8 800AE7D8 21108000 */  addu       $v0, $a0, $zero
    /* 9EFDC 800AE7DC 03004104 */  bgez       $v0, .L800AE7EC
    /* 9EFE0 800AE7E0 C3180200 */   sra       $v1, $v0, 3
    /* 9EFE4 800AE7E4 07004224 */  addiu      $v0, $v0, 0x7
    /* 9EFE8 800AE7E8 C3180200 */  sra        $v1, $v0, 3
  .L800AE7EC:
    /* 9EFEC 800AE7EC 00016228 */  slti       $v0, $v1, 0x100
    /* 9EFF0 800AE7F0 03004014 */  bnez       $v0, .L800AE800
    /* 9EFF4 800AE7F4 40006228 */   slti      $v0, $v1, 0x40
    /* 9EFF8 800AE7F8 03BA0208 */  j          .L800AE80C
    /* 9EFFC 800AE7FC FF000324 */   addiu     $v1, $zero, 0xFF
  .L800AE800:
    /* 9F000 800AE800 02004010 */  beqz       $v0, .L800AE80C
    /* 9F004 800AE804 00000000 */   nop
    /* 9F008 800AE808 40000324 */  addiu      $v1, $zero, 0x40
  .L800AE80C:
    /* 9F00C 800AE80C 1280023C */  lui        $v0, %hi(D_801208DC)
    /* 9F010 800AE810 DC084224 */  addiu      $v0, $v0, %lo(D_801208DC)
    /* 9F014 800AE814 000043A4 */  sh         $v1, 0x0($v0)
    /* 9F018 800AE818 8E12040C */  jal        func_80104A38
    /* 9F01C 800AE81C 020043A4 */   sh        $v1, 0x2($v0)
    /* 9F020 800AE820 3C000224 */  addiu      $v0, $zero, 0x3C
    /* 9F024 800AE824 1680013C */  lui        $at, %hi(D_801584EC)
    /* 9F028 800AE828 EC8422AC */  sw         $v0, %lo(D_801584EC)($at)
    /* 9F02C 800AE82C A9B90208 */  j          .L800AE6A4
    /* 9F030 800AE830 00000000 */   nop
  .L800AE834:
    /* 9F034 800AE834 F80993AF */  sw         $s3, %gp_rel(D_80158ED0)($gp)
    /* 9F038 800AE838 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9F03C 800AE83C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9F040 800AE840 1800B28F */  lw         $s2, 0x18($sp)
    /* 9F044 800AE844 1400B18F */  lw         $s1, 0x14($sp)
    /* 9F048 800AE848 1000B08F */  lw         $s0, 0x10($sp)
    /* 9F04C 800AE84C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 9F050 800AE850 0800E003 */  jr         $ra
    /* 9F054 800AE854 00000000 */   nop
endlabel func_800AE23C
