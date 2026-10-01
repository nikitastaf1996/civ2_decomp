.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEF5C, 0x11C

glabel func_800CEF5C
    /* BF75C 800CEF5C 88FFBD27 */  addiu      $sp, $sp, -0x78
    /* BF760 800CEF60 7000BFAF */  sw         $ra, 0x70($sp)
    /* BF764 800CEF64 6C00B7AF */  sw         $s7, 0x6C($sp)
    /* BF768 800CEF68 6800B6AF */  sw         $s6, 0x68($sp)
    /* BF76C 800CEF6C 6400B5AF */  sw         $s5, 0x64($sp)
    /* BF770 800CEF70 6000B4AF */  sw         $s4, 0x60($sp)
    /* BF774 800CEF74 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* BF778 800CEF78 5800B2AF */  sw         $s2, 0x58($sp)
    /* BF77C 800CEF7C 5400B1AF */  sw         $s1, 0x54($sp)
    /* BF780 800CEF80 5000B0AF */  sw         $s0, 0x50($sp)
    /* BF784 800CEF84 21A88000 */  addu       $s5, $a0, $zero
    /* BF788 800CEF88 2198A000 */  addu       $s3, $a1, $zero
    /* BF78C 800CEF8C 21A0C000 */  addu       $s4, $a2, $zero
    /* BF790 800CEF90 21B0E000 */  addu       $s6, $a3, $zero
    /* BF794 800CEF94 21880000 */  addu       $s1, $zero, $zero
    /* BF798 800CEF98 1000B727 */  addiu      $s7, $sp, 0x10
    /* BF79C 800CEF9C FF001224 */  addiu      $s2, $zero, 0xFF
  .L800CEFA0:
    /* BF7A0 800CEFA0 00811100 */  sll        $s0, $s1, 4
    /* BF7A4 800CEFA4 2180F002 */  addu       $s0, $s7, $s0
    /* BF7A8 800CEFA8 C59E030C */  jal        SetLineF2
    /* BF7AC 800CEFAC 21200002 */   addu      $a0, $s0, $zero
    /* BF7B0 800CEFB0 040012A2 */  sb         $s2, 0x4($s0)
    /* BF7B4 800CEFB4 050012A2 */  sb         $s2, 0x5($s0)
    /* BF7B8 800CEFB8 01003126 */  addiu      $s1, $s1, 0x1
    /* BF7BC 800CEFBC 0400222A */  slti       $v0, $s1, 0x4
    /* BF7C0 800CEFC0 F7FF4014 */  bnez       $v0, .L800CEFA0
    /* BF7C4 800CEFC4 060012A2 */   sb        $s2, 0x6($s0)
    /* BF7C8 800CEFC8 FFFF9426 */  addiu      $s4, $s4, -0x1
    /* BF7CC 800CEFCC FFFFD626 */  addiu      $s6, $s6, -0x1
    /* BF7D0 800CEFD0 1800B5A7 */  sh         $s5, 0x18($sp)
    /* BF7D4 800CEFD4 1A00B3A7 */  sh         $s3, 0x1A($sp)
    /* BF7D8 800CEFD8 2120A002 */  addu       $a0, $s5, $zero
    /* BF7DC 800CEFDC 2118B402 */  addu       $v1, $s5, $s4
    /* BF7E0 800CEFE0 1C00A3A7 */  sh         $v1, 0x1C($sp)
    /* BF7E4 800CEFE4 1E00B3A7 */  sh         $s3, 0x1E($sp)
    /* BF7E8 800CEFE8 2800A3A7 */  sh         $v1, 0x28($sp)
    /* BF7EC 800CEFEC 2A00B3A7 */  sh         $s3, 0x2A($sp)
    /* BF7F0 800CEFF0 2C00A3A7 */  sh         $v1, 0x2C($sp)
    /* BF7F4 800CEFF4 21107602 */  addu       $v0, $s3, $s6
    /* BF7F8 800CEFF8 2E00A2A7 */  sh         $v0, 0x2E($sp)
    /* BF7FC 800CEFFC 3800A3A7 */  sh         $v1, 0x38($sp)
    /* BF800 800CF000 3A00A2A7 */  sh         $v0, 0x3A($sp)
    /* BF804 800CF004 3C00A4A7 */  sh         $a0, 0x3C($sp)
    /* BF808 800CF008 3E00A2A7 */  sh         $v0, 0x3E($sp)
    /* BF80C 800CF00C 4800A4A7 */  sh         $a0, 0x48($sp)
    /* BF810 800CF010 4A00A2A7 */  sh         $v0, 0x4A($sp)
    /* BF814 800CF014 4C00A4A7 */  sh         $a0, 0x4C($sp)
    /* BF818 800CF018 4E00B3A7 */  sh         $s3, 0x4E($sp)
    /* BF81C 800CF01C 21880000 */  addu       $s1, $zero, $zero
    /* BF820 800CF020 1000B027 */  addiu      $s0, $sp, 0x10
    /* BF824 800CF024 00211100 */  sll        $a0, $s1, 4
  .L800CF028:
    /* BF828 800CF028 928E030C */  jal        DrawPrim
    /* BF82C 800CF02C 21200402 */   addu      $a0, $s0, $a0
    /* BF830 800CF030 01003126 */  addiu      $s1, $s1, 0x1
    /* BF834 800CF034 0400222A */  slti       $v0, $s1, 0x4
    /* BF838 800CF038 FBFF4014 */  bnez       $v0, .L800CF028
    /* BF83C 800CF03C 00211100 */   sll       $a0, $s1, 4
    /* BF840 800CF040 2C8D030C */  jal        DrawSync
    /* BF844 800CF044 21200000 */   addu      $a0, $zero, $zero
    /* BF848 800CF048 7000BF8F */  lw         $ra, 0x70($sp)
    /* BF84C 800CF04C 6C00B78F */  lw         $s7, 0x6C($sp)
    /* BF850 800CF050 6800B68F */  lw         $s6, 0x68($sp)
    /* BF854 800CF054 6400B58F */  lw         $s5, 0x64($sp)
    /* BF858 800CF058 6000B48F */  lw         $s4, 0x60($sp)
    /* BF85C 800CF05C 5C00B38F */  lw         $s3, 0x5C($sp)
    /* BF860 800CF060 5800B28F */  lw         $s2, 0x58($sp)
    /* BF864 800CF064 5400B18F */  lw         $s1, 0x54($sp)
    /* BF868 800CF068 5000B08F */  lw         $s0, 0x50($sp)
    /* BF86C 800CF06C 7800BD27 */  addiu      $sp, $sp, 0x78
    /* BF870 800CF070 0800E003 */  jr         $ra
    /* BF874 800CF074 00000000 */   nop
endlabel func_800CEF5C
