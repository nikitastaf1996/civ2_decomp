.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A354, 0x2F4

glabel func_8001A354
    /* AB54 8001A354 21280000 */  addu       $a1, $zero, $zero
    /* AB58 8001A358 FF008330 */  andi       $v1, $a0, 0xFF
    /* AB5C 8001A35C 81000224 */  addiu      $v0, $zero, 0x81
    /* AB60 8001A360 23384300 */  subu       $a3, $v0, $v1
    /* AB64 8001A364 80000624 */  addiu      $a2, $zero, 0x80
    /* AB68 8001A368 00140500 */  sll        $v0, $a1, 16
  .L8001A36C:
    /* AB6C 8001A36C 03140200 */  sra        $v0, $v0, 16
    /* AB70 8001A370 C0180200 */  sll        $v1, $v0, 3
    /* AB74 8001A374 21186200 */  addu       $v1, $v1, $v0
    /* AB78 8001A378 80180300 */  sll        $v1, $v1, 2
    /* AB7C 8001A37C 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* AB80 8001A380 21082300 */  addu       $at, $at, $v1
    /* AB84 8001A384 F4A02290 */  lbu        $v0, %lo(D_8012A0F4)($at)
    /* AB88 8001A388 00000000 */  nop
    /* AB8C 8001A38C 2A104700 */  slt        $v0, $v0, $a3
    /* AB90 8001A390 1B004010 */  beqz       $v0, .L8001A400
    /* AB94 8001A394 00000000 */   nop
    /* AB98 8001A398 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* AB9C 8001A39C 21082300 */  addu       $at, $at, $v1
    /* ABA0 8001A3A0 F4A02290 */  lbu        $v0, %lo(D_8012A0F4)($at)
    /* ABA4 8001A3A4 00000000 */  nop
    /* ABA8 8001A3A8 21108200 */  addu       $v0, $a0, $v0
    /* ABAC 8001A3AC 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* ABB0 8001A3B0 21082300 */  addu       $at, $at, $v1
    /* ABB4 8001A3B4 F4A022A0 */  sb         $v0, %lo(D_8012A0F4)($at)
    /* ABB8 8001A3B8 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* ABBC 8001A3BC 21082300 */  addu       $at, $at, $v1
    /* ABC0 8001A3C0 F5A02290 */  lbu        $v0, %lo(D_8012A0F5)($at)
    /* ABC4 8001A3C4 00000000 */  nop
    /* ABC8 8001A3C8 21108200 */  addu       $v0, $a0, $v0
    /* ABCC 8001A3CC 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* ABD0 8001A3D0 21082300 */  addu       $at, $at, $v1
    /* ABD4 8001A3D4 F5A022A0 */  sb         $v0, %lo(D_8012A0F5)($at)
    /* ABD8 8001A3D8 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* ABDC 8001A3DC 21082300 */  addu       $at, $at, $v1
    /* ABE0 8001A3E0 F6A02290 */  lbu        $v0, %lo(D_8012A0F6)($at)
    /* ABE4 8001A3E4 00000000 */  nop
    /* ABE8 8001A3E8 21108200 */  addu       $v0, $a0, $v0
    /* ABEC 8001A3EC 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* ABF0 8001A3F0 21082300 */  addu       $at, $at, $v1
    /* ABF4 8001A3F4 F6A022A0 */  sb         $v0, %lo(D_8012A0F6)($at)
    /* ABF8 8001A3F8 0F690008 */  j          .L8001A43C
    /* ABFC 8001A3FC 0100A224 */   addiu     $v0, $a1, 0x1
  .L8001A400:
    /* AC00 8001A400 001C0500 */  sll        $v1, $a1, 16
    /* AC04 8001A404 031C0300 */  sra        $v1, $v1, 16
    /* AC08 8001A408 C0100300 */  sll        $v0, $v1, 3
    /* AC0C 8001A40C 21104300 */  addu       $v0, $v0, $v1
    /* AC10 8001A410 80100200 */  sll        $v0, $v0, 2
    /* AC14 8001A414 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* AC18 8001A418 21082200 */  addu       $at, $at, $v0
    /* AC1C 8001A41C F4A026A0 */  sb         $a2, %lo(D_8012A0F4)($at)
    /* AC20 8001A420 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* AC24 8001A424 21082200 */  addu       $at, $at, $v0
    /* AC28 8001A428 F5A026A0 */  sb         $a2, %lo(D_8012A0F5)($at)
    /* AC2C 8001A42C 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* AC30 8001A430 21082200 */  addu       $at, $at, $v0
    /* AC34 8001A434 F6A026A0 */  sb         $a2, %lo(D_8012A0F6)($at)
    /* AC38 8001A438 0100A224 */  addiu      $v0, $a1, 0x1
  .L8001A43C:
    /* AC3C 8001A43C 21284000 */  addu       $a1, $v0, $zero
    /* AC40 8001A440 00140200 */  sll        $v0, $v0, 16
    /* AC44 8001A444 03140200 */  sra        $v0, $v0, 16
    /* AC48 8001A448 00074228 */  slti       $v0, $v0, 0x700
    /* AC4C 8001A44C C7FF4014 */  bnez       $v0, .L8001A36C
    /* AC50 8001A450 00140500 */   sll       $v0, $a1, 16
    /* AC54 8001A454 21280000 */  addu       $a1, $zero, $zero
    /* AC58 8001A458 FF008330 */  andi       $v1, $a0, 0xFF
    /* AC5C 8001A45C 81000224 */  addiu      $v0, $zero, 0x81
    /* AC60 8001A460 23384300 */  subu       $a3, $v0, $v1
    /* AC64 8001A464 80000624 */  addiu      $a2, $zero, 0x80
    /* AC68 8001A468 00140500 */  sll        $v0, $a1, 16
  .L8001A46C:
    /* AC6C 8001A46C 03140200 */  sra        $v0, $v0, 16
    /* AC70 8001A470 C0180200 */  sll        $v1, $v0, 3
    /* AC74 8001A474 21186200 */  addu       $v1, $v1, $v0
    /* AC78 8001A478 80180300 */  sll        $v1, $v1, 2
    /* AC7C 8001A47C 1780013C */  lui        $at, %hi(D_80172E98)
    /* AC80 8001A480 21082300 */  addu       $at, $at, $v1
    /* AC84 8001A484 982E2290 */  lbu        $v0, %lo(D_80172E98)($at)
    /* AC88 8001A488 00000000 */  nop
    /* AC8C 8001A48C 2A104700 */  slt        $v0, $v0, $a3
    /* AC90 8001A490 1B004010 */  beqz       $v0, .L8001A500
    /* AC94 8001A494 00000000 */   nop
    /* AC98 8001A498 1780013C */  lui        $at, %hi(D_80172E98)
    /* AC9C 8001A49C 21082300 */  addu       $at, $at, $v1
    /* ACA0 8001A4A0 982E2290 */  lbu        $v0, %lo(D_80172E98)($at)
    /* ACA4 8001A4A4 00000000 */  nop
    /* ACA8 8001A4A8 21108200 */  addu       $v0, $a0, $v0
    /* ACAC 8001A4AC 1780013C */  lui        $at, %hi(D_80172E98)
    /* ACB0 8001A4B0 21082300 */  addu       $at, $at, $v1
    /* ACB4 8001A4B4 982E22A0 */  sb         $v0, %lo(D_80172E98)($at)
    /* ACB8 8001A4B8 1780013C */  lui        $at, %hi(D_80172E99)
    /* ACBC 8001A4BC 21082300 */  addu       $at, $at, $v1
    /* ACC0 8001A4C0 992E2290 */  lbu        $v0, %lo(D_80172E99)($at)
    /* ACC4 8001A4C4 00000000 */  nop
    /* ACC8 8001A4C8 21108200 */  addu       $v0, $a0, $v0
    /* ACCC 8001A4CC 1780013C */  lui        $at, %hi(D_80172E99)
    /* ACD0 8001A4D0 21082300 */  addu       $at, $at, $v1
    /* ACD4 8001A4D4 992E22A0 */  sb         $v0, %lo(D_80172E99)($at)
    /* ACD8 8001A4D8 1780013C */  lui        $at, %hi(D_80172E9A)
    /* ACDC 8001A4DC 21082300 */  addu       $at, $at, $v1
    /* ACE0 8001A4E0 9A2E2290 */  lbu        $v0, %lo(D_80172E9A)($at)
    /* ACE4 8001A4E4 00000000 */  nop
    /* ACE8 8001A4E8 21108200 */  addu       $v0, $a0, $v0
    /* ACEC 8001A4EC 1780013C */  lui        $at, %hi(D_80172E9A)
    /* ACF0 8001A4F0 21082300 */  addu       $at, $at, $v1
    /* ACF4 8001A4F4 9A2E22A0 */  sb         $v0, %lo(D_80172E9A)($at)
    /* ACF8 8001A4F8 4F690008 */  j          .L8001A53C
    /* ACFC 8001A4FC 0100A224 */   addiu     $v0, $a1, 0x1
  .L8001A500:
    /* AD00 8001A500 001C0500 */  sll        $v1, $a1, 16
    /* AD04 8001A504 031C0300 */  sra        $v1, $v1, 16
    /* AD08 8001A508 C0100300 */  sll        $v0, $v1, 3
    /* AD0C 8001A50C 21104300 */  addu       $v0, $v0, $v1
    /* AD10 8001A510 80100200 */  sll        $v0, $v0, 2
    /* AD14 8001A514 1780013C */  lui        $at, %hi(D_80172E98)
    /* AD18 8001A518 21082200 */  addu       $at, $at, $v0
    /* AD1C 8001A51C 982E26A0 */  sb         $a2, %lo(D_80172E98)($at)
    /* AD20 8001A520 1780013C */  lui        $at, %hi(D_80172E99)
    /* AD24 8001A524 21082200 */  addu       $at, $at, $v0
    /* AD28 8001A528 992E26A0 */  sb         $a2, %lo(D_80172E99)($at)
    /* AD2C 8001A52C 1780013C */  lui        $at, %hi(D_80172E9A)
    /* AD30 8001A530 21082200 */  addu       $at, $at, $v0
    /* AD34 8001A534 9A2E26A0 */  sb         $a2, %lo(D_80172E9A)($at)
    /* AD38 8001A538 0100A224 */  addiu      $v0, $a1, 0x1
  .L8001A53C:
    /* AD3C 8001A53C 21284000 */  addu       $a1, $v0, $zero
    /* AD40 8001A540 00140200 */  sll        $v0, $v0, 16
    /* AD44 8001A544 03140200 */  sra        $v0, $v0, 16
    /* AD48 8001A548 04004228 */  slti       $v0, $v0, 0x4
    /* AD4C 8001A54C C7FF4014 */  bnez       $v0, .L8001A46C
    /* AD50 8001A550 00140500 */   sll       $v0, $a1, 16
    /* AD54 8001A554 21280000 */  addu       $a1, $zero, $zero
    /* AD58 8001A558 80010624 */  addiu      $a2, $zero, 0x180
    /* AD5C 8001A55C 001C0500 */  sll        $v1, $a1, 16
  .L8001A560:
    /* AD60 8001A560 031C0300 */  sra        $v1, $v1, 16
    /* AD64 8001A564 C0100300 */  sll        $v0, $v1, 3
    /* AD68 8001A568 21104300 */  addu       $v0, $v0, $v1
    /* AD6C 8001A56C 80100200 */  sll        $v0, $v0, 2
    /* AD70 8001A570 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* AD74 8001A574 21082200 */  addu       $at, $at, $v0
    /* AD78 8001A578 F4A02490 */  lbu        $a0, %lo(D_8012A0F4)($at)
    /* AD7C 8001A57C 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* AD80 8001A580 21082200 */  addu       $at, $at, $v0
    /* AD84 8001A584 F5A02390 */  lbu        $v1, %lo(D_8012A0F5)($at)
    /* AD88 8001A588 00000000 */  nop
    /* AD8C 8001A58C 21208300 */  addu       $a0, $a0, $v1
    /* AD90 8001A590 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* AD94 8001A594 21082200 */  addu       $at, $at, $v0
    /* AD98 8001A598 F6A02290 */  lbu        $v0, %lo(D_8012A0F6)($at)
    /* AD9C 8001A59C 00000000 */  nop
    /* ADA0 8001A5A0 21208200 */  addu       $a0, $a0, $v0
    /* ADA4 8001A5A4 26008614 */  bne        $a0, $a2, .L8001A640
    /* ADA8 8001A5A8 21100000 */   addu      $v0, $zero, $zero
    /* ADAC 8001A5AC 0100A224 */  addiu      $v0, $a1, 0x1
    /* ADB0 8001A5B0 21284000 */  addu       $a1, $v0, $zero
    /* ADB4 8001A5B4 00140200 */  sll        $v0, $v0, 16
    /* ADB8 8001A5B8 03140200 */  sra        $v0, $v0, 16
    /* ADBC 8001A5BC 00074228 */  slti       $v0, $v0, 0x700
    /* ADC0 8001A5C0 E7FF4014 */  bnez       $v0, .L8001A560
    /* ADC4 8001A5C4 001C0500 */   sll       $v1, $a1, 16
    /* ADC8 8001A5C8 21280000 */  addu       $a1, $zero, $zero
    /* ADCC 8001A5CC 80010624 */  addiu      $a2, $zero, 0x180
    /* ADD0 8001A5D0 001C0500 */  sll        $v1, $a1, 16
  .L8001A5D4:
    /* ADD4 8001A5D4 031C0300 */  sra        $v1, $v1, 16
    /* ADD8 8001A5D8 C0100300 */  sll        $v0, $v1, 3
    /* ADDC 8001A5DC 21104300 */  addu       $v0, $v0, $v1
    /* ADE0 8001A5E0 80100200 */  sll        $v0, $v0, 2
    /* ADE4 8001A5E4 1780013C */  lui        $at, %hi(D_80172E98)
    /* ADE8 8001A5E8 21082200 */  addu       $at, $at, $v0
    /* ADEC 8001A5EC 982E2490 */  lbu        $a0, %lo(D_80172E98)($at)
    /* ADF0 8001A5F0 1780013C */  lui        $at, %hi(D_80172E99)
    /* ADF4 8001A5F4 21082200 */  addu       $at, $at, $v0
    /* ADF8 8001A5F8 992E2390 */  lbu        $v1, %lo(D_80172E99)($at)
    /* ADFC 8001A5FC 00000000 */  nop
    /* AE00 8001A600 21208300 */  addu       $a0, $a0, $v1
    /* AE04 8001A604 1780013C */  lui        $at, %hi(D_80172E9A)
    /* AE08 8001A608 21082200 */  addu       $at, $at, $v0
    /* AE0C 8001A60C 9A2E2290 */  lbu        $v0, %lo(D_80172E9A)($at)
    /* AE10 8001A610 00000000 */  nop
    /* AE14 8001A614 21208200 */  addu       $a0, $a0, $v0
    /* AE18 8001A618 09008614 */  bne        $a0, $a2, .L8001A640
    /* AE1C 8001A61C 21100000 */   addu      $v0, $zero, $zero
    /* AE20 8001A620 0100A224 */  addiu      $v0, $a1, 0x1
    /* AE24 8001A624 21284000 */  addu       $a1, $v0, $zero
    /* AE28 8001A628 00140200 */  sll        $v0, $v0, 16
    /* AE2C 8001A62C 03140200 */  sra        $v0, $v0, 16
    /* AE30 8001A630 04004228 */  slti       $v0, $v0, 0x4
    /* AE34 8001A634 E7FF4014 */  bnez       $v0, .L8001A5D4
    /* AE38 8001A638 001C0500 */   sll       $v1, $a1, 16
    /* AE3C 8001A63C 01000224 */  addiu      $v0, $zero, 0x1
  .L8001A640:
    /* AE40 8001A640 0800E003 */  jr         $ra
    /* AE44 8001A644 00000000 */   nop
endlabel func_8001A354
