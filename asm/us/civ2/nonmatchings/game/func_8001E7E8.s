.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E7E8, 0xC8

glabel func_8001E7E8
    /* EFE8 8001E7E8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* EFEC 8001E7EC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* EFF0 8001E7F0 1800B2AF */  sw         $s2, 0x18($sp)
    /* EFF4 8001E7F4 1400B1AF */  sw         $s1, 0x14($sp)
    /* EFF8 8001E7F8 1000B0AF */  sw         $s0, 0x10($sp)
    /* EFFC 8001E7FC 21808000 */  addu       $s0, $a0, $zero
    /* F000 8001E800 2190A000 */  addu       $s2, $a1, $zero
    /* F004 8001E804 0180023C */  lui        $v0, %hi(D_8001012C)
    /* F008 8001E808 2C014224 */  addiu      $v0, $v0, %lo(D_8001012C)
    /* F00C 8001E80C 280002AE */  sw         $v0, 0x28($s0)
    /* F010 8001E810 B4030426 */  addiu      $a0, $s0, 0x3B4
    /* F014 8001E814 0AC7020C */  jal        func_800B1C28
    /* F018 8001E818 21280000 */   addu      $a1, $zero, $zero
    /* F01C 8001E81C 0180023C */  lui        $v0, %hi(D_80010154)
    /* F020 8001E820 54014224 */  addiu      $v0, $v0, %lo(D_80010154)
    /* F024 8001E824 280002AE */  sw         $v0, 0x28($s0)
    /* F028 8001E828 1803048E */  lw         $a0, 0x318($s0)
    /* F02C 8001E82C 00000000 */  nop
    /* F030 8001E830 03008010 */  beqz       $a0, .L8001E840
    /* F034 8001E834 04031126 */   addiu     $s1, $s0, 0x304
    /* F038 8001E838 435D020C */  jal        func_8009750C
    /* F03C 8001E83C 00000000 */   nop
  .L8001E840:
    /* F040 8001E840 21202002 */  addu       $a0, $s1, $zero
    /* F044 8001E844 D5D8030C */  jal        func_800F6354
    /* F048 8001E848 02000524 */   addiu     $a1, $zero, 0x2
    /* F04C 8001E84C D8020426 */  addiu      $a0, $s0, 0x2D8
    /* F050 8001E850 1BDA030C */  jal        func_800F686C
    /* F054 8001E854 02000524 */   addiu     $a1, $zero, 0x2
    /* F058 8001E858 AC020426 */  addiu      $a0, $s0, 0x2AC
    /* F05C 8001E85C 1BDA030C */  jal        func_800F686C
    /* F060 8001E860 02000524 */   addiu     $a1, $zero, 0x2
    /* F064 8001E864 80020426 */  addiu      $a0, $s0, 0x280
    /* F068 8001E868 1BDA030C */  jal        func_800F686C
    /* F06C 8001E86C 02000524 */   addiu     $a1, $zero, 0x2
    /* F070 8001E870 54020426 */  addiu      $a0, $s0, 0x254
    /* F074 8001E874 1BDA030C */  jal        func_800F686C
    /* F078 8001E878 02000524 */   addiu     $a1, $zero, 0x2
    /* F07C 8001E87C 28020426 */  addiu      $a0, $s0, 0x228
    /* F080 8001E880 4CE1030C */  jal        func_800F8530
    /* F084 8001E884 02000524 */   addiu     $a1, $zero, 0x2
    /* F088 8001E888 21200002 */  addu       $a0, $s0, $zero
    /* F08C 8001E88C D74A020C */  jal        func_80092B5C
    /* F090 8001E890 21284002 */   addu      $a1, $s2, $zero
    /* F094 8001E894 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* F098 8001E898 1800B28F */  lw         $s2, 0x18($sp)
    /* F09C 8001E89C 1400B18F */  lw         $s1, 0x14($sp)
    /* F0A0 8001E8A0 1000B08F */  lw         $s0, 0x10($sp)
    /* F0A4 8001E8A4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* F0A8 8001E8A8 0800E003 */  jr         $ra
    /* F0AC 8001E8AC 00000000 */   nop
endlabel func_8001E7E8
