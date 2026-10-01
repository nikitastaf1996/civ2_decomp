.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004EEFC, 0xA4

glabel func_8004EEFC
    /* 3F6FC 8004EEFC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 3F700 8004EF00 2000BFAF */  sw         $ra, 0x20($sp)
    /* 3F704 8004EF04 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 3F708 8004EF08 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3F70C 8004EF0C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3F710 8004EF10 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3F714 8004EF14 21888000 */  addu       $s1, $a0, $zero
    /* 3F718 8004EF18 21980000 */  addu       $s3, $zero, $zero
    /* 3F71C 8004EF1C 0A001024 */  addiu      $s0, $zero, 0xA
    /* 3F720 8004EF20 1600201A */  blez       $s1, .L8004EF7C
    /* 3F724 8004EF24 32001224 */   addiu     $s2, $zero, 0x32
  .L8004EF28:
    /* 3F728 8004EF28 21202002 */  addu       $a0, $s1, $zero
    /* 3F72C 8004EF2C 21280000 */  addu       $a1, $zero, $zero
    /* 3F730 8004EF30 F53A030C */  jal        func_800CEBD4
    /* 3F734 8004EF34 21304002 */   addu      $a2, $s2, $zero
    /* 3F738 8004EF38 1A005000 */  div        $zero, $v0, $s0
    /* 3F73C 8004EF3C 02000016 */  bnez       $s0, .L8004EF48
    /* 3F740 8004EF40 00000000 */   nop
    /* 3F744 8004EF44 0D000700 */  break      7
  .L8004EF48:
    /* 3F748 8004EF48 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3F74C 8004EF4C 04000116 */  bne        $s0, $at, .L8004EF60
    /* 3F750 8004EF50 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3F754 8004EF54 02004114 */  bne        $v0, $at, .L8004EF60
    /* 3F758 8004EF58 00000000 */   nop
    /* 3F75C 8004EF5C 0D000600 */  break      6
  .L8004EF60:
    /* 3F760 8004EF60 12100000 */  mflo       $v0
    /* 3F764 8004EF64 00000000 */  nop
    /* 3F768 8004EF68 21986202 */  addu       $s3, $s3, $v0
    /* 3F76C 8004EF6C 05001026 */  addiu      $s0, $s0, 0x5
    /* 3F770 8004EF70 23883202 */  subu       $s1, $s1, $s2
    /* 3F774 8004EF74 ECFF201E */  bgtz       $s1, .L8004EF28
    /* 3F778 8004EF78 64001224 */   addiu     $s2, $zero, 0x64
  .L8004EF7C:
    /* 3F77C 8004EF7C 21106002 */  addu       $v0, $s3, $zero
    /* 3F780 8004EF80 2000BF8F */  lw         $ra, 0x20($sp)
    /* 3F784 8004EF84 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 3F788 8004EF88 1800B28F */  lw         $s2, 0x18($sp)
    /* 3F78C 8004EF8C 1400B18F */  lw         $s1, 0x14($sp)
    /* 3F790 8004EF90 1000B08F */  lw         $s0, 0x10($sp)
    /* 3F794 8004EF94 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 3F798 8004EF98 0800E003 */  jr         $ra
    /* 3F79C 8004EF9C 00000000 */   nop
endlabel func_8004EEFC
