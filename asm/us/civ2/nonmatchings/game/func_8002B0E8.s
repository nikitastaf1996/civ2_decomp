.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B0E8, 0x2F4

glabel func_8002B0E8
    /* 1B8E8 8002B0E8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 1B8EC 8002B0EC 3400BFAF */  sw         $ra, 0x34($sp)
    /* 1B8F0 8002B0F0 3000B6AF */  sw         $s6, 0x30($sp)
    /* 1B8F4 8002B0F4 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 1B8F8 8002B0F8 2800B4AF */  sw         $s4, 0x28($sp)
    /* 1B8FC 8002B0FC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 1B900 8002B100 2000B2AF */  sw         $s2, 0x20($sp)
    /* 1B904 8002B104 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 1B908 8002B108 1800B0AF */  sw         $s0, 0x18($sp)
    /* 1B90C 8002B10C 21908000 */  addu       $s2, $a0, $zero
    /* 1B910 8002B110 2198A000 */  addu       $s3, $a1, $zero
    /* 1B914 8002B114 21A0C000 */  addu       $s4, $a2, $zero
    /* 1B918 8002B118 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 1B91C 8002B11C B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 1B920 8002B120 00000000 */  nop
    /* 1B924 8002B124 0F004212 */  beq        $s2, $v0, .L8002B164
    /* 1B928 8002B128 2180E000 */   addu      $s0, $a3, $zero
    /* 1B92C 8002B12C 5D54020C */  jal        func_80095174
    /* 1B930 8002B130 00000000 */   nop
    /* 1B934 8002B134 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 1B938 8002B138 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 1B93C 8002B13C A587030C */  jal        func_800E1E94
    /* 1B940 8002B140 21284000 */   addu      $a1, $v0, $zero
    /* 1B944 8002B144 08000224 */  addiu      $v0, $zero, 0x8
    /* 1B948 8002B148 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1B94C 8002B14C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 1B950 8002B150 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 1B954 8002B154 22D50534 */  ori        $a1, $zero, 0xD522
    /* 1B958 8002B158 21300000 */  addu       $a2, $zero, $zero
    /* 1B95C 8002B15C C3E3020C */  jal        func_800B8F0C
    /* 1B960 8002B160 3E000724 */   addiu     $a3, $zero, 0x3E
  .L8002B164:
    /* 1B964 8002B164 32000012 */  beqz       $s0, .L8002B230
    /* 1B968 8002B168 21800000 */   addu      $s0, $zero, $zero
    /* 1B96C 8002B16C 08001524 */  addiu      $s5, $zero, 0x8
  .L8002B170:
    /* 1B970 8002B170 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 1B974 8002B174 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 1B978 8002B178 00000000 */  nop
    /* 1B97C 8002B17C 2A100202 */  slt        $v0, $s0, $v0
    /* 1B980 8002B180 2B004010 */  beqz       $v0, .L8002B230
    /* 1B984 8002B184 40101000 */   sll       $v0, $s0, 1
    /* 1B988 8002B188 21105000 */  addu       $v0, $v0, $s0
    /* 1B98C 8002B18C 80100200 */  sll        $v0, $v0, 2
    /* 1B990 8002B190 23105000 */  subu       $v0, $v0, $s0
    /* 1B994 8002B194 C0880200 */  sll        $s1, $v0, 3
    /* 1B998 8002B198 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 1B99C 8002B19C 21083100 */  addu       $at, $at, $s1
    /* 1B9A0 8002B1A0 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* 1B9A4 8002B1A4 00000000 */  nop
    /* 1B9A8 8002B1A8 1F005210 */  beq        $v0, $s2, .L8002B228
    /* 1B9AC 8002B1AC 21200002 */   addu      $a0, $s0, $zero
    /* 1B9B0 8002B1B0 C826020C */  jal        func_80089B20
    /* 1B9B4 8002B1B4 11000524 */   addiu     $a1, $zero, 0x11
    /* 1B9B8 8002B1B8 1B004010 */  beqz       $v0, .L8002B228
    /* 1B9BC 8002B1BC 21306002 */   addu      $a2, $s3, $zero
    /* 1B9C0 8002B1C0 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 1B9C4 8002B1C4 21083100 */  addu       $at, $at, $s1
    /* 1B9C8 8002B1C8 D03E2484 */  lh         $a0, %lo(D_80113ED0)($at)
    /* 1B9CC 8002B1CC 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 1B9D0 8002B1D0 21083100 */  addu       $at, $at, $s1
    /* 1B9D4 8002B1D4 D23E2584 */  lh         $a1, %lo(D_80113ED2)($at)
    /* 1B9D8 8002B1D8 653B030C */  jal        func_800CED94
    /* 1B9DC 8002B1DC 21388002 */   addu      $a3, $s4, $zero
    /* 1B9E0 8002B1E0 04004228 */  slti       $v0, $v0, 0x4
    /* 1B9E4 8002B1E4 E2FF4010 */  beqz       $v0, .L8002B170
    /* 1B9E8 8002B1E8 01001026 */   addiu     $s0, $s0, 0x1
    /* 1B9EC 8002B1EC 1180053C */  lui        $a1, %hi(D_80113EF2)
    /* 1B9F0 8002B1F0 F23EA524 */  addiu      $a1, $a1, %lo(D_80113EF2)
    /* 1B9F4 8002B1F4 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 1B9F8 8002B1F8 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 1B9FC 8002B1FC A587030C */  jal        func_800E1E94
    /* 1BA00 8002B200 21282502 */   addu      $a1, $s1, $a1
    /* 1BA04 8002B204 1000B5AF */  sw         $s5, 0x10($sp)
    /* 1BA08 8002B208 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 1BA0C 8002B20C F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 1BA10 8002B210 6ED50534 */  ori        $a1, $zero, 0xD56E
    /* 1BA14 8002B214 21300000 */  addu       $a2, $zero, $zero
    /* 1BA18 8002B218 C3E3020C */  jal        func_800B8F0C
    /* 1BA1C 8002B21C 11000724 */   addiu     $a3, $zero, 0x11
    /* 1BA20 8002B220 ECAC0008 */  j          .L8002B3B0
    /* 1BA24 8002B224 21100000 */   addu      $v0, $zero, $zero
  .L8002B228:
    /* 1BA28 8002B228 5CAC0008 */  j          .L8002B170
    /* 1BA2C 8002B22C 01001026 */   addiu     $s0, $s0, 0x1
  .L8002B230:
    /* 1BA30 8002B230 21206002 */  addu       $a0, $s3, $zero
    /* 1BA34 8002B234 65AB000C */  jal        func_8002AD94
    /* 1BA38 8002B238 21288002 */   addu      $a1, $s4, $zero
    /* 1BA3C 8002B23C 21880000 */  addu       $s1, $zero, $zero
    /* 1BA40 8002B240 1180153C */  lui        $s5, %hi(D_801176B4)
    /* 1BA44 8002B244 B476B526 */  addiu      $s5, $s5, %lo(D_801176B4)
    /* 1BA48 8002B248 40101200 */  sll        $v0, $s2, 1
    /* 1BA4C 8002B24C 21105200 */  addu       $v0, $v0, $s2
    /* 1BA50 8002B250 80100200 */  sll        $v0, $v0, 2
    /* 1BA54 8002B254 23105200 */  subu       $v0, $v0, $s2
    /* 1BA58 8002B258 00110200 */  sll        $v0, $v0, 4
    /* 1BA5C 8002B25C 23105200 */  subu       $v0, $v0, $s2
    /* 1BA60 8002B260 C0100200 */  sll        $v0, $v0, 3
    /* 1BA64 8002B264 21B05500 */  addu       $s6, $v0, $s5
  .L8002B268:
    /* 1BA68 8002B268 0900222A */  slti       $v0, $s1, 0x9
    /* 1BA6C 8002B26C 4C004010 */  beqz       $v0, .L8002B3A0
    /* 1BA70 8002B270 00000000 */   nop
    /* 1BA74 8002B274 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 1BA78 8002B278 21083100 */  addu       $at, $at, $s1
    /* 1BA7C 8002B27C 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* 1BA80 8002B280 173B030C */  jal        func_800CEC5C
    /* 1BA84 8002B284 21206402 */   addu      $a0, $s3, $a0
    /* 1BA88 8002B288 21204000 */  addu       $a0, $v0, $zero
    /* 1BA8C 8002B28C 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 1BA90 8002B290 21083100 */  addu       $at, $at, $s1
    /* 1BA94 8002B294 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 1BA98 8002B298 00000000 */  nop
    /* 1BA9C 8002B29C 21288202 */  addu       $a1, $s4, $v0
    /* 1BAA0 8002B2A0 0D00A004 */  bltz       $a1, .L8002B2D8
    /* 1BAA4 8002B2A4 21180000 */   addu      $v1, $zero, $zero
    /* 1BAA8 8002B2A8 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 1BAAC 8002B2AC 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 1BAB0 8002B2B0 00000000 */  nop
    /* 1BAB4 8002B2B4 2A10A200 */  slt        $v0, $a1, $v0
    /* 1BAB8 8002B2B8 07004010 */  beqz       $v0, .L8002B2D8
    /* 1BABC 8002B2BC 00000000 */   nop
    /* 1BAC0 8002B2C0 05008004 */  bltz       $a0, .L8002B2D8
    /* 1BAC4 8002B2C4 00000000 */   nop
    /* 1BAC8 8002B2C8 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 1BACC 8002B2CC 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 1BAD0 8002B2D0 00000000 */  nop
    /* 1BAD4 8002B2D4 2A188200 */  slt        $v1, $a0, $v0
  .L8002B2D8:
    /* 1BAD8 8002B2D8 2F006010 */  beqz       $v1, .L8002B398
    /* 1BADC 8002B2DC 00000000 */   nop
    /* 1BAE0 8002B2E0 04EE010C */  jal        func_8007B810
    /* 1BAE4 8002B2E4 00000000 */   nop
    /* 1BAE8 8002B2E8 21804000 */  addu       $s0, $v0, $zero
    /* 1BAEC 8002B2EC 2A000006 */  bltz       $s0, .L8002B398
    /* 1BAF0 8002B2F0 40101000 */   sll       $v0, $s0, 1
    /* 1BAF4 8002B2F4 21105000 */  addu       $v0, $v0, $s0
    /* 1BAF8 8002B2F8 80100200 */  sll        $v0, $v0, 2
    /* 1BAFC 8002B2FC 21105000 */  addu       $v0, $v0, $s0
    /* 1BB00 8002B300 40280200 */  sll        $a1, $v0, 1
    /* 1BB04 8002B304 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 1BB08 8002B308 21082500 */  addu       $at, $at, $a1
    /* 1BB0C 8002B30C BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* 1BB10 8002B310 00000000 */  nop
    /* 1BB14 8002B314 1E007210 */  beq        $v1, $s2, .L8002B390
    /* 1BB18 8002B318 40100300 */   sll       $v0, $v1, 1
    /* 1BB1C 8002B31C 21104300 */  addu       $v0, $v0, $v1
    /* 1BB20 8002B320 80100200 */  sll        $v0, $v0, 2
    /* 1BB24 8002B324 23104300 */  subu       $v0, $v0, $v1
    /* 1BB28 8002B328 00110200 */  sll        $v0, $v0, 4
    /* 1BB2C 8002B32C 23104300 */  subu       $v0, $v0, $v1
    /* 1BB30 8002B330 C0100200 */  sll        $v0, $v0, 3
    /* 1BB34 8002B334 80181200 */  sll        $v1, $s2, 2
    /* 1BB38 8002B338 21105500 */  addu       $v0, $v0, $s5
    /* 1BB3C 8002B33C 21186200 */  addu       $v1, $v1, $v0
    /* 1BB40 8002B340 0000628C */  lw         $v0, 0x0($v1)
    /* 1BB44 8002B344 00000000 */  nop
    /* 1BB48 8002B348 10014234 */  ori        $v0, $v0, 0x110
    /* 1BB4C 8002B34C 000062AC */  sw         $v0, 0x0($v1)
    /* 1BB50 8002B350 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 1BB54 8002B354 21082500 */  addu       $at, $at, $a1
    /* 1BB58 8002B358 BBD62480 */  lb         $a0, %lo(D_8010D6BB)($at)
    /* 1BB5C 8002B35C 00000000 */  nop
    /* 1BB60 8002B360 80200400 */  sll        $a0, $a0, 2
    /* 1BB64 8002B364 21209600 */  addu       $a0, $a0, $s6
    /* 1BB68 8002B368 0000828C */  lw         $v0, 0x0($a0)
    /* 1BB6C 8002B36C 0200033C */  lui        $v1, (0x20000 >> 16)
    /* 1BB70 8002B370 25104300 */  or         $v0, $v0, $v1
    /* 1BB74 8002B374 000082AC */  sw         $v0, 0x0($a0)
    /* 1BB78 8002B378 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 1BB7C 8002B37C 21082500 */  addu       $at, $at, $a1
    /* 1BB80 8002B380 BBD62480 */  lb         $a0, %lo(D_8010D6BB)($at)
    /* 1BB84 8002B384 21284002 */  addu       $a1, $s2, $zero
    /* 1BB88 8002B388 F427010C */  jal        func_80049FD0
    /* 1BB8C 8002B38C 64000624 */   addiu     $a2, $zero, 0x64
  .L8002B390:
    /* 1BB90 8002B390 3DF3010C */  jal        func_8007CCF4
    /* 1BB94 8002B394 21200002 */   addu      $a0, $s0, $zero
  .L8002B398:
    /* 1BB98 8002B398 9AAC0008 */  j          .L8002B268
    /* 1BB9C 8002B39C 01003126 */   addiu     $s1, $s1, 0x1
  .L8002B3A0:
    /* 1BBA0 8002B3A0 21206002 */  addu       $a0, $s3, $zero
    /* 1BBA4 8002B3A4 5363020C */  jal        func_80098D4C
    /* 1BBA8 8002B3A8 21288002 */   addu      $a1, $s4, $zero
    /* 1BBAC 8002B3AC 01000224 */  addiu      $v0, $zero, 0x1
  .L8002B3B0:
    /* 1BBB0 8002B3B0 3400BF8F */  lw         $ra, 0x34($sp)
    /* 1BBB4 8002B3B4 3000B68F */  lw         $s6, 0x30($sp)
    /* 1BBB8 8002B3B8 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 1BBBC 8002B3BC 2800B48F */  lw         $s4, 0x28($sp)
    /* 1BBC0 8002B3C0 2400B38F */  lw         $s3, 0x24($sp)
    /* 1BBC4 8002B3C4 2000B28F */  lw         $s2, 0x20($sp)
    /* 1BBC8 8002B3C8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 1BBCC 8002B3CC 1800B08F */  lw         $s0, 0x18($sp)
    /* 1BBD0 8002B3D0 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 1BBD4 8002B3D4 0800E003 */  jr         $ra
    /* 1BBD8 8002B3D8 00000000 */   nop
endlabel func_8002B0E8
