.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B26A0, 0x158

glabel func_800B26A0
    /* A2EA0 800B26A0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A2EA4 800B26A4 2400BFAF */  sw         $ra, 0x24($sp)
    /* A2EA8 800B26A8 2000B4AF */  sw         $s4, 0x20($sp)
    /* A2EAC 800B26AC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A2EB0 800B26B0 1800B2AF */  sw         $s2, 0x18($sp)
    /* A2EB4 800B26B4 1400B1AF */  sw         $s1, 0x14($sp)
    /* A2EB8 800B26B8 1000B0AF */  sw         $s0, 0x10($sp)
    /* A2EBC 800B26BC 21908000 */  addu       $s2, $a0, $zero
    /* A2EC0 800B26C0 2198A000 */  addu       $s3, $a1, $zero
    /* A2EC4 800B26C4 21A0C000 */  addu       $s4, $a2, $zero
    /* A2EC8 800B26C8 7001518E */  lw         $s1, 0x170($s2)
    /* A2ECC 800B26CC 00000000 */  nop
    /* A2ED0 800B26D0 06002012 */  beqz       $s1, .L800B26EC
    /* A2ED4 800B26D4 21800000 */   addu      $s0, $zero, $zero
  .L800B26D8:
    /* A2ED8 800B26D8 21802002 */  addu       $s0, $s1, $zero
    /* A2EDC 800B26DC 0C00318E */  lw         $s1, 0xC($s1)
    /* A2EE0 800B26E0 00000000 */  nop
    /* A2EE4 800B26E4 FCFF2016 */  bnez       $s1, .L800B26D8
    /* A2EE8 800B26E8 00000000 */   nop
  .L800B26EC:
    /* A2EEC 800B26EC 98014426 */  addiu      $a0, $s2, 0x198
    /* A2EF0 800B26F0 F552020C */  jal        func_80094BD4
    /* A2EF4 800B26F4 14000524 */   addiu     $a1, $zero, 0x14
    /* A2EF8 800B26F8 04000012 */  beqz       $s0, .L800B270C
    /* A2EFC 800B26FC 21884000 */   addu      $s1, $v0, $zero
    /* A2F00 800B2700 0C0011AE */  sw         $s1, 0xC($s0)
    /* A2F04 800B2704 C6C90208 */  j          .L800B2718
    /* A2F08 800B2708 100030AE */   sw        $s0, 0x10($s1)
  .L800B270C:
    /* A2F0C 800B270C 700151AE */  sw         $s1, 0x170($s2)
    /* A2F10 800B2710 680151AE */  sw         $s1, 0x168($s2)
    /* A2F14 800B2714 100020AE */  sw         $zero, 0x10($s1)
  .L800B2718:
    /* A2F18 800B2718 740151AE */  sw         $s1, 0x174($s2)
    /* A2F1C 800B271C 0C0020AE */  sw         $zero, 0xC($s1)
    /* A2F20 800B2720 000020A6 */  sh         $zero, 0x0($s1)
    /* A2F24 800B2724 AD87030C */  jal        func_800E1EB4
    /* A2F28 800B2728 21206002 */   addu      $a0, $s3, $zero
    /* A2F2C 800B272C 01804224 */  addiu      $v0, $v0, -0x7FFF
    /* A2F30 800B2730 98014426 */  addiu      $a0, $s2, 0x198
    /* A2F34 800B2734 F552020C */  jal        func_80094BD4
    /* A2F38 800B2738 FFFF4530 */   andi      $a1, $v0, 0xFFFF
    /* A2F3C 800B273C 080022AE */  sw         $v0, 0x8($s1)
    /* A2F40 800B2740 21204000 */  addu       $a0, $v0, $zero
    /* A2F44 800B2744 A587030C */  jal        func_800E1E94
    /* A2F48 800B2748 21286002 */   addu      $a1, $s3, $zero
    /* A2F4C 800B274C 00006282 */  lb         $v0, 0x0($s3)
    /* A2F50 800B2750 00000000 */  nop
    /* A2F54 800B2754 05004014 */  bnez       $v0, .L800B276C
    /* A2F58 800B2758 00000000 */   nop
    /* A2F5C 800B275C 00002296 */  lhu        $v0, 0x0($s1)
    /* A2F60 800B2760 00000000 */  nop
    /* A2F64 800B2764 01004234 */  ori        $v0, $v0, 0x1
    /* A2F68 800B2768 000022A6 */  sh         $v0, 0x0($s1)
  .L800B276C:
    /* A2F6C 800B276C 040034AE */  sw         $s4, 0x4($s1)
    /* A2F70 800B2770 B6C7020C */  jal        func_800B1ED8
    /* A2F74 800B2774 21204002 */   addu      $a0, $s2, $zero
    /* A2F78 800B2778 0800248E */  lw         $a0, 0x8($s1)
    /* A2F7C 800B277C AD87030C */  jal        func_800E1EB4
    /* A2F80 800B2780 21804000 */   addu      $s0, $v0, $zero
    /* A2F84 800B2784 40180200 */  sll        $v1, $v0, 1
    /* A2F88 800B2788 21186200 */  addu       $v1, $v1, $v0
    /* A2F8C 800B278C 40180300 */  sll        $v1, $v1, 1
    /* A2F90 800B2790 21187000 */  addu       $v1, $v1, $s0
    /* A2F94 800B2794 9000428E */  lw         $v0, 0x90($s2)
    /* A2F98 800B2798 00000000 */  nop
    /* A2F9C 800B279C 21186200 */  addu       $v1, $v1, $v0
    /* A2FA0 800B27A0 05006324 */  addiu      $v1, $v1, 0x5
    /* A2FA4 800B27A4 FC00448E */  lw         $a0, 0xFC($s2)
    /* A2FA8 800B27A8 00000000 */  nop
    /* A2FAC 800B27AC 2A106400 */  slt        $v0, $v1, $a0
    /* A2FB0 800B27B0 02004010 */  beqz       $v0, .L800B27BC
    /* A2FB4 800B27B4 00000000 */   nop
    /* A2FB8 800B27B8 21188000 */  addu       $v1, $a0, $zero
  .L800B27BC:
    /* A2FBC 800B27BC FC0043AE */  sw         $v1, 0xFC($s2)
    /* A2FC0 800B27C0 1C00428E */  lw         $v0, 0x1C($s2)
    /* A2FC4 800B27C4 00000000 */  nop
    /* A2FC8 800B27C8 01004224 */  addiu      $v0, $v0, 0x1
    /* A2FCC 800B27CC 1C0042AE */  sw         $v0, 0x1C($s2)
    /* A2FD0 800B27D0 21102002 */  addu       $v0, $s1, $zero
    /* A2FD4 800B27D4 2400BF8F */  lw         $ra, 0x24($sp)
    /* A2FD8 800B27D8 2000B48F */  lw         $s4, 0x20($sp)
    /* A2FDC 800B27DC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A2FE0 800B27E0 1800B28F */  lw         $s2, 0x18($sp)
    /* A2FE4 800B27E4 1400B18F */  lw         $s1, 0x14($sp)
    /* A2FE8 800B27E8 1000B08F */  lw         $s0, 0x10($sp)
    /* A2FEC 800B27EC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* A2FF0 800B27F0 0800E003 */  jr         $ra
    /* A2FF4 800B27F4 00000000 */   nop
endlabel func_800B26A0
