.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B24F4, 0x1AC

glabel func_800B24F4
    /* A2CF4 800B24F4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A2CF8 800B24F8 2800BFAF */  sw         $ra, 0x28($sp)
    /* A2CFC 800B24FC 2400B5AF */  sw         $s5, 0x24($sp)
    /* A2D00 800B2500 2000B4AF */  sw         $s4, 0x20($sp)
    /* A2D04 800B2504 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A2D08 800B2508 1800B2AF */  sw         $s2, 0x18($sp)
    /* A2D0C 800B250C 1400B1AF */  sw         $s1, 0x14($sp)
    /* A2D10 800B2510 1000B0AF */  sw         $s0, 0x10($sp)
    /* A2D14 800B2514 21908000 */  addu       $s2, $a0, $zero
    /* A2D18 800B2518 2198A000 */  addu       $s3, $a1, $zero
    /* A2D1C 800B251C 21A8C000 */  addu       $s5, $a2, $zero
    /* A2D20 800B2520 21A0E000 */  addu       $s4, $a3, $zero
    /* A2D24 800B2524 7C01508E */  lw         $s0, 0x17C($s2)
    /* A2D28 800B2528 00000000 */  nop
    /* A2D2C 800B252C 06000012 */  beqz       $s0, .L800B2548
    /* A2D30 800B2530 21880000 */   addu      $s1, $zero, $zero
  .L800B2534:
    /* A2D34 800B2534 21880002 */  addu       $s1, $s0, $zero
    /* A2D38 800B2538 1000108E */  lw         $s0, 0x10($s0)
    /* A2D3C 800B253C 00000000 */  nop
    /* A2D40 800B2540 FCFF0016 */  bnez       $s0, .L800B2534
    /* A2D44 800B2544 00000000 */   nop
  .L800B2548:
    /* A2D48 800B2548 98014426 */  addiu      $a0, $s2, 0x198
    /* A2D4C 800B254C F552020C */  jal        func_80094BD4
    /* A2D50 800B2550 14000524 */   addiu     $a1, $zero, 0x14
    /* A2D54 800B2554 03002012 */  beqz       $s1, .L800B2564
    /* A2D58 800B2558 21804000 */   addu      $s0, $v0, $zero
    /* A2D5C 800B255C 5FC90208 */  j          .L800B257C
    /* A2D60 800B2560 100030AE */   sw        $s0, 0x10($s1)
  .L800B2564:
    /* A2D64 800B2564 7C0150AE */  sw         $s0, 0x17C($s2)
    /* A2D68 800B2568 6C01428E */  lw         $v0, 0x16C($s2)
    /* A2D6C 800B256C 00000000 */  nop
    /* A2D70 800B2570 02004014 */  bnez       $v0, .L800B257C
    /* A2D74 800B2574 00000000 */   nop
    /* A2D78 800B2578 6C0150AE */  sw         $s0, 0x16C($s2)
  .L800B257C:
    /* A2D7C 800B257C 100000AE */  sw         $zero, 0x10($s0)
    /* A2D80 800B2580 040000AE */  sw         $zero, 0x4($s0)
    /* A2D84 800B2584 0C0013AE */  sw         $s3, 0xC($s0)
    /* A2D88 800B2588 30006286 */  lh         $v0, 0x30($s3)
    /* A2D8C 800B258C 2C006386 */  lh         $v1, 0x2C($s3)
    /* A2D90 800B2590 00000000 */  nop
    /* A2D94 800B2594 23104300 */  subu       $v0, $v0, $v1
    /* A2D98 800B2598 00140200 */  sll        $v0, $v0, 16
    /* A2D9C 800B259C 038C0200 */  sra        $s1, $v0, 16
    /* A2DA0 800B25A0 A100232A */  slti       $v1, $s1, 0xA1
    /* A2DA4 800B25A4 01006338 */  xori       $v1, $v1, 0x1
    /* A2DA8 800B25A8 32006286 */  lh         $v0, 0x32($s3)
    /* A2DAC 800B25AC 2E006486 */  lh         $a0, 0x2E($s3)
    /* A2DB0 800B25B0 00000000 */  nop
    /* A2DB4 800B25B4 23104400 */  subu       $v0, $v0, $a0
    /* A2DB8 800B25B8 00140200 */  sll        $v0, $v0, 16
    /* A2DBC 800B25BC 7800043C */  lui        $a0, (0x780000 >> 16)
    /* A2DC0 800B25C0 2A108200 */  slt        $v0, $a0, $v0
    /* A2DC4 800B25C4 25186200 */  or         $v1, $v1, $v0
    /* A2DC8 800B25C8 8001428E */  lw         $v0, 0x180($s2)
    /* A2DCC 800B25CC 00000000 */  nop
    /* A2DD0 800B25D0 0100422C */  sltiu      $v0, $v0, 0x1
    /* A2DD4 800B25D4 24186200 */  and        $v1, $v1, $v0
    /* A2DD8 800B25D8 02006010 */  beqz       $v1, .L800B25E4
    /* A2DDC 800B25DC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A2DE0 800B25E0 040242A6 */  sh         $v0, 0x204($s2)
  .L800B25E4:
    /* A2DE4 800B25E4 16008012 */  beqz       $s4, .L800B2640
    /* A2DE8 800B25E8 00000000 */   nop
    /* A2DEC 800B25EC AD87030C */  jal        func_800E1EB4
    /* A2DF0 800B25F0 21208002 */   addu      $a0, $s4, $zero
    /* A2DF4 800B25F4 01804224 */  addiu      $v0, $v0, -0x7FFF
    /* A2DF8 800B25F8 98014426 */  addiu      $a0, $s2, 0x198
    /* A2DFC 800B25FC F552020C */  jal        func_80094BD4
    /* A2E00 800B2600 FFFF4530 */   andi      $a1, $v0, 0xFFFF
    /* A2E04 800B2604 080002AE */  sw         $v0, 0x8($s0)
    /* A2E08 800B2608 21204000 */  addu       $a0, $v0, $zero
    /* A2E0C 800B260C A587030C */  jal        func_800E1E94
    /* A2E10 800B2610 21288002 */   addu      $a1, $s4, $zero
    /* A2E14 800B2614 0800048E */  lw         $a0, 0x8($s0)
    /* A2E18 800B2618 AD87030C */  jal        func_800E1EB4
    /* A2E1C 800B261C 00000000 */   nop
    /* A2E20 800B2620 40180200 */  sll        $v1, $v0, 1
    /* A2E24 800B2624 21186200 */  addu       $v1, $v1, $v0
    /* A2E28 800B2628 40180300 */  sll        $v1, $v1, 1
    /* A2E2C 800B262C A800428E */  lw         $v0, 0xA8($s2)
    /* A2E30 800B2630 00000000 */  nop
    /* A2E34 800B2634 21186200 */  addu       $v1, $v1, $v0
    /* A2E38 800B2638 91C90208 */  j          .L800B2644
    /* A2E3C 800B263C 21882302 */   addu      $s1, $s1, $v1
  .L800B2640:
    /* A2E40 800B2640 080000AE */  sw         $zero, 0x8($s0)
  .L800B2644:
    /* A2E44 800B2644 000015AE */  sw         $s5, 0x0($s0)
    /* A2E48 800B2648 0401448E */  lw         $a0, 0x104($s2)
    /* A2E4C 800B264C 00000000 */  nop
    /* A2E50 800B2650 2A102402 */  slt        $v0, $s1, $a0
    /* A2E54 800B2654 02004010 */  beqz       $v0, .L800B2660
    /* A2E58 800B2658 21182002 */   addu      $v1, $s1, $zero
    /* A2E5C 800B265C 21188000 */  addu       $v1, $a0, $zero
  .L800B2660:
    /* A2E60 800B2660 040143AE */  sw         $v1, 0x104($s2)
    /* A2E64 800B2664 2000428E */  lw         $v0, 0x20($s2)
    /* A2E68 800B2668 00000000 */  nop
    /* A2E6C 800B266C 01004224 */  addiu      $v0, $v0, 0x1
    /* A2E70 800B2670 200042AE */  sw         $v0, 0x20($s2)
    /* A2E74 800B2674 21100002 */  addu       $v0, $s0, $zero
    /* A2E78 800B2678 2800BF8F */  lw         $ra, 0x28($sp)
    /* A2E7C 800B267C 2400B58F */  lw         $s5, 0x24($sp)
    /* A2E80 800B2680 2000B48F */  lw         $s4, 0x20($sp)
    /* A2E84 800B2684 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A2E88 800B2688 1800B28F */  lw         $s2, 0x18($sp)
    /* A2E8C 800B268C 1400B18F */  lw         $s1, 0x14($sp)
    /* A2E90 800B2690 1000B08F */  lw         $s0, 0x10($sp)
    /* A2E94 800B2694 3000BD27 */  addiu      $sp, $sp, 0x30
    /* A2E98 800B2698 0800E003 */  jr         $ra
    /* A2E9C 800B269C 00000000 */   nop
endlabel func_800B24F4
