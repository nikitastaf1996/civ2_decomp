.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005A364, 0x2A8

glabel func_8005A364
    /* 4AB64 8005A364 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 4AB68 8005A368 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 4AB6C 8005A36C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 4AB70 8005A370 2400B3AF */  sw         $s3, 0x24($sp)
    /* 4AB74 8005A374 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4AB78 8005A378 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4AB7C 8005A37C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4AB80 8005A380 21908000 */  addu       $s2, $a0, $zero
    /* 4AB84 8005A384 2188A000 */  addu       $s1, $a1, $zero
    /* 4AB88 8005A388 40101200 */  sll        $v0, $s2, 1
    /* 4AB8C 8005A38C 21105200 */  addu       $v0, $v0, $s2
    /* 4AB90 8005A390 80100200 */  sll        $v0, $v0, 2
    /* 4AB94 8005A394 21105200 */  addu       $v0, $v0, $s2
    /* 4AB98 8005A398 40100200 */  sll        $v0, $v0, 1
    /* 4AB9C 8005A39C 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4ABA0 8005A3A0 21082200 */  addu       $at, $at, $v0
    /* 4ABA4 8005A3A4 B4D63484 */  lh         $s4, %lo(D_8010D6B4)($at)
    /* 4ABA8 8005A3A8 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4ABAC 8005A3AC 21082200 */  addu       $at, $at, $v0
    /* 4ABB0 8005A3B0 B6D63384 */  lh         $s3, %lo(D_8010D6B6)($at)
    /* 4ABB4 8005A3B4 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4ABB8 8005A3B8 21082200 */  addu       $at, $at, $v0
    /* 4ABBC 8005A3BC BBD63080 */  lb         $s0, %lo(D_8010D6BB)($at)
    /* 4ABC0 8005A3C0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4ABC4 8005A3C4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4ABC8 8005A3C8 21208002 */  addu       $a0, $s4, $zero
    /* 4ABCC 8005A3CC 21286002 */  addu       $a1, $s3, $zero
    /* 4ABD0 8005A3D0 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 4ABD4 8005A3D4 6026020C */  jal        func_80089980
    /* 4ABD8 8005A3D8 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 4ABDC 8005A3DC 21184000 */  addu       $v1, $v0, $zero
    /* 4ABE0 8005A3E0 16006004 */  bltz       $v1, .L8005A43C
    /* 4ABE4 8005A3E4 40100300 */   sll       $v0, $v1, 1
    /* 4ABE8 8005A3E8 21104300 */  addu       $v0, $v0, $v1
    /* 4ABEC 8005A3EC 80100200 */  sll        $v0, $v0, 2
    /* 4ABF0 8005A3F0 23104300 */  subu       $v0, $v0, $v1
    /* 4ABF4 8005A3F4 C0100200 */  sll        $v0, $v0, 3
    /* 4ABF8 8005A3F8 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 4ABFC 8005A3FC 21082200 */  addu       $at, $at, $v0
    /* 4AC00 8005A400 D83E2580 */  lb         $a1, %lo(D_80113ED8)($at)
    /* 4AC04 8005A404 00000000 */  nop
    /* 4AC08 8005A408 0D000512 */  beq        $s0, $a1, .L8005A440
    /* 4AC0C 8005A40C 21208002 */   addu      $a0, $s4, $zero
    /* 4AC10 8005A410 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4AC14 8005A414 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4AC18 8005A418 00000000 */  nop
    /* 4AC1C 8005A41C 07100202 */  srav       $v0, $v0, $s0
    /* 4AC20 8005A420 01004230 */  andi       $v0, $v0, 0x1
    /* 4AC24 8005A424 05004010 */  beqz       $v0, .L8005A43C
    /* 4AC28 8005A428 21200002 */   addu      $a0, $s0, $zero
    /* 4AC2C 8005A42C 3C99000C */  jal        func_800264F0
    /* 4AC30 8005A430 0E000624 */   addiu     $a2, $zero, 0xE
    /* 4AC34 8005A434 6C004014 */  bnez       $v0, .L8005A5E8
    /* 4AC38 8005A438 00000000 */   nop
  .L8005A43C:
    /* 4AC3C 8005A43C 21208002 */  addu       $a0, $s4, $zero
  .L8005A440:
    /* 4AC40 8005A440 BD60020C */  jal        func_800982F4
    /* 4AC44 8005A444 21286002 */   addu      $a1, $s3, $zero
    /* 4AC48 8005A448 21204000 */  addu       $a0, $v0, $zero
    /* 4AC4C 8005A44C 0700201A */  blez       $s1, .L8005A46C
    /* 4AC50 8005A450 01008524 */   addiu     $a1, $a0, 0x1
    /* 4AC54 8005A454 27181100 */  nor        $v1, $zero, $s1
    /* 4AC58 8005A458 01008290 */  lbu        $v0, 0x1($a0)
    /* 4AC5C 8005A45C 00000000 */  nop
    /* 4AC60 8005A460 24104300 */  and        $v0, $v0, $v1
    /* 4AC64 8005A464 47690108 */  j          .L8005A51C
    /* 4AC68 8005A468 010082A0 */   sb        $v0, 0x1($a0)
  .L8005A46C:
    /* 4AC6C 8005A46C 40101200 */  sll        $v0, $s2, 1
    /* 4AC70 8005A470 21105200 */  addu       $v0, $v0, $s2
    /* 4AC74 8005A474 80100200 */  sll        $v0, $v0, 2
    /* 4AC78 8005A478 21105200 */  addu       $v0, $v0, $s2
    /* 4AC7C 8005A47C 40100200 */  sll        $v0, $v0, 1
    /* 4AC80 8005A480 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4AC84 8005A484 21082200 */  addu       $at, $at, $v0
    /* 4AC88 8005A488 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4AC8C 8005A48C 09000224 */  addiu      $v0, $zero, 0x9
    /* 4AC90 8005A490 0A006214 */  bne        $v1, $v0, .L8005A4BC
    /* 4AC94 8005A494 00000000 */   nop
    /* 4AC98 8005A498 0000A390 */  lbu        $v1, 0x0($a1)
    /* 4AC9C 8005A49C 00000000 */  nop
    /* 4ACA0 8005A4A0 10006230 */  andi       $v0, $v1, 0x10
    /* 4ACA4 8005A4A4 06004010 */  beqz       $v0, .L8005A4C0
    /* 4ACA8 8005A4A8 20006230 */   andi      $v0, $v1, 0x20
    /* 4ACAC 8005A4AC 17004010 */  beqz       $v0, .L8005A50C
    /* 4ACB0 8005A4B0 DF006230 */   andi      $v0, $v1, 0xDF
    /* 4ACB4 8005A4B4 47690108 */  j          .L8005A51C
    /* 4ACB8 8005A4B8 0000A2A0 */   sb        $v0, 0x0($a1)
  .L8005A4BC:
    /* 4ACBC 8005A4BC 0000A390 */  lbu        $v1, 0x0($a1)
  .L8005A4C0:
    /* 4ACC0 8005A4C0 00000000 */  nop
    /* 4ACC4 8005A4C4 0C006230 */  andi       $v0, $v1, 0xC
    /* 4ACC8 8005A4C8 08004010 */  beqz       $v0, .L8005A4EC
    /* 4ACCC 8005A4CC 08006230 */   andi      $v0, $v1, 0x8
    /* 4ACD0 8005A4D0 03004010 */  beqz       $v0, .L8005A4E0
    /* 4ACD4 8005A4D4 00000000 */   nop
    /* 4ACD8 8005A4D8 46690108 */  j          .L8005A518
    /* 4ACDC 8005A4DC F7006230 */   andi      $v0, $v1, 0xF7
  .L8005A4E0:
    /* 4ACE0 8005A4E0 0000A290 */  lbu        $v0, 0x0($a1)
    /* 4ACE4 8005A4E4 46690108 */  j          .L8005A518
    /* 4ACE8 8005A4E8 FB004230 */   andi      $v0, $v0, 0xFB
  .L8005A4EC:
    /* 4ACEC 8005A4EC 0000A390 */  lbu        $v1, 0x0($a1)
    /* 4ACF0 8005A4F0 00000000 */  nop
    /* 4ACF4 8005A4F4 40006230 */  andi       $v0, $v1, 0x40
    /* 4ACF8 8005A4F8 07004014 */  bnez       $v0, .L8005A518
    /* 4ACFC 8005A4FC BD006230 */   andi      $v0, $v1, 0xBD
    /* 4AD00 8005A500 20006230 */  andi       $v0, $v1, 0x20
    /* 4AD04 8005A504 04004014 */  bnez       $v0, .L8005A518
    /* 4AD08 8005A508 DF006230 */   andi      $v0, $v1, 0xDF
  .L8005A50C:
    /* 4AD0C 8005A50C 0000A290 */  lbu        $v0, 0x0($a1)
    /* 4AD10 8005A510 00000000 */  nop
    /* 4AD14 8005A514 EF004230 */  andi       $v0, $v0, 0xEF
  .L8005A518:
    /* 4AD18 8005A518 0000A2A0 */  sb         $v0, 0x0($a1)
  .L8005A51C:
    /* 4AD1C 8005A51C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4AD20 8005A520 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4AD24 8005A524 21208002 */  addu       $a0, $s4, $zero
    /* 4AD28 8005A528 21286002 */  addu       $a1, $s3, $zero
    /* 4AD2C 8005A52C FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 4AD30 8005A530 6026020C */  jal        func_80089980
    /* 4AD34 8005A534 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 4AD38 8005A538 21184000 */  addu       $v1, $v0, $zero
    /* 4AD3C 8005A53C 20006004 */  bltz       $v1, .L8005A5C0
    /* 4AD40 8005A540 40801200 */   sll       $s0, $s2, 1
    /* 4AD44 8005A544 21801202 */  addu       $s0, $s0, $s2
    /* 4AD48 8005A548 80801000 */  sll        $s0, $s0, 2
    /* 4AD4C 8005A54C 21801202 */  addu       $s0, $s0, $s2
    /* 4AD50 8005A550 40801000 */  sll        $s0, $s0, 1
    /* 4AD54 8005A554 40880300 */  sll        $s1, $v1, 1
    /* 4AD58 8005A558 21882302 */  addu       $s1, $s1, $v1
    /* 4AD5C 8005A55C 80881100 */  sll        $s1, $s1, 2
    /* 4AD60 8005A560 23882302 */  subu       $s1, $s1, $v1
    /* 4AD64 8005A564 C0881100 */  sll        $s1, $s1, 3
    /* 4AD68 8005A568 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4AD6C 8005A56C 21083000 */  addu       $at, $at, $s0
    /* 4AD70 8005A570 BBD62480 */  lb         $a0, %lo(D_8010D6BB)($at)
    /* 4AD74 8005A574 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 4AD78 8005A578 21083100 */  addu       $at, $at, $s1
    /* 4AD7C 8005A57C D83E2580 */  lb         $a1, %lo(D_80113ED8)($at)
    /* 4AD80 8005A580 A275030C */  jal        func_800DD688
    /* 4AD84 8005A584 00200624 */   addiu     $a2, $zero, 0x2000
    /* 4AD88 8005A588 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 4AD8C 8005A58C 21083100 */  addu       $at, $at, $s1
    /* 4AD90 8005A590 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* 4AD94 8005A594 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4AD98 8005A598 21083000 */  addu       $at, $at, $s0
    /* 4AD9C 8005A59C BBD62480 */  lb         $a0, %lo(D_8010D6BB)($at)
    /* 4ADA0 8005A5A0 00000000 */  nop
    /* 4ADA4 8005A5A4 06004410 */  beq        $v0, $a0, .L8005A5C0
    /* 4ADA8 8005A5A8 04000224 */   addiu     $v0, $zero, 0x4
    /* 4ADAC 8005A5AC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4ADB0 8005A5B0 21288002 */  addu       $a1, $s4, $zero
    /* 4ADB4 8005A5B4 21306002 */  addu       $a2, $s3, $zero
    /* 4ADB8 8005A5B8 E5C2020C */  jal        func_800B0B94
    /* 4ADBC 8005A5BC 21380000 */   addu      $a3, $zero, $zero
  .L8005A5C0:
    /* 4ADC0 8005A5C0 01000224 */  addiu      $v0, $zero, 0x1
    /* 4ADC4 8005A5C4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4ADC8 8005A5C8 21208002 */  addu       $a0, $s4, $zero
    /* 4ADCC 8005A5CC 21286002 */  addu       $a1, $s3, $zero
    /* 4ADD0 8005A5D0 1280073C */  lui        $a3, %hi(D_8011ACB4)
    /* 4ADD4 8005A5D4 B4ACE78C */  lw         $a3, %lo(D_8011ACB4)($a3)
    /* 4ADD8 8005A5D8 0B6F020C */  jal        func_8009BC2C
    /* 4ADDC 8005A5DC 01000624 */   addiu     $a2, $zero, 0x1
    /* 4ADE0 8005A5E0 BEFA010C */  jal        func_8007EAF8
    /* 4ADE4 8005A5E4 21204002 */   addu      $a0, $s2, $zero
  .L8005A5E8:
    /* 4ADE8 8005A5E8 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 4ADEC 8005A5EC 2800B48F */  lw         $s4, 0x28($sp)
    /* 4ADF0 8005A5F0 2400B38F */  lw         $s3, 0x24($sp)
    /* 4ADF4 8005A5F4 2000B28F */  lw         $s2, 0x20($sp)
    /* 4ADF8 8005A5F8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4ADFC 8005A5FC 1800B08F */  lw         $s0, 0x18($sp)
    /* 4AE00 8005A600 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 4AE04 8005A604 0800E003 */  jr         $ra
    /* 4AE08 8005A608 00000000 */   nop
endlabel func_8005A364
