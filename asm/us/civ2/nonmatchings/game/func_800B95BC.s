.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B95BC, 0x284

glabel func_800B95BC
    /* A9DBC 800B95BC A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* A9DC0 800B95C0 4000B4AF */  sw         $s4, 0x40($sp)
    /* A9DC4 800B95C4 6800B48F */  lw         $s4, 0x68($sp)
    /* A9DC8 800B95C8 4400B5AF */  sw         $s5, 0x44($sp)
    /* A9DCC 800B95CC 6C00B58F */  lw         $s5, 0x6C($sp)
    /* A9DD0 800B95D0 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* A9DD4 800B95D4 7000B78F */  lw         $s7, 0x70($sp)
    /* A9DD8 800B95D8 3800B2AF */  sw         $s2, 0x38($sp)
    /* A9DDC 800B95DC 21908000 */  addu       $s2, $a0, $zero
    /* A9DE0 800B95E0 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* A9DE4 800B95E4 2198A000 */  addu       $s3, $a1, $zero
    /* A9DE8 800B95E8 3000B0AF */  sw         $s0, 0x30($sp)
    /* A9DEC 800B95EC 2180C000 */  addu       $s0, $a2, $zero
    /* A9DF0 800B95F0 3400B1AF */  sw         $s1, 0x34($sp)
    /* A9DF4 800B95F4 2188E000 */  addu       $s1, $a3, $zero
    /* A9DF8 800B95F8 5000BEAF */  sw         $fp, 0x50($sp)
    /* A9DFC 800B95FC 7400BE8F */  lw         $fp, 0x74($sp)
    /* A9E00 800B9600 5400BFAF */  sw         $ra, 0x54($sp)
    /* A9E04 800B9604 29E5020C */  jal        func_800B94A4
    /* A9E08 800B9608 4800B6AF */   sw        $s6, 0x48($sp)
    /* A9E0C 800B960C 840351AE */  sw         $s1, 0x384($s2)
    /* A9E10 800B9610 1680113C */  lui        $s1, %hi(D_801588BC)
    /* A9E14 800B9614 BC88318E */  lw         $s1, %lo(D_801588BC)($s1)
    /* A9E18 800B9618 01000224 */  addiu      $v0, $zero, 0x1
    /* A9E1C 800B961C 3C0342AE */  sw         $v0, 0x33C($s2)
    /* A9E20 800B9620 400342AE */  sw         $v0, 0x340($s2)
    /* A9E24 800B9624 40010224 */  addiu      $v0, $zero, 0x140
    /* A9E28 800B9628 7C0340AE */  sw         $zero, 0x37C($s2)
    /* A9E2C 800B962C 380340AE */  sw         $zero, 0x338($s2)
    /* A9E30 800B9630 440340AE */  sw         $zero, 0x344($s2)
    /* A9E34 800B9634 800340AE */  sw         $zero, 0x380($s2)
    /* A9E38 800B9638 340350AE */  sw         $s0, 0x334($s2)
    /* A9E3C 800B963C 780342AE */  sw         $v0, 0x378($s2)
    /* A9E40 800B9640 04006106 */  bgez       $s3, .L800B9654
    /* A9E44 800B9644 21B02002 */   addu      $s6, $s1, $zero
    /* A9E48 800B9648 27101300 */  nor        $v0, $zero, $s3
    /* A9E4C 800B964C 96E50208 */  j          .L800B9658
    /* A9E50 800B9650 01005324 */   addiu     $s3, $v0, 0x1
  .L800B9654:
    /* A9E54 800B9654 31007326 */  addiu      $s3, $s3, 0x31
  .L800B9658:
    /* A9E58 800B9658 28025026 */  addiu      $s0, $s2, 0x228
    /* A9E5C 800B965C 21200002 */  addu       $a0, $s0, $zero
    /* A9E60 800B9660 002C1300 */  sll        $a1, $s3, 16
    /* A9E64 800B9664 032C0500 */  sra        $a1, $a1, 16
    /* A9E68 800B9668 0A000624 */  addiu      $a2, $zero, 0xA
    /* A9E6C 800B966C C0000724 */  addiu      $a3, $zero, 0xC0
    /* A9E70 800B9670 700354AE */  sw         $s4, 0x370($s2)
    /* A9E74 800B9674 44E3030C */  jal        func_800F8D10
    /* A9E78 800B9678 580355AE */   sw        $s5, 0x358($s2)
    /* A9E7C 800B967C 0400801E */  bgtz       $s4, .L800B9690
    /* A9E80 800B9680 00000000 */   nop
    /* A9E84 800B9684 28024286 */  lh         $v0, 0x228($s2)
    /* A9E88 800B9688 00000000 */  nop
    /* A9E8C 800B968C 700342AE */  sw         $v0, 0x370($s2)
  .L800B9690:
    /* A9E90 800B9690 0400A01E */  bgtz       $s5, .L800B96A4
    /* A9E94 800B9694 00000000 */   nop
    /* A9E98 800B9698 2A024286 */  lh         $v0, 0x22A($s2)
    /* A9E9C 800B969C 00000000 */  nop
    /* A9EA0 800B96A0 580342AE */  sw         $v0, 0x358($s2)
  .L800B96A4:
    /* A9EA4 800B96A4 740357AE */  sw         $s7, 0x374($s2)
    /* A9EA8 800B96A8 7403428E */  lw         $v0, 0x374($s2)
    /* A9EAC 800B96AC 00000000 */  nop
    /* A9EB0 800B96B0 04004014 */  bnez       $v0, .L800B96C4
    /* A9EB4 800B96B4 5C035EAE */   sw        $fp, 0x35C($s2)
    /* A9EB8 800B96B8 7003428E */  lw         $v0, 0x370($s2)
    /* A9EBC 800B96BC 00000000 */  nop
    /* A9EC0 800B96C0 740342AE */  sw         $v0, 0x374($s2)
  .L800B96C4:
    /* A9EC4 800B96C4 7403438E */  lw         $v1, 0x374($s2)
    /* A9EC8 800B96C8 00000000 */  nop
    /* A9ECC 800B96CC 05006104 */  bgez       $v1, .L800B96E4
    /* A9ED0 800B96D0 00000000 */   nop
    /* A9ED4 800B96D4 7003428E */  lw         $v0, 0x370($s2)
    /* A9ED8 800B96D8 00000000 */  nop
    /* A9EDC 800B96DC 23104300 */  subu       $v0, $v0, $v1
    /* A9EE0 800B96E0 740342AE */  sw         $v0, 0x374($s2)
  .L800B96E4:
    /* A9EE4 800B96E4 5C03428E */  lw         $v0, 0x35C($s2)
    /* A9EE8 800B96E8 00000000 */  nop
    /* A9EEC 800B96EC 04004014 */  bnez       $v0, .L800B9700
    /* A9EF0 800B96F0 00000000 */   nop
    /* A9EF4 800B96F4 5803428E */  lw         $v0, 0x358($s2)
    /* A9EF8 800B96F8 00000000 */  nop
    /* A9EFC 800B96FC 5C0342AE */  sw         $v0, 0x35C($s2)
  .L800B9700:
    /* A9F00 800B9700 5C03438E */  lw         $v1, 0x35C($s2)
    /* A9F04 800B9704 00000000 */  nop
    /* A9F08 800B9708 05006104 */  bgez       $v1, .L800B9720
    /* A9F0C 800B970C 00000000 */   nop
    /* A9F10 800B9710 5803428E */  lw         $v0, 0x358($s2)
    /* A9F14 800B9714 00000000 */  nop
    /* A9F18 800B9718 23104300 */  subu       $v0, $v0, $v1
    /* A9F1C 800B971C 5C0342AE */  sw         $v0, 0x35C($s2)
  .L800B9720:
    /* A9F20 800B9720 1180043C */  lui        $a0, %hi(D_8010CBE0)
    /* A9F24 800B9724 E0CB8424 */  addiu      $a0, $a0, %lo(D_8010CBE0)
    /* A9F28 800B9728 03EC030C */  jal        func_800FB00C
    /* A9F2C 800B972C 00000000 */   nop
    /* A9F30 800B9730 2800A427 */  addiu      $a0, $sp, 0x28
    /* A9F34 800B9734 21280000 */  addu       $a1, $zero, $zero
    /* A9F38 800B9738 78000624 */  addiu      $a2, $zero, 0x78
    /* A9F3C 800B973C E8030724 */  addiu      $a3, $zero, 0x3E8
    /* A9F40 800B9740 40010224 */  addiu      $v0, $zero, 0x140
    /* A9F44 800B9744 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* A9F48 800B9748 F0000224 */  addiu      $v0, $zero, 0xF0
    /* A9F4C 800B974C 2800A0A7 */  sh         $zero, 0x28($sp)
    /* A9F50 800B9750 2A00A0A7 */  sh         $zero, 0x2A($sp)
    /* A9F54 800B9754 2E00A2A7 */  sh         $v0, 0x2E($sp)
    /* A9F58 800B9758 7D1C040C */  jal        func_801071F4
    /* A9F5C 800B975C 1000B0AF */   sw        $s0, 0x10($sp)
    /* A9F60 800B9760 B31E040C */  jal        func_80107ACC
    /* A9F64 800B9764 00000000 */   nop
    /* A9F68 800B9768 21204002 */  addu       $a0, $s2, $zero
    /* A9F6C 800B976C 21280000 */  addu       $a1, $zero, $zero
    /* A9F70 800B9770 21380000 */  addu       $a3, $zero, $zero
    /* A9F74 800B9774 8403468E */  lw         $a2, 0x384($s2)
    /* A9F78 800B9778 40010224 */  addiu      $v0, $zero, 0x140
    /* A9F7C 800B977C B80040AE */  sw         $zero, 0xB8($s2)
    /* A9F80 800B9780 B40040AE */  sw         $zero, 0xB4($s2)
    /* A9F84 800B9784 1400A2AF */  sw         $v0, 0x14($sp)
    /* A9F88 800B9788 F0000224 */  addiu      $v0, $zero, 0xF0
    /* A9F8C 800B978C 1000A0AF */  sw         $zero, 0x10($sp)
    /* A9F90 800B9790 1800A2AF */  sw         $v0, 0x18($sp)
    /* A9F94 800B9794 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* A9F98 800B9798 2000B6AF */  sw         $s6, 0x20($sp)
    /* A9F9C 800B979C 2400B1AF */  sw         $s1, 0x24($sp)
    /* A9FA0 800B97A0 2B300600 */  sltu       $a2, $zero, $a2
    /* A9FA4 800B97A4 F84A020C */  jal        func_80092BE0
    /* A9FA8 800B97A8 C0300600 */   sll       $a2, $a2, 3
    /* A9FAC 800B97AC 09000324 */  addiu      $v1, $zero, 0x9
    /* A9FB0 800B97B0 24004226 */  addiu      $v0, $s2, 0x24
  .L800B97B4:
    /* A9FB4 800B97B4 880340AC */  sw         $zero, 0x388($v0)
    /* A9FB8 800B97B8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A9FBC 800B97BC FDFF6104 */  bgez       $v1, .L800B97B4
    /* A9FC0 800B97C0 FCFF4224 */   addiu     $v0, $v0, -0x4
    /* A9FC4 800B97C4 1680043C */  lui        $a0, %hi(D_801589F0)
    /* A9FC8 800B97C8 F089848C */  lw         $a0, %lo(D_801589F0)($a0)
    /* A9FCC 800B97CC 00000000 */  nop
    /* A9FD0 800B97D0 05008010 */  beqz       $a0, .L800B97E8
    /* A9FD4 800B97D4 B00340A6 */   sh        $zero, 0x3B0($s2)
    /* A9FD8 800B97D8 E511040C */  jal        func_80104794
    /* A9FDC 800B97DC 00000000 */   nop
    /* A9FE0 800B97E0 1680013C */  lui        $at, %hi(D_801589F0)
    /* A9FE4 800B97E4 F08920AC */  sw         $zero, %lo(D_801589F0)($at)
  .L800B97E8:
    /* A9FE8 800B97E8 1680043C */  lui        $a0, %hi(D_801589F4)
    /* A9FEC 800B97EC F489848C */  lw         $a0, %lo(D_801589F4)($a0)
    /* A9FF0 800B97F0 00000000 */  nop
    /* A9FF4 800B97F4 05008010 */  beqz       $a0, .L800B980C
    /* A9FF8 800B97F8 00000000 */   nop
    /* A9FFC 800B97FC E511040C */  jal        func_80104794
    /* AA000 800B9800 00000000 */   nop
    /* AA004 800B9804 1680013C */  lui        $at, %hi(D_801589F4)
    /* AA008 800B9808 F48920AC */  sw         $zero, %lo(D_801589F4)($at)
  .L800B980C:
    /* AA00C 800B980C 5400BF8F */  lw         $ra, 0x54($sp)
    /* AA010 800B9810 5000BE8F */  lw         $fp, 0x50($sp)
    /* AA014 800B9814 4C00B78F */  lw         $s7, 0x4C($sp)
    /* AA018 800B9818 4800B68F */  lw         $s6, 0x48($sp)
    /* AA01C 800B981C 4400B58F */  lw         $s5, 0x44($sp)
    /* AA020 800B9820 4000B48F */  lw         $s4, 0x40($sp)
    /* AA024 800B9824 3C00B38F */  lw         $s3, 0x3C($sp)
    /* AA028 800B9828 3800B28F */  lw         $s2, 0x38($sp)
    /* AA02C 800B982C 3400B18F */  lw         $s1, 0x34($sp)
    /* AA030 800B9830 3000B08F */  lw         $s0, 0x30($sp)
    /* AA034 800B9834 5800BD27 */  addiu      $sp, $sp, 0x58
    /* AA038 800B9838 0800E003 */  jr         $ra
    /* AA03C 800B983C 00000000 */   nop
endlabel func_800B95BC
