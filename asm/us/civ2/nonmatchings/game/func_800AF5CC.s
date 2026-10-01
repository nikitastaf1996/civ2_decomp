.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AF5CC, 0x114

glabel func_800AF5CC
    /* 9FDCC 800AF5CC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9FDD0 800AF5D0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 9FDD4 800AF5D4 3000AB8F */  lw         $t3, 0x30($sp)
    /* 9FDD8 800AF5D8 3400AC8F */  lw         $t4, 0x34($sp)
    /* 9FDDC 800AF5DC 3800A38F */  lw         $v1, 0x38($sp)
    /* 9FDE0 800AF5E0 3C00A88F */  lw         $t0, 0x3C($sp)
    /* 9FDE4 800AF5E4 4000AD8F */  lw         $t5, 0x40($sp)
    /* 9FDE8 800AF5E8 4400AE8F */  lw         $t6, 0x44($sp)
    /* 9FDEC 800AF5EC 4800A98F */  lw         $t1, 0x48($sp)
    /* 9FDF0 800AF5F0 4C00AA8F */  lw         $t2, 0x4C($sp)
    /* 9FDF4 800AF5F4 2330CB00 */  subu       $a2, $a2, $t3
    /* 9FDF8 800AF5F8 2338EC00 */  subu       $a3, $a3, $t4
    /* 9FDFC 800AF5FC 23186D00 */  subu       $v1, $v1, $t5
    /* 9FE00 800AF600 0400C104 */  bgez       $a2, .L800AF614
    /* 9FE04 800AF604 23400E01 */   subu      $t0, $t0, $t6
    /* 9FE08 800AF608 23186600 */  subu       $v1, $v1, $a2
    /* 9FE0C 800AF60C 21482601 */  addu       $t1, $t1, $a2
    /* 9FE10 800AF610 21300000 */  addu       $a2, $zero, $zero
  .L800AF614:
    /* 9FE14 800AF614 04006104 */  bgez       $v1, .L800AF628
    /* 9FE18 800AF618 00000000 */   nop
    /* 9FE1C 800AF61C 2330C300 */  subu       $a2, $a2, $v1
    /* 9FE20 800AF620 21482301 */  addu       $t1, $t1, $v1
    /* 9FE24 800AF624 21180000 */  addu       $v1, $zero, $zero
  .L800AF628:
    /* 9FE28 800AF628 0400E104 */  bgez       $a3, .L800AF63C
    /* 9FE2C 800AF62C 00000000 */   nop
    /* 9FE30 800AF630 23400701 */  subu       $t0, $t0, $a3
    /* 9FE34 800AF634 21504701 */  addu       $t2, $t2, $a3
    /* 9FE38 800AF638 21380000 */  addu       $a3, $zero, $zero
  .L800AF63C:
    /* 9FE3C 800AF63C 04000105 */  bgez       $t0, .L800AF650
    /* 9FE40 800AF640 00000000 */   nop
    /* 9FE44 800AF644 2338E800 */  subu       $a3, $a3, $t0
    /* 9FE48 800AF648 21504801 */  addu       $t2, $t2, $t0
    /* 9FE4C 800AF64C 21400000 */  addu       $t0, $zero, $zero
  .L800AF650:
    /* 9FE50 800AF650 1F002019 */  blez       $t1, .L800AF6D0
    /* 9FE54 800AF654 00000000 */   nop
    /* 9FE58 800AF658 1D004019 */  blez       $t2, .L800AF6D0
    /* 9FE5C 800AF65C 00000000 */   nop
    /* 9FE60 800AF660 1C00828C */  lw         $v0, 0x1C($a0)
    /* 9FE64 800AF664 00000000 */  nop
    /* 9FE68 800AF668 0C004294 */  lhu        $v0, 0xC($v0)
    /* 9FE6C 800AF66C 00000000 */  nop
    /* 9FE70 800AF670 21104600 */  addu       $v0, $v0, $a2
    /* 9FE74 800AF674 21104B00 */  addu       $v0, $v0, $t3
    /* 9FE78 800AF678 1000A2A7 */  sh         $v0, 0x10($sp)
    /* 9FE7C 800AF67C 1C00828C */  lw         $v0, 0x1C($a0)
    /* 9FE80 800AF680 00000000 */  nop
    /* 9FE84 800AF684 0E004294 */  lhu        $v0, 0xE($v0)
    /* 9FE88 800AF688 00000000 */  nop
    /* 9FE8C 800AF68C 21104700 */  addu       $v0, $v0, $a3
    /* 9FE90 800AF690 21104C00 */  addu       $v0, $v0, $t4
    /* 9FE94 800AF694 1200A2A7 */  sh         $v0, 0x12($sp)
    /* 9FE98 800AF698 1400A9A7 */  sh         $t1, 0x14($sp)
    /* 9FE9C 800AF69C 1600AAA7 */  sh         $t2, 0x16($sp)
    /* 9FEA0 800AF6A0 1C00A28C */  lw         $v0, 0x1C($a1)
    /* 9FEA4 800AF6A4 00000000 */  nop
    /* 9FEA8 800AF6A8 0C004584 */  lh         $a1, 0xC($v0)
    /* 9FEAC 800AF6AC 00000000 */  nop
    /* 9FEB0 800AF6B0 2128A300 */  addu       $a1, $a1, $v1
    /* 9FEB4 800AF6B4 0E004684 */  lh         $a2, 0xE($v0)
    /* 9FEB8 800AF6B8 00000000 */  nop
    /* 9FEBC 800AF6BC 2130C800 */  addu       $a2, $a2, $t0
    /* 9FEC0 800AF6C0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 9FEC4 800AF6C4 2128AD00 */  addu       $a1, $a1, $t5
    /* 9FEC8 800AF6C8 078E030C */  jal        MoveImage
    /* 9FECC 800AF6CC 2130CE00 */   addu      $a2, $a2, $t6
  .L800AF6D0:
    /* 9FED0 800AF6D0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 9FED4 800AF6D4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 9FED8 800AF6D8 0800E003 */  jr         $ra
    /* 9FEDC 800AF6DC 00000000 */   nop
endlabel func_800AF5CC
