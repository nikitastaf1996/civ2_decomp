.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D8890, 0xB0

glabel func_800D8890
    /* C9090 800D8890 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C9094 800D8894 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* C9098 800D8898 1800B2AF */  sw         $s2, 0x18($sp)
    /* C909C 800D889C 1400B1AF */  sw         $s1, 0x14($sp)
    /* C90A0 800D88A0 1000B0AF */  sw         $s0, 0x10($sp)
    /* C90A4 800D88A4 21808000 */  addu       $s0, $a0, $zero
    /* C90A8 800D88A8 2188A000 */  addu       $s1, $a1, $zero
    /* C90AC 800D88AC B40E028E */  lw         $v0, 0xEB4($s0)
    /* C90B0 800D88B0 00000000 */  nop
    /* C90B4 800D88B4 1B004014 */  bnez       $v0, .L800D8924
    /* C90B8 800D88B8 2190C000 */   addu      $s2, $a2, $zero
    /* C90BC 800D88BC B00E028E */  lw         $v0, 0xEB0($s0)
    /* C90C0 800D88C0 00000000 */  nop
    /* C90C4 800D88C4 17004014 */  bnez       $v0, .L800D8924
    /* C90C8 800D88C8 00000000 */   nop
    /* C90CC 800D88CC B80E028E */  lw         $v0, 0xEB8($s0)
    /* C90D0 800D88D0 00000000 */  nop
    /* C90D4 800D88D4 13004014 */  bnez       $v0, .L800D8924
    /* C90D8 800D88D8 00000000 */   nop
    /* C90DC 800D88DC AC0E048E */  lw         $a0, 0xEAC($s0)
    /* C90E0 800D88E0 00000000 */  nop
    /* C90E4 800D88E4 0F008004 */  bltz       $a0, .L800D8924
    /* C90E8 800D88E8 00000000 */   nop
    /* C90EC 800D88EC 0C25020C */  jal        func_80089430
    /* C90F0 800D88F0 00000000 */   nop
    /* C90F4 800D88F4 1680023C */  lui        $v0, %hi(D_80158864)
    /* C90F8 800D88F8 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C90FC 800D88FC 21202002 */  addu       $a0, $s1, $zero
    /* C9100 800D8900 00004684 */  lh         $a2, 0x0($v0)
    /* C9104 800D8904 02004784 */  lh         $a3, 0x2($v0)
    /* C9108 800D8908 A73B030C */  jal        func_800CEE9C
    /* C910C 800D890C 21284002 */   addu      $a1, $s2, $zero
    /* C9110 800D8910 03004228 */  slti       $v0, $v0, 0x3
    /* C9114 800D8914 03004010 */  beqz       $v0, .L800D8924
    /* C9118 800D8918 21200002 */   addu      $a0, $s0, $zero
    /* C911C 800D891C B042030C */  jal        func_800D0AC0
    /* C9120 800D8920 21280000 */   addu      $a1, $zero, $zero
  .L800D8924:
    /* C9124 800D8924 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* C9128 800D8928 1800B28F */  lw         $s2, 0x18($sp)
    /* C912C 800D892C 1400B18F */  lw         $s1, 0x14($sp)
    /* C9130 800D8930 1000B08F */  lw         $s0, 0x10($sp)
    /* C9134 800D8934 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C9138 800D8938 0800E003 */  jr         $ra
    /* C913C 800D893C 00000000 */   nop
endlabel func_800D8890
