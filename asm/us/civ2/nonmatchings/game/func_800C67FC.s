.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C67FC, 0xAC

glabel func_800C67FC
    /* B6FFC 800C67FC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B7000 800C6800 1000B0AF */  sw         $s0, 0x10($sp)
    /* B7004 800C6804 21808000 */  addu       $s0, $a0, $zero
    /* B7008 800C6808 1800B2AF */  sw         $s2, 0x18($sp)
    /* B700C 800C680C 2190A000 */  addu       $s2, $a1, $zero
    /* B7010 800C6810 0180023C */  lui        $v0, %hi(D_80012658)
    /* B7014 800C6814 58264224 */  addiu      $v0, $v0, %lo(D_80012658)
    /* B7018 800C6818 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* B701C 800C681C 1400B1AF */  sw         $s1, 0x14($sp)
    /* B7020 800C6820 1803048E */  lw         $a0, 0x318($s0)
    /* B7024 800C6824 04031126 */  addiu      $s1, $s0, 0x304
    /* B7028 800C6828 03008010 */  beqz       $a0, .L800C6838
    /* B702C 800C682C 280002AE */   sw        $v0, 0x28($s0)
    /* B7030 800C6830 435D020C */  jal        func_8009750C
    /* B7034 800C6834 00000000 */   nop
  .L800C6838:
    /* B7038 800C6838 21202002 */  addu       $a0, $s1, $zero
    /* B703C 800C683C D5D8030C */  jal        func_800F6354
    /* B7040 800C6840 02000524 */   addiu     $a1, $zero, 0x2
    /* B7044 800C6844 D8020426 */  addiu      $a0, $s0, 0x2D8
    /* B7048 800C6848 1BDA030C */  jal        func_800F686C
    /* B704C 800C684C 02000524 */   addiu     $a1, $zero, 0x2
    /* B7050 800C6850 AC020426 */  addiu      $a0, $s0, 0x2AC
    /* B7054 800C6854 1BDA030C */  jal        func_800F686C
    /* B7058 800C6858 02000524 */   addiu     $a1, $zero, 0x2
    /* B705C 800C685C 80020426 */  addiu      $a0, $s0, 0x280
    /* B7060 800C6860 1BDA030C */  jal        func_800F686C
    /* B7064 800C6864 02000524 */   addiu     $a1, $zero, 0x2
    /* B7068 800C6868 54020426 */  addiu      $a0, $s0, 0x254
    /* B706C 800C686C 1BDA030C */  jal        func_800F686C
    /* B7070 800C6870 02000524 */   addiu     $a1, $zero, 0x2
    /* B7074 800C6874 28020426 */  addiu      $a0, $s0, 0x228
    /* B7078 800C6878 4CE1030C */  jal        func_800F8530
    /* B707C 800C687C 02000524 */   addiu     $a1, $zero, 0x2
    /* B7080 800C6880 21200002 */  addu       $a0, $s0, $zero
    /* B7084 800C6884 D74A020C */  jal        func_80092B5C
    /* B7088 800C6888 21284002 */   addu      $a1, $s2, $zero
    /* B708C 800C688C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* B7090 800C6890 1800B28F */  lw         $s2, 0x18($sp)
    /* B7094 800C6894 1400B18F */  lw         $s1, 0x14($sp)
    /* B7098 800C6898 1000B08F */  lw         $s0, 0x10($sp)
    /* B709C 800C689C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B70A0 800C68A0 0800E003 */  jr         $ra
    /* B70A4 800C68A4 00000000 */   nop
endlabel func_800C67FC
