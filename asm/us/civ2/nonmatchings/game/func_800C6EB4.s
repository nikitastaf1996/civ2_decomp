.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6EB4, 0x98

glabel func_800C6EB4
    /* B76B4 800C6EB4 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* B76B8 800C6EB8 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* B76BC 800C6EBC 3800B2AF */  sw         $s2, 0x38($sp)
    /* B76C0 800C6EC0 3400B1AF */  sw         $s1, 0x34($sp)
    /* B76C4 800C6EC4 3000B0AF */  sw         $s0, 0x30($sp)
    /* B76C8 800C6EC8 21908000 */  addu       $s2, $a0, $zero
    /* B76CC 800C6ECC 00240500 */  sll        $a0, $a1, 16
    /* B76D0 800C6ED0 03240400 */  sra        $a0, $a0, 16
    /* B76D4 800C6ED4 1000A527 */  addiu      $a1, $sp, 0x10
    /* B76D8 800C6ED8 95D4030C */  jal        func_800F5254
    /* B76DC 800C6EDC 02000624 */   addiu     $a2, $zero, 0x2
    /* B76E0 800C6EE0 AD87030C */  jal        func_800E1EB4
    /* B76E4 800C6EE4 1000A427 */   addiu     $a0, $sp, 0x10
    /* B76E8 800C6EE8 21184000 */  addu       $v1, $v0, $zero
    /* B76EC 800C6EEC 08000224 */  addiu      $v0, $zero, 0x8
    /* B76F0 800C6EF0 23104300 */  subu       $v0, $v0, $v1
    /* B76F4 800C6EF4 0B004018 */  blez       $v0, .L800C6F24
    /* B76F8 800C6EF8 21800000 */   addu      $s0, $zero, $zero
    /* B76FC 800C6EFC 08000224 */  addiu      $v0, $zero, 0x8
    /* B7700 800C6F00 23884300 */  subu       $s1, $v0, $v1
  .L800C6F04:
    /* B7704 800C6F04 1680053C */  lui        $a1, %hi(D_801590E8)
    /* B7708 800C6F08 E890A524 */  addiu      $a1, $a1, %lo(D_801590E8)
    /* B770C 800C6F0C 9987030C */  jal        func_800E1E64
    /* B7710 800C6F10 21204002 */   addu      $a0, $s2, $zero
    /* B7714 800C6F14 01001026 */  addiu      $s0, $s0, 0x1
    /* B7718 800C6F18 2A101102 */  slt        $v0, $s0, $s1
    /* B771C 800C6F1C F9FF4014 */  bnez       $v0, .L800C6F04
    /* B7720 800C6F20 00000000 */   nop
  .L800C6F24:
    /* B7724 800C6F24 21204002 */  addu       $a0, $s2, $zero
    /* B7728 800C6F28 9987030C */  jal        func_800E1E64
    /* B772C 800C6F2C 1000A527 */   addiu     $a1, $sp, 0x10
    /* B7730 800C6F30 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* B7734 800C6F34 3800B28F */  lw         $s2, 0x38($sp)
    /* B7738 800C6F38 3400B18F */  lw         $s1, 0x34($sp)
    /* B773C 800C6F3C 3000B08F */  lw         $s0, 0x30($sp)
    /* B7740 800C6F40 4000BD27 */  addiu      $sp, $sp, 0x40
    /* B7744 800C6F44 0800E003 */  jr         $ra
    /* B7748 800C6F48 00000000 */   nop
endlabel func_800C6EB4
