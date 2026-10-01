.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800988E8, 0x54

glabel func_800988E8
    /* 890E8 800988E8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 890EC 800988EC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 890F0 800988F0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 890F4 800988F4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 890F8 800988F8 21808000 */  addu       $s0, $a0, $zero
    /* 890FC 800988FC 6961020C */  jal        func_800985A4
    /* 89100 80098900 2188A000 */   addu      $s1, $a1, $zero
    /* 89104 80098904 01004230 */  andi       $v0, $v0, 0x1
    /* 89108 80098908 05004010 */  beqz       $v0, .L80098920
    /* 8910C 8009890C 21200002 */   addu      $a0, $s0, $zero
    /* 89110 80098910 0161020C */  jal        func_80098404
    /* 89114 80098914 21282002 */   addu      $a1, $s1, $zero
    /* 89118 80098918 49620208 */  j          .L80098924
    /* 8911C 8009891C 00000000 */   nop
  .L80098920:
    /* 89120 80098920 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L80098924:
    /* 89124 80098924 1800BF8F */  lw         $ra, 0x18($sp)
    /* 89128 80098928 1400B18F */  lw         $s1, 0x14($sp)
    /* 8912C 8009892C 1000B08F */  lw         $s0, 0x10($sp)
    /* 89130 80098930 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 89134 80098934 0800E003 */  jr         $ra
    /* 89138 80098938 00000000 */   nop
endlabel func_800988E8
