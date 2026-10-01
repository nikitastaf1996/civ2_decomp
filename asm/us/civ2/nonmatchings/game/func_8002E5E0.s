.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002E5E0, 0xB0

glabel func_8002E5E0
    /* 1EDE0 8002E5E0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 1EDE4 8002E5E4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 1EDE8 8002E5E8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1EDEC 8002E5EC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1EDF0 8002E5F0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1EDF4 8002E5F4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1EDF8 8002E5F8 21888000 */  addu       $s1, $a0, $zero
    /* 1EDFC 8002E5FC 2198C000 */  addu       $s3, $a2, $zero
    /* 1EE00 8002E600 1B006006 */  bltz       $s3, .L8002E670
    /* 1EE04 8002E604 2190A000 */   addu      $s2, $a1, $zero
    /* 1EE08 8002E608 01001024 */  addiu      $s0, $zero, 0x1
    /* 1EE0C 8002E60C BD60020C */  jal        func_800982F4
    /* 1EE10 8002E610 04807002 */   sllv      $s0, $s0, $s3
    /* 1EE14 8002E614 04004390 */  lbu        $v1, 0x4($v0)
    /* 1EE18 8002E618 00000000 */  nop
    /* 1EE1C 8002E61C 25800302 */  or         $s0, $s0, $v1
    /* 1EE20 8002E620 040050A0 */  sb         $s0, 0x4($v0)
    /* 1EE24 8002E624 21202002 */  addu       $a0, $s1, $zero
    /* 1EE28 8002E628 21284002 */  addu       $a1, $s2, $zero
    /* 1EE2C 8002E62C 8961020C */  jal        func_80098624
    /* 1EE30 8002E630 21306002 */   addu      $a2, $s3, $zero
    /* 1EE34 8002E634 21202002 */  addu       $a0, $s1, $zero
    /* 1EE38 8002E638 1E26020C */  jal        func_80089878
    /* 1EE3C 8002E63C 21284002 */   addu      $a1, $s2, $zero
    /* 1EE40 8002E640 05004004 */  bltz       $v0, .L8002E658
    /* 1EE44 8002E644 21204000 */   addu      $a0, $v0, $zero
    /* 1EE48 8002E648 2125020C */  jal        func_80089484
    /* 1EE4C 8002E64C 21286002 */   addu      $a1, $s3, $zero
    /* 1EE50 8002E650 9CB90008 */  j          .L8002E670
    /* 1EE54 8002E654 00000000 */   nop
  .L8002E658:
    /* 1EE58 8002E658 21202002 */  addu       $a0, $s1, $zero
    /* 1EE5C 8002E65C 04EE010C */  jal        func_8007B810
    /* 1EE60 8002E660 21284002 */   addu      $a1, $s2, $zero
    /* 1EE64 8002E664 21204000 */  addu       $a0, $v0, $zero
    /* 1EE68 8002E668 B7F3010C */  jal        func_8007CEDC
    /* 1EE6C 8002E66C 21286002 */   addu      $a1, $s3, $zero
  .L8002E670:
    /* 1EE70 8002E670 2000BF8F */  lw         $ra, 0x20($sp)
    /* 1EE74 8002E674 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1EE78 8002E678 1800B28F */  lw         $s2, 0x18($sp)
    /* 1EE7C 8002E67C 1400B18F */  lw         $s1, 0x14($sp)
    /* 1EE80 8002E680 1000B08F */  lw         $s0, 0x10($sp)
    /* 1EE84 8002E684 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 1EE88 8002E688 0800E003 */  jr         $ra
    /* 1EE8C 8002E68C 00000000 */   nop
endlabel func_8002E5E0
