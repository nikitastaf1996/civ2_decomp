.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B45B8, 0x1B0

glabel func_800B45B8
    /* A4DB8 800B45B8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A4DBC 800B45BC 2400BFAF */  sw         $ra, 0x24($sp)
    /* A4DC0 800B45C0 2000B4AF */  sw         $s4, 0x20($sp)
    /* A4DC4 800B45C4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A4DC8 800B45C8 1800B2AF */  sw         $s2, 0x18($sp)
    /* A4DCC 800B45CC 1400B1AF */  sw         $s1, 0x14($sp)
    /* A4DD0 800B45D0 1000B0AF */  sw         $s0, 0x10($sp)
    /* A4DD4 800B45D4 21888000 */  addu       $s1, $a0, $zero
    /* A4DD8 800B45D8 2198A000 */  addu       $s3, $a1, $zero
    /* A4DDC 800B45DC 21A0C000 */  addu       $s4, $a2, $zero
    /* A4DE0 800B45E0 58006012 */  beqz       $s3, .L800B4744
    /* A4DE4 800B45E4 21900000 */   addu      $s2, $zero, $zero
    /* A4DE8 800B45E8 6801228E */  lw         $v0, 0x168($s1)
    /* A4DEC 800B45EC 00000000 */  nop
    /* A4DF0 800B45F0 54006212 */  beq        $s3, $v0, .L800B4744
    /* A4DF4 800B45F4 00000000 */   nop
    /* A4DF8 800B45F8 6001258E */  lw         $a1, 0x160($s1)
    /* A4DFC 800B45FC 7ACC020C */  jal        func_800B31E8
    /* A4E00 800B4600 00000000 */   nop
    /* A4E04 800B4604 21804000 */  addu       $s0, $v0, $zero
    /* A4E08 800B4608 21202002 */  addu       $a0, $s1, $zero
    /* A4E0C 800B460C 7ACC020C */  jal        func_800B31E8
    /* A4E10 800B4610 21286002 */   addu      $a1, $s3, $zero
    /* A4E14 800B4614 21304000 */  addu       $a2, $v0, $zero
    /* A4E18 800B4618 2A10D000 */  slt        $v0, $a2, $s0
    /* A4E1C 800B461C 0C004010 */  beqz       $v0, .L800B4650
    /* A4E20 800B4620 01000424 */   addiu     $a0, $zero, 0x1
    /* A4E24 800B4624 2C00238E */  lw         $v1, 0x2C($s1)
  .L800B4628:
    /* A4E28 800B4628 00000000 */  nop
    /* A4E2C 800B462C 04006410 */  beq        $v1, $a0, .L800B4640
    /* A4E30 800B4630 00000000 */   nop
    /* A4E34 800B4634 4400228E */  lw         $v0, 0x44($s1)
    /* A4E38 800B4638 91D10208 */  j          .L800B4644
    /* A4E3C 800B463C 23800202 */   subu      $s0, $s0, $v0
  .L800B4640:
    /* A4E40 800B4640 FFFF1026 */  addiu      $s0, $s0, -0x1
  .L800B4644:
    /* A4E44 800B4644 2A10D000 */  slt        $v0, $a2, $s0
    /* A4E48 800B4648 F7FF4014 */  bnez       $v0, .L800B4628
    /* A4E4C 800B464C 01001224 */   addiu     $s2, $zero, 0x1
  .L800B4650:
    /* A4E50 800B4650 4400238E */  lw         $v1, 0x44($s1)
    /* A4E54 800B4654 2C00228E */  lw         $v0, 0x2C($s1)
    /* A4E58 800B4658 00000000 */  nop
    /* A4E5C 800B465C 21204000 */  addu       $a0, $v0, $zero
    /* A4E60 800B4660 18006200 */  mult       $v1, $v0
    /* A4E64 800B4664 12380000 */  mflo       $a3
    /* A4E68 800B4668 21100702 */  addu       $v0, $s0, $a3
    /* A4E6C 800B466C 2A10C200 */  slt        $v0, $a2, $v0
    /* A4E70 800B4670 10004014 */  bnez       $v0, .L800B46B4
    /* A4E74 800B4674 21286000 */   addu      $a1, $v1, $zero
    /* A4E78 800B4678 01000324 */  addiu      $v1, $zero, 0x1
  .L800B467C:
    /* A4E7C 800B467C 03008310 */  beq        $a0, $v1, .L800B468C
    /* A4E80 800B4680 00000000 */   nop
    /* A4E84 800B4684 A4D10208 */  j          .L800B4690
    /* A4E88 800B4688 21800502 */   addu      $s0, $s0, $a1
  .L800B468C:
    /* A4E8C 800B468C 01001026 */  addiu      $s0, $s0, 0x1
  .L800B4690:
    /* A4E90 800B4690 4400258E */  lw         $a1, 0x44($s1)
    /* A4E94 800B4694 2C00248E */  lw         $a0, 0x2C($s1)
    /* A4E98 800B4698 00000000 */  nop
    /* A4E9C 800B469C 1800A400 */  mult       $a1, $a0
    /* A4EA0 800B46A0 12380000 */  mflo       $a3
    /* A4EA4 800B46A4 21100702 */  addu       $v0, $s0, $a3
    /* A4EA8 800B46A8 2A10C200 */  slt        $v0, $a2, $v0
    /* A4EAC 800B46AC F3FF4010 */  beqz       $v0, .L800B467C
    /* A4EB0 800B46B0 01001224 */   addiu     $s2, $zero, 0x1
  .L800B46B4:
    /* A4EB4 800B46B4 1C00258E */  lw         $a1, 0x1C($s1)
    /* A4EB8 800B46B8 21202002 */  addu       $a0, $s1, $zero
    /* A4EBC 800B46BC 58D1020C */  jal        func_800B4560
    /* A4EC0 800B46C0 FFFFA524 */   addiu     $a1, $a1, -0x1
    /* A4EC4 800B46C4 21200002 */  addu       $a0, $s0, $zero
    /* A4EC8 800B46C8 21280000 */  addu       $a1, $zero, $zero
    /* A4ECC 800B46CC F53A030C */  jal        func_800CEBD4
    /* A4ED0 800B46D0 21304000 */   addu      $a2, $v0, $zero
    /* A4ED4 800B46D4 21202002 */  addu       $a0, $s1, $zero
    /* A4ED8 800B46D8 8BCC020C */  jal        func_800B322C
    /* A4EDC 800B46DC 21284000 */   addu      $a1, $v0, $zero
    /* A4EE0 800B46E0 600122AE */  sw         $v0, 0x160($s1)
    /* A4EE4 800B46E4 03004016 */  bnez       $s2, .L800B46F4
    /* A4EE8 800B46E8 680133AE */   sw        $s3, 0x168($s1)
    /* A4EEC 800B46EC 15008016 */  bnez       $s4, .L800B4744
    /* A4EF0 800B46F0 00000000 */   nop
  .L800B46F4:
    /* A4EF4 800B46F4 C401228E */  lw         $v0, 0x1C4($s1)
    /* A4EF8 800B46F8 00000000 */  nop
    /* A4EFC 800B46FC 07004010 */  beqz       $v0, .L800B471C
    /* A4F00 800B4700 00000000 */   nop
    /* A4F04 800B4704 6001258E */  lw         $a1, 0x160($s1)
    /* A4F08 800B4708 7ACC020C */  jal        func_800B31E8
    /* A4F0C 800B470C 21202002 */   addu      $a0, $s1, $zero
    /* A4F10 800B4710 C401238E */  lw         $v1, 0x1C4($s1)
    /* A4F14 800B4714 00000000 */  nop
    /* A4F18 800B4718 2C0062A4 */  sh         $v0, 0x2C($v1)
  .L800B471C:
    /* A4F1C 800B471C C801228E */  lw         $v0, 0x1C8($s1)
    /* A4F20 800B4720 00000000 */  nop
    /* A4F24 800B4724 07004010 */  beqz       $v0, .L800B4744
    /* A4F28 800B4728 00000000 */   nop
    /* A4F2C 800B472C 6001258E */  lw         $a1, 0x160($s1)
    /* A4F30 800B4730 9ACC020C */  jal        func_800B3268
    /* A4F34 800B4734 21202002 */   addu      $a0, $s1, $zero
    /* A4F38 800B4738 C801238E */  lw         $v1, 0x1C8($s1)
    /* A4F3C 800B473C 00000000 */  nop
    /* A4F40 800B4740 2C0062A4 */  sh         $v0, 0x2C($v1)
  .L800B4744:
    /* A4F44 800B4744 2400BF8F */  lw         $ra, 0x24($sp)
    /* A4F48 800B4748 2000B48F */  lw         $s4, 0x20($sp)
    /* A4F4C 800B474C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A4F50 800B4750 1800B28F */  lw         $s2, 0x18($sp)
    /* A4F54 800B4754 1400B18F */  lw         $s1, 0x14($sp)
    /* A4F58 800B4758 1000B08F */  lw         $s0, 0x10($sp)
    /* A4F5C 800B475C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* A4F60 800B4760 0800E003 */  jr         $ra
    /* A4F64 800B4764 00000000 */   nop
endlabel func_800B45B8
