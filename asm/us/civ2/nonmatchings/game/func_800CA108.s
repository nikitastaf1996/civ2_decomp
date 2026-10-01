.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CA108, 0x8C0

glabel func_800CA108
    /* BA908 800CA108 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* BA90C 800CA10C 3400BFAF */  sw         $ra, 0x34($sp)
    /* BA910 800CA110 3000B4AF */  sw         $s4, 0x30($sp)
    /* BA914 800CA114 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* BA918 800CA118 2800B2AF */  sw         $s2, 0x28($sp)
    /* BA91C 800CA11C 2400B1AF */  sw         $s1, 0x24($sp)
    /* BA920 800CA120 2000B0AF */  sw         $s0, 0x20($sp)
    /* BA924 800CA124 21988000 */  addu       $s3, $a0, $zero
    /* BA928 800CA128 2180A000 */  addu       $s0, $a1, $zero
    /* BA92C 800CA12C FFFF1424 */  addiu      $s4, $zero, -0x1
    /* BA930 800CA130 0422030C */  jal        func_800C8810
    /* BA934 800CA134 21280000 */   addu      $a1, $zero, $zero
    /* BA938 800CA138 4BDF010C */  jal        func_80077D2C
    /* BA93C 800CA13C 21206002 */   addu      $a0, $s3, $zero
    /* BA940 800CA140 18024014 */  bnez       $v0, .L800CA9A4
    /* BA944 800CA144 21108002 */   addu      $v0, $s4, $zero
  .L800CA148:
    /* BA948 800CA148 13000016 */  bnez       $s0, .L800CA198
    /* BA94C 800CA14C 01000224 */   addiu     $v0, $zero, 0x1
    /* BA950 800CA150 40101300 */  sll        $v0, $s3, 1
    /* BA954 800CA154 21105300 */  addu       $v0, $v0, $s3
    /* BA958 800CA158 80100200 */  sll        $v0, $v0, 2
    /* BA95C 800CA15C 23105300 */  subu       $v0, $v0, $s3
    /* BA960 800CA160 00110200 */  sll        $v0, $v0, 4
    /* BA964 800CA164 23105300 */  subu       $v0, $v0, $s3
    /* BA968 800CA168 C0100200 */  sll        $v0, $v0, 3
    /* BA96C 800CA16C 1180013C */  lui        $at, %hi(D_80117A7C)
    /* BA970 800CA170 21082200 */  addu       $at, $at, $v0
    /* BA974 800CA174 7C7A2284 */  lh         $v0, %lo(D_80117A7C)($at)
    /* BA978 800CA178 1280033C */  lui        $v1, %hi(D_80121B42)
    /* BA97C 800CA17C 421B6384 */  lh         $v1, %lo(D_80121B42)($v1)
    /* BA980 800CA180 00000000 */  nop
    /* BA984 800CA184 2A104300 */  slt        $v0, $v0, $v1
    /* BA988 800CA188 06024010 */  beqz       $v0, .L800CA9A4
    /* BA98C 800CA18C 21108002 */   addu      $v0, $s4, $zero
    /* BA990 800CA190 14290308 */  j          .L800CA450
    /* BA994 800CA194 21A00000 */   addu      $s4, $zero, $zero
  .L800CA198:
    /* BA998 800CA198 4D000216 */  bne        $s0, $v0, .L800CA2D0
    /* BA99C 800CA19C 40101300 */   sll       $v0, $s3, 1
    /* BA9A0 800CA1A0 21105300 */  addu       $v0, $v0, $s3
    /* BA9A4 800CA1A4 80100200 */  sll        $v0, $v0, 2
    /* BA9A8 800CA1A8 23105300 */  subu       $v0, $v0, $s3
    /* BA9AC 800CA1AC 00110200 */  sll        $v0, $v0, 4
    /* BA9B0 800CA1B0 23105300 */  subu       $v0, $v0, $s3
    /* BA9B4 800CA1B4 C0200200 */  sll        $a0, $v0, 3
    /* BA9B8 800CA1B8 1280053C */  lui        $a1, %hi(D_80121B48)
    /* BA9BC 800CA1BC 481BA524 */  addiu      $a1, $a1, %lo(D_80121B48)
    /* BA9C0 800CA1C0 1180013C */  lui        $at, %hi(D_80117A7E)
    /* BA9C4 800CA1C4 21082400 */  addu       $at, $at, $a0
    /* BA9C8 800CA1C8 7E7A2284 */  lh         $v0, %lo(D_80117A7E)($at)
    /* BA9CC 800CA1CC 0000A384 */  lh         $v1, 0x0($a1)
    /* BA9D0 800CA1D0 00000000 */  nop
    /* BA9D4 800CA1D4 2A104300 */  slt        $v0, $v0, $v1
    /* BA9D8 800CA1D8 09004014 */  bnez       $v0, .L800CA200
    /* BA9DC 800CA1DC 00000000 */   nop
    /* BA9E0 800CA1E0 1180013C */  lui        $at, %hi(D_80117A80)
    /* BA9E4 800CA1E4 21082400 */  addu       $at, $at, $a0
    /* BA9E8 800CA1E8 807A2284 */  lh         $v0, %lo(D_80117A80)($at)
    /* BA9EC 800CA1EC 0600A384 */  lh         $v1, 0x6($a1)
    /* BA9F0 800CA1F0 00000000 */  nop
    /* BA9F4 800CA1F4 2A104300 */  slt        $v0, $v0, $v1
    /* BA9F8 800CA1F8 EA014010 */  beqz       $v0, .L800CA9A4
    /* BA9FC 800CA1FC 21108002 */   addu      $v0, $s4, $zero
  .L800CA200:
    /* BAA00 800CA200 1280023C */  lui        $v0, %hi(D_8011A275)
    /* BAA04 800CA204 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* BAA08 800CA208 00000000 */  nop
    /* BAA0C 800CA20C 07106202 */  srav       $v0, $v0, $s3
    /* BAA10 800CA210 01004230 */  andi       $v0, $v0, 0x1
    /* BAA14 800CA214 13004014 */  bnez       $v0, .L800CA264
    /* BAA18 800CA218 40101300 */   sll       $v0, $s3, 1
    /* BAA1C 800CA21C 21105300 */  addu       $v0, $v0, $s3
    /* BAA20 800CA220 80100200 */  sll        $v0, $v0, 2
    /* BAA24 800CA224 23105300 */  subu       $v0, $v0, $s3
    /* BAA28 800CA228 00110200 */  sll        $v0, $v0, 4
    /* BAA2C 800CA22C 23105300 */  subu       $v0, $v0, $s3
    /* BAA30 800CA230 C0100200 */  sll        $v0, $v0, 3
    /* BAA34 800CA234 1180013C */  lui        $at, %hi(D_80117A7E)
    /* BAA38 800CA238 21082200 */  addu       $at, $at, $v0
    /* BAA3C 800CA23C 7E7A2384 */  lh         $v1, %lo(D_80117A7E)($at)
    /* BAA40 800CA240 1180013C */  lui        $at, %hi(D_80117A80)
    /* BAA44 800CA244 21082200 */  addu       $at, $at, $v0
    /* BAA48 800CA248 807A2284 */  lh         $v0, %lo(D_80117A80)($at)
    /* BAA4C 800CA24C 00000000 */  nop
    /* BAA50 800CA250 2A186200 */  slt        $v1, $v1, $v0
    /* BAA54 800CA254 7E006010 */  beqz       $v1, .L800CA450
    /* BAA58 800CA258 02001424 */   addiu     $s4, $zero, 0x2
    /* BAA5C 800CA25C 14290308 */  j          .L800CA450
    /* BAA60 800CA260 01001424 */   addiu     $s4, $zero, 0x1
  .L800CA264:
    /* BAA64 800CA264 21105300 */  addu       $v0, $v0, $s3
    /* BAA68 800CA268 80100200 */  sll        $v0, $v0, 2
    /* BAA6C 800CA26C 23105300 */  subu       $v0, $v0, $s3
    /* BAA70 800CA270 00110200 */  sll        $v0, $v0, 4
    /* BAA74 800CA274 23105300 */  subu       $v0, $v0, $s3
    /* BAA78 800CA278 C0100200 */  sll        $v0, $v0, 3
    /* BAA7C 800CA27C 1180013C */  lui        $at, %hi(D_80117A7E)
    /* BAA80 800CA280 21082200 */  addu       $at, $at, $v0
    /* BAA84 800CA284 7E7A2384 */  lh         $v1, %lo(D_80117A7E)($at)
    /* BAA88 800CA288 1280013C */  lui        $at, %hi(D_8011FF28)
    /* BAA8C 800CA28C 28FF23AC */  sw         $v1, %lo(D_8011FF28)($at)
    /* BAA90 800CA290 1180013C */  lui        $at, %hi(D_80117A80)
    /* BAA94 800CA294 21082200 */  addu       $at, $at, $v0
    /* BAA98 800CA298 807A2284 */  lh         $v0, %lo(D_80117A80)($at)
    /* BAA9C 800CA29C 1280013C */  lui        $at, %hi(D_8011FF2C)
    /* BAAA0 800CA2A0 2CFF22AC */  sw         $v0, %lo(D_8011FF2C)($at)
    /* BAAA4 800CA2A4 1000A0AF */  sw         $zero, 0x10($sp)
    /* BAAA8 800CA2A8 1400A0AF */  sw         $zero, 0x14($sp)
    /* BAAAC 800CA2AC 1800A0AF */  sw         $zero, 0x18($sp)
    /* BAAB0 800CA2B0 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* BAAB4 800CA2B4 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* BAAB8 800CA2B8 09FF0534 */  ori        $a1, $zero, 0xFF09
    /* BAABC 800CA2BC 21300000 */  addu       $a2, $zero, $zero
    /* BAAC0 800CA2C0 B4E2020C */  jal        func_800B8AD0
    /* BAAC4 800CA2C4 21380000 */   addu      $a3, $zero, $zero
    /* BAAC8 800CA2C8 14290308 */  j          .L800CA450
    /* BAACC 800CA2CC 01005424 */   addiu     $s4, $v0, 0x1
  .L800CA2D0:
    /* BAAD0 800CA2D0 21105300 */  addu       $v0, $v0, $s3
    /* BAAD4 800CA2D4 80100200 */  sll        $v0, $v0, 2
    /* BAAD8 800CA2D8 23105300 */  subu       $v0, $v0, $s3
    /* BAADC 800CA2DC 00110200 */  sll        $v0, $v0, 4
    /* BAAE0 800CA2E0 23105300 */  subu       $v0, $v0, $s3
    /* BAAE4 800CA2E4 C0200200 */  sll        $a0, $v0, 3
    /* BAAE8 800CA2E8 1280053C */  lui        $a1, %hi(D_80121B54)
    /* BAAEC 800CA2EC 541BA524 */  addiu      $a1, $a1, %lo(D_80121B54)
    /* BAAF0 800CA2F0 1180013C */  lui        $at, %hi(D_80117A82)
    /* BAAF4 800CA2F4 21082400 */  addu       $at, $at, $a0
    /* BAAF8 800CA2F8 827A2284 */  lh         $v0, %lo(D_80117A82)($at)
    /* BAAFC 800CA2FC 0000A384 */  lh         $v1, 0x0($a1)
    /* BAB00 800CA300 00000000 */  nop
    /* BAB04 800CA304 2A104300 */  slt        $v0, $v0, $v1
    /* BAB08 800CA308 11004014 */  bnez       $v0, .L800CA350
    /* BAB0C 800CA30C 00000000 */   nop
    /* BAB10 800CA310 1180013C */  lui        $at, %hi(D_80117A84)
    /* BAB14 800CA314 21082400 */  addu       $at, $at, $a0
    /* BAB18 800CA318 847A2284 */  lh         $v0, %lo(D_80117A84)($at)
    /* BAB1C 800CA31C 0600A384 */  lh         $v1, 0x6($a1)
    /* BAB20 800CA320 00000000 */  nop
    /* BAB24 800CA324 2A104300 */  slt        $v0, $v0, $v1
    /* BAB28 800CA328 09004014 */  bnez       $v0, .L800CA350
    /* BAB2C 800CA32C 00000000 */   nop
    /* BAB30 800CA330 1180013C */  lui        $at, %hi(D_80117A86)
    /* BAB34 800CA334 21082400 */  addu       $at, $at, $a0
    /* BAB38 800CA338 867A2284 */  lh         $v0, %lo(D_80117A86)($at)
    /* BAB3C 800CA33C 0C00A384 */  lh         $v1, 0xC($a1)
    /* BAB40 800CA340 00000000 */  nop
    /* BAB44 800CA344 2A104300 */  slt        $v0, $v0, $v1
    /* BAB48 800CA348 96014010 */  beqz       $v0, .L800CA9A4
    /* BAB4C 800CA34C 21108002 */   addu      $v0, $s4, $zero
  .L800CA350:
    /* BAB50 800CA350 1280023C */  lui        $v0, %hi(D_8011A275)
    /* BAB54 800CA354 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* BAB58 800CA358 00000000 */  nop
    /* BAB5C 800CA35C 07106202 */  srav       $v0, $v0, $s3
    /* BAB60 800CA360 01004230 */  andi       $v0, $v0, 0x1
    /* BAB64 800CA364 1B004014 */  bnez       $v0, .L800CA3D4
    /* BAB68 800CA368 40101300 */   sll       $v0, $s3, 1
    /* BAB6C 800CA36C E7030524 */  addiu      $a1, $zero, 0x3E7
    /* BAB70 800CA370 03000424 */  addiu      $a0, $zero, 0x3
    /* BAB74 800CA374 21105300 */  addu       $v0, $v0, $s3
    /* BAB78 800CA378 80100200 */  sll        $v0, $v0, 2
    /* BAB7C 800CA37C 23105300 */  subu       $v0, $v0, $s3
    /* BAB80 800CA380 00110200 */  sll        $v0, $v0, 4
    /* BAB84 800CA384 23105300 */  subu       $v0, $v0, $s3
    /* BAB88 800CA388 C0100200 */  sll        $v0, $v0, 3
    /* BAB8C 800CA38C 1180033C */  lui        $v1, %hi(D_80117A7C)
    /* BAB90 800CA390 7C7A6324 */  addiu      $v1, $v1, %lo(D_80117A7C)
    /* BAB94 800CA394 21304300 */  addu       $a2, $v0, $v1
    /* BAB98 800CA398 40100400 */  sll        $v0, $a0, 1
  .L800CA39C:
    /* BAB9C 800CA39C 21104600 */  addu       $v0, $v0, $a2
    /* BABA0 800CA3A0 00004384 */  lh         $v1, 0x0($v0)
    /* BABA4 800CA3A4 00000000 */  nop
    /* BABA8 800CA3A8 2A106500 */  slt        $v0, $v1, $a1
    /* BABAC 800CA3AC 03004010 */  beqz       $v0, .L800CA3BC
    /* BABB0 800CA3B0 00000000 */   nop
    /* BABB4 800CA3B4 21286000 */  addu       $a1, $v1, $zero
    /* BABB8 800CA3B8 21A08000 */  addu       $s4, $a0, $zero
  .L800CA3BC:
    /* BABBC 800CA3BC 01008424 */  addiu      $a0, $a0, 0x1
    /* BABC0 800CA3C0 06008228 */  slti       $v0, $a0, 0x6
    /* BABC4 800CA3C4 F5FF4014 */  bnez       $v0, .L800CA39C
    /* BABC8 800CA3C8 40100400 */   sll       $v0, $a0, 1
    /* BABCC 800CA3CC 14290308 */  j          .L800CA450
    /* BABD0 800CA3D0 00000000 */   nop
  .L800CA3D4:
    /* BABD4 800CA3D4 21105300 */  addu       $v0, $v0, $s3
    /* BABD8 800CA3D8 80100200 */  sll        $v0, $v0, 2
    /* BABDC 800CA3DC 23105300 */  subu       $v0, $v0, $s3
    /* BABE0 800CA3E0 00110200 */  sll        $v0, $v0, 4
    /* BABE4 800CA3E4 23105300 */  subu       $v0, $v0, $s3
    /* BABE8 800CA3E8 C0100200 */  sll        $v0, $v0, 3
    /* BABEC 800CA3EC 1180013C */  lui        $at, %hi(D_80117A82)
    /* BABF0 800CA3F0 21082200 */  addu       $at, $at, $v0
    /* BABF4 800CA3F4 827A2384 */  lh         $v1, %lo(D_80117A82)($at)
    /* BABF8 800CA3F8 1280013C */  lui        $at, %hi(D_8011FF28)
    /* BABFC 800CA3FC 28FF23AC */  sw         $v1, %lo(D_8011FF28)($at)
    /* BAC00 800CA400 1180013C */  lui        $at, %hi(D_80117A84)
    /* BAC04 800CA404 21082200 */  addu       $at, $at, $v0
    /* BAC08 800CA408 847A2384 */  lh         $v1, %lo(D_80117A84)($at)
    /* BAC0C 800CA40C 1280013C */  lui        $at, %hi(D_8011FF2C)
    /* BAC10 800CA410 2CFF23AC */  sw         $v1, %lo(D_8011FF2C)($at)
    /* BAC14 800CA414 1180013C */  lui        $at, %hi(D_80117A86)
    /* BAC18 800CA418 21082200 */  addu       $at, $at, $v0
    /* BAC1C 800CA41C 867A2284 */  lh         $v0, %lo(D_80117A86)($at)
    /* BAC20 800CA420 1280013C */  lui        $at, %hi(D_8011FF30)
    /* BAC24 800CA424 30FF22AC */  sw         $v0, %lo(D_8011FF30)($at)
    /* BAC28 800CA428 1000A0AF */  sw         $zero, 0x10($sp)
    /* BAC2C 800CA42C 1400A0AF */  sw         $zero, 0x14($sp)
    /* BAC30 800CA430 1800A0AF */  sw         $zero, 0x18($sp)
    /* BAC34 800CA434 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* BAC38 800CA438 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* BAC3C 800CA43C 89FF0534 */  ori        $a1, $zero, 0xFF89
    /* BAC40 800CA440 21300000 */  addu       $a2, $zero, $zero
    /* BAC44 800CA444 B4E2020C */  jal        func_800B8AD0
    /* BAC48 800CA448 21380000 */   addu      $a3, $zero, $zero
    /* BAC4C 800CA44C 03005424 */  addiu      $s4, $v0, 0x3
  .L800CA450:
    /* BAC50 800CA450 1280023C */  lui        $v0, %hi(D_8011A275)
    /* BAC54 800CA454 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* BAC58 800CA458 00000000 */  nop
    /* BAC5C 800CA45C 07106202 */  srav       $v0, $v0, $s3
    /* BAC60 800CA460 01004230 */  andi       $v0, $v0, 0x1
    /* BAC64 800CA464 2C004010 */  beqz       $v0, .L800CA518
    /* BAC68 800CA468 40101300 */   sll       $v0, $s3, 1
    /* BAC6C 800CA46C 21105300 */  addu       $v0, $v0, $s3
    /* BAC70 800CA470 80100200 */  sll        $v0, $v0, 2
    /* BAC74 800CA474 23105300 */  subu       $v0, $v0, $s3
    /* BAC78 800CA478 00110200 */  sll        $v0, $v0, 4
    /* BAC7C 800CA47C 23105300 */  subu       $v0, $v0, $s3
    /* BAC80 800CA480 C0100200 */  sll        $v0, $v0, 3
    /* BAC84 800CA484 1180043C */  lui        $a0, %hi(D_80117A7C)
    /* BAC88 800CA488 7C7A8424 */  addiu      $a0, $a0, %lo(D_80117A7C)
    /* BAC8C 800CA48C 40181400 */  sll        $v1, $s4, 1
    /* BAC90 800CA490 21104400 */  addu       $v0, $v0, $a0
    /* BAC94 800CA494 21106200 */  addu       $v0, $v1, $v0
    /* BAC98 800CA498 21187400 */  addu       $v1, $v1, $s4
    /* BAC9C 800CA49C 40200300 */  sll        $a0, $v1, 1
    /* BACA0 800CA4A0 00004284 */  lh         $v0, 0x0($v0)
    /* BACA4 800CA4A4 1280013C */  lui        $at, %hi(D_80121B42)
    /* BACA8 800CA4A8 21082400 */  addu       $at, $at, $a0
    /* BACAC 800CA4AC 421B2384 */  lh         $v1, %lo(D_80121B42)($at)
    /* BACB0 800CA4B0 00000000 */  nop
    /* BACB4 800CA4B4 2A104300 */  slt        $v0, $v0, $v1
    /* BACB8 800CA4B8 17004014 */  bnez       $v0, .L800CA518
    /* BACBC 800CA4BC 00000000 */   nop
    /* BACC0 800CA4C0 1280013C */  lui        $at, %hi(D_80121B40)
    /* BACC4 800CA4C4 21082400 */  addu       $at, $at, $a0
    /* BACC8 800CA4C8 401B2284 */  lh         $v0, %lo(D_80121B40)($at)
    /* BACCC 800CA4CC 1680033C */  lui        $v1, %hi(D_8015894C)
    /* BACD0 800CA4D0 4C89638C */  lw         $v1, %lo(D_8015894C)($v1)
    /* BACD4 800CA4D4 80100200 */  sll        $v0, $v0, 2
    /* BACD8 800CA4D8 21104300 */  addu       $v0, $v0, $v1
    /* BACDC 800CA4DC 0000458C */  lw         $a1, 0x0($v0)
    /* BACE0 800CA4E0 ABAC020C */  jal        func_800AB2AC
    /* BACE4 800CA4E4 21200000 */   addu      $a0, $zero, $zero
    /* BACE8 800CA4E8 1000A0AF */  sw         $zero, 0x10($sp)
    /* BACEC 800CA4EC 1400A0AF */  sw         $zero, 0x14($sp)
    /* BACF0 800CA4F0 1800A0AF */  sw         $zero, 0x18($sp)
    /* BACF4 800CA4F4 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* BACF8 800CA4F8 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* BACFC 800CA4FC 0100053C */  lui        $a1, (0x1002D >> 16)
    /* BAD00 800CA500 2D00A534 */  ori        $a1, $a1, (0x1002D & 0xFFFF)
    /* BAD04 800CA504 21300000 */  addu       $a2, $zero, $zero
    /* BAD08 800CA508 B4E2020C */  jal        func_800B8AD0
    /* BAD0C 800CA50C 21380000 */   addu      $a3, $zero, $zero
    /* BAD10 800CA510 52280308 */  j          .L800CA148
    /* BAD14 800CA514 00000000 */   nop
  .L800CA518:
    /* BAD18 800CA518 57DF010C */  jal        func_80077D5C
    /* BAD1C 800CA51C 21206002 */   addu      $a0, $s3, $zero
    /* BAD20 800CA520 33004014 */  bnez       $v0, .L800CA5F0
    /* BAD24 800CA524 40101300 */   sll       $v0, $s3, 1
    /* BAD28 800CA528 21105300 */  addu       $v0, $v0, $s3
    /* BAD2C 800CA52C 80100200 */  sll        $v0, $v0, 2
    /* BAD30 800CA530 23105300 */  subu       $v0, $v0, $s3
    /* BAD34 800CA534 00110200 */  sll        $v0, $v0, 4
    /* BAD38 800CA538 23105300 */  subu       $v0, $v0, $s3
    /* BAD3C 800CA53C C0100200 */  sll        $v0, $v0, 3
    /* BAD40 800CA540 1180013C */  lui        $at, %hi(D_80117A74)
    /* BAD44 800CA544 21082200 */  addu       $at, $at, $v0
    /* BAD48 800CA548 747A2390 */  lbu        $v1, %lo(D_80117A74)($at)
    /* BAD4C 800CA54C 00000000 */  nop
    /* BAD50 800CA550 01006334 */  ori        $v1, $v1, 0x1
    /* BAD54 800CA554 1180013C */  lui        $at, %hi(D_80117A74)
    /* BAD58 800CA558 21082200 */  addu       $at, $at, $v0
    /* BAD5C 800CA55C 747A23A0 */  sb         $v1, %lo(D_80117A74)($at)
    /* BAD60 800CA560 01001024 */  addiu      $s0, $zero, 0x1
    /* BAD64 800CA564 1180123C */  lui        $s2, %hi(D_80117A56)
    /* BAD68 800CA568 567A5226 */  addiu      $s2, $s2, %lo(D_80117A56)
  .L800CA56C:
    /* BAD6C 800CA56C 1280023C */  lui        $v0, %hi(D_8011A275)
    /* BAD70 800CA570 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* BAD74 800CA574 00000000 */  nop
    /* BAD78 800CA578 07100202 */  srav       $v0, $v0, $s0
    /* BAD7C 800CA57C 01004230 */  andi       $v0, $v0, 0x1
    /* BAD80 800CA580 17004010 */  beqz       $v0, .L800CA5E0
    /* BAD84 800CA584 00000000 */   nop
    /* BAD88 800CA588 06001312 */  beq        $s0, $s3, .L800CA5A4
    /* BAD8C 800CA58C 01001124 */   addiu     $s1, $zero, 0x1
    /* BAD90 800CA590 57DF010C */  jal        func_80077D5C
    /* BAD94 800CA594 21200002 */   addu      $a0, $s0, $zero
    /* BAD98 800CA598 11004014 */  bnez       $v0, .L800CA5E0
    /* BAD9C 800CA59C 00000000 */   nop
    /* BADA0 800CA5A0 01001124 */  addiu      $s1, $zero, 0x1
  .L800CA5A4:
    /* BADA4 800CA5A4 40101000 */  sll        $v0, $s0, 1
    /* BADA8 800CA5A8 21105000 */  addu       $v0, $v0, $s0
    /* BADAC 800CA5AC 80100200 */  sll        $v0, $v0, 2
    /* BADB0 800CA5B0 23105000 */  subu       $v0, $v0, $s0
    /* BADB4 800CA5B4 00110200 */  sll        $v0, $v0, 4
    /* BADB8 800CA5B8 23105000 */  subu       $v0, $v0, $s0
    /* BADBC 800CA5BC C0100200 */  sll        $v0, $v0, 3
    /* BADC0 800CA5C0 21185200 */  addu       $v1, $v0, $s2
    /* BADC4 800CA5C4 40101100 */  sll        $v0, $s1, 1
  .L800CA5C8:
    /* BADC8 800CA5C8 21104300 */  addu       $v0, $v0, $v1
    /* BADCC 800CA5CC 000040A4 */  sh         $zero, 0x0($v0)
    /* BADD0 800CA5D0 01003126 */  addiu      $s1, $s1, 0x1
    /* BADD4 800CA5D4 0800222A */  slti       $v0, $s1, 0x8
    /* BADD8 800CA5D8 FBFF4014 */  bnez       $v0, .L800CA5C8
    /* BADDC 800CA5DC 40101100 */   sll       $v0, $s1, 1
  .L800CA5E0:
    /* BADE0 800CA5E0 01001026 */  addiu      $s0, $s0, 0x1
    /* BADE4 800CA5E4 0800022A */  slti       $v0, $s0, 0x8
    /* BADE8 800CA5E8 E0FF4014 */  bnez       $v0, .L800CA56C
    /* BADEC 800CA5EC 40101300 */   sll       $v0, $s3, 1
  .L800CA5F0:
    /* BADF0 800CA5F0 21105300 */  addu       $v0, $v0, $s3
    /* BADF4 800CA5F4 80100200 */  sll        $v0, $v0, 2
    /* BADF8 800CA5F8 23105300 */  subu       $v0, $v0, $s3
    /* BADFC 800CA5FC 00110200 */  sll        $v0, $v0, 4
    /* BAE00 800CA600 23105300 */  subu       $v0, $v0, $s3
    /* BAE04 800CA604 C0100200 */  sll        $v0, $v0, 3
    /* BAE08 800CA608 1180043C */  lui        $a0, %hi(D_80117A7C)
    /* BAE0C 800CA60C 7C7A8424 */  addiu      $a0, $a0, %lo(D_80117A7C)
    /* BAE10 800CA610 40181400 */  sll        $v1, $s4, 1
    /* BAE14 800CA614 21104400 */  addu       $v0, $v0, $a0
    /* BAE18 800CA618 21186200 */  addu       $v1, $v1, $v0
    /* BAE1C 800CA61C 00006294 */  lhu        $v0, 0x0($v1)
    /* BAE20 800CA620 00000000 */  nop
    /* BAE24 800CA624 01004224 */  addiu      $v0, $v0, 0x1
    /* BAE28 800CA628 000062A4 */  sh         $v0, 0x0($v1)
    /* BAE2C 800CA62C 21206002 */  addu       $a0, $s3, $zero
    /* BAE30 800CA630 0422030C */  jal        func_800C8810
    /* BAE34 800CA634 21280000 */   addu      $a1, $zero, $zero
    /* BAE38 800CA638 1280023C */  lui        $v0, %hi(D_8011A275)
    /* BAE3C 800CA63C 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* BAE40 800CA640 00000000 */  nop
    /* BAE44 800CA644 07106202 */  srav       $v0, $v0, $s3
    /* BAE48 800CA648 01004230 */  andi       $v0, $v0, 0x1
    /* BAE4C 800CA64C D5004014 */  bnez       $v0, .L800CA9A4
    /* BAE50 800CA650 21108002 */   addu      $v0, $s4, $zero
    /* BAE54 800CA654 01001024 */  addiu      $s0, $zero, 0x1
    /* BAE58 800CA658 21A00000 */  addu       $s4, $zero, $zero
    /* BAE5C 800CA65C 40101300 */  sll        $v0, $s3, 1
    /* BAE60 800CA660 21105300 */  addu       $v0, $v0, $s3
    /* BAE64 800CA664 80100200 */  sll        $v0, $v0, 2
    /* BAE68 800CA668 23105300 */  subu       $v0, $v0, $s3
    /* BAE6C 800CA66C 00110200 */  sll        $v0, $v0, 4
    /* BAE70 800CA670 23105300 */  subu       $v0, $v0, $s3
    /* BAE74 800CA674 C0100200 */  sll        $v0, $v0, 3
    /* BAE78 800CA678 1180033C */  lui        $v1, %hi(D_80117A7C)
    /* BAE7C 800CA67C 7C7A6324 */  addiu      $v1, $v1, %lo(D_80117A7C)
    /* BAE80 800CA680 21284300 */  addu       $a1, $v0, $v1
    /* BAE84 800CA684 40181400 */  sll        $v1, $s4, 1
  .L800CA688:
    /* BAE88 800CA688 21106500 */  addu       $v0, $v1, $a1
    /* BAE8C 800CA68C 00004484 */  lh         $a0, 0x0($v0)
    /* BAE90 800CA690 0300822A */  slti       $v0, $s4, 0x3
    /* BAE94 800CA694 07004010 */  beqz       $v0, .L800CA6B4
    /* BAE98 800CA698 21107400 */   addu      $v0, $v1, $s4
    /* BAE9C 800CA69C 40100200 */  sll        $v0, $v0, 1
    /* BAEA0 800CA6A0 1280013C */  lui        $at, %hi(D_80121B42)
    /* BAEA4 800CA6A4 21082200 */  addu       $at, $at, $v0
    /* BAEA8 800CA6A8 421B2284 */  lh         $v0, %lo(D_80121B42)($at)
    /* BAEAC 800CA6AC AE290308 */  j          .L800CA6B8
    /* BAEB0 800CA6B0 2A108200 */   slt       $v0, $a0, $v0
  .L800CA6B4:
    /* BAEB4 800CA6B4 01008228 */  slti       $v0, $a0, 0x1
  .L800CA6B8:
    /* BAEB8 800CA6B8 02004010 */  beqz       $v0, .L800CA6C4
    /* BAEBC 800CA6BC 00000000 */   nop
    /* BAEC0 800CA6C0 21800000 */  addu       $s0, $zero, $zero
  .L800CA6C4:
    /* BAEC4 800CA6C4 01009426 */  addiu      $s4, $s4, 0x1
    /* BAEC8 800CA6C8 0300822A */  slti       $v0, $s4, 0x3
    /* BAECC 800CA6CC EEFF4014 */  bnez       $v0, .L800CA688
    /* BAED0 800CA6D0 40181400 */   sll       $v1, $s4, 1
    /* BAED4 800CA6D4 4BDF010C */  jal        func_80077D2C
    /* BAED8 800CA6D8 21206002 */   addu      $a0, $s3, $zero
    /* BAEDC 800CA6DC B1004014 */  bnez       $v0, .L800CA9A4
    /* BAEE0 800CA6E0 21108002 */   addu      $v0, $s4, $zero
    /* BAEE4 800CA6E4 A00C828F */  lw         $v0, %gp_rel(D_80159178)($gp)
    /* BAEE8 800CA6E8 00000000 */  nop
    /* BAEEC 800CA6EC 28004228 */  slti       $v0, $v0, 0x28
    /* BAEF0 800CA6F0 AB004014 */  bnez       $v0, .L800CA9A0
    /* BAEF4 800CA6F4 00000000 */   nop
    /* BAEF8 800CA6F8 A7000016 */  bnez       $s0, .L800CA998
    /* BAEFC 800CA6FC 21900000 */   addu      $s2, $zero, $zero
    /* BAF00 800CA700 01001024 */  addiu      $s0, $zero, 0x1
  .L800CA704:
    /* BAF04 800CA704 1280023C */  lui        $v0, %hi(D_8011A275)
    /* BAF08 800CA708 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* BAF0C 800CA70C 00000000 */  nop
    /* BAF10 800CA710 07100202 */  srav       $v0, $v0, $s0
    /* BAF14 800CA714 01004230 */  andi       $v0, $v0, 0x1
    /* BAF18 800CA718 1F004010 */  beqz       $v0, .L800CA798
    /* BAF1C 800CA71C 00000000 */   nop
    /* BAF20 800CA720 4BDF010C */  jal        func_80077D2C
    /* BAF24 800CA724 21200002 */   addu      $a0, $s0, $zero
    /* BAF28 800CA728 1B004010 */  beqz       $v0, .L800CA798
    /* BAF2C 800CA72C 00000000 */   nop
    /* BAF30 800CA730 18004012 */  beqz       $s2, .L800CA794
    /* BAF34 800CA734 40181000 */   sll       $v1, $s0, 1
    /* BAF38 800CA738 21187000 */  addu       $v1, $v1, $s0
    /* BAF3C 800CA73C 80180300 */  sll        $v1, $v1, 2
    /* BAF40 800CA740 23187000 */  subu       $v1, $v1, $s0
    /* BAF44 800CA744 00190300 */  sll        $v1, $v1, 4
    /* BAF48 800CA748 23187000 */  subu       $v1, $v1, $s0
    /* BAF4C 800CA74C C0180300 */  sll        $v1, $v1, 3
    /* BAF50 800CA750 40101200 */  sll        $v0, $s2, 1
    /* BAF54 800CA754 21105200 */  addu       $v0, $v0, $s2
    /* BAF58 800CA758 80100200 */  sll        $v0, $v0, 2
    /* BAF5C 800CA75C 23105200 */  subu       $v0, $v0, $s2
    /* BAF60 800CA760 00110200 */  sll        $v0, $v0, 4
    /* BAF64 800CA764 23105200 */  subu       $v0, $v0, $s2
    /* BAF68 800CA768 C0100200 */  sll        $v0, $v0, 3
    /* BAF6C 800CA76C 1180013C */  lui        $at, %hi(D_80117A76)
    /* BAF70 800CA770 21082300 */  addu       $at, $at, $v1
    /* BAF74 800CA774 767A2384 */  lh         $v1, %lo(D_80117A76)($at)
    /* BAF78 800CA778 1180013C */  lui        $at, %hi(D_80117A76)
    /* BAF7C 800CA77C 21082200 */  addu       $at, $at, $v0
    /* BAF80 800CA780 767A2284 */  lh         $v0, %lo(D_80117A76)($at)
    /* BAF84 800CA784 00000000 */  nop
    /* BAF88 800CA788 2A186200 */  slt        $v1, $v1, $v0
    /* BAF8C 800CA78C 02006010 */  beqz       $v1, .L800CA798
    /* BAF90 800CA790 00000000 */   nop
  .L800CA794:
    /* BAF94 800CA794 21900002 */  addu       $s2, $s0, $zero
  .L800CA798:
    /* BAF98 800CA798 01001026 */  addiu      $s0, $s0, 0x1
    /* BAF9C 800CA79C 0800022A */  slti       $v0, $s0, 0x8
    /* BAFA0 800CA7A0 D8FF4014 */  bnez       $v0, .L800CA704
    /* BAFA4 800CA7A4 00000000 */   nop
    /* BAFA8 800CA7A8 31004016 */  bnez       $s2, .L800CA870
    /* BAFAC 800CA7AC 40181300 */   sll       $v1, $s3, 1
    /* BAFB0 800CA7B0 1280023C */  lui        $v0, %hi(D_8011A272)
    /* BAFB4 800CA7B4 72A24290 */  lbu        $v0, %lo(D_8011A272)($v0)
    /* BAFB8 800CA7B8 00000000 */  nop
    /* BAFBC 800CA7BC 0400422C */  sltiu      $v0, $v0, 0x4
    /* BAFC0 800CA7C0 29004014 */  bnez       $v0, .L800CA868
    /* BAFC4 800CA7C4 40101200 */   sll       $v0, $s2, 1
    /* BAFC8 800CA7C8 01001124 */  addiu      $s1, $zero, 0x1
    /* BAFCC 800CA7CC 21105200 */  addu       $v0, $v0, $s2
    /* BAFD0 800CA7D0 80100200 */  sll        $v0, $v0, 2
    /* BAFD4 800CA7D4 23105200 */  subu       $v0, $v0, $s2
    /* BAFD8 800CA7D8 00110200 */  sll        $v0, $v0, 4
    /* BAFDC 800CA7DC 23105200 */  subu       $v0, $v0, $s2
    /* BAFE0 800CA7E0 C0800200 */  sll        $s0, $v0, 3
  .L800CA7E4:
    /* BAFE4 800CA7E4 1C003312 */  beq        $s1, $s3, .L800CA858
    /* BAFE8 800CA7E8 00000000 */   nop
    /* BAFEC 800CA7EC 1280023C */  lui        $v0, %hi(D_8011A275)
    /* BAFF0 800CA7F0 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* BAFF4 800CA7F4 00000000 */  nop
    /* BAFF8 800CA7F8 07102202 */  srav       $v0, $v0, $s1
    /* BAFFC 800CA7FC 01004230 */  andi       $v0, $v0, 0x1
    /* BB000 800CA800 15004014 */  bnez       $v0, .L800CA858
    /* BB004 800CA804 00000000 */   nop
    /* BB008 800CA808 4BDF010C */  jal        func_80077D2C
    /* BB00C 800CA80C 21202002 */   addu      $a0, $s1, $zero
    /* BB010 800CA810 11004010 */  beqz       $v0, .L800CA858
    /* BB014 800CA814 40101100 */   sll       $v0, $s1, 1
    /* BB018 800CA818 21105100 */  addu       $v0, $v0, $s1
    /* BB01C 800CA81C 80100200 */  sll        $v0, $v0, 2
    /* BB020 800CA820 23105100 */  subu       $v0, $v0, $s1
    /* BB024 800CA824 00110200 */  sll        $v0, $v0, 4
    /* BB028 800CA828 23105100 */  subu       $v0, $v0, $s1
    /* BB02C 800CA82C C0100200 */  sll        $v0, $v0, 3
    /* BB030 800CA830 1180013C */  lui        $at, %hi(D_80117A76)
    /* BB034 800CA834 21082200 */  addu       $at, $at, $v0
    /* BB038 800CA838 767A2284 */  lh         $v0, %lo(D_80117A76)($at)
    /* BB03C 800CA83C 1180013C */  lui        $at, %hi(D_80117A76)
    /* BB040 800CA840 21083000 */  addu       $at, $at, $s0
    /* BB044 800CA844 767A2384 */  lh         $v1, %lo(D_80117A76)($at)
    /* BB048 800CA848 00000000 */  nop
    /* BB04C 800CA84C 2A104300 */  slt        $v0, $v0, $v1
    /* BB050 800CA850 54004014 */  bnez       $v0, .L800CA9A4
    /* BB054 800CA854 21108002 */   addu      $v0, $s4, $zero
  .L800CA858:
    /* BB058 800CA858 01003126 */  addiu      $s1, $s1, 0x1
    /* BB05C 800CA85C 0800222A */  slti       $v0, $s1, 0x8
    /* BB060 800CA860 E0FF4014 */  bnez       $v0, .L800CA7E4
    /* BB064 800CA864 00000000 */   nop
  .L800CA868:
    /* BB068 800CA868 1C004012 */  beqz       $s2, .L800CA8DC
    /* BB06C 800CA86C 40181300 */   sll       $v1, $s3, 1
  .L800CA870:
    /* BB070 800CA870 21187300 */  addu       $v1, $v1, $s3
    /* BB074 800CA874 80180300 */  sll        $v1, $v1, 2
    /* BB078 800CA878 23187300 */  subu       $v1, $v1, $s3
    /* BB07C 800CA87C 00190300 */  sll        $v1, $v1, 4
    /* BB080 800CA880 23187300 */  subu       $v1, $v1, $s3
    /* BB084 800CA884 C0180300 */  sll        $v1, $v1, 3
    /* BB088 800CA888 40101200 */  sll        $v0, $s2, 1
    /* BB08C 800CA88C 21105200 */  addu       $v0, $v0, $s2
    /* BB090 800CA890 80100200 */  sll        $v0, $v0, 2
    /* BB094 800CA894 23105200 */  subu       $v0, $v0, $s2
    /* BB098 800CA898 00110200 */  sll        $v0, $v0, 4
    /* BB09C 800CA89C 23105200 */  subu       $v0, $v0, $s2
    /* BB0A0 800CA8A0 C0100200 */  sll        $v0, $v0, 3
    /* BB0A4 800CA8A4 1180013C */  lui        $at, %hi(D_80117A76)
    /* BB0A8 800CA8A8 21082300 */  addu       $at, $at, $v1
    /* BB0AC 800CA8AC 767A2384 */  lh         $v1, %lo(D_80117A76)($at)
    /* BB0B0 800CA8B0 1180013C */  lui        $at, %hi(D_80117A76)
    /* BB0B4 800CA8B4 21082200 */  addu       $at, $at, $v0
    /* BB0B8 800CA8B8 767A2284 */  lh         $v0, %lo(D_80117A76)($at)
    /* BB0BC 800CA8BC 00000000 */  nop
    /* BB0C0 800CA8C0 2A186200 */  slt        $v1, $v1, $v0
    /* BB0C4 800CA8C4 37006010 */  beqz       $v1, .L800CA9A4
    /* BB0C8 800CA8C8 21108002 */   addu      $v0, $s4, $zero
    /* BB0CC 800CA8CC 662A0308 */  j          .L800CA998
    /* BB0D0 800CA8D0 00000000 */   nop
  .L800CA8D4:
    /* BB0D4 800CA8D4 642A0308 */  j          .L800CA990
    /* BB0D8 800CA8D8 01001224 */   addiu     $s2, $zero, 0x1
  .L800CA8DC:
    /* BB0DC 800CA8DC A00C828F */  lw         $v0, %gp_rel(D_80159178)($gp)
    /* BB0E0 800CA8E0 00000000 */  nop
    /* BB0E4 800CA8E4 4C004228 */  slti       $v0, $v0, 0x4C
    /* BB0E8 800CA8E8 01005238 */  xori       $s2, $v0, 0x1
    /* BB0EC 800CA8EC 2A004016 */  bnez       $s2, .L800CA998
    /* BB0F0 800CA8F0 00000000 */   nop
    /* BB0F4 800CA8F4 01001024 */  addiu      $s0, $zero, 0x1
  .L800CA8F8:
    /* BB0F8 800CA8F8 1280023C */  lui        $v0, %hi(D_8011A275)
    /* BB0FC 800CA8FC 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* BB100 800CA900 00000000 */  nop
    /* BB104 800CA904 07100202 */  srav       $v0, $v0, $s0
    /* BB108 800CA908 01004230 */  andi       $v0, $v0, 0x1
    /* BB10C 800CA90C 1C004010 */  beqz       $v0, .L800CA980
    /* BB110 800CA910 00000000 */   nop
    /* BB114 800CA914 1280013C */  lui        $at, %hi(D_8011A37E)
    /* BB118 800CA918 21083000 */  addu       $at, $at, $s0
    /* BB11C 800CA91C 7EA32390 */  lbu        $v1, %lo(D_8011A37E)($at)
    /* BB120 800CA920 1280013C */  lui        $at, %hi(D_8011A37E)
    /* BB124 800CA924 21083300 */  addu       $at, $at, $s3
    /* BB128 800CA928 7EA32290 */  lbu        $v0, %lo(D_8011A37E)($at)
    /* BB12C 800CA92C 00000000 */  nop
    /* BB130 800CA930 2B104300 */  sltu       $v0, $v0, $v1
    /* BB134 800CA934 E7FF4014 */  bnez       $v0, .L800CA8D4
    /* BB138 800CA938 00000000 */   nop
    /* BB13C 800CA93C 57DF010C */  jal        func_80077D5C
    /* BB140 800CA940 21200002 */   addu      $a0, $s0, $zero
    /* BB144 800CA944 0E004010 */  beqz       $v0, .L800CA980
    /* BB148 800CA948 40101000 */   sll       $v0, $s0, 1
    /* BB14C 800CA94C 21105000 */  addu       $v0, $v0, $s0
    /* BB150 800CA950 80100200 */  sll        $v0, $v0, 2
    /* BB154 800CA954 23105000 */  subu       $v0, $v0, $s0
    /* BB158 800CA958 00110200 */  sll        $v0, $v0, 4
    /* BB15C 800CA95C 23105000 */  subu       $v0, $v0, $s0
    /* BB160 800CA960 C0100200 */  sll        $v0, $v0, 3
    /* BB164 800CA964 1180013C */  lui        $at, %hi(D_80117694)
    /* BB168 800CA968 21082200 */  addu       $at, $at, $v0
    /* BB16C 800CA96C 9476228C */  lw         $v0, %lo(D_80117694)($at)
    /* BB170 800CA970 00000000 */  nop
    /* BB174 800CA974 E8034228 */  slti       $v0, $v0, 0x3E8
    /* BB178 800CA978 D6FF4010 */  beqz       $v0, .L800CA8D4
    /* BB17C 800CA97C 00000000 */   nop
  .L800CA980:
    /* BB180 800CA980 01001026 */  addiu      $s0, $s0, 0x1
    /* BB184 800CA984 0800022A */  slti       $v0, $s0, 0x8
    /* BB188 800CA988 DBFF4014 */  bnez       $v0, .L800CA8F8
    /* BB18C 800CA98C 00000000 */   nop
  .L800CA990:
    /* BB190 800CA990 04004012 */  beqz       $s2, .L800CA9A4
    /* BB194 800CA994 21108002 */   addu      $v0, $s4, $zero
  .L800CA998:
    /* BB198 800CA998 C623030C */  jal        func_800C8F18
    /* BB19C 800CA99C 21206002 */   addu      $a0, $s3, $zero
  .L800CA9A0:
    /* BB1A0 800CA9A0 21108002 */  addu       $v0, $s4, $zero
  .L800CA9A4:
    /* BB1A4 800CA9A4 3400BF8F */  lw         $ra, 0x34($sp)
    /* BB1A8 800CA9A8 3000B48F */  lw         $s4, 0x30($sp)
    /* BB1AC 800CA9AC 2C00B38F */  lw         $s3, 0x2C($sp)
    /* BB1B0 800CA9B0 2800B28F */  lw         $s2, 0x28($sp)
    /* BB1B4 800CA9B4 2400B18F */  lw         $s1, 0x24($sp)
    /* BB1B8 800CA9B8 2000B08F */  lw         $s0, 0x20($sp)
    /* BB1BC 800CA9BC 3800BD27 */  addiu      $sp, $sp, 0x38
    /* BB1C0 800CA9C0 0800E003 */  jr         $ra
    /* BB1C4 800CA9C4 00000000 */   nop
endlabel func_800CA108
