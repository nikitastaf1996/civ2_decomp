.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005B8F0, 0x5B8

glabel func_8005B8F0
    /* 4C0F0 8005B8F0 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 4C0F4 8005B8F4 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 4C0F8 8005B8F8 5800BEAF */  sw         $fp, 0x58($sp)
    /* 4C0FC 8005B8FC 5400B7AF */  sw         $s7, 0x54($sp)
    /* 4C100 8005B900 5000B6AF */  sw         $s6, 0x50($sp)
    /* 4C104 8005B904 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 4C108 8005B908 4800B4AF */  sw         $s4, 0x48($sp)
    /* 4C10C 8005B90C 4400B3AF */  sw         $s3, 0x44($sp)
    /* 4C110 8005B910 4000B2AF */  sw         $s2, 0x40($sp)
    /* 4C114 8005B914 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 4C118 8005B918 3800B0AF */  sw         $s0, 0x38($sp)
    /* 4C11C 8005B91C 21988000 */  addu       $s3, $a0, $zero
    /* 4C120 8005B920 21A0A000 */  addu       $s4, $a1, $zero
    /* 4C124 8005B924 2000A6AF */  sw         $a2, 0x20($sp)
    /* 4C128 8005B928 40101300 */  sll        $v0, $s3, 1
    /* 4C12C 8005B92C 21105300 */  addu       $v0, $v0, $s3
    /* 4C130 8005B930 80100200 */  sll        $v0, $v0, 2
    /* 4C134 8005B934 23105300 */  subu       $v0, $v0, $s3
    /* 4C138 8005B938 C0100200 */  sll        $v0, $v0, 3
    /* 4C13C 8005B93C 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 4C140 8005B940 21082200 */  addu       $at, $at, $v0
    /* 4C144 8005B944 D83E3680 */  lb         $s6, %lo(D_80113ED8)($at)
    /* 4C148 8005B948 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 4C14C 8005B94C 21082200 */  addu       $at, $at, $v0
    /* 4C150 8005B950 D03E2884 */  lh         $t0, %lo(D_80113ED0)($at)
    /* 4C154 8005B954 00000000 */  nop
    /* 4C158 8005B958 2800A8AF */  sw         $t0, 0x28($sp)
    /* 4C15C 8005B95C 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 4C160 8005B960 21082200 */  addu       $at, $at, $v0
    /* 4C164 8005B964 D23E3E84 */  lh         $fp, %lo(D_80113ED2)($at)
    /* 4C168 8005B968 42018006 */  bltz       $s4, .L8005BE74
    /* 4C16C 8005B96C 21800000 */   addu      $s0, $zero, $zero
    /* 4C170 8005B970 01000224 */  addiu      $v0, $zero, 0x1
    /* 4C174 8005B974 04888202 */  sllv       $s1, $v0, $s4
  .L8005B978:
    /* 4C178 8005B978 1500022A */  slti       $v0, $s0, 0x15
    /* 4C17C 8005B97C 25004010 */  beqz       $v0, .L8005BA14
    /* 4C180 8005B980 00000000 */   nop
    /* 4C184 8005B984 1280013C */  lui        $at, %hi(D_8011AC3C)
    /* 4C188 8005B988 21083000 */  addu       $at, $at, $s0
    /* 4C18C 8005B98C 3CAC2480 */  lb         $a0, %lo(D_8011AC3C)($at)
    /* 4C190 8005B990 2800A88F */  lw         $t0, 0x28($sp)
    /* 4C194 8005B994 173B030C */  jal        func_800CEC5C
    /* 4C198 8005B998 21200401 */   addu      $a0, $t0, $a0
    /* 4C19C 8005B99C 21204000 */  addu       $a0, $v0, $zero
    /* 4C1A0 8005B9A0 1280013C */  lui        $at, %hi(D_8011AC6C)
    /* 4C1A4 8005B9A4 21083000 */  addu       $at, $at, $s0
    /* 4C1A8 8005B9A8 6CAC2280 */  lb         $v0, %lo(D_8011AC6C)($at)
    /* 4C1AC 8005B9AC 00000000 */  nop
    /* 4C1B0 8005B9B0 2128C203 */  addu       $a1, $fp, $v0
    /* 4C1B4 8005B9B4 0D00A004 */  bltz       $a1, .L8005B9EC
    /* 4C1B8 8005B9B8 21180000 */   addu      $v1, $zero, $zero
    /* 4C1BC 8005B9BC 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 4C1C0 8005B9C0 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 4C1C4 8005B9C4 00000000 */  nop
    /* 4C1C8 8005B9C8 2A10A200 */  slt        $v0, $a1, $v0
    /* 4C1CC 8005B9CC 07004010 */  beqz       $v0, .L8005B9EC
    /* 4C1D0 8005B9D0 00000000 */   nop
    /* 4C1D4 8005B9D4 05008004 */  bltz       $a0, .L8005B9EC
    /* 4C1D8 8005B9D8 00000000 */   nop
    /* 4C1DC 8005B9DC 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 4C1E0 8005B9E0 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 4C1E4 8005B9E4 00000000 */  nop
    /* 4C1E8 8005B9E8 2A188200 */  slt        $v1, $a0, $v0
  .L8005B9EC:
    /* 4C1EC 8005B9EC 07006010 */  beqz       $v1, .L8005BA0C
    /* 4C1F0 8005B9F0 00000000 */   nop
    /* 4C1F4 8005B9F4 BD60020C */  jal        func_800982F4
    /* 4C1F8 8005B9F8 00000000 */   nop
    /* 4C1FC 8005B9FC 04004390 */  lbu        $v1, 0x4($v0)
    /* 4C200 8005BA00 00000000 */  nop
    /* 4C204 8005BA04 25187100 */  or         $v1, $v1, $s1
    /* 4C208 8005BA08 040043A0 */  sb         $v1, 0x4($v0)
  .L8005BA0C:
    /* 4C20C 8005BA0C 5E6E0108 */  j          .L8005B978
    /* 4C210 8005BA10 01001026 */   addiu     $s0, $s0, 0x1
  .L8005BA14:
    /* 4C214 8005BA14 1280033C */  lui        $v1, %hi(D_8011A275)
    /* 4C218 8005BA18 75A26390 */  lbu        $v1, %lo(D_8011A275)($v1)
    /* 4C21C 8005BA1C 00000000 */  nop
    /* 4C220 8005BA20 07108302 */  srav       $v0, $v1, $s4
    /* 4C224 8005BA24 01004230 */  andi       $v0, $v0, 0x1
    /* 4C228 8005BA28 3B004014 */  bnez       $v0, .L8005BB18
    /* 4C22C 8005BA2C 21900000 */   addu      $s2, $zero, $zero
    /* 4C230 8005BA30 0710C302 */  srav       $v0, $v1, $s6
    /* 4C234 8005BA34 01004230 */  andi       $v0, $v0, 0x1
    /* 4C238 8005BA38 37004014 */  bnez       $v0, .L8005BB18
    /* 4C23C 8005BA3C 80181400 */   sll       $v1, $s4, 2
    /* 4C240 8005BA40 1280103C */  lui        $s0, %hi(D_8011ACB4)
    /* 4C244 8005BA44 B4AC1026 */  addiu      $s0, $s0, %lo(D_8011ACB4)
    /* 4C248 8005BA48 0000048E */  lw         $a0, 0x0($s0)
    /* 4C24C 8005BA4C 00000000 */  nop
    /* 4C250 8005BA50 40100400 */  sll        $v0, $a0, 1
    /* 4C254 8005BA54 21104400 */  addu       $v0, $v0, $a0
    /* 4C258 8005BA58 80100200 */  sll        $v0, $v0, 2
    /* 4C25C 8005BA5C 23104400 */  subu       $v0, $v0, $a0
    /* 4C260 8005BA60 00110200 */  sll        $v0, $v0, 4
    /* 4C264 8005BA64 23104400 */  subu       $v0, $v0, $a0
    /* 4C268 8005BA68 C0100200 */  sll        $v0, $v0, 3
    /* 4C26C 8005BA6C 1180113C */  lui        $s1, %hi(D_801176B4)
    /* 4C270 8005BA70 B4763126 */  addiu      $s1, $s1, %lo(D_801176B4)
    /* 4C274 8005BA74 21105100 */  addu       $v0, $v0, $s1
    /* 4C278 8005BA78 21186200 */  addu       $v1, $v1, $v0
    /* 4C27C 8005BA7C 0000628C */  lw         $v0, 0x0($v1)
    /* 4C280 8005BA80 00000000 */  nop
    /* 4C284 8005BA84 80004230 */  andi       $v0, $v0, 0x80
    /* 4C288 8005BA88 23004014 */  bnez       $v0, .L8005BB18
    /* 4C28C 8005BA8C 00000000 */   nop
    /* 4C290 8005BA90 C17B030C */  jal        func_800DEF04
    /* 4C294 8005BA94 18000524 */   addiu     $a1, $zero, 0x18
    /* 4C298 8005BA98 1F004014 */  bnez       $v0, .L8005BB18
    /* 4C29C 8005BA9C 00000000 */   nop
    /* 4C2A0 8005BAA0 0000048E */  lw         $a0, 0x0($s0)
    /* 4C2A4 8005BAA4 C17B030C */  jal        func_800DEF04
    /* 4C2A8 8005BAA8 09000524 */   addiu     $a1, $zero, 0x9
    /* 4C2AC 8005BAAC 1A004014 */  bnez       $v0, .L8005BB18
    /* 4C2B0 8005BAB0 80181600 */   sll       $v1, $s6, 2
    /* 4C2B4 8005BAB4 0000048E */  lw         $a0, 0x0($s0)
    /* 4C2B8 8005BAB8 00000000 */  nop
    /* 4C2BC 8005BABC 40100400 */  sll        $v0, $a0, 1
    /* 4C2C0 8005BAC0 21104400 */  addu       $v0, $v0, $a0
    /* 4C2C4 8005BAC4 80100200 */  sll        $v0, $v0, 2
    /* 4C2C8 8005BAC8 23104400 */  subu       $v0, $v0, $a0
    /* 4C2CC 8005BACC 00110200 */  sll        $v0, $v0, 4
    /* 4C2D0 8005BAD0 23104400 */  subu       $v0, $v0, $a0
    /* 4C2D4 8005BAD4 C0100200 */  sll        $v0, $v0, 3
    /* 4C2D8 8005BAD8 21105100 */  addu       $v0, $v0, $s1
    /* 4C2DC 8005BADC 21186200 */  addu       $v1, $v1, $v0
    /* 4C2E0 8005BAE0 0000628C */  lw         $v0, 0x0($v1)
    /* 4C2E4 8005BAE4 00000000 */  nop
    /* 4C2E8 8005BAE8 80004230 */  andi       $v0, $v0, 0x80
    /* 4C2EC 8005BAEC 0A004014 */  bnez       $v0, .L8005BB18
    /* 4C2F0 8005BAF0 00000000 */   nop
    /* 4C2F4 8005BAF4 C17B030C */  jal        func_800DEF04
    /* 4C2F8 8005BAF8 18000524 */   addiu     $a1, $zero, 0x18
    /* 4C2FC 8005BAFC 06004014 */  bnez       $v0, .L8005BB18
    /* 4C300 8005BB00 00000000 */   nop
    /* 4C304 8005BB04 0000048E */  lw         $a0, 0x0($s0)
    /* 4C308 8005BB08 C17B030C */  jal        func_800DEF04
    /* 4C30C 8005BB0C 09000524 */   addiu     $a1, $zero, 0x9
    /* 4C310 8005BB10 02004010 */  beqz       $v0, .L8005BB1C
    /* 4C314 8005BB14 00000000 */   nop
  .L8005BB18:
    /* 4C318 8005BB18 01001224 */  addiu      $s2, $zero, 0x1
  .L8005BB1C:
    /* 4C31C 8005BB1C 06004016 */  bnez       $s2, .L8005BB38
    /* 4C320 8005BB20 00000000 */   nop
    /* 4C324 8005BB24 1280023C */  lui        $v0, %hi(D_8011A271)
    /* 4C328 8005BB28 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* 4C32C 8005BB2C 00000000 */  nop
    /* 4C330 8005BB30 4B004010 */  beqz       $v0, .L8005BC60
    /* 4C334 8005BB34 00000000 */   nop
  .L8005BB38:
    /* 4C338 8005BB38 1280023C */  lui        $v0, %hi(D_8011A271)
    /* 4C33C 8005BB3C 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* 4C340 8005BB40 00000000 */  nop
    /* 4C344 8005BB44 17004014 */  bnez       $v0, .L8005BBA4
    /* 4C348 8005BB48 40101300 */   sll       $v0, $s3, 1
    /* 4C34C 8005BB4C 21105300 */  addu       $v0, $v0, $s3
    /* 4C350 8005BB50 80100200 */  sll        $v0, $v0, 2
    /* 4C354 8005BB54 23105300 */  subu       $v0, $v0, $s3
    /* 4C358 8005BB58 C0200200 */  sll        $a0, $v0, 3
    /* 4C35C 8005BB5C 1180013C */  lui        $at, %hi(D_80113EDC)
    /* 4C360 8005BB60 21082400 */  addu       $at, $at, $a0
    /* 4C364 8005BB64 DC3E2280 */  lb         $v0, %lo(D_80113EDC)($at)
    /* 4C368 8005BB68 1280053C */  lui        $a1, %hi(D_8011ACB4)
    /* 4C36C 8005BB6C B4ACA524 */  addiu      $a1, $a1, %lo(D_8011ACB4)
    /* 4C370 8005BB70 0000A38C */  lw         $v1, 0x0($a1)
    /* 4C374 8005BB74 00000000 */  nop
    /* 4C378 8005BB78 07106200 */  srav       $v0, $v0, $v1
    /* 4C37C 8005BB7C 01004230 */  andi       $v0, $v0, 0x1
    /* 4C380 8005BB80 08004014 */  bnez       $v0, .L8005BBA4
    /* 4C384 8005BB84 40101300 */   sll       $v0, $s3, 1
    /* 4C388 8005BB88 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 4C38C 8005BB8C 21082400 */  addu       $at, $at, $a0
    /* 4C390 8005BB90 D83E2380 */  lb         $v1, %lo(D_80113ED8)($at)
    /* 4C394 8005BB94 0000A290 */  lbu        $v0, 0x0($a1)
    /* 4C398 8005BB98 00000000 */  nop
    /* 4C39C 8005BB9C 10006214 */  bne        $v1, $v0, .L8005BBE0
    /* 4C3A0 8005BBA0 40101300 */   sll       $v0, $s3, 1
  .L8005BBA4:
    /* 4C3A4 8005BBA4 21105300 */  addu       $v0, $v0, $s3
    /* 4C3A8 8005BBA8 80100200 */  sll        $v0, $v0, 2
    /* 4C3AC 8005BBAC 23105300 */  subu       $v0, $v0, $s3
    /* 4C3B0 8005BBB0 C0100200 */  sll        $v0, $v0, 3
    /* 4C3B4 8005BBB4 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 4C3B8 8005BBB8 21082200 */  addu       $at, $at, $v0
    /* 4C3BC 8005BBBC D03E2484 */  lh         $a0, %lo(D_80113ED0)($at)
    /* 4C3C0 8005BBC0 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 4C3C4 8005BBC4 21082200 */  addu       $at, $at, $v0
    /* 4C3C8 8005BBC8 D23E2584 */  lh         $a1, %lo(D_80113ED2)($at)
    /* 4C3CC 8005BBCC 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 4C3D0 8005BBD0 21082200 */  addu       $at, $at, $v0
    /* 4C3D4 8005BBD4 D83E2680 */  lb         $a2, %lo(D_80113ED8)($at)
    /* 4C3D8 8005BBD8 6D7C020C */  jal        func_8009F1B4
    /* 4C3DC 8005BBDC 00000000 */   nop
  .L8005BBE0:
    /* 4C3E0 8005BBE0 5D54020C */  jal        func_80095174
    /* 4C3E4 8005BBE4 2120C002 */   addu      $a0, $s6, $zero
    /* 4C3E8 8005BBE8 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 4C3EC 8005BBEC F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 4C3F0 8005BBF0 A587030C */  jal        func_800E1E94
    /* 4C3F4 8005BBF4 21284000 */   addu      $a1, $v0, $zero
    /* 4C3F8 8005BBF8 40281300 */  sll        $a1, $s3, 1
    /* 4C3FC 8005BBFC 2128B300 */  addu       $a1, $a1, $s3
    /* 4C400 8005BC00 80280500 */  sll        $a1, $a1, 2
    /* 4C404 8005BC04 2328B300 */  subu       $a1, $a1, $s3
    /* 4C408 8005BC08 C0280500 */  sll        $a1, $a1, 3
    /* 4C40C 8005BC0C 1180023C */  lui        $v0, %hi(D_80113EF2)
    /* 4C410 8005BC10 F23E4224 */  addiu      $v0, $v0, %lo(D_80113EF2)
    /* 4C414 8005BC14 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 4C418 8005BC18 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 4C41C 8005BC1C A587030C */  jal        func_800E1E94
    /* 4C420 8005BC20 2128A200 */   addu      $a1, $a1, $v0
    /* 4C424 8005BC24 8A54020C */  jal        func_80095228
    /* 4C428 8005BC28 21208002 */   addu      $a0, $s4, $zero
    /* 4C42C 8005BC2C 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* 4C430 8005BC30 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* 4C434 8005BC34 A587030C */  jal        func_800E1E94
    /* 4C438 8005BC38 21284000 */   addu      $a1, $v0, $zero
    /* 4C43C 8005BC3C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4C440 8005BC40 1400A0AF */  sw         $zero, 0x14($sp)
    /* 4C444 8005BC44 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4C448 8005BC48 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4C44C 8005BC4C F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4C450 8005BC50 ADD40534 */  ori        $a1, $zero, 0xD4AD
    /* 4C454 8005BC54 21300000 */  addu       $a2, $zero, $zero
    /* 4C458 8005BC58 B4E2020C */  jal        func_800B8AD0
    /* 4C45C 8005BC5C 21380000 */   addu      $a3, $zero, $zero
  .L8005BC60:
    /* 4C460 8005BC60 1280113C */  lui        $s1, %hi(D_8011A280)
    /* 4C464 8005BC64 80A23186 */  lh         $s1, %lo(D_8011A280)($s1)
    /* 4C468 8005BC68 00000000 */  nop
    /* 4C46C 8005BC6C FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 4C470 8005BC70 7C002006 */  bltz       $s1, .L8005BE64
    /* 4C474 8005BC74 40101600 */   sll       $v0, $s6, 1
    /* 4C478 8005BC78 21105600 */  addu       $v0, $v0, $s6
    /* 4C47C 8005BC7C 80100200 */  sll        $v0, $v0, 2
    /* 4C480 8005BC80 23105600 */  subu       $v0, $v0, $s6
    /* 4C484 8005BC84 00110200 */  sll        $v0, $v0, 4
    /* 4C488 8005BC88 23105600 */  subu       $v0, $v0, $s6
    /* 4C48C 8005BC8C C0100200 */  sll        $v0, $v0, 3
    /* 4C490 8005BC90 1180173C */  lui        $s7, %hi(D_80117763)
    /* 4C494 8005BC94 6377F726 */  addiu      $s7, $s7, %lo(D_80117763)
    /* 4C498 8005BC98 21105700 */  addu       $v0, $v0, $s7
    /* 4C49C 8005BC9C 3000A2AF */  sw         $v0, 0x30($sp)
    /* 4C4A0 8005BCA0 40101400 */  sll        $v0, $s4, 1
    /* 4C4A4 8005BCA4 21105400 */  addu       $v0, $v0, $s4
    /* 4C4A8 8005BCA8 80A80200 */  sll        $s5, $v0, 2
    /* 4C4AC 8005BCAC 23A8B402 */  subu       $s5, $s5, $s4
    /* 4C4B0 8005BCB0 40101100 */  sll        $v0, $s1, 1
  .L8005BCB4:
    /* 4C4B4 8005BCB4 21105100 */  addu       $v0, $v0, $s1
    /* 4C4B8 8005BCB8 80100200 */  sll        $v0, $v0, 2
    /* 4C4BC 8005BCBC 21105100 */  addu       $v0, $v0, $s1
    /* 4C4C0 8005BCC0 40800200 */  sll        $s0, $v0, 1
    /* 4C4C4 8005BCC4 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4C4C8 8005BCC8 21083000 */  addu       $at, $at, $s0
    /* 4C4CC 8005BCCC BBD62280 */  lb         $v0, %lo(D_8010D6BB)($at)
    /* 4C4D0 8005BCD0 00000000 */  nop
    /* 4C4D4 8005BCD4 60005614 */  bne        $v0, $s6, .L8005BE58
    /* 4C4D8 8005BCD8 00000000 */   nop
    /* 4C4DC 8005BCDC 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4C4E0 8005BCE0 21083000 */  addu       $at, $at, $s0
    /* 4C4E4 8005BCE4 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 4C4E8 8005BCE8 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4C4EC 8005BCEC 21083000 */  addu       $at, $at, $s0
    /* 4C4F0 8005BCF0 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 4C4F4 8005BCF4 2800A68F */  lw         $a2, 0x28($sp)
    /* 4C4F8 8005BCF8 A73B030C */  jal        func_800CEE9C
    /* 4C4FC 8005BCFC 2138C003 */   addu      $a3, $fp, $zero
    /* 4C500 8005BD00 21904000 */  addu       $s2, $v0, $zero
    /* 4C504 8005BD04 0200422A */  slti       $v0, $s2, 0x2
    /* 4C508 8005BD08 53004010 */  beqz       $v0, .L8005BE58
    /* 4C50C 8005BD0C 00000000 */   nop
    /* 4C510 8005BD10 0B004012 */  beqz       $s2, .L8005BD40
    /* 4C514 8005BD14 40101100 */   sll       $v0, $s1, 1
    /* 4C518 8005BD18 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4C51C 8005BD1C 21083000 */  addu       $at, $at, $s0
    /* 4C520 8005BD20 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 4C524 8005BD24 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4C528 8005BD28 21083000 */  addu       $at, $at, $s0
    /* 4C52C 8005BD2C B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 4C530 8005BD30 1262020C */  jal        func_80098848
    /* 4C534 8005BD34 00000000 */   nop
    /* 4C538 8005BD38 47004104 */  bgez       $v0, .L8005BE58
    /* 4C53C 8005BD3C 40101100 */   sll       $v0, $s1, 1
  .L8005BD40:
    /* 4C540 8005BD40 21105100 */  addu       $v0, $v0, $s1
    /* 4C544 8005BD44 80100200 */  sll        $v0, $v0, 2
    /* 4C548 8005BD48 21105100 */  addu       $v0, $v0, $s1
    /* 4C54C 8005BD4C 40200200 */  sll        $a0, $v0, 1
    /* 4C550 8005BD50 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4C554 8005BD54 21082400 */  addu       $at, $at, $a0
    /* 4C558 8005BD58 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4C55C 8005BD5C 3000A88F */  lw         $t0, 0x30($sp)
    /* 4C560 8005BD60 00000000 */  nop
    /* 4C564 8005BD64 21180301 */  addu       $v1, $t0, $v1
    /* 4C568 8005BD68 00006290 */  lbu        $v0, 0x0($v1)
    /* 4C56C 8005BD6C 00000000 */  nop
    /* 4C570 8005BD70 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4C574 8005BD74 000062A0 */  sb         $v0, 0x0($v1)
    /* 4C578 8005BD78 00191500 */  sll        $v1, $s5, 4
    /* 4C57C 8005BD7C 23187400 */  subu       $v1, $v1, $s4
    /* 4C580 8005BD80 C0180300 */  sll        $v1, $v1, 3
    /* 4C584 8005BD84 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4C588 8005BD88 21082400 */  addu       $at, $at, $a0
    /* 4C58C 8005BD8C BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* 4C590 8005BD90 21187700 */  addu       $v1, $v1, $s7
    /* 4C594 8005BD94 21186200 */  addu       $v1, $v1, $v0
    /* 4C598 8005BD98 00006290 */  lbu        $v0, 0x0($v1)
    /* 4C59C 8005BD9C 00000000 */  nop
    /* 4C5A0 8005BDA0 01004224 */  addiu      $v0, $v0, 0x1
    /* 4C5A4 8005BDA4 000062A0 */  sb         $v0, 0x0($v1)
    /* 4C5A8 8005BDA8 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4C5AC 8005BDAC 21082400 */  addu       $at, $at, $a0
    /* 4C5B0 8005BDB0 BBD634A0 */  sb         $s4, %lo(D_8010D6BB)($at)
    /* 4C5B4 8005BDB4 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* 4C5B8 8005BDB8 21082400 */  addu       $at, $at, $a0
    /* 4C5BC 8005BDBC C4D633A0 */  sb         $s3, %lo(D_8010D6C4)($at)
    /* 4C5C0 8005BDC0 1180013C */  lui        $at, %hi(D_8010D6BC)
    /* 4C5C4 8005BDC4 21082400 */  addu       $at, $at, $a0
    /* 4C5C8 8005BDC8 BCD620A0 */  sb         $zero, %lo(D_8010D6BC)($at)
    /* 4C5CC 8005BDCC 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 4C5D0 8005BDD0 21082400 */  addu       $at, $at, $a0
    /* 4C5D4 8005BDD4 C3D62290 */  lbu        $v0, %lo(D_8010D6C3)($at)
    /* 4C5D8 8005BDD8 00000000 */  nop
    /* 4C5DC 8005BDDC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 4C5E0 8005BDE0 0200422C */  sltiu      $v0, $v0, 0x2
    /* 4C5E4 8005BDE4 06004014 */  bnez       $v0, .L8005BE00
    /* 4C5E8 8005BDE8 40101100 */   sll       $v0, $s1, 1
    /* 4C5EC 8005BDEC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4C5F0 8005BDF0 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 4C5F4 8005BDF4 21082400 */  addu       $at, $at, $a0
    /* 4C5F8 8005BDF8 C3D622A0 */  sb         $v0, %lo(D_8010D6C3)($at)
    /* 4C5FC 8005BDFC 40101100 */  sll        $v0, $s1, 1
  .L8005BE00:
    /* 4C600 8005BE00 21105100 */  addu       $v0, $v0, $s1
    /* 4C604 8005BE04 80100200 */  sll        $v0, $v0, 2
    /* 4C608 8005BE08 21105100 */  addu       $v0, $v0, $s1
    /* 4C60C 8005BE0C 40800200 */  sll        $s0, $v0, 1
    /* 4C610 8005BE10 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4C614 8005BE14 21083000 */  addu       $at, $at, $s0
    /* 4C618 8005BE18 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 4C61C 8005BE1C 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4C620 8005BE20 21083000 */  addu       $at, $at, $s0
    /* 4C624 8005BE24 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 4C628 8005BE28 1061020C */  jal        func_80098440
    /* 4C62C 8005BE2C 21308002 */   addu      $a2, $s4, $zero
    /* 4C630 8005BE30 09004012 */  beqz       $s2, .L8005BE58
    /* 4C634 8005BE34 00000000 */   nop
    /* 4C638 8005BE38 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4C63C 8005BE3C 21083000 */  addu       $at, $at, $s0
    /* 4C640 8005BE40 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 4C644 8005BE44 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4C648 8005BE48 21083000 */  addu       $at, $at, $s0
    /* 4C64C 8005BE4C B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 4C650 8005BE50 426F020C */  jal        func_8009BD08
    /* 4C654 8005BE54 00000000 */   nop
  .L8005BE58:
    /* 4C658 8005BE58 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 4C65C 8005BE5C 95FF2106 */  bgez       $s1, .L8005BCB4
    /* 4C660 8005BE60 40101100 */   sll       $v0, $s1, 1
  .L8005BE64:
    /* 4C664 8005BE64 21206002 */  addu       $a0, $s3, $zero
    /* 4C668 8005BE68 2000A68F */  lw         $a2, 0x20($sp)
    /* 4C66C 8005BE6C 709E000C */  jal        func_800279C0
    /* 4C670 8005BE70 21288002 */   addu      $a1, $s4, $zero
  .L8005BE74:
    /* 4C674 8005BE74 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 4C678 8005BE78 5800BE8F */  lw         $fp, 0x58($sp)
    /* 4C67C 8005BE7C 5400B78F */  lw         $s7, 0x54($sp)
    /* 4C680 8005BE80 5000B68F */  lw         $s6, 0x50($sp)
    /* 4C684 8005BE84 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 4C688 8005BE88 4800B48F */  lw         $s4, 0x48($sp)
    /* 4C68C 8005BE8C 4400B38F */  lw         $s3, 0x44($sp)
    /* 4C690 8005BE90 4000B28F */  lw         $s2, 0x40($sp)
    /* 4C694 8005BE94 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 4C698 8005BE98 3800B08F */  lw         $s0, 0x38($sp)
    /* 4C69C 8005BE9C 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 4C6A0 8005BEA0 0800E003 */  jr         $ra
    /* 4C6A4 8005BEA4 00000000 */   nop
endlabel func_8005B8F0
