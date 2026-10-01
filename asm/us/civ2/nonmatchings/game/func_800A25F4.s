.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A25F4, 0x104

glabel func_800A25F4
    /* 92DF4 800A25F4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 92DF8 800A25F8 2000BFAF */  sw         $ra, 0x20($sp)
    /* 92DFC 800A25FC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 92E00 800A2600 1800B2AF */  sw         $s2, 0x18($sp)
    /* 92E04 800A2604 1400B1AF */  sw         $s1, 0x14($sp)
    /* 92E08 800A2608 1000B0AF */  sw         $s0, 0x10($sp)
    /* 92E0C 800A260C 21888000 */  addu       $s1, $a0, $zero
    /* 92E10 800A2610 2190A000 */  addu       $s2, $a1, $zero
    /* 92E14 800A2614 2198C000 */  addu       $s3, $a2, $zero
    /* 92E18 800A2618 F552020C */  jal        func_80094BD4
    /* 92E1C 800A261C 1C000524 */   addiu     $a1, $zero, 0x1C
    /* 92E20 800A2620 21804000 */  addu       $s0, $v0, $zero
    /* 92E24 800A2624 1800228E */  lw         $v0, 0x18($s1)
    /* 92E28 800A2628 00000000 */  nop
    /* 92E2C 800A262C 04004014 */  bnez       $v0, .L800A2640
    /* 92E30 800A2630 00000000 */   nop
    /* 92E34 800A2634 180030AE */  sw         $s0, 0x18($s1)
    /* 92E38 800A2638 9E890208 */  j          .L800A2678
    /* 92E3C 800A263C 140000AE */   sw        $zero, 0x14($s0)
  .L800A2640:
    /* 92E40 800A2640 1800238E */  lw         $v1, 0x18($s1)
    /* 92E44 800A2644 00000000 */  nop
    /* 92E48 800A2648 1000628C */  lw         $v0, 0x10($v1)
    /* 92E4C 800A264C 00000000 */  nop
    /* 92E50 800A2650 07004010 */  beqz       $v0, .L800A2670
    /* 92E54 800A2654 00000000 */   nop
  .L800A2658:
    /* 92E58 800A2658 1000638C */  lw         $v1, 0x10($v1)
    /* 92E5C 800A265C 00000000 */  nop
    /* 92E60 800A2660 1000628C */  lw         $v0, 0x10($v1)
    /* 92E64 800A2664 00000000 */  nop
    /* 92E68 800A2668 FBFF4014 */  bnez       $v0, .L800A2658
    /* 92E6C 800A266C 00000000 */   nop
  .L800A2670:
    /* 92E70 800A2670 100070AC */  sw         $s0, 0x10($v1)
    /* 92E74 800A2674 140003AE */  sw         $v1, 0x14($s0)
  .L800A2678:
    /* 92E78 800A2678 100000AE */  sw         $zero, 0x10($s0)
    /* 92E7C 800A267C 180000AE */  sw         $zero, 0x18($s0)
    /* 92E80 800A2680 080000AE */  sw         $zero, 0x8($s0)
    /* 92E84 800A2684 040012AE */  sw         $s2, 0x4($s0)
    /* 92E88 800A2688 0C0000AE */  sw         $zero, 0xC($s0)
    /* 92E8C 800A268C AD87030C */  jal        func_800E1EB4
    /* 92E90 800A2690 21206002 */   addu      $a0, $s3, $zero
    /* 92E94 800A2694 01004224 */  addiu      $v0, $v0, 0x1
    /* 92E98 800A2698 21202002 */  addu       $a0, $s1, $zero
    /* 92E9C 800A269C F552020C */  jal        func_80094BD4
    /* 92EA0 800A26A0 FFFF4530 */   andi      $a1, $v0, 0xFFFF
    /* 92EA4 800A26A4 000002AE */  sw         $v0, 0x0($s0)
    /* 92EA8 800A26A8 21204000 */  addu       $a0, $v0, $zero
    /* 92EAC 800A26AC A587030C */  jal        func_800E1E94
    /* 92EB0 800A26B0 21286002 */   addu      $a1, $s3, $zero
    /* 92EB4 800A26B4 0000048E */  lw         $a0, 0x0($s0)
    /* 92EB8 800A26B8 6889020C */  jal        func_800A25A0
    /* 92EBC 800A26BC 00000000 */   nop
    /* 92EC0 800A26C0 1400228E */  lw         $v0, 0x14($s1)
    /* 92EC4 800A26C4 FFFF033C */  lui        $v1, (0xFFFF7FFF >> 16)
    /* 92EC8 800A26C8 FF7F6334 */  ori        $v1, $v1, (0xFFFF7FFF & 0xFFFF)
    /* 92ECC 800A26CC 24104300 */  and        $v0, $v0, $v1
    /* 92ED0 800A26D0 140022AE */  sw         $v0, 0x14($s1)
    /* 92ED4 800A26D4 21100002 */  addu       $v0, $s0, $zero
    /* 92ED8 800A26D8 2000BF8F */  lw         $ra, 0x20($sp)
    /* 92EDC 800A26DC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 92EE0 800A26E0 1800B28F */  lw         $s2, 0x18($sp)
    /* 92EE4 800A26E4 1400B18F */  lw         $s1, 0x14($sp)
    /* 92EE8 800A26E8 1000B08F */  lw         $s0, 0x10($sp)
    /* 92EEC 800A26EC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 92EF0 800A26F0 0800E003 */  jr         $ra
    /* 92EF4 800A26F4 00000000 */   nop
endlabel func_800A25F4
