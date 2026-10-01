.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800986D0, 0x74

glabel func_800986D0
    /* 88ED0 800986D0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 88ED4 800986D4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 88ED8 800986D8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 88EDC 800986DC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 88EE0 800986E0 2180C000 */  addu       $s0, $a2, $zero
    /* 88EE4 800986E4 11000006 */  bltz       $s0, .L8009872C
    /* 88EE8 800986E8 2188E000 */   addu      $s1, $a3, $zero
    /* 88EEC 800986EC BD60020C */  jal        func_800982F4
    /* 88EF0 800986F0 00000000 */   nop
    /* 88EF4 800986F4 06002012 */  beqz       $s1, .L80098710
    /* 88EF8 800986F8 21204000 */   addu      $a0, $v0, $zero
    /* 88EFC 800986FC 01000324 */  addiu      $v1, $zero, 0x1
    /* 88F00 80098700 04180302 */  sllv       $v1, $v1, $s0
    /* 88F04 80098704 04008290 */  lbu        $v0, 0x4($a0)
    /* 88F08 80098708 CA610208 */  j          .L80098728
    /* 88F0C 8009870C 25104300 */   or        $v0, $v0, $v1
  .L80098710:
    /* 88F10 80098710 01000324 */  addiu      $v1, $zero, 0x1
    /* 88F14 80098714 04180302 */  sllv       $v1, $v1, $s0
    /* 88F18 80098718 27180300 */  nor        $v1, $zero, $v1
    /* 88F1C 8009871C 04008290 */  lbu        $v0, 0x4($a0)
    /* 88F20 80098720 00000000 */  nop
    /* 88F24 80098724 24104300 */  and        $v0, $v0, $v1
  .L80098728:
    /* 88F28 80098728 040082A0 */  sb         $v0, 0x4($a0)
  .L8009872C:
    /* 88F2C 8009872C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 88F30 80098730 1400B18F */  lw         $s1, 0x14($sp)
    /* 88F34 80098734 1000B08F */  lw         $s0, 0x10($sp)
    /* 88F38 80098738 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 88F3C 8009873C 0800E003 */  jr         $ra
    /* 88F40 80098740 00000000 */   nop
endlabel func_800986D0
