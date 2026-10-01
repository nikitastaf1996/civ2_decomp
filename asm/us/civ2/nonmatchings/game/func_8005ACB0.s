.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005ACB0, 0x5A8

glabel func_8005ACB0
    /* 4B4B0 8005ACB0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 4B4B4 8005ACB4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 4B4B8 8005ACB8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4B4BC 8005ACBC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4B4C0 8005ACC0 21888000 */  addu       $s1, $a0, $zero
    /* 4B4C4 8005ACC4 2180A000 */  addu       $s0, $a1, $zero
    /* 4B4C8 8005ACC8 40101000 */  sll        $v0, $s0, 1
    /* 4B4CC 8005ACCC 21105000 */  addu       $v0, $v0, $s0
    /* 4B4D0 8005ACD0 80100200 */  sll        $v0, $v0, 2
    /* 4B4D4 8005ACD4 23105000 */  subu       $v0, $v0, $s0
    /* 4B4D8 8005ACD8 00110200 */  sll        $v0, $v0, 4
    /* 4B4DC 8005ACDC 23105000 */  subu       $v0, $v0, $s0
    /* 4B4E0 8005ACE0 C0100200 */  sll        $v0, $v0, 3
    /* 4B4E4 8005ACE4 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 4B4E8 8005ACE8 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 4B4EC 8005ACEC 80181100 */  sll        $v1, $s1, 2
    /* 4B4F0 8005ACF0 21104400 */  addu       $v0, $v0, $a0
    /* 4B4F4 8005ACF4 21186200 */  addu       $v1, $v1, $v0
    /* 4B4F8 8005ACF8 0000638C */  lw         $v1, 0x0($v1)
    /* 4B4FC 8005ACFC 00000000 */  nop
    /* 4B500 8005AD00 00206230 */  andi       $v0, $v1, 0x2000
    /* 4B504 8005AD04 4E014014 */  bnez       $v0, .L8005B240
    /* 4B508 8005AD08 0E006230 */   andi      $v0, $v1, 0xE
    /* 4B50C 8005AD0C 06004014 */  bnez       $v0, .L8005AD28
    /* 4B510 8005AD10 21282002 */   addu      $a1, $s1, $zero
    /* 4B514 8005AD14 21200002 */  addu       $a0, $s0, $zero
    /* 4B518 8005AD18 F427010C */  jal        func_80049FD0
    /* 4B51C 8005AD1C 14000624 */   addiu     $a2, $zero, 0x14
    /* 4B520 8005AD20 906C0108 */  j          .L8005B240
    /* 4B524 8005AD24 00000000 */   nop
  .L8005AD28:
    /* 4B528 8005AD28 5D54020C */  jal        func_80095174
    /* 4B52C 8005AD2C 21202002 */   addu      $a0, $s1, $zero
    /* 4B530 8005AD30 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 4B534 8005AD34 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 4B538 8005AD38 A587030C */  jal        func_800E1E94
    /* 4B53C 8005AD3C 21284000 */   addu      $a1, $v0, $zero
    /* 4B540 8005AD40 5D54020C */  jal        func_80095174
    /* 4B544 8005AD44 21200002 */   addu      $a0, $s0, $zero
    /* 4B548 8005AD48 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 4B54C 8005AD4C 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 4B550 8005AD50 A587030C */  jal        func_800E1E94
    /* 4B554 8005AD54 21284000 */   addu      $a1, $v0, $zero
    /* 4B558 8005AD58 1280053C */  lui        $a1, %hi(D_8011A275)
    /* 4B55C 8005AD5C 75A2A524 */  addiu      $a1, $a1, %lo(D_8011A275)
    /* 4B560 8005AD60 0000A390 */  lbu        $v1, 0x0($a1)
    /* 4B564 8005AD64 00000000 */  nop
    /* 4B568 8005AD68 07102302 */  srav       $v0, $v1, $s1
    /* 4B56C 8005AD6C 01004230 */  andi       $v0, $v0, 0x1
    /* 4B570 8005AD70 54004014 */  bnez       $v0, .L8005AEC4
    /* 4B574 8005AD74 40101100 */   sll       $v0, $s1, 1
    /* 4B578 8005AD78 07100302 */  srav       $v0, $v1, $s0
    /* 4B57C 8005AD7C 01004230 */  andi       $v0, $v0, 0x1
    /* 4B580 8005AD80 2F014010 */  beqz       $v0, .L8005B240
    /* 4B584 8005AD84 40101100 */   sll       $v0, $s1, 1
    /* 4B588 8005AD88 21105100 */  addu       $v0, $v0, $s1
    /* 4B58C 8005AD8C 80100200 */  sll        $v0, $v0, 2
    /* 4B590 8005AD90 23105100 */  subu       $v0, $v0, $s1
    /* 4B594 8005AD94 00110200 */  sll        $v0, $v0, 4
    /* 4B598 8005AD98 23105100 */  subu       $v0, $v0, $s1
    /* 4B59C 8005AD9C C0100200 */  sll        $v0, $v0, 3
    /* 4B5A0 8005ADA0 1180013C */  lui        $at, %hi(D_801176A7)
    /* 4B5A4 8005ADA4 21082200 */  addu       $at, $at, $v0
    /* 4B5A8 8005ADA8 A7762390 */  lbu        $v1, %lo(D_801176A7)($at)
    /* 4B5AC 8005ADAC 04000224 */  addiu      $v0, $zero, 0x4
    /* 4B5B0 8005ADB0 23016210 */  beq        $v1, $v0, .L8005B240
    /* 4B5B4 8005ADB4 40101000 */   sll       $v0, $s0, 1
    /* 4B5B8 8005ADB8 21105000 */  addu       $v0, $v0, $s0
    /* 4B5BC 8005ADBC 80100200 */  sll        $v0, $v0, 2
    /* 4B5C0 8005ADC0 23105000 */  subu       $v0, $v0, $s0
    /* 4B5C4 8005ADC4 00110200 */  sll        $v0, $v0, 4
    /* 4B5C8 8005ADC8 23105000 */  subu       $v0, $v0, $s0
    /* 4B5CC 8005ADCC C0100200 */  sll        $v0, $v0, 3
    /* 4B5D0 8005ADD0 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 4B5D4 8005ADD4 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 4B5D8 8005ADD8 80181100 */  sll        $v1, $s1, 2
    /* 4B5DC 8005ADDC 21104400 */  addu       $v0, $v0, $a0
    /* 4B5E0 8005ADE0 21186200 */  addu       $v1, $v1, $v0
    /* 4B5E4 8005ADE4 0000628C */  lw         $v0, 0x0($v1)
    /* 4B5E8 8005ADE8 00000000 */  nop
    /* 4B5EC 8005ADEC 08004230 */  andi       $v0, $v0, 0x8
    /* 4B5F0 8005ADF0 16004010 */  beqz       $v0, .L8005AE4C
    /* 4B5F4 8005ADF4 00000000 */   nop
    /* 4B5F8 8005ADF8 7F00A280 */  lb         $v0, 0x7F($a1)
    /* 4B5FC 8005ADFC 1380073C */  lui        $a3, %hi(D_80135A70)
    /* 4B600 8005AE00 705AE724 */  addiu      $a3, $a3, %lo(D_80135A70)
    /* 4B604 8005AE04 03004010 */  beqz       $v0, .L8005AE14
    /* 4B608 8005AE08 00000000 */   nop
    /* 4B60C 8005AE0C 1380073C */  lui        $a3, %hi(D_80135B04)
    /* 4B610 8005AE10 045BE724 */  addiu      $a3, $a3, %lo(D_80135B04)
  .L8005AE14:
    /* 4B614 8005AE14 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4B618 8005AE18 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4B61C 8005AE1C F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4B620 8005AE20 43CE0534 */  ori        $a1, $zero, 0xCE43
    /* 4B624 8005AE24 18E3020C */  jal        func_800B8C60
    /* 4B628 8005AE28 21300000 */   addu      $a2, $zero, $zero
    /* 4B62C 8005AE2C 01000324 */  addiu      $v1, $zero, 0x1
    /* 4B630 8005AE30 03014314 */  bne        $v0, $v1, .L8005B240
    /* 4B634 8005AE34 21202002 */   addu      $a0, $s1, $zero
    /* 4B638 8005AE38 21280002 */  addu       $a1, $s0, $zero
    /* 4B63C 8005AE3C 6475030C */  jal        func_800DD590
    /* 4B640 8005AE40 08000624 */   addiu     $a2, $zero, 0x8
    /* 4B644 8005AE44 A26B0108 */  j          .L8005AE88
    /* 4B648 8005AE48 40101000 */   sll       $v0, $s0, 1
  .L8005AE4C:
    /* 4B64C 8005AE4C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4B650 8005AE50 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4B654 8005AE54 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4B658 8005AE58 FFCE0534 */  ori        $a1, $zero, 0xCEFF
    /* 4B65C 8005AE5C 1380073C */  lui        $a3, %hi(D_801359DC)
    /* 4B660 8005AE60 DC59E724 */  addiu      $a3, $a3, %lo(D_801359DC)
    /* 4B664 8005AE64 18E3020C */  jal        func_800B8C60
    /* 4B668 8005AE68 21300000 */   addu      $a2, $zero, $zero
    /* 4B66C 8005AE6C 01000324 */  addiu      $v1, $zero, 0x1
    /* 4B670 8005AE70 F3004314 */  bne        $v0, $v1, .L8005B240
    /* 4B674 8005AE74 21202002 */   addu      $a0, $s1, $zero
    /* 4B678 8005AE78 21280002 */  addu       $a1, $s0, $zero
    /* 4B67C 8005AE7C A275030C */  jal        func_800DD688
    /* 4B680 8005AE80 00200624 */   addiu     $a2, $zero, 0x2000
    /* 4B684 8005AE84 40101000 */  sll        $v0, $s0, 1
  .L8005AE88:
    /* 4B688 8005AE88 21105000 */  addu       $v0, $v0, $s0
    /* 4B68C 8005AE8C 80100200 */  sll        $v0, $v0, 2
    /* 4B690 8005AE90 23105000 */  subu       $v0, $v0, $s0
    /* 4B694 8005AE94 00110200 */  sll        $v0, $v0, 4
    /* 4B698 8005AE98 23105000 */  subu       $v0, $v0, $s0
    /* 4B69C 8005AE9C C0100200 */  sll        $v0, $v0, 3
    /* 4B6A0 8005AEA0 1180043C */  lui        $a0, %hi(D_80117A56)
    /* 4B6A4 8005AEA4 567A8424 */  addiu      $a0, $a0, %lo(D_80117A56)
    /* 4B6A8 8005AEA8 40181100 */  sll        $v1, $s1, 1
    /* 4B6AC 8005AEAC 21104400 */  addu       $v0, $v0, $a0
    /* 4B6B0 8005AEB0 21186200 */  addu       $v1, $v1, $v0
    /* 4B6B4 8005AEB4 1280023C */  lui        $v0, %hi(D_8011A262)
    /* 4B6B8 8005AEB8 62A24294 */  lhu        $v0, %lo(D_8011A262)($v0)
    /* 4B6BC 8005AEBC 906C0108 */  j          .L8005B240
    /* 4B6C0 8005AEC0 000062A4 */   sh        $v0, 0x0($v1)
  .L8005AEC4:
    /* 4B6C4 8005AEC4 21105100 */  addu       $v0, $v0, $s1
    /* 4B6C8 8005AEC8 80100200 */  sll        $v0, $v0, 2
    /* 4B6CC 8005AECC 23105100 */  subu       $v0, $v0, $s1
    /* 4B6D0 8005AED0 00110200 */  sll        $v0, $v0, 4
    /* 4B6D4 8005AED4 23105100 */  subu       $v0, $v0, $s1
    /* 4B6D8 8005AED8 C0200200 */  sll        $a0, $v0, 3
    /* 4B6DC 8005AEDC 1180023C */  lui        $v0, %hi(D_801176B4)
    /* 4B6E0 8005AEE0 B4764224 */  addiu      $v0, $v0, %lo(D_801176B4)
    /* 4B6E4 8005AEE4 80181000 */  sll        $v1, $s0, 2
    /* 4B6E8 8005AEE8 21108200 */  addu       $v0, $a0, $v0
    /* 4B6EC 8005AEEC 21186200 */  addu       $v1, $v1, $v0
    /* 4B6F0 8005AEF0 0000628C */  lw         $v0, 0x0($v1)
    /* 4B6F4 8005AEF4 00000000 */  nop
    /* 4B6F8 8005AEF8 08004230 */  andi       $v0, $v0, 0x8
    /* 4B6FC 8005AEFC 4D004010 */  beqz       $v0, .L8005B034
    /* 4B700 8005AF00 02000224 */   addiu     $v0, $zero, 0x2
    /* 4B704 8005AF04 8001838F */  lw         $v1, %gp_rel(D_80158658)($gp)
    /* 4B708 8005AF08 00000000 */  nop
    /* 4B70C 8005AF0C 3B006214 */  bne        $v1, $v0, .L8005AFFC
    /* 4B710 8005AF10 40101000 */   sll       $v0, $s0, 1
    /* 4B714 8005AF14 21105000 */  addu       $v0, $v0, $s0
    /* 4B718 8005AF18 80100200 */  sll        $v0, $v0, 2
    /* 4B71C 8005AF1C 23105000 */  subu       $v0, $v0, $s0
    /* 4B720 8005AF20 00110200 */  sll        $v0, $v0, 4
    /* 4B724 8005AF24 23105000 */  subu       $v0, $v0, $s0
    /* 4B728 8005AF28 C0100200 */  sll        $v0, $v0, 3
    /* 4B72C 8005AF2C 1180013C */  lui        $at, %hi(D_801176A2)
    /* 4B730 8005AF30 21082200 */  addu       $at, $at, $v0
    /* 4B734 8005AF34 A2762390 */  lbu        $v1, %lo(D_801176A2)($at)
    /* 4B738 8005AF38 1180013C */  lui        $at, %hi(D_801176A2)
    /* 4B73C 8005AF3C 21082400 */  addu       $at, $at, $a0
    /* 4B740 8005AF40 A2762290 */  lbu        $v0, %lo(D_801176A2)($at)
    /* 4B744 8005AF44 00000000 */  nop
    /* 4B748 8005AF48 2B104300 */  sltu       $v0, $v0, $v1
    /* 4B74C 8005AF4C 2B004010 */  beqz       $v0, .L8005AFFC
    /* 4B750 8005AF50 21202002 */   addu      $a0, $s1, $zero
    /* 4B754 8005AF54 6928010C */  jal        func_8004A1A4
    /* 4B758 8005AF58 21280002 */   addu      $a1, $s0, $zero
    /* 4B75C 8005AF5C 21202002 */  addu       $a0, $s1, $zero
    /* 4B760 8005AF60 4130010C */  jal        func_8004C104
    /* 4B764 8005AF64 21280002 */   addu      $a1, $s0, $zero
    /* 4B768 8005AF68 E6E9030C */  jal        func_800FA798
    /* 4B76C 8005AF6C 00000000 */   nop
    /* 4B770 8005AF70 00140200 */  sll        $v0, $v0, 16
    /* 4B774 8005AF74 03340200 */  sra        $a2, $v0, 16
    /* 4B778 8005AF78 8888033C */  lui        $v1, (0x88888889 >> 16)
    /* 4B77C 8005AF7C 89886334 */  ori        $v1, $v1, (0x88888889 & 0xFFFF)
    /* 4B780 8005AF80 1800C300 */  mult       $a2, $v1
    /* 4B784 8005AF84 10400000 */  mfhi       $t0
    /* 4B788 8005AF88 21180601 */  addu       $v1, $t0, $a2
    /* 4B78C 8005AF8C C3180300 */  sra        $v1, $v1, 3
    /* 4B790 8005AF90 C3170200 */  sra        $v0, $v0, 31
    /* 4B794 8005AF94 23186200 */  subu       $v1, $v1, $v0
    /* 4B798 8005AF98 00110300 */  sll        $v0, $v1, 4
    /* 4B79C 8005AF9C 23104300 */  subu       $v0, $v0, $v1
    /* 4B7A0 8005AFA0 2330C200 */  subu       $a2, $a2, $v0
    /* 4B7A4 8005AFA4 00340600 */  sll        $a2, $a2, 16
    /* 4B7A8 8005AFA8 03340600 */  sra        $a2, $a2, 16
    /* 4B7AC 8005AFAC 21200002 */  addu       $a0, $s0, $zero
    /* 4B7B0 8005AFB0 21282002 */  addu       $a1, $s1, $zero
    /* 4B7B4 8005AFB4 F427010C */  jal        func_80049FD0
    /* 4B7B8 8005AFB8 0500C624 */   addiu     $a2, $a2, 0x5
    /* 4B7BC 8005AFBC 1280023C */  lui        $v0, %hi(D_8011A2F4)
    /* 4B7C0 8005AFC0 F4A24280 */  lb         $v0, %lo(D_8011A2F4)($v0)
    /* 4B7C4 8005AFC4 1380073C */  lui        $a3, %hi(D_80135A70)
    /* 4B7C8 8005AFC8 705AE724 */  addiu      $a3, $a3, %lo(D_80135A70)
    /* 4B7CC 8005AFCC 03004010 */  beqz       $v0, .L8005AFDC
    /* 4B7D0 8005AFD0 00000000 */   nop
    /* 4B7D4 8005AFD4 1380073C */  lui        $a3, %hi(D_80135B04)
    /* 4B7D8 8005AFD8 045BE724 */  addiu      $a3, $a3, %lo(D_80135B04)
  .L8005AFDC:
    /* 4B7DC 8005AFDC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4B7E0 8005AFE0 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4B7E4 8005AFE4 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4B7E8 8005AFE8 92D10534 */  ori        $a1, $zero, 0xD192
    /* 4B7EC 8005AFEC 18E3020C */  jal        func_800B8C60
    /* 4B7F0 8005AFF0 21300000 */   addu      $a2, $zero, $zero
    /* 4B7F4 8005AFF4 906C0108 */  j          .L8005B240
    /* 4B7F8 8005AFF8 00000000 */   nop
  .L8005AFFC:
    /* 4B7FC 8005AFFC 1280023C */  lui        $v0, %hi(D_8011A2F4)
    /* 4B800 8005B000 F4A24280 */  lb         $v0, %lo(D_8011A2F4)($v0)
    /* 4B804 8005B004 1380073C */  lui        $a3, %hi(D_80135A70)
    /* 4B808 8005B008 705AE724 */  addiu      $a3, $a3, %lo(D_80135A70)
    /* 4B80C 8005B00C 03004010 */  beqz       $v0, .L8005B01C
    /* 4B810 8005B010 00000000 */   nop
    /* 4B814 8005B014 1380073C */  lui        $a3, %hi(D_80135B04)
    /* 4B818 8005B018 045BE724 */  addiu      $a3, $a3, %lo(D_80135B04)
  .L8005B01C:
    /* 4B81C 8005B01C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4B820 8005B020 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4B824 8005B024 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4B828 8005B028 10D10534 */  ori        $a1, $zero, 0xD110
    /* 4B82C 8005B02C 446C0108 */  j          .L8005B110
    /* 4B830 8005B030 21300000 */   addu      $a2, $zero, $zero
  .L8005B034:
    /* 4B834 8005B034 40101100 */  sll        $v0, $s1, 1
    /* 4B838 8005B038 21105100 */  addu       $v0, $v0, $s1
    /* 4B83C 8005B03C 80100200 */  sll        $v0, $v0, 2
    /* 4B840 8005B040 23105100 */  subu       $v0, $v0, $s1
    /* 4B844 8005B044 00110200 */  sll        $v0, $v0, 4
    /* 4B848 8005B048 23105100 */  subu       $v0, $v0, $s1
    /* 4B84C 8005B04C C0100200 */  sll        $v0, $v0, 3
    /* 4B850 8005B050 1180013C */  lui        $at, %hi(D_801176A7)
    /* 4B854 8005B054 21082200 */  addu       $at, $at, $v0
    /* 4B858 8005B058 A7762390 */  lbu        $v1, %lo(D_801176A7)($at)
    /* 4B85C 8005B05C 04000224 */  addiu      $v0, $zero, 0x4
    /* 4B860 8005B060 25006214 */  bne        $v1, $v0, .L8005B0F8
    /* 4B864 8005B064 68D20534 */   ori       $a1, $zero, 0xD268
    /* 4B868 8005B068 40101000 */  sll        $v0, $s0, 1
    /* 4B86C 8005B06C 21105000 */  addu       $v0, $v0, $s0
    /* 4B870 8005B070 80100200 */  sll        $v0, $v0, 2
    /* 4B874 8005B074 23105000 */  subu       $v0, $v0, $s0
    /* 4B878 8005B078 00110200 */  sll        $v0, $v0, 4
    /* 4B87C 8005B07C 23105000 */  subu       $v0, $v0, $s0
    /* 4B880 8005B080 C0100200 */  sll        $v0, $v0, 3
    /* 4B884 8005B084 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 4B888 8005B088 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 4B88C 8005B08C 80181100 */  sll        $v1, $s1, 2
    /* 4B890 8005B090 21104400 */  addu       $v0, $v0, $a0
    /* 4B894 8005B094 21186200 */  addu       $v1, $v1, $v0
    /* 4B898 8005B098 0000628C */  lw         $v0, 0x0($v1)
    /* 4B89C 8005B09C 00000000 */  nop
    /* 4B8A0 8005B0A0 10004234 */  ori        $v0, $v0, 0x10
    /* 4B8A4 8005B0A4 000062AC */  sw         $v0, 0x0($v1)
    /* 4B8A8 8005B0A8 21200002 */  addu       $a0, $s0, $zero
    /* 4B8AC 8005B0AC 21282002 */  addu       $a1, $s1, $zero
    /* 4B8B0 8005B0B0 F427010C */  jal        func_80049FD0
    /* 4B8B4 8005B0B4 0A000624 */   addiu     $a2, $zero, 0xA
    /* 4B8B8 8005B0B8 8A54020C */  jal        func_80095228
    /* 4B8BC 8005B0BC 21202002 */   addu      $a0, $s1, $zero
    /* 4B8C0 8005B0C0 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 4B8C4 8005B0C4 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 4B8C8 8005B0C8 A587030C */  jal        func_800E1E94
    /* 4B8CC 8005B0CC 21284000 */   addu      $a1, $v0, $zero
    /* 4B8D0 8005B0D0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4B8D4 8005B0D4 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4B8D8 8005B0D8 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4B8DC 8005B0DC EDD20534 */  ori        $a1, $zero, 0xD2ED
    /* 4B8E0 8005B0E0 1380073C */  lui        $a3, %hi(D_80135258)
    /* 4B8E4 8005B0E4 5852E724 */  addiu      $a3, $a3, %lo(D_80135258)
    /* 4B8E8 8005B0E8 18E3020C */  jal        func_800B8C60
    /* 4B8EC 8005B0EC 21300000 */   addu      $a2, $zero, $zero
    /* 4B8F0 8005B0F0 4B6C0108 */  j          .L8005B12C
    /* 4B8F4 8005B0F4 40101100 */   sll       $v0, $s1, 1
  .L8005B0F8:
    /* 4B8F8 8005B0F8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4B8FC 8005B0FC 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4B900 8005B100 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4B904 8005B104 21300000 */  addu       $a2, $zero, $zero
    /* 4B908 8005B108 1380073C */  lui        $a3, %hi(D_801359DC)
    /* 4B90C 8005B10C DC59E724 */  addiu      $a3, $a3, %lo(D_801359DC)
  .L8005B110:
    /* 4B910 8005B110 18E3020C */  jal        func_800B8C60
    /* 4B914 8005B114 00000000 */   nop
    /* 4B918 8005B118 21202002 */  addu       $a0, $s1, $zero
    /* 4B91C 8005B11C 21280002 */  addu       $a1, $s0, $zero
    /* 4B920 8005B120 3839010C */  jal        func_8004E4E0
    /* 4B924 8005B124 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 4B928 8005B128 40101100 */  sll        $v0, $s1, 1
  .L8005B12C:
    /* 4B92C 8005B12C 21105100 */  addu       $v0, $v0, $s1
    /* 4B930 8005B130 80100200 */  sll        $v0, $v0, 2
    /* 4B934 8005B134 23105100 */  subu       $v0, $v0, $s1
    /* 4B938 8005B138 00110200 */  sll        $v0, $v0, 4
    /* 4B93C 8005B13C 23105100 */  subu       $v0, $v0, $s1
    /* 4B940 8005B140 C0800200 */  sll        $s0, $v0, 3
    /* 4B944 8005B144 1180013C */  lui        $at, %hi(D_801176A7)
    /* 4B948 8005B148 21083000 */  addu       $at, $at, $s0
    /* 4B94C 8005B14C A7762390 */  lbu        $v1, %lo(D_801176A7)($at)
    /* 4B950 8005B150 06000224 */  addiu      $v0, $zero, 0x6
    /* 4B954 8005B154 0C006210 */  beq        $v1, $v0, .L8005B188
    /* 4B958 8005B158 00000000 */   nop
    /* 4B95C 8005B15C E6E9030C */  jal        func_800FA798
    /* 4B960 8005B160 00000000 */   nop
    /* 4B964 8005B164 01004230 */  andi       $v0, $v0, 0x1
    /* 4B968 8005B168 35004010 */  beqz       $v0, .L8005B240
    /* 4B96C 8005B16C 05000224 */   addiu     $v0, $zero, 0x5
    /* 4B970 8005B170 1180013C */  lui        $at, %hi(D_801176A7)
    /* 4B974 8005B174 21083000 */  addu       $at, $at, $s0
    /* 4B978 8005B178 A7762390 */  lbu        $v1, %lo(D_801176A7)($at)
    /* 4B97C 8005B17C 00000000 */  nop
    /* 4B980 8005B180 2F006214 */  bne        $v1, $v0, .L8005B240
    /* 4B984 8005B184 00000000 */   nop
  .L8005B188:
    /* 4B988 8005B188 1280023C */  lui        $v0, %hi(D_8011A25A)
    /* 4B98C 8005B18C 5AA24294 */  lhu        $v0, %lo(D_8011A25A)($v0)
    /* 4B990 8005B190 00000000 */  nop
    /* 4B994 8005B194 80004230 */  andi       $v0, $v0, 0x80
    /* 4B998 8005B198 07004010 */  beqz       $v0, .L8005B1B8
    /* 4B99C 8005B19C 00000000 */   nop
    /* 4B9A0 8005B1A0 1280023C */  lui        $v0, %hi(D_8011A390)
    /* 4B9A4 8005B1A4 90A34294 */  lhu        $v0, %lo(D_8011A390)($v0)
    /* 4B9A8 8005B1A8 00000000 */  nop
    /* 4B9AC 8005B1AC 01004230 */  andi       $v0, $v0, 0x1
    /* 4B9B0 8005B1B0 23004014 */  bnez       $v0, .L8005B240
    /* 4B9B4 8005B1B4 00000000 */   nop
  .L8005B1B8:
    /* 4B9B8 8005B1B8 8A54020C */  jal        func_80095228
    /* 4B9BC 8005B1BC 21202002 */   addu      $a0, $s1, $zero
    /* 4B9C0 8005B1C0 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 4B9C4 8005B1C4 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 4B9C8 8005B1C8 A587030C */  jal        func_800E1E94
    /* 4B9CC 8005B1CC 21284000 */   addu      $a1, $v0, $zero
    /* 4B9D0 8005B1D0 40101100 */  sll        $v0, $s1, 1
    /* 4B9D4 8005B1D4 21105100 */  addu       $v0, $v0, $s1
    /* 4B9D8 8005B1D8 80100200 */  sll        $v0, $v0, 2
    /* 4B9DC 8005B1DC 23105100 */  subu       $v0, $v0, $s1
    /* 4B9E0 8005B1E0 00110200 */  sll        $v0, $v0, 4
    /* 4B9E4 8005B1E4 23105100 */  subu       $v0, $v0, $s1
    /* 4B9E8 8005B1E8 C0100200 */  sll        $v0, $v0, 3
    /* 4B9EC 8005B1EC 1180013C */  lui        $at, %hi(D_801176A7)
    /* 4B9F0 8005B1F0 21082200 */  addu       $at, $at, $v0
    /* 4B9F4 8005B1F4 A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* 4B9F8 8005B1F8 00000000 */  nop
    /* 4B9FC 8005B1FC C0380200 */  sll        $a3, $v0, 3
    /* 4BA00 8005B200 2138E200 */  addu       $a3, $a3, $v0
    /* 4BA04 8005B204 80380700 */  sll        $a3, $a3, 2
    /* 4BA08 8005B208 2138E200 */  addu       $a3, $a3, $v0
    /* 4BA0C 8005B20C 80380700 */  sll        $a3, $a3, 2
    /* 4BA10 8005B210 1380023C */  lui        $v0, %hi(D_80135008)
    /* 4BA14 8005B214 08504224 */  addiu      $v0, $v0, %lo(D_80135008)
    /* 4BA18 8005B218 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4BA1C 8005B21C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4BA20 8005B220 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4BA24 8005B224 65D30534 */  ori        $a1, $zero, 0xD365
    /* 4BA28 8005B228 21300000 */  addu       $a2, $zero, $zero
    /* 4BA2C 8005B22C 18E3020C */  jal        func_800B8C60
    /* 4BA30 8005B230 2138E200 */   addu      $a3, $a3, $v0
    /* 4BA34 8005B234 21202002 */  addu       $a0, $s1, $zero
    /* 4BA38 8005B238 C580010C */  jal        func_80060314
    /* 4BA3C 8005B23C 21280000 */   addu      $a1, $zero, $zero
  .L8005B240:
    /* 4BA40 8005B240 2000BF8F */  lw         $ra, 0x20($sp)
    /* 4BA44 8005B244 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4BA48 8005B248 1800B08F */  lw         $s0, 0x18($sp)
    /* 4BA4C 8005B24C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 4BA50 8005B250 0800E003 */  jr         $ra
    /* 4BA54 8005B254 00000000 */   nop
endlabel func_8005ACB0
