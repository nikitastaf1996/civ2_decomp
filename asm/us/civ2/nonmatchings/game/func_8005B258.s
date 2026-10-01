.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005B258, 0x438

glabel func_8005B258
    /* 4BA58 8005B258 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 4BA5C 8005B25C 3000BFAF */  sw         $ra, 0x30($sp)
    /* 4BA60 8005B260 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 4BA64 8005B264 2800B4AF */  sw         $s4, 0x28($sp)
    /* 4BA68 8005B268 2400B3AF */  sw         $s3, 0x24($sp)
    /* 4BA6C 8005B26C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4BA70 8005B270 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4BA74 8005B274 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4BA78 8005B278 21888000 */  addu       $s1, $a0, $zero
    /* 4BA7C 8005B27C 21A0A000 */  addu       $s4, $a1, $zero
    /* 4BA80 8005B280 40101100 */  sll        $v0, $s1, 1
    /* 4BA84 8005B284 21105100 */  addu       $v0, $v0, $s1
    /* 4BA88 8005B288 80100200 */  sll        $v0, $v0, 2
    /* 4BA8C 8005B28C 21105100 */  addu       $v0, $v0, $s1
    /* 4BA90 8005B290 40200200 */  sll        $a0, $v0, 1
    /* 4BA94 8005B294 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4BA98 8005B298 21082400 */  addu       $at, $at, $a0
    /* 4BA9C 8005B29C BBD63580 */  lb         $s5, %lo(D_8010D6BB)($at)
    /* 4BAA0 8005B2A0 0B008006 */  bltz       $s4, .L8005B2D0
    /* 4BAA4 8005B2A4 2190C000 */   addu      $s2, $a2, $zero
    /* 4BAA8 8005B2A8 1180013C */  lui        $at, %hi(D_8010D6BC)
    /* 4BAAC 8005B2AC 21082400 */  addu       $at, $at, $a0
    /* 4BAB0 8005B2B0 BCD62290 */  lbu        $v0, %lo(D_8010D6BC)($at)
    /* 4BAB4 8005B2B4 1280033C */  lui        $v1, %hi(D_8011A5C8)
    /* 4BAB8 8005B2B8 C8A56390 */  lbu        $v1, %lo(D_8011A5C8)($v1)
    /* 4BABC 8005B2BC 00000000 */  nop
    /* 4BAC0 8005B2C0 21104300 */  addu       $v0, $v0, $v1
    /* 4BAC4 8005B2C4 1180013C */  lui        $at, %hi(D_8010D6BC)
    /* 4BAC8 8005B2C8 21082400 */  addu       $at, $at, $a0
    /* 4BACC 8005B2CC BCD622A0 */  sb         $v0, %lo(D_8010D6BC)($at)
  .L8005B2D0:
    /* 4BAD0 8005B2D0 40101100 */  sll        $v0, $s1, 1
    /* 4BAD4 8005B2D4 21105100 */  addu       $v0, $v0, $s1
    /* 4BAD8 8005B2D8 80100200 */  sll        $v0, $v0, 2
    /* 4BADC 8005B2DC 21105100 */  addu       $v0, $v0, $s1
    /* 4BAE0 8005B2E0 40100200 */  sll        $v0, $v0, 1
    /* 4BAE4 8005B2E4 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4BAE8 8005B2E8 21082200 */  addu       $at, $at, $v0
    /* 4BAEC 8005B2EC BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4BAF0 8005B2F0 2F000224 */  addiu      $v0, $zero, 0x2F
    /* 4BAF4 8005B2F4 D3006214 */  bne        $v1, $v0, .L8005B644
    /* 4BAF8 8005B2F8 00000000 */   nop
    /* 4BAFC 8005B2FC 02008106 */  bgez       $s4, .L8005B308
    /* 4BB00 8005B300 02001024 */   addiu     $s0, $zero, 0x2
    /* 4BB04 8005B304 03001024 */  addiu      $s0, $zero, 0x3
  .L8005B308:
    /* 4BB08 8005B308 40101100 */  sll        $v0, $s1, 1
    /* 4BB0C 8005B30C 21105100 */  addu       $v0, $v0, $s1
    /* 4BB10 8005B310 80100200 */  sll        $v0, $v0, 2
    /* 4BB14 8005B314 21105100 */  addu       $v0, $v0, $s1
    /* 4BB18 8005B318 40100200 */  sll        $v0, $v0, 1
    /* 4BB1C 8005B31C 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 4BB20 8005B320 21082200 */  addu       $at, $at, $v0
    /* 4BB24 8005B324 B8D62294 */  lhu        $v0, %lo(D_8010D6B8)($at)
    /* 4BB28 8005B328 00000000 */  nop
    /* 4BB2C 8005B32C 00204230 */  andi       $v0, $v0, 0x2000
    /* 4BB30 8005B330 02004010 */  beqz       $v0, .L8005B33C
    /* 4BB34 8005B334 00000000 */   nop
    /* 4BB38 8005B338 40801000 */  sll        $s0, $s0, 1
  .L8005B33C:
    /* 4BB3C 8005B33C 0300801A */  blez       $s4, .L8005B34C
    /* 4BB40 8005B340 C2171000 */   srl       $v0, $s0, 31
    /* 4BB44 8005B344 21100202 */  addu       $v0, $s0, $v0
    /* 4BB48 8005B348 43800200 */  sra        $s0, $v0, 1
  .L8005B34C:
    /* 4BB4C 8005B34C 0200022A */  slti       $v0, $s0, 0x2
    /* 4BB50 8005B350 08004010 */  beqz       $v0, .L8005B374
    /* 4BB54 8005B354 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* 4BB58 8005B358 E6E9030C */  jal        func_800FA798
    /* 4BB5C 8005B35C 00000000 */   nop
    /* 4BB60 8005B360 01004230 */  andi       $v0, $v0, 0x1
    /* 4BB64 8005B364 03004014 */  bnez       $v0, .L8005B374
    /* 4BB68 8005B368 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* 4BB6C 8005B36C 01001026 */  addiu      $s0, $s0, 0x1
    /* 4BB70 8005B370 FFFF0226 */  addiu      $v0, $s0, -0x1
  .L8005B374:
    /* 4BB74 8005B374 12004018 */  blez       $v0, .L8005B3C0
    /* 4BB78 8005B378 00000000 */   nop
    /* 4BB7C 8005B37C E6E9030C */  jal        func_800FA798
    /* 4BB80 8005B380 00000000 */   nop
    /* 4BB84 8005B384 00140200 */  sll        $v0, $v0, 16
    /* 4BB88 8005B388 03140200 */  sra        $v0, $v0, 16
    /* 4BB8C 8005B38C 1A005000 */  div        $zero, $v0, $s0
    /* 4BB90 8005B390 02000016 */  bnez       $s0, .L8005B39C
    /* 4BB94 8005B394 00000000 */   nop
    /* 4BB98 8005B398 0D000700 */  break      7
  .L8005B39C:
    /* 4BB9C 8005B39C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 4BBA0 8005B3A0 04000116 */  bne        $s0, $at, .L8005B3B4
    /* 4BBA4 8005B3A4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 4BBA8 8005B3A8 02004114 */  bne        $v0, $at, .L8005B3B4
    /* 4BBAC 8005B3AC 00000000 */   nop
    /* 4BBB0 8005B3B0 0D000600 */  break      6
  .L8005B3B4:
    /* 4BBB4 8005B3B4 10100000 */  mfhi       $v0
    /* 4BBB8 8005B3B8 F16C0108 */  j          .L8005B3C4
    /* 4BBBC 8005B3BC 2B100200 */   sltu      $v0, $zero, $v0
  .L8005B3C0:
    /* 4BBC0 8005B3C0 21100000 */  addu       $v0, $zero, $zero
  .L8005B3C4:
    /* 4BBC4 8005B3C4 7F004010 */  beqz       $v0, .L8005B5C4
    /* 4BBC8 8005B3C8 40101100 */   sll       $v0, $s1, 1
    /* 4BBCC 8005B3CC 21105100 */  addu       $v0, $v0, $s1
    /* 4BBD0 8005B3D0 80100200 */  sll        $v0, $v0, 2
    /* 4BBD4 8005B3D4 21105100 */  addu       $v0, $v0, $s1
    /* 4BBD8 8005B3D8 40100200 */  sll        $v0, $v0, 1
    /* 4BBDC 8005B3DC 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4BBE0 8005B3E0 21082200 */  addu       $at, $at, $v0
    /* 4BBE4 8005B3E4 B4D63384 */  lh         $s3, %lo(D_8010D6B4)($at)
    /* 4BBE8 8005B3E8 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4BBEC 8005B3EC 21082200 */  addu       $at, $at, $v0
    /* 4BBF0 8005B3F0 B6D63284 */  lh         $s2, %lo(D_8010D6B6)($at)
    /* 4BBF4 8005B3F4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4BBF8 8005B3F8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4BBFC 8005B3FC 21206002 */  addu       $a0, $s3, $zero
    /* 4BC00 8005B400 21284002 */  addu       $a1, $s2, $zero
    /* 4BC04 8005B404 2130A002 */  addu       $a2, $s5, $zero
    /* 4BC08 8005B408 6026020C */  jal        func_80089980
    /* 4BC0C 8005B40C FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 4BC10 8005B410 21004004 */  bltz       $v0, .L8005B498
    /* 4BC14 8005B414 00000000 */   nop
    /* 4BC18 8005B418 40800200 */  sll        $s0, $v0, 1
    /* 4BC1C 8005B41C 21800202 */  addu       $s0, $s0, $v0
    /* 4BC20 8005B420 80801000 */  sll        $s0, $s0, 2
    /* 4BC24 8005B424 23800202 */  subu       $s0, $s0, $v0
    /* 4BC28 8005B428 C0801000 */  sll        $s0, $s0, 3
    /* 4BC2C 8005B42C 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 4BC30 8005B430 21083000 */  addu       $at, $at, $s0
    /* 4BC34 8005B434 D03E2584 */  lh         $a1, %lo(D_80113ED0)($at)
    /* 4BC38 8005B438 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 4BC3C 8005B43C 21083000 */  addu       $at, $at, $s0
    /* 4BC40 8005B440 D23E2684 */  lh         $a2, %lo(D_80113ED2)($at)
    /* 4BC44 8005B444 36EF010C */  jal        func_8007BCD8
    /* 4BC48 8005B448 21202002 */   addu      $a0, $s1, $zero
    /* 4BC4C 8005B44C BEFA010C */  jal        func_8007EAF8
    /* 4BC50 8005B450 21202002 */   addu      $a0, $s1, $zero
    /* 4BC54 8005B454 21206002 */  addu       $a0, $s3, $zero
    /* 4BC58 8005B458 426F020C */  jal        func_8009BD08
    /* 4BC5C 8005B45C 21284002 */   addu      $a1, $s2, $zero
    /* 4BC60 8005B460 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 4BC64 8005B464 21083000 */  addu       $at, $at, $s0
    /* 4BC68 8005B468 D03E2484 */  lh         $a0, %lo(D_80113ED0)($at)
    /* 4BC6C 8005B46C 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 4BC70 8005B470 21083000 */  addu       $at, $at, $s0
    /* 4BC74 8005B474 D23E2584 */  lh         $a1, %lo(D_80113ED2)($at)
    /* 4BC78 8005B478 426F020C */  jal        func_8009BD08
    /* 4BC7C 8005B47C 00000000 */   nop
    /* 4BC80 8005B480 1180053C */  lui        $a1, %hi(D_80113EF2)
    /* 4BC84 8005B484 F23EA524 */  addiu      $a1, $a1, %lo(D_80113EF2)
    /* 4BC88 8005B488 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 4BC8C 8005B48C 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 4BC90 8005B490 A587030C */  jal        func_800E1E94
    /* 4BC94 8005B494 21280502 */   addu      $a1, $s0, $a1
  .L8005B498:
    /* 4BC98 8005B498 73008006 */  bltz       $s4, .L8005B668
    /* 4BC9C 8005B49C 21100000 */   addu      $v0, $zero, $zero
    /* 4BCA0 8005B4A0 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4BCA4 8005B4A4 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4BCA8 8005B4A8 00000000 */  nop
    /* 4BCAC 8005B4AC 0710A202 */  srav       $v0, $v0, $s5
    /* 4BCB0 8005B4B0 01004230 */  andi       $v0, $v0, 0x1
    /* 4BCB4 8005B4B4 35004010 */  beqz       $v0, .L8005B58C
    /* 4BCB8 8005B4B8 40101100 */   sll       $v0, $s1, 1
    /* 4BCBC 8005B4BC 21105100 */  addu       $v0, $v0, $s1
    /* 4BCC0 8005B4C0 80100200 */  sll        $v0, $v0, 2
    /* 4BCC4 8005B4C4 21105100 */  addu       $v0, $v0, $s1
    /* 4BCC8 8005B4C8 40180200 */  sll        $v1, $v0, 1
    /* 4BCCC 8005B4CC 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 4BCD0 8005B4D0 21082300 */  addu       $at, $at, $v1
    /* 4BCD4 8005B4D4 B8D62294 */  lhu        $v0, %lo(D_8010D6B8)($at)
    /* 4BCD8 8005B4D8 00000000 */  nop
    /* 4BCDC 8005B4DC 00204230 */  andi       $v0, $v0, 0x2000
    /* 4BCE0 8005B4E0 12004014 */  bnez       $v0, .L8005B52C
    /* 4BCE4 8005B4E4 12C70534 */   ori       $a1, $zero, 0xC712
    /* 4BCE8 8005B4E8 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4BCEC 8005B4EC 21082300 */  addu       $at, $at, $v1
    /* 4BCF0 8005B4F0 BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* 4BCF4 8005B4F4 00000000 */  nop
    /* 4BCF8 8005B4F8 C0380200 */  sll        $a3, $v0, 3
    /* 4BCFC 8005B4FC 2138E200 */  addu       $a3, $a3, $v0
    /* 4BD00 8005B500 80380700 */  sll        $a3, $a3, 2
    /* 4BD04 8005B504 2138E200 */  addu       $a3, $a3, $v0
    /* 4BD08 8005B508 80380700 */  sll        $a3, $a3, 2
    /* 4BD0C 8005B50C 1380033C */  lui        $v1, %hi(D_8012BF80)
    /* 4BD10 8005B510 80BF6324 */  addiu      $v1, $v1, %lo(D_8012BF80)
    /* 4BD14 8005B514 08000224 */  addiu      $v0, $zero, 0x8
    /* 4BD18 8005B518 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4BD1C 8005B51C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4BD20 8005B520 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4BD24 8005B524 5F6D0108 */  j          .L8005B57C
    /* 4BD28 8005B528 79C60534 */   ori       $a1, $zero, 0xC679
  .L8005B52C:
    /* 4BD2C 8005B52C 40101100 */  sll        $v0, $s1, 1
    /* 4BD30 8005B530 21105100 */  addu       $v0, $v0, $s1
    /* 4BD34 8005B534 80100200 */  sll        $v0, $v0, 2
    /* 4BD38 8005B538 21105100 */  addu       $v0, $v0, $s1
    /* 4BD3C 8005B53C 40100200 */  sll        $v0, $v0, 1
    /* 4BD40 8005B540 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4BD44 8005B544 21082200 */  addu       $at, $at, $v0
    /* 4BD48 8005B548 BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* 4BD4C 8005B54C 00000000 */  nop
    /* 4BD50 8005B550 C0380200 */  sll        $a3, $v0, 3
    /* 4BD54 8005B554 2138E200 */  addu       $a3, $a3, $v0
    /* 4BD58 8005B558 80380700 */  sll        $a3, $a3, 2
    /* 4BD5C 8005B55C 2138E200 */  addu       $a3, $a3, $v0
    /* 4BD60 8005B560 80380700 */  sll        $a3, $a3, 2
    /* 4BD64 8005B564 1380033C */  lui        $v1, %hi(D_8012BF80)
    /* 4BD68 8005B568 80BF6324 */  addiu      $v1, $v1, %lo(D_8012BF80)
    /* 4BD6C 8005B56C 08000224 */  addiu      $v0, $zero, 0x8
    /* 4BD70 8005B570 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4BD74 8005B574 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4BD78 8005B578 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
  .L8005B57C:
    /* 4BD7C 8005B57C 21300000 */  addu       $a2, $zero, $zero
    /* 4BD80 8005B580 18E3020C */  jal        func_800B8C60
    /* 4BD84 8005B584 2138E300 */   addu      $a3, $a3, $v1
    /* 4BD88 8005B588 40101100 */  sll        $v0, $s1, 1
  .L8005B58C:
    /* 4BD8C 8005B58C 21105100 */  addu       $v0, $v0, $s1
    /* 4BD90 8005B590 80100200 */  sll        $v0, $v0, 2
    /* 4BD94 8005B594 21105100 */  addu       $v0, $v0, $s1
    /* 4BD98 8005B598 40100200 */  sll        $v0, $v0, 1
    /* 4BD9C 8005B59C 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 4BDA0 8005B5A0 21082200 */  addu       $at, $at, $v0
    /* 4BDA4 8005B5A4 B8D62394 */  lhu        $v1, %lo(D_8010D6B8)($at)
    /* 4BDA8 8005B5A8 00000000 */  nop
    /* 4BDAC 8005B5AC 00206334 */  ori        $v1, $v1, 0x2000
    /* 4BDB0 8005B5B0 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 4BDB4 8005B5B4 21082200 */  addu       $at, $at, $v0
    /* 4BDB8 8005B5B8 B8D623A4 */  sh         $v1, %lo(D_8010D6B8)($at)
    /* 4BDBC 8005B5BC 9A6D0108 */  j          .L8005B668
    /* 4BDC0 8005B5C0 21100000 */   addu      $v0, $zero, $zero
  .L8005B5C4:
    /* 4BDC4 8005B5C4 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4BDC8 8005B5C8 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4BDCC 8005B5CC 00000000 */  nop
    /* 4BDD0 8005B5D0 0710A202 */  srav       $v0, $v0, $s5
    /* 4BDD4 8005B5D4 01004230 */  andi       $v0, $v0, 0x1
    /* 4BDD8 8005B5D8 1A004010 */  beqz       $v0, .L8005B644
    /* 4BDDC 8005B5DC 00000000 */   nop
    /* 4BDE0 8005B5E0 18008006 */  bltz       $s4, .L8005B644
    /* 4BDE4 8005B5E4 40101100 */   sll       $v0, $s1, 1
    /* 4BDE8 8005B5E8 21105100 */  addu       $v0, $v0, $s1
    /* 4BDEC 8005B5EC 80100200 */  sll        $v0, $v0, 2
    /* 4BDF0 8005B5F0 21105100 */  addu       $v0, $v0, $s1
    /* 4BDF4 8005B5F4 40100200 */  sll        $v0, $v0, 1
    /* 4BDF8 8005B5F8 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4BDFC 8005B5FC 21082200 */  addu       $at, $at, $v0
    /* 4BE00 8005B600 BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* 4BE04 8005B604 00000000 */  nop
    /* 4BE08 8005B608 C0380200 */  sll        $a3, $v0, 3
    /* 4BE0C 8005B60C 2138E200 */  addu       $a3, $a3, $v0
    /* 4BE10 8005B610 80380700 */  sll        $a3, $a3, 2
    /* 4BE14 8005B614 2138E200 */  addu       $a3, $a3, $v0
    /* 4BE18 8005B618 80380700 */  sll        $a3, $a3, 2
    /* 4BE1C 8005B61C 1380033C */  lui        $v1, %hi(D_8012BF80)
    /* 4BE20 8005B620 80BF6324 */  addiu      $v1, $v1, %lo(D_8012BF80)
    /* 4BE24 8005B624 08000224 */  addiu      $v0, $zero, 0x8
    /* 4BE28 8005B628 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4BE2C 8005B62C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4BE30 8005B630 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4BE34 8005B634 9AC70534 */  ori        $a1, $zero, 0xC79A
    /* 4BE38 8005B638 21300000 */  addu       $a2, $zero, $zero
    /* 4BE3C 8005B63C 18E3020C */  jal        func_800B8C60
    /* 4BE40 8005B640 2138E300 */   addu      $a3, $a3, $v1
  .L8005B644:
    /* 4BE44 8005B644 35F9010C */  jal        func_8007E4D4
    /* 4BE48 8005B648 21202002 */   addu      $a0, $s1, $zero
    /* 4BE4C 8005B64C 0600401A */  blez       $s2, .L8005B668
    /* 4BE50 8005B650 01000224 */   addiu     $v0, $zero, 0x1
    /* 4BE54 8005B654 04008006 */  bltz       $s4, .L8005B668
    /* 4BE58 8005B658 2120A002 */   addu      $a0, $s5, $zero
    /* 4BE5C 8005B65C 2C6B010C */  jal        func_8005ACB0
    /* 4BE60 8005B660 21284002 */   addu      $a1, $s2, $zero
    /* 4BE64 8005B664 01000224 */  addiu      $v0, $zero, 0x1
  .L8005B668:
    /* 4BE68 8005B668 3000BF8F */  lw         $ra, 0x30($sp)
    /* 4BE6C 8005B66C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 4BE70 8005B670 2800B48F */  lw         $s4, 0x28($sp)
    /* 4BE74 8005B674 2400B38F */  lw         $s3, 0x24($sp)
    /* 4BE78 8005B678 2000B28F */  lw         $s2, 0x20($sp)
    /* 4BE7C 8005B67C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4BE80 8005B680 1800B08F */  lw         $s0, 0x18($sp)
    /* 4BE84 8005B684 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 4BE88 8005B688 0800E003 */  jr         $ra
    /* 4BE8C 8005B68C 00000000 */   nop
endlabel func_8005B258
