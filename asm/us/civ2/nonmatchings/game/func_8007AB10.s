.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007AB10, 0x2F8

glabel func_8007AB10
    /* 6B310 8007AB10 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 6B314 8007AB14 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* 6B318 8007AB18 4800B4AF */  sw         $s4, 0x48($sp)
    /* 6B31C 8007AB1C 4400B3AF */  sw         $s3, 0x44($sp)
    /* 6B320 8007AB20 4000B2AF */  sw         $s2, 0x40($sp)
    /* 6B324 8007AB24 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 6B328 8007AB28 3800B0AF */  sw         $s0, 0x38($sp)
    /* 6B32C 8007AB2C 21908000 */  addu       $s2, $a0, $zero
    /* 6B330 8007AB30 03004016 */  bnez       $s2, .L8007AB40
    /* 6B334 8007AB34 21A0A000 */   addu      $s4, $a1, $zero
  .L8007AB38:
    /* 6B338 8007AB38 79EB0108 */  j          .L8007ADE4
    /* 6B33C 8007AB3C 21100000 */   addu      $v0, $zero, $zero
  .L8007AB40:
    /* 6B340 8007AB40 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 6B344 8007AB44 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 6B348 8007AB48 00000000 */  nop
    /* 6B34C 8007AB4C 11004018 */  blez       $v0, .L8007AB94
    /* 6B350 8007AB50 21180000 */   addu      $v1, $zero, $zero
    /* 6B354 8007AB54 1280043C */  lui        $a0, %hi(D_8011A282)
    /* 6B358 8007AB58 82A28484 */  lh         $a0, %lo(D_8011A282)($a0)
    /* 6B35C 8007AB5C 40100300 */  sll        $v0, $v1, 1
  .L8007AB60:
    /* 6B360 8007AB60 21104300 */  addu       $v0, $v0, $v1
    /* 6B364 8007AB64 80100200 */  sll        $v0, $v0, 2
    /* 6B368 8007AB68 23104300 */  subu       $v0, $v0, $v1
    /* 6B36C 8007AB6C C0100200 */  sll        $v0, $v0, 3
    /* 6B370 8007AB70 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 6B374 8007AB74 21082200 */  addu       $at, $at, $v0
    /* 6B378 8007AB78 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* 6B37C 8007AB7C 00000000 */  nop
    /* 6B380 8007AB80 EDFF5210 */  beq        $v0, $s2, .L8007AB38
    /* 6B384 8007AB84 01006324 */   addiu     $v1, $v1, 0x1
    /* 6B388 8007AB88 2A106400 */  slt        $v0, $v1, $a0
    /* 6B38C 8007AB8C F4FF4014 */  bnez       $v0, .L8007AB60
    /* 6B390 8007AB90 40100300 */   sll       $v0, $v1, 1
  .L8007AB94:
    /* 6B394 8007AB94 8A54020C */  jal        func_80095228
    /* 6B398 8007AB98 21204002 */   addu      $a0, $s2, $zero
    /* 6B39C 8007AB9C 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 6B3A0 8007ABA0 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 6B3A4 8007ABA4 A587030C */  jal        func_800E1E94
    /* 6B3A8 8007ABA8 21284000 */   addu      $a1, $v0, $zero
    /* 6B3AC 8007ABAC 5D54020C */  jal        func_80095174
    /* 6B3B0 8007ABB0 21208002 */   addu      $a0, $s4, $zero
    /* 6B3B4 8007ABB4 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 6B3B8 8007ABB8 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 6B3BC 8007ABBC A587030C */  jal        func_800E1E94
    /* 6B3C0 8007ABC0 21284000 */   addu      $a1, $v0, $zero
    /* 6B3C4 8007ABC4 02000424 */  addiu      $a0, $zero, 0x2
    /* 6B3C8 8007ABC8 689E020C */  jal        func_800A79A0
    /* 6B3CC 8007ABCC 01000524 */   addiu     $a1, $zero, 0x1
    /* 6B3D0 8007ABD0 C0381200 */  sll        $a3, $s2, 3
    /* 6B3D4 8007ABD4 2138F200 */  addu       $a3, $a3, $s2
    /* 6B3D8 8007ABD8 80380700 */  sll        $a3, $a3, 2
    /* 6B3DC 8007ABDC 2138F200 */  addu       $a3, $a3, $s2
    /* 6B3E0 8007ABE0 80380700 */  sll        $a3, $a3, 2
    /* 6B3E4 8007ABE4 1380023C */  lui        $v0, %hi(D_80135414)
    /* 6B3E8 8007ABE8 14544224 */  addiu      $v0, $v0, %lo(D_80135414)
    /* 6B3EC 8007ABEC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 6B3F0 8007ABF0 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 6B3F4 8007ABF4 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 6B3F8 8007ABF8 0E140524 */  addiu      $a1, $zero, 0x140E
    /* 6B3FC 8007ABFC 21300000 */  addu       $a2, $zero, $zero
    /* 6B400 8007AC00 18E3020C */  jal        func_800B8C60
    /* 6B404 8007AC04 2138E200 */   addu      $a3, $a3, $v0
    /* 6B408 8007AC08 1280133C */  lui        $s3, %hi(D_8011A3F4)
    /* 6B40C 8007AC0C F4A37326 */  addiu      $s3, $s3, %lo(D_8011A3F4)
    /* 6B410 8007AC10 00007186 */  lh         $s1, 0x0($s3)
    /* 6B414 8007AC14 00000000 */  nop
    /* 6B418 8007AC18 0C00222A */  slti       $v0, $s1, 0xC
    /* 6B41C 8007AC1C 22004010 */  beqz       $v0, .L8007ACA8
    /* 6B420 8007AC20 21182002 */   addu      $v1, $s1, $zero
    /* 6B424 8007AC24 01006224 */  addiu      $v0, $v1, 0x1
    /* 6B428 8007AC28 000062A6 */  sh         $v0, 0x0($s3)
    /* 6B42C 8007AC2C 02006226 */  addiu      $v0, $s3, 0x2
    /* 6B430 8007AC30 40801100 */  sll        $s0, $s1, 1
    /* 6B434 8007AC34 21100202 */  addu       $v0, $s0, $v0
    /* 6B438 8007AC38 1280033C */  lui        $v1, %hi(D_8011A262)
    /* 6B43C 8007AC3C 62A26394 */  lhu        $v1, %lo(D_8011A262)($v1)
    /* 6B440 8007AC40 00000000 */  nop
    /* 6B444 8007AC44 000043A4 */  sh         $v1, 0x0($v0)
    /* 6B448 8007AC48 1280013C */  lui        $at, %hi(D_8011A40E)
    /* 6B44C 8007AC4C 21083100 */  addu       $at, $at, $s1
    /* 6B450 8007AC50 0EA434A0 */  sb         $s4, %lo(D_8011A40E)($at)
    /* 6B454 8007AC54 40101200 */  sll        $v0, $s2, 1
    /* 6B458 8007AC58 21105200 */  addu       $v0, $v0, $s2
    /* 6B45C 8007AC5C 80100200 */  sll        $v0, $v0, 2
    /* 6B460 8007AC60 23105200 */  subu       $v0, $v0, $s2
    /* 6B464 8007AC64 00110200 */  sll        $v0, $v0, 4
    /* 6B468 8007AC68 23105200 */  subu       $v0, $v0, $s2
    /* 6B46C 8007AC6C C0100200 */  sll        $v0, $v0, 3
    /* 6B470 8007AC70 1180013C */  lui        $at, %hi(D_80117A66)
    /* 6B474 8007AC74 21082200 */  addu       $at, $at, $v0
    /* 6B478 8007AC78 667A2290 */  lbu        $v0, %lo(D_80117A66)($at)
    /* 6B47C 8007AC7C 1280013C */  lui        $at, %hi(D_8011A41A)
    /* 6B480 8007AC80 21083100 */  addu       $at, $at, $s1
    /* 6B484 8007AC84 1AA422A0 */  sb         $v0, %lo(D_8011A41A)($at)
    /* 6B488 8007AC88 5D54020C */  jal        func_80095174
    /* 6B48C 8007AC8C 21204002 */   addu      $a0, $s2, $zero
    /* 6B490 8007AC90 21801102 */  addu       $s0, $s0, $s1
    /* 6B494 8007AC94 C0801000 */  sll        $s0, $s0, 3
    /* 6B498 8007AC98 32006426 */  addiu      $a0, $s3, 0x32
    /* 6B49C 8007AC9C 21200402 */  addu       $a0, $s0, $a0
    /* 6B4A0 8007ACA0 A587030C */  jal        func_800E1E94
    /* 6B4A4 8007ACA4 21284000 */   addu      $a1, $v0, $zero
  .L8007ACA8:
    /* 6B4A8 8007ACA8 81DF010C */  jal        func_80077E04
    /* 6B4AC 8007ACAC 21204002 */   addu      $a0, $s2, $zero
    /* 6B4B0 8007ACB0 1280103C */  lui        $s0, %hi(D_8011A280)
    /* 6B4B4 8007ACB4 80A21086 */  lh         $s0, %lo(D_8011A280)($s0)
  .L8007ACB8:
    /* 6B4B8 8007ACB8 00000000 */  nop
    /* 6B4BC 8007ACBC FFFF1026 */  addiu      $s0, $s0, -0x1
  .L8007ACC0:
    /* 6B4C0 8007ACC0 0F000006 */  bltz       $s0, .L8007AD00
    /* 6B4C4 8007ACC4 40101000 */   sll       $v0, $s0, 1
    /* 6B4C8 8007ACC8 21105000 */  addu       $v0, $v0, $s0
    /* 6B4CC 8007ACCC 80100200 */  sll        $v0, $v0, 2
    /* 6B4D0 8007ACD0 21105000 */  addu       $v0, $v0, $s0
    /* 6B4D4 8007ACD4 40100200 */  sll        $v0, $v0, 1
    /* 6B4D8 8007ACD8 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 6B4DC 8007ACDC 21082200 */  addu       $at, $at, $v0
    /* 6B4E0 8007ACE0 BBD62280 */  lb         $v0, %lo(D_8010D6BB)($at)
    /* 6B4E4 8007ACE4 00000000 */  nop
    /* 6B4E8 8007ACE8 F3FF5214 */  bne        $v0, $s2, .L8007ACB8
    /* 6B4EC 8007ACEC 00000000 */   nop
    /* 6B4F0 8007ACF0 04F2010C */  jal        func_8007C810
    /* 6B4F4 8007ACF4 21200002 */   addu      $a0, $s0, $zero
    /* 6B4F8 8007ACF8 30EB0108 */  j          .L8007ACC0
    /* 6B4FC 8007ACFC FFFF1026 */   addiu     $s0, $s0, -0x1
  .L8007AD00:
    /* 6B500 8007AD00 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 6B504 8007AD04 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 6B508 8007AD08 00000000 */  nop
    /* 6B50C 8007AD0C 07104202 */  srav       $v0, $v0, $s2
    /* 6B510 8007AD10 01004230 */  andi       $v0, $v0, 0x1
    /* 6B514 8007AD14 0B004010 */  beqz       $v0, .L8007AD44
    /* 6B518 8007AD18 01000224 */   addiu     $v0, $zero, 0x1
    /* 6B51C 8007AD1C 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 6B520 8007AD20 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 6B524 8007AD24 00000000 */  nop
    /* 6B528 8007AD28 2E004216 */  bne        $s2, $v0, .L8007ADE4
    /* 6B52C 8007AD2C 21100000 */   addu      $v0, $zero, $zero
    /* 6B530 8007AD30 04000224 */  addiu      $v0, $zero, 0x4
    /* 6B534 8007AD34 1680013C */  lui        $at, %hi(D_80158894)
    /* 6B538 8007AD38 948822AC */  sw         $v0, %lo(D_80158894)($at)
    /* 6B53C 8007AD3C 79EB0108 */  j          .L8007ADE4
    /* 6B540 8007AD40 21100000 */   addu      $v0, $zero, $zero
  .L8007AD44:
    /* 6B544 8007AD44 04104202 */  sllv       $v0, $v0, $s2
    /* 6B548 8007AD48 27980200 */  nor        $s3, $zero, $v0
    /* 6B54C 8007AD4C 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6B550 8007AD50 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6B554 8007AD54 00000000 */  nop
    /* 6B558 8007AD58 1B004018 */  blez       $v0, .L8007ADC8
    /* 6B55C 8007AD5C 21880000 */   addu      $s1, $zero, $zero
  .L8007AD60:
    /* 6B560 8007AD60 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6B564 8007AD64 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6B568 8007AD68 00000000 */  nop
    /* 6B56C 8007AD6C 0F004018 */  blez       $v0, .L8007ADAC
    /* 6B570 8007AD70 21800000 */   addu      $s0, $zero, $zero
    /* 6B574 8007AD74 21202002 */  addu       $a0, $s1, $zero
  .L8007AD78:
    /* 6B578 8007AD78 BD60020C */  jal        func_800982F4
    /* 6B57C 8007AD7C 21280002 */   addu      $a1, $s0, $zero
    /* 6B580 8007AD80 04004390 */  lbu        $v1, 0x4($v0)
    /* 6B584 8007AD84 00000000 */  nop
    /* 6B588 8007AD88 24186302 */  and        $v1, $s3, $v1
    /* 6B58C 8007AD8C 040043A0 */  sb         $v1, 0x4($v0)
    /* 6B590 8007AD90 01001026 */  addiu      $s0, $s0, 0x1
    /* 6B594 8007AD94 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6B598 8007AD98 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6B59C 8007AD9C 00000000 */  nop
    /* 6B5A0 8007ADA0 2A100202 */  slt        $v0, $s0, $v0
    /* 6B5A4 8007ADA4 F4FF4014 */  bnez       $v0, .L8007AD78
    /* 6B5A8 8007ADA8 21202002 */   addu      $a0, $s1, $zero
  .L8007ADAC:
    /* 6B5AC 8007ADAC 01003126 */  addiu      $s1, $s1, 0x1
    /* 6B5B0 8007ADB0 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6B5B4 8007ADB4 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6B5B8 8007ADB8 00000000 */  nop
    /* 6B5BC 8007ADBC 2A102202 */  slt        $v0, $s1, $v0
    /* 6B5C0 8007ADC0 E7FF4014 */  bnez       $v0, .L8007AD60
    /* 6B5C4 8007ADC4 00000000 */   nop
  .L8007ADC8:
    /* 6B5C8 8007ADC8 2DE1010C */  jal        func_800784B4
    /* 6B5CC 8007ADCC 21204002 */   addu      $a0, $s2, $zero
    /* 6B5D0 8007ADD0 1280043C */  lui        $a0, %hi(D_8011ACB4)
    /* 6B5D4 8007ADD4 B4AC848C */  lw         $a0, %lo(D_8011ACB4)($a0)
    /* 6B5D8 8007ADD8 986F020C */  jal        func_8009BE60
    /* 6B5DC 8007ADDC 01000524 */   addiu     $a1, $zero, 0x1
    /* 6B5E0 8007ADE0 01000224 */  addiu      $v0, $zero, 0x1
  .L8007ADE4:
    /* 6B5E4 8007ADE4 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* 6B5E8 8007ADE8 4800B48F */  lw         $s4, 0x48($sp)
    /* 6B5EC 8007ADEC 4400B38F */  lw         $s3, 0x44($sp)
    /* 6B5F0 8007ADF0 4000B28F */  lw         $s2, 0x40($sp)
    /* 6B5F4 8007ADF4 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 6B5F8 8007ADF8 3800B08F */  lw         $s0, 0x38($sp)
    /* 6B5FC 8007ADFC 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 6B600 8007AE00 0800E003 */  jr         $ra
    /* 6B604 8007AE04 00000000 */   nop
endlabel func_8007AB10
