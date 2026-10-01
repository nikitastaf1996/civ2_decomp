.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008F5CC, 0x18C

glabel func_8008F5CC
    /* 7FDCC 8008F5CC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 7FDD0 8008F5D0 3400BFAF */  sw         $ra, 0x34($sp)
    /* 7FDD4 8008F5D4 3000BEAF */  sw         $fp, 0x30($sp)
    /* 7FDD8 8008F5D8 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 7FDDC 8008F5DC 2800B6AF */  sw         $s6, 0x28($sp)
    /* 7FDE0 8008F5E0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 7FDE4 8008F5E4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 7FDE8 8008F5E8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 7FDEC 8008F5EC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 7FDF0 8008F5F0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7FDF4 8008F5F4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7FDF8 8008F5F8 21B8A000 */  addu       $s7, $a1, $zero
    /* 7FDFC 8008F5FC 21F0C000 */  addu       $fp, $a2, $zero
    /* 7FE00 8008F600 21A00000 */  addu       $s4, $zero, $zero
    /* 7FE04 8008F604 40100400 */  sll        $v0, $a0, 1
    /* 7FE08 8008F608 21104400 */  addu       $v0, $v0, $a0
    /* 7FE0C 8008F60C 80100200 */  sll        $v0, $v0, 2
    /* 7FE10 8008F610 23104400 */  subu       $v0, $v0, $a0
    /* 7FE14 8008F614 C0100200 */  sll        $v0, $v0, 3
    /* 7FE18 8008F618 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 7FE1C 8008F61C 21082200 */  addu       $at, $at, $v0
    /* 7FE20 8008F620 D03E3684 */  lh         $s6, %lo(D_80113ED0)($at)
    /* 7FE24 8008F624 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 7FE28 8008F628 21082200 */  addu       $at, $at, $v0
    /* 7FE2C 8008F62C D23E3584 */  lh         $s5, %lo(D_80113ED2)($at)
    /* 7FE30 8008F630 21880000 */  addu       $s1, $zero, $zero
  .L8008F634:
    /* 7FE34 8008F634 0800222A */  slti       $v0, $s1, 0x8
    /* 7FE38 8008F638 34004010 */  beqz       $v0, .L8008F70C
    /* 7FE3C 8008F63C 00000000 */   nop
    /* 7FE40 8008F640 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 7FE44 8008F644 21083100 */  addu       $at, $at, $s1
    /* 7FE48 8008F648 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* 7FE4C 8008F64C 173B030C */  jal        func_800CEC5C
    /* 7FE50 8008F650 2120C402 */   addu      $a0, $s6, $a0
    /* 7FE54 8008F654 21904000 */  addu       $s2, $v0, $zero
    /* 7FE58 8008F658 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 7FE5C 8008F65C 21083100 */  addu       $at, $at, $s1
    /* 7FE60 8008F660 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 7FE64 8008F664 00000000 */  nop
    /* 7FE68 8008F668 2180A202 */  addu       $s0, $s5, $v0
    /* 7FE6C 8008F66C 0D000006 */  bltz       $s0, .L8008F6A4
    /* 7FE70 8008F670 21180000 */   addu      $v1, $zero, $zero
    /* 7FE74 8008F674 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 7FE78 8008F678 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 7FE7C 8008F67C 00000000 */  nop
    /* 7FE80 8008F680 2A100202 */  slt        $v0, $s0, $v0
    /* 7FE84 8008F684 07004010 */  beqz       $v0, .L8008F6A4
    /* 7FE88 8008F688 00000000 */   nop
    /* 7FE8C 8008F68C 05004006 */  bltz       $s2, .L8008F6A4
    /* 7FE90 8008F690 00000000 */   nop
    /* 7FE94 8008F694 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 7FE98 8008F698 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 7FE9C 8008F69C 00000000 */  nop
    /* 7FEA0 8008F6A0 2A184202 */  slt        $v1, $s2, $v0
  .L8008F6A4:
    /* 7FEA4 8008F6A4 17006010 */  beqz       $v1, .L8008F704
    /* 7FEA8 8008F6A8 21204002 */   addu      $a0, $s2, $zero
    /* 7FEAC 8008F6AC F760020C */  jal        func_800983DC
    /* 7FEB0 8008F6B0 21280002 */   addu      $a1, $s0, $zero
    /* 7FEB4 8008F6B4 13004010 */  beqz       $v0, .L8008F704
    /* 7FEB8 8008F6B8 21204002 */   addu      $a0, $s2, $zero
    /* 7FEBC 8008F6BC 2561020C */  jal        func_80098494
    /* 7FEC0 8008F6C0 21280002 */   addu      $a1, $s0, $zero
    /* 7FEC4 8008F6C4 21984000 */  addu       $s3, $v0, $zero
    /* 7FEC8 8008F6C8 00111300 */  sll        $v0, $s3, 4
    /* 7FECC 8008F6CC 1180013C */  lui        $at, %hi(D_8010CC68)
    /* 7FED0 8008F6D0 21082200 */  addu       $at, $at, $v0
    /* 7FED4 8008F6D4 68CC2384 */  lh         $v1, %lo(D_8010CC68)($at)
    /* 7FED8 8008F6D8 3F00622A */  slti       $v0, $s3, 0x3F
    /* 7FEDC 8008F6DC 03004014 */  bnez       $v0, .L8008F6EC
    /* 7FEE0 8008F6E0 2A107400 */   slt       $v0, $v1, $s4
    /* 7FEE4 8008F6E4 01000324 */  addiu      $v1, $zero, 0x1
    /* 7FEE8 8008F6E8 2A107400 */  slt        $v0, $v1, $s4
  .L8008F6EC:
    /* 7FEEC 8008F6EC 02004014 */  bnez       $v0, .L8008F6F8
    /* 7FEF0 8008F6F0 00000000 */   nop
    /* 7FEF4 8008F6F4 21A06000 */  addu       $s4, $v1, $zero
  .L8008F6F8:
    /* 7FEF8 8008F6F8 02002326 */  addiu      $v1, $s1, 0x2
    /* 7FEFC 8008F6FC 01002232 */  andi       $v0, $s1, 0x1
    /* 7FF00 8008F700 23886200 */  subu       $s1, $v1, $v0
  .L8008F704:
    /* 7FF04 8008F704 8D3D0208 */  j          .L8008F634
    /* 7FF08 8008F708 01003126 */   addiu     $s1, $s1, 0x1
  .L8008F70C:
    /* 7FF0C 8008F70C 0200E012 */  beqz       $s7, .L8008F718
    /* 7FF10 8008F710 00000000 */   nop
    /* 7FF14 8008F714 0000F4AE */  sw         $s4, 0x0($s7)
  .L8008F718:
    /* 7FF18 8008F718 0200C013 */  beqz       $fp, .L8008F724
    /* 7FF1C 8008F71C 21106002 */   addu      $v0, $s3, $zero
    /* 7FF20 8008F720 0000D1AF */  sw         $s1, 0x0($fp)
  .L8008F724:
    /* 7FF24 8008F724 3400BF8F */  lw         $ra, 0x34($sp)
    /* 7FF28 8008F728 3000BE8F */  lw         $fp, 0x30($sp)
    /* 7FF2C 8008F72C 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 7FF30 8008F730 2800B68F */  lw         $s6, 0x28($sp)
    /* 7FF34 8008F734 2400B58F */  lw         $s5, 0x24($sp)
    /* 7FF38 8008F738 2000B48F */  lw         $s4, 0x20($sp)
    /* 7FF3C 8008F73C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 7FF40 8008F740 1800B28F */  lw         $s2, 0x18($sp)
    /* 7FF44 8008F744 1400B18F */  lw         $s1, 0x14($sp)
    /* 7FF48 8008F748 1000B08F */  lw         $s0, 0x10($sp)
    /* 7FF4C 8008F74C 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 7FF50 8008F750 0800E003 */  jr         $ra
    /* 7FF54 8008F754 00000000 */   nop
endlabel func_8008F5CC
