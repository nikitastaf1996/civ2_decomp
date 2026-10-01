.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002A26C, 0x494

glabel func_8002A26C
    /* 1AA6C 8002A26C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 1AA70 8002A270 3400BFAF */  sw         $ra, 0x34($sp)
    /* 1AA74 8002A274 3000BEAF */  sw         $fp, 0x30($sp)
    /* 1AA78 8002A278 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 1AA7C 8002A27C 2800B6AF */  sw         $s6, 0x28($sp)
    /* 1AA80 8002A280 2400B5AF */  sw         $s5, 0x24($sp)
    /* 1AA84 8002A284 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1AA88 8002A288 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1AA8C 8002A28C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1AA90 8002A290 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1AA94 8002A294 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1AA98 8002A298 2190A000 */  addu       $s2, $a1, $zero
    /* 1AA9C 8002A29C 21988000 */  addu       $s3, $a0, $zero
    /* 1AAA0 8002A2A0 09016006 */  bltz       $s3, .L8002A6C8
    /* 1AAA4 8002A2A4 21B80000 */   addu      $s7, $zero, $zero
    /* 1AAA8 8002A2A8 40101300 */  sll        $v0, $s3, 1
    /* 1AAAC 8002A2AC 21105300 */  addu       $v0, $v0, $s3
    /* 1AAB0 8002A2B0 80100200 */  sll        $v0, $v0, 2
    /* 1AAB4 8002A2B4 21105300 */  addu       $v0, $v0, $s3
    /* 1AAB8 8002A2B8 40100200 */  sll        $v0, $v0, 1
    /* 1AABC 8002A2BC 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 1AAC0 8002A2C0 21082200 */  addu       $at, $at, $v0
    /* 1AAC4 8002A2C4 B4D63084 */  lh         $s0, %lo(D_8010D6B4)($at)
    /* 1AAC8 8002A2C8 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 1AACC 8002A2CC 21082200 */  addu       $at, $at, $v0
    /* 1AAD0 8002A2D0 B6D63184 */  lh         $s1, %lo(D_8010D6B6)($at)
    /* 1AAD4 8002A2D4 21200002 */  addu       $a0, $s0, $zero
    /* 1AAD8 8002A2D8 D560020C */  jal        func_80098354
    /* 1AADC 8002A2DC 21282002 */   addu      $a1, $s1, $zero
    /* 1AAE0 8002A2E0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1AAE4 8002A2E4 000182AF */  sw         $v0, %gp_rel(D_801585D8)($gp)
    /* 1AAE8 8002A2E8 21200002 */  addu       $a0, $s0, $zero
    /* 1AAEC 8002A2EC 1E26020C */  jal        func_80089878
    /* 1AAF0 8002A2F0 21282002 */   addu      $a1, $s1, $zero
    /* 1AAF4 8002A2F4 FC0082AF */  sw         $v0, %gp_rel(D_801585D4)($gp)
    /* 1AAF8 8002A2F8 E6ED010C */  jal        func_8007B798
    /* 1AAFC 8002A2FC 21206002 */   addu      $a0, $s3, $zero
    /* 1AB00 8002A300 21884000 */  addu       $s1, $v0, $zero
    /* 1AB04 8002A304 F0002006 */  bltz       $s1, .L8002A6C8
    /* 1AB08 8002A308 40101200 */   sll       $v0, $s2, 1
    /* 1AB0C 8002A30C FFFF1E24 */  addiu      $fp, $zero, -0x1
    /* 1AB10 8002A310 21105200 */  addu       $v0, $v0, $s2
    /* 1AB14 8002A314 80B00200 */  sll        $s6, $v0, 2
    /* 1AB18 8002A318 21B0D202 */  addu       $s6, $s6, $s2
    /* 1AB1C 8002A31C 40101200 */  sll        $v0, $s2, 1
    /* 1AB20 8002A320 21105200 */  addu       $v0, $v0, $s2
    /* 1AB24 8002A324 80A80200 */  sll        $s5, $v0, 2
    /* 1AB28 8002A328 21A8B202 */  addu       $s5, $s5, $s2
    /* 1AB2C 8002A32C 40A01200 */  sll        $s4, $s2, 1
    /* 1AB30 8002A330 21A09202 */  addu       $s4, $s4, $s2
  .L8002A334:
    /* 1AB34 8002A334 0001838F */  lw         $v1, %gp_rel(D_801585D8)($gp)
    /* 1AB38 8002A338 0A000224 */  addiu      $v0, $zero, 0xA
    /* 1AB3C 8002A33C 12006214 */  bne        $v1, $v0, .L8002A388
    /* 1AB40 8002A340 40101100 */   sll       $v0, $s1, 1
    /* 1AB44 8002A344 21105100 */  addu       $v0, $v0, $s1
    /* 1AB48 8002A348 80100200 */  sll        $v0, $v0, 2
    /* 1AB4C 8002A34C 21105100 */  addu       $v0, $v0, $s1
    /* 1AB50 8002A350 40100200 */  sll        $v0, $v0, 1
    /* 1AB54 8002A354 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1AB58 8002A358 21082200 */  addu       $at, $at, $v0
    /* 1AB5C 8002A35C BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 1AB60 8002A360 00000000 */  nop
    /* 1AB64 8002A364 80100300 */  sll        $v0, $v1, 2
    /* 1AB68 8002A368 21104300 */  addu       $v0, $v0, $v1
    /* 1AB6C 8002A36C 80100200 */  sll        $v0, $v0, 2
    /* 1AB70 8002A370 1180013C */  lui        $at, %hi(D_8010D285)
    /* 1AB74 8002A374 21082200 */  addu       $at, $at, $v0
    /* 1AB78 8002A378 85D22280 */  lb         $v0, %lo(D_8010D285)($at)
    /* 1AB7C 8002A37C 00000000 */  nop
    /* 1AB80 8002A380 CC004010 */  beqz       $v0, .L8002A6B4
    /* 1AB84 8002A384 00000000 */   nop
  .L8002A388:
    /* 1AB88 8002A388 21202002 */  addu       $a0, $s1, $zero
    /* 1AB8C 8002A38C 21280000 */  addu       $a1, $zero, $zero
    /* 1AB90 8002A390 68A7000C */  jal        func_80029DA0
    /* 1AB94 8002A394 21304002 */   addu      $a2, $s2, $zero
    /* 1AB98 8002A398 21804000 */  addu       $s0, $v0, $zero
    /* 1AB9C 8002A39C 1280023C */  lui        $v0, %hi(D_8011A250)
    /* 1ABA0 8002A3A0 50A24294 */  lhu        $v0, %lo(D_8011A250)($v0)
    /* 1ABA4 8002A3A4 00000000 */  nop
    /* 1ABA8 8002A3A8 10004230 */  andi       $v0, $v0, 0x10
    /* 1ABAC 8002A3AC 21004010 */  beqz       $v0, .L8002A434
    /* 1ABB0 8002A3B0 40101100 */   sll       $v0, $s1, 1
    /* 1ABB4 8002A3B4 CDEC010C */  jal        func_8007B334
    /* 1ABB8 8002A3B8 21202002 */   addu      $a0, $s1, $zero
    /* 1ABBC 8002A3BC 18000202 */  mult       $s0, $v0
    /* 1ABC0 8002A3C0 12200000 */  mflo       $a0
    /* 1ABC4 8002A3C4 40101100 */  sll        $v0, $s1, 1
    /* 1ABC8 8002A3C8 21105100 */  addu       $v0, $v0, $s1
    /* 1ABCC 8002A3CC 80100200 */  sll        $v0, $v0, 2
    /* 1ABD0 8002A3D0 21105100 */  addu       $v0, $v0, $s1
    /* 1ABD4 8002A3D4 40100200 */  sll        $v0, $v0, 1
    /* 1ABD8 8002A3D8 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1ABDC 8002A3DC 21082200 */  addu       $at, $at, $v0
    /* 1ABE0 8002A3E0 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 1ABE4 8002A3E4 00000000 */  nop
    /* 1ABE8 8002A3E8 80100300 */  sll        $v0, $v1, 2
    /* 1ABEC 8002A3EC 21104300 */  addu       $v0, $v0, $v1
    /* 1ABF0 8002A3F0 80100200 */  sll        $v0, $v0, 2
    /* 1ABF4 8002A3F4 1180013C */  lui        $at, %hi(D_8010D28A)
    /* 1ABF8 8002A3F8 21082200 */  addu       $at, $at, $v0
    /* 1ABFC 8002A3FC 8AD22280 */  lb         $v0, %lo(D_8010D28A)($at)
    /* 1AC00 8002A400 00000000 */  nop
    /* 1AC04 8002A404 1A008200 */  div        $zero, $a0, $v0
    /* 1AC08 8002A408 02004014 */  bnez       $v0, .L8002A414
    /* 1AC0C 8002A40C 00000000 */   nop
    /* 1AC10 8002A410 0D000700 */  break      7
  .L8002A414:
    /* 1AC14 8002A414 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 1AC18 8002A418 04004114 */  bne        $v0, $at, .L8002A42C
    /* 1AC1C 8002A41C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 1AC20 8002A420 02008114 */  bne        $a0, $at, .L8002A42C
    /* 1AC24 8002A424 00000000 */   nop
    /* 1AC28 8002A428 0D000600 */  break      6
  .L8002A42C:
    /* 1AC2C 8002A42C 12800000 */  mflo       $s0
    /* 1AC30 8002A430 40101100 */  sll        $v0, $s1, 1
  .L8002A434:
    /* 1AC34 8002A434 21105100 */  addu       $v0, $v0, $s1
    /* 1AC38 8002A438 80100200 */  sll        $v0, $v0, 2
    /* 1AC3C 8002A43C 21105100 */  addu       $v0, $v0, $s1
    /* 1AC40 8002A440 40100200 */  sll        $v0, $v0, 1
    /* 1AC44 8002A444 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1AC48 8002A448 21082200 */  addu       $at, $at, $v0
    /* 1AC4C 8002A44C BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 1AC50 8002A450 00000000 */  nop
    /* 1AC54 8002A454 80100300 */  sll        $v0, $v1, 2
    /* 1AC58 8002A458 21104300 */  addu       $v0, $v0, $v1
    /* 1AC5C 8002A45C 80100200 */  sll        $v0, $v0, 2
    /* 1AC60 8002A460 1180013C */  lui        $at, %hi(D_8010D280)
    /* 1AC64 8002A464 21082200 */  addu       $at, $at, $v0
    /* 1AC68 8002A468 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 1AC6C 8002A46C 00000000 */  nop
    /* 1AC70 8002A470 00044230 */  andi       $v0, $v0, 0x400
    /* 1AC74 8002A474 02004010 */  beqz       $v0, .L8002A480
    /* 1AC78 8002A478 40101100 */   sll       $v0, $s1, 1
    /* 1AC7C 8002A47C 01001026 */  addiu      $s0, $s0, 0x1
  .L8002A480:
    /* 1AC80 8002A480 21105100 */  addu       $v0, $v0, $s1
    /* 1AC84 8002A484 80100200 */  sll        $v0, $v0, 2
    /* 1AC88 8002A488 21105100 */  addu       $v0, $v0, $s1
    /* 1AC8C 8002A48C 40100200 */  sll        $v0, $v0, 1
    /* 1AC90 8002A490 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1AC94 8002A494 21082200 */  addu       $at, $at, $v0
    /* 1AC98 8002A498 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 1AC9C 8002A49C 00000000 */  nop
    /* 1ACA0 8002A4A0 80100300 */  sll        $v0, $v1, 2
    /* 1ACA4 8002A4A4 21104300 */  addu       $v0, $v0, $v1
    /* 1ACA8 8002A4A8 80100200 */  sll        $v0, $v0, 2
    /* 1ACAC 8002A4AC 1180013C */  lui        $at, %hi(D_8010D280)
    /* 1ACB0 8002A4B0 21082200 */  addu       $at, $at, $v0
    /* 1ACB4 8002A4B4 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 1ACB8 8002A4B8 00000000 */  nop
    /* 1ACBC 8002A4BC 00204230 */  andi       $v0, $v0, 0x2000
    /* 1ACC0 8002A4C0 1D004010 */  beqz       $v0, .L8002A538
    /* 1ACC4 8002A4C4 00000000 */   nop
    /* 1ACC8 8002A4C8 1A005E12 */  beq        $s2, $fp, .L8002A534
    /* 1ACCC 8002A4CC 40101600 */   sll       $v0, $s6, 1
    /* 1ACD0 8002A4D0 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1ACD4 8002A4D4 21082200 */  addu       $at, $at, $v0
    /* 1ACD8 8002A4D8 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 1ACDC 8002A4DC 00000000 */  nop
    /* 1ACE0 8002A4E0 80100300 */  sll        $v0, $v1, 2
    /* 1ACE4 8002A4E4 21104300 */  addu       $v0, $v0, $v1
    /* 1ACE8 8002A4E8 80200200 */  sll        $a0, $v0, 2
    /* 1ACEC 8002A4EC 1180013C */  lui        $at, %hi(D_8010D285)
    /* 1ACF0 8002A4F0 21082400 */  addu       $at, $at, $a0
    /* 1ACF4 8002A4F4 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* 1ACF8 8002A4F8 01000224 */  addiu      $v0, $zero, 0x1
    /* 1ACFC 8002A4FC 0F006214 */  bne        $v1, $v0, .L8002A53C
    /* 1AD00 8002A500 40101100 */   sll       $v0, $s1, 1
    /* 1AD04 8002A504 1180013C */  lui        $at, %hi(D_8010D280)
    /* 1AD08 8002A508 21082400 */  addu       $at, $at, $a0
    /* 1AD0C 8002A50C 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 1AD10 8002A510 00000000 */  nop
    /* 1AD14 8002A514 00104230 */  andi       $v0, $v0, 0x1000
    /* 1AD18 8002A518 03004010 */  beqz       $v0, .L8002A528
    /* 1AD1C 8002A51C 80101000 */   sll       $v0, $s0, 2
    /* 1AD20 8002A520 4EA90008 */  j          .L8002A538
    /* 1AD24 8002A524 21800202 */   addu      $s0, $s0, $v0
  .L8002A528:
    /* 1AD28 8002A528 40101000 */  sll        $v0, $s0, 1
    /* 1AD2C 8002A52C 4EA90008 */  j          .L8002A538
    /* 1AD30 8002A530 21800202 */   addu      $s0, $s0, $v0
  .L8002A534:
    /* 1AD34 8002A534 01001026 */  addiu      $s0, $s0, 0x1
  .L8002A538:
    /* 1AD38 8002A538 40101100 */  sll        $v0, $s1, 1
  .L8002A53C:
    /* 1AD3C 8002A53C 21105100 */  addu       $v0, $v0, $s1
    /* 1AD40 8002A540 80100200 */  sll        $v0, $v0, 2
    /* 1AD44 8002A544 21105100 */  addu       $v0, $v0, $s1
    /* 1AD48 8002A548 40100200 */  sll        $v0, $v0, 1
    /* 1AD4C 8002A54C 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1AD50 8002A550 21082200 */  addu       $at, $at, $v0
    /* 1AD54 8002A554 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 1AD58 8002A558 00000000 */  nop
    /* 1AD5C 8002A55C 80100300 */  sll        $v0, $v1, 2
    /* 1AD60 8002A560 21104300 */  addu       $v0, $v0, $v1
    /* 1AD64 8002A564 80100200 */  sll        $v0, $v0, 2
    /* 1AD68 8002A568 1180013C */  lui        $at, %hi(D_8010D280)
    /* 1AD6C 8002A56C 21082200 */  addu       $at, $at, $v0
    /* 1AD70 8002A570 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 1AD74 8002A574 00000000 */  nop
    /* 1AD78 8002A578 10004230 */  andi       $v0, $v0, 0x10
    /* 1AD7C 8002A57C 18004010 */  beqz       $v0, .L8002A5E0
    /* 1AD80 8002A580 00000000 */   nop
    /* 1AD84 8002A584 16005E12 */  beq        $s2, $fp, .L8002A5E0
    /* 1AD88 8002A588 40101500 */   sll       $v0, $s5, 1
    /* 1AD8C 8002A58C 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1AD90 8002A590 21082200 */  addu       $at, $at, $v0
    /* 1AD94 8002A594 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 1AD98 8002A598 00000000 */  nop
    /* 1AD9C 8002A59C 80100300 */  sll        $v0, $v1, 2
    /* 1ADA0 8002A5A0 21104300 */  addu       $v0, $v0, $v1
    /* 1ADA4 8002A5A4 80200200 */  sll        $a0, $v0, 2
    /* 1ADA8 8002A5A8 1180013C */  lui        $at, %hi(D_8010D285)
    /* 1ADAC 8002A5AC 21082400 */  addu       $at, $at, $a0
    /* 1ADB0 8002A5B0 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* 1ADB4 8002A5B4 01000224 */  addiu      $v0, $zero, 0x1
    /* 1ADB8 8002A5B8 0A006214 */  bne        $v1, $v0, .L8002A5E4
    /* 1ADBC 8002A5BC 40101100 */   sll       $v0, $s1, 1
    /* 1ADC0 8002A5C0 1180013C */  lui        $at, %hi(D_8010D280)
    /* 1ADC4 8002A5C4 21082400 */  addu       $at, $at, $a0
    /* 1ADC8 8002A5C8 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 1ADCC 8002A5CC 00000000 */  nop
    /* 1ADD0 8002A5D0 10004230 */  andi       $v0, $v0, 0x10
    /* 1ADD4 8002A5D4 03004010 */  beqz       $v0, .L8002A5E4
    /* 1ADD8 8002A5D8 40101100 */   sll       $v0, $s1, 1
    /* 1ADDC 8002A5DC 40801000 */  sll        $s0, $s0, 1
  .L8002A5E0:
    /* 1ADE0 8002A5E0 40101100 */  sll        $v0, $s1, 1
  .L8002A5E4:
    /* 1ADE4 8002A5E4 21105100 */  addu       $v0, $v0, $s1
    /* 1ADE8 8002A5E8 80100200 */  sll        $v0, $v0, 2
    /* 1ADEC 8002A5EC 21105100 */  addu       $v0, $v0, $s1
    /* 1ADF0 8002A5F0 40100200 */  sll        $v0, $v0, 1
    /* 1ADF4 8002A5F4 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1ADF8 8002A5F8 21082200 */  addu       $at, $at, $v0
    /* 1ADFC 8002A5FC BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 1AE00 8002A600 00000000 */  nop
    /* 1AE04 8002A604 80100300 */  sll        $v0, $v1, 2
    /* 1AE08 8002A608 21104300 */  addu       $v0, $v0, $v1
    /* 1AE0C 8002A60C 80100200 */  sll        $v0, $v0, 2
    /* 1AE10 8002A610 1180013C */  lui        $at, %hi(D_8010D285)
    /* 1AE14 8002A614 21082200 */  addu       $at, $at, $v0
    /* 1AE18 8002A618 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* 1AE1C 8002A61C 02000224 */  addiu      $v0, $zero, 0x2
    /* 1AE20 8002A620 1F006214 */  bne        $v1, $v0, .L8002A6A0
    /* 1AE24 8002A624 00000000 */   nop
    /* 1AE28 8002A628 FC00848F */  lw         $a0, %gp_rel(D_801585D4)($gp)
    /* 1AE2C 8002A62C 00000000 */  nop
    /* 1AE30 8002A630 1B008004 */  bltz       $a0, .L8002A6A0
    /* 1AE34 8002A634 00000000 */   nop
    /* 1AE38 8002A638 16005E12 */  beq        $s2, $fp, .L8002A694
    /* 1AE3C 8002A63C 80101400 */   sll       $v0, $s4, 2
    /* 1AE40 8002A640 21105200 */  addu       $v0, $v0, $s2
    /* 1AE44 8002A644 40100200 */  sll        $v0, $v0, 1
    /* 1AE48 8002A648 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1AE4C 8002A64C 21082200 */  addu       $at, $at, $v0
    /* 1AE50 8002A650 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 1AE54 8002A654 00000000 */  nop
    /* 1AE58 8002A658 80100300 */  sll        $v0, $v1, 2
    /* 1AE5C 8002A65C 21104300 */  addu       $v0, $v0, $v1
    /* 1AE60 8002A660 80100200 */  sll        $v0, $v0, 2
    /* 1AE64 8002A664 1180013C */  lui        $at, %hi(D_8010D285)
    /* 1AE68 8002A668 21082200 */  addu       $at, $at, $v0
    /* 1AE6C 8002A66C 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* 1AE70 8002A670 01000224 */  addiu      $v0, $zero, 0x1
    /* 1AE74 8002A674 08006214 */  bne        $v1, $v0, .L8002A698
    /* 1AE78 8002A678 C2171000 */   srl       $v0, $s0, 31
    /* 1AE7C 8002A67C C826020C */  jal        func_80089B20
    /* 1AE80 8002A680 1B000524 */   addiu     $a1, $zero, 0x1B
    /* 1AE84 8002A684 04004014 */  bnez       $v0, .L8002A698
    /* 1AE88 8002A688 C2171000 */   srl       $v0, $s0, 31
    /* 1AE8C 8002A68C A8A90008 */  j          .L8002A6A0
    /* 1AE90 8002A690 40801000 */   sll       $s0, $s0, 1
  .L8002A694:
    /* 1AE94 8002A694 C2171000 */  srl        $v0, $s0, 31
  .L8002A698:
    /* 1AE98 8002A698 21100202 */  addu       $v0, $s0, $v0
    /* 1AE9C 8002A69C 43800200 */  sra        $s0, $v0, 1
  .L8002A6A0:
    /* 1AEA0 8002A6A0 2A101702 */  slt        $v0, $s0, $s7
    /* 1AEA4 8002A6A4 03004014 */  bnez       $v0, .L8002A6B4
    /* 1AEA8 8002A6A8 00000000 */   nop
    /* 1AEAC 8002A6AC 21B80002 */  addu       $s7, $s0, $zero
    /* 1AEB0 8002A6B0 21982002 */  addu       $s3, $s1, $zero
  .L8002A6B4:
    /* 1AEB4 8002A6B4 BFED010C */  jal        func_8007B6FC
    /* 1AEB8 8002A6B8 21202002 */   addu      $a0, $s1, $zero
    /* 1AEBC 8002A6BC 21884000 */  addu       $s1, $v0, $zero
    /* 1AEC0 8002A6C0 1CFF2106 */  bgez       $s1, .L8002A334
    /* 1AEC4 8002A6C4 00000000 */   nop
  .L8002A6C8:
    /* 1AEC8 8002A6C8 21106002 */  addu       $v0, $s3, $zero
    /* 1AECC 8002A6CC 3400BF8F */  lw         $ra, 0x34($sp)
    /* 1AED0 8002A6D0 3000BE8F */  lw         $fp, 0x30($sp)
    /* 1AED4 8002A6D4 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 1AED8 8002A6D8 2800B68F */  lw         $s6, 0x28($sp)
    /* 1AEDC 8002A6DC 2400B58F */  lw         $s5, 0x24($sp)
    /* 1AEE0 8002A6E0 2000B48F */  lw         $s4, 0x20($sp)
    /* 1AEE4 8002A6E4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1AEE8 8002A6E8 1800B28F */  lw         $s2, 0x18($sp)
    /* 1AEEC 8002A6EC 1400B18F */  lw         $s1, 0x14($sp)
    /* 1AEF0 8002A6F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 1AEF4 8002A6F4 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 1AEF8 8002A6F8 0800E003 */  jr         $ra
    /* 1AEFC 8002A6FC 00000000 */   nop
endlabel func_8002A26C
