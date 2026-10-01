.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1DA4, 0x120

glabel func_800B1DA4
    /* A25A4 800B1DA4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A25A8 800B1DA8 2000BFAF */  sw         $ra, 0x20($sp)
    /* A25AC 800B1DAC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A25B0 800B1DB0 1800B2AF */  sw         $s2, 0x18($sp)
    /* A25B4 800B1DB4 1400B1AF */  sw         $s1, 0x14($sp)
    /* A25B8 800B1DB8 1000B0AF */  sw         $s0, 0x10($sp)
    /* A25BC 800B1DBC 21988000 */  addu       $s3, $a0, $zero
    /* A25C0 800B1DC0 2190A000 */  addu       $s2, $a1, $zero
    /* A25C4 800B1DC4 21880000 */  addu       $s1, $zero, $zero
    /* A25C8 800B1DC8 7801648E */  lw         $a0, 0x178($s3)
    /* A25CC 800B1DCC 1251000C */  jal        func_80014448
    /* A25D0 800B1DD0 04000524 */   addiu     $a1, $zero, 0x4
    /* A25D4 800B1DD4 03004014 */  bnez       $v0, .L800B1DE4
    /* A25D8 800B1DD8 21100000 */   addu      $v0, $zero, $zero
    /* A25DC 800B1DDC A9C70208 */  j          .L800B1EA4
    /* A25E0 800B1DE0 780160AE */   sw        $zero, 0x178($s3)
  .L800B1DE4:
    /* A25E4 800B1DE4 7801708E */  lw         $s0, 0x178($s3)
    /* A25E8 800B1DE8 00000000 */  nop
    /* A25EC 800B1DEC 06000012 */  beqz       $s0, .L800B1E08
    /* A25F0 800B1DF0 98016426 */   addiu     $a0, $s3, 0x198
  .L800B1DF4:
    /* A25F4 800B1DF4 21880002 */  addu       $s1, $s0, $zero
    /* A25F8 800B1DF8 0800108E */  lw         $s0, 0x8($s0)
    /* A25FC 800B1DFC 00000000 */  nop
    /* A2600 800B1E00 FCFF0016 */  bnez       $s0, .L800B1DF4
    /* A2604 800B1E04 98016426 */   addiu     $a0, $s3, 0x198
  .L800B1E08:
    /* A2608 800B1E08 F552020C */  jal        func_80094BD4
    /* A260C 800B1E0C 0C000524 */   addiu     $a1, $zero, 0xC
    /* A2610 800B1E10 03002012 */  beqz       $s1, .L800B1E20
    /* A2614 800B1E14 21804000 */   addu      $s0, $v0, $zero
    /* A2618 800B1E18 89C70208 */  j          .L800B1E24
    /* A261C 800B1E1C 080030AE */   sw        $s0, 0x8($s1)
  .L800B1E20:
    /* A2620 800B1E20 780170AE */  sw         $s0, 0x178($s3)
  .L800B1E24:
    /* A2624 800B1E24 080000AE */  sw         $zero, 0x8($s0)
    /* A2628 800B1E28 000000AE */  sw         $zero, 0x0($s0)
    /* A262C 800B1E2C 00004382 */  lb         $v1, 0x0($s2)
    /* A2630 800B1E30 5E000224 */  addiu      $v0, $zero, 0x5E
    /* A2634 800B1E34 0C006214 */  bne        $v1, $v0, .L800B1E68
    /* A2638 800B1E38 00000000 */   nop
    /* A263C 800B1E3C 01005226 */  addiu      $s2, $s2, 0x1
    /* A2640 800B1E40 00004282 */  lb         $v0, 0x0($s2)
    /* A2644 800B1E44 00000000 */  nop
    /* A2648 800B1E48 03004314 */  bne        $v0, $v1, .L800B1E58
    /* A264C 800B1E4C 01000224 */   addiu     $v0, $zero, 0x1
    /* A2650 800B1E50 99C70208 */  j          .L800B1E64
    /* A2654 800B1E54 01005226 */   addiu     $s2, $s2, 0x1
  .L800B1E58:
    /* A2658 800B1E58 0000028E */  lw         $v0, 0x0($s0)
    /* A265C 800B1E5C 00000000 */  nop
    /* A2660 800B1E60 02004234 */  ori        $v0, $v0, 0x2
  .L800B1E64:
    /* A2664 800B1E64 000002AE */  sw         $v0, 0x0($s0)
  .L800B1E68:
    /* A2668 800B1E68 AD87030C */  jal        func_800E1EB4
    /* A266C 800B1E6C 21204002 */   addu      $a0, $s2, $zero
    /* A2670 800B1E70 01804224 */  addiu      $v0, $v0, -0x7FFF
    /* A2674 800B1E74 98016426 */  addiu      $a0, $s3, 0x198
    /* A2678 800B1E78 F552020C */  jal        func_80094BD4
    /* A267C 800B1E7C FFFF4530 */   andi      $a1, $v0, 0xFFFF
    /* A2680 800B1E80 040002AE */  sw         $v0, 0x4($s0)
    /* A2684 800B1E84 21204000 */  addu       $a0, $v0, $zero
    /* A2688 800B1E88 A587030C */  jal        func_800E1E94
    /* A268C 800B1E8C 21284002 */   addu      $a1, $s2, $zero
    /* A2690 800B1E90 1400628E */  lw         $v0, 0x14($s3)
    /* A2694 800B1E94 00000000 */  nop
    /* A2698 800B1E98 01004224 */  addiu      $v0, $v0, 0x1
    /* A269C 800B1E9C 140062AE */  sw         $v0, 0x14($s3)
    /* A26A0 800B1EA0 21100002 */  addu       $v0, $s0, $zero
  .L800B1EA4:
    /* A26A4 800B1EA4 2000BF8F */  lw         $ra, 0x20($sp)
    /* A26A8 800B1EA8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A26AC 800B1EAC 1800B28F */  lw         $s2, 0x18($sp)
    /* A26B0 800B1EB0 1400B18F */  lw         $s1, 0x14($sp)
    /* A26B4 800B1EB4 1000B08F */  lw         $s0, 0x10($sp)
    /* A26B8 800B1EB8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* A26BC 800B1EBC 0800E003 */  jr         $ra
    /* A26C0 800B1EC0 00000000 */   nop
endlabel func_800B1DA4
