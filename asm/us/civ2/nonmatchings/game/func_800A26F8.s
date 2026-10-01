.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A26F8, 0x150

glabel func_800A26F8
    /* 92EF8 800A26F8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 92EFC 800A26FC 2800BFAF */  sw         $ra, 0x28($sp)
    /* 92F00 800A2700 2400B5AF */  sw         $s5, 0x24($sp)
    /* 92F04 800A2704 2000B4AF */  sw         $s4, 0x20($sp)
    /* 92F08 800A2708 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 92F0C 800A270C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 92F10 800A2710 1400B1AF */  sw         $s1, 0x14($sp)
    /* 92F14 800A2714 1000B0AF */  sw         $s0, 0x10($sp)
    /* 92F18 800A2718 21908000 */  addu       $s2, $a0, $zero
    /* 92F1C 800A271C 21A0C000 */  addu       $s4, $a2, $zero
    /* 92F20 800A2720 2198E000 */  addu       $s3, $a3, $zero
    /* 92F24 800A2724 4000B58F */  lw         $s5, 0x40($sp)
    /* 92F28 800A2728 D988020C */  jal        func_800A2364
    /* 92F2C 800A272C 21880000 */   addu      $s1, $zero, $zero
    /* 92F30 800A2730 21804000 */  addu       $s0, $v0, $zero
    /* 92F34 800A2734 39000012 */  beqz       $s0, .L800A281C
    /* 92F38 800A2738 21204002 */   addu      $a0, $s2, $zero
    /* 92F3C 800A273C F552020C */  jal        func_80094BD4
    /* 92F40 800A2740 1C000524 */   addiu     $a1, $zero, 0x1C
    /* 92F44 800A2744 21884000 */  addu       $s1, $v0, $zero
    /* 92F48 800A2748 1800028E */  lw         $v0, 0x18($s0)
    /* 92F4C 800A274C 00000000 */  nop
    /* 92F50 800A2750 04004014 */  bnez       $v0, .L800A2764
    /* 92F54 800A2754 00000000 */   nop
    /* 92F58 800A2758 180011AE */  sw         $s1, 0x18($s0)
    /* 92F5C 800A275C E7890208 */  j          .L800A279C
    /* 92F60 800A2760 140020AE */   sw        $zero, 0x14($s1)
  .L800A2764:
    /* 92F64 800A2764 1800038E */  lw         $v1, 0x18($s0)
    /* 92F68 800A2768 00000000 */  nop
    /* 92F6C 800A276C 1000628C */  lw         $v0, 0x10($v1)
    /* 92F70 800A2770 00000000 */  nop
    /* 92F74 800A2774 07004010 */  beqz       $v0, .L800A2794
    /* 92F78 800A2778 00000000 */   nop
  .L800A277C:
    /* 92F7C 800A277C 1000638C */  lw         $v1, 0x10($v1)
    /* 92F80 800A2780 00000000 */  nop
    /* 92F84 800A2784 1000628C */  lw         $v0, 0x10($v1)
    /* 92F88 800A2788 00000000 */  nop
    /* 92F8C 800A278C FBFF4014 */  bnez       $v0, .L800A277C
    /* 92F90 800A2790 00000000 */   nop
  .L800A2794:
    /* 92F94 800A2794 100071AC */  sw         $s1, 0x10($v1)
    /* 92F98 800A2798 140023AE */  sw         $v1, 0x14($s1)
  .L800A279C:
    /* 92F9C 800A279C 180020AE */  sw         $zero, 0x18($s1)
    /* 92FA0 800A27A0 100020AE */  sw         $zero, 0x10($s1)
    /* 92FA4 800A27A4 080020AE */  sw         $zero, 0x8($s1)
    /* 92FA8 800A27A8 040034AE */  sw         $s4, 0x4($s1)
    /* 92FAC 800A27AC 15006012 */  beqz       $s3, .L800A2804
    /* 92FB0 800A27B0 0C0020AE */   sw        $zero, 0xC($s1)
    /* 92FB4 800A27B4 AD87030C */  jal        func_800E1EB4
    /* 92FB8 800A27B8 21206002 */   addu      $a0, $s3, $zero
    /* 92FBC 800A27BC 21184000 */  addu       $v1, $v0, $zero
    /* 92FC0 800A27C0 2A10A302 */  slt        $v0, $s5, $v1
    /* 92FC4 800A27C4 02004010 */  beqz       $v0, .L800A27D0
    /* 92FC8 800A27C8 2128A002 */   addu      $a1, $s5, $zero
    /* 92FCC 800A27CC 21286000 */  addu       $a1, $v1, $zero
  .L800A27D0:
    /* 92FD0 800A27D0 0100A524 */  addiu      $a1, $a1, 0x1
    /* 92FD4 800A27D4 21204002 */  addu       $a0, $s2, $zero
    /* 92FD8 800A27D8 F552020C */  jal        func_80094BD4
    /* 92FDC 800A27DC FFFFA530 */   andi      $a1, $a1, 0xFFFF
    /* 92FE0 800A27E0 000022AE */  sw         $v0, 0x0($s1)
    /* 92FE4 800A27E4 21204000 */  addu       $a0, $v0, $zero
    /* 92FE8 800A27E8 A587030C */  jal        func_800E1E94
    /* 92FEC 800A27EC 21286002 */   addu      $a1, $s3, $zero
    /* 92FF0 800A27F0 0000248E */  lw         $a0, 0x0($s1)
    /* 92FF4 800A27F4 6889020C */  jal        func_800A25A0
    /* 92FF8 800A27F8 00000000 */   nop
    /* 92FFC 800A27FC 028A0208 */  j          .L800A2808
    /* 93000 800A2800 00000000 */   nop
  .L800A2804:
    /* 93004 800A2804 000020AE */  sw         $zero, 0x0($s1)
  .L800A2808:
    /* 93008 800A2808 1400428E */  lw         $v0, 0x14($s2)
    /* 9300C 800A280C FFFF033C */  lui        $v1, (0xFFFF7FFF >> 16)
    /* 93010 800A2810 FF7F6334 */  ori        $v1, $v1, (0xFFFF7FFF & 0xFFFF)
    /* 93014 800A2814 24104300 */  and        $v0, $v0, $v1
    /* 93018 800A2818 140042AE */  sw         $v0, 0x14($s2)
  .L800A281C:
    /* 9301C 800A281C 21102002 */  addu       $v0, $s1, $zero
    /* 93020 800A2820 2800BF8F */  lw         $ra, 0x28($sp)
    /* 93024 800A2824 2400B58F */  lw         $s5, 0x24($sp)
    /* 93028 800A2828 2000B48F */  lw         $s4, 0x20($sp)
    /* 9302C 800A282C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 93030 800A2830 1800B28F */  lw         $s2, 0x18($sp)
    /* 93034 800A2834 1400B18F */  lw         $s1, 0x14($sp)
    /* 93038 800A2838 1000B08F */  lw         $s0, 0x10($sp)
    /* 9303C 800A283C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 93040 800A2840 0800E003 */  jr         $ra
    /* 93044 800A2844 00000000 */   nop
endlabel func_800A26F8
