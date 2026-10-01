.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BA7E8, 0xC4

glabel func_800BA7E8
    /* AAFE8 800BA7E8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* AAFEC 800BA7EC 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* AAFF0 800BA7F0 21888000 */  addu       $s1, $a0, $zero
    /* AAFF4 800BA7F4 2800B0AF */  sw         $s0, 0x28($sp)
    /* AAFF8 800BA7F8 1280103C */  lui        $s0, %hi(D_80120D84)
    /* AAFFC 800BA7FC 840D1026 */  addiu      $s0, $s0, %lo(D_80120D84)
    /* AB000 800BA800 21200002 */  addu       $a0, $s0, $zero
    /* AB004 800BA804 06000524 */  addiu      $a1, $zero, 0x6
    /* AB008 800BA808 2C010224 */  addiu      $v0, $zero, 0x12C
    /* AB00C 800BA80C 1000A2AF */  sw         $v0, 0x10($sp)
    /* AB010 800BA810 C8000224 */  addiu      $v0, $zero, 0xC8
    /* AB014 800BA814 06000624 */  addiu      $a2, $zero, 0x6
    /* AB018 800BA818 21380000 */  addu       $a3, $zero, $zero
    /* AB01C 800BA81C 3000BFAF */  sw         $ra, 0x30($sp)
    /* AB020 800BA820 1400A2AF */  sw         $v0, 0x14($sp)
    /* AB024 800BA824 1800A0AF */  sw         $zero, 0x18($sp)
    /* AB028 800BA828 6FE5020C */  jal        func_800B95BC
    /* AB02C 800BA82C 1C00A0AF */   sw        $zero, 0x1C($sp)
    /* AB030 800BA830 1280043C */  lui        $a0, %hi(D_8011E748)
    /* AB034 800BA834 48E7848C */  lw         $a0, %lo(D_8011E748)($a0)
    /* AB038 800BA838 1280013C */  lui        $at, %hi(D_801210C4)
    /* AB03C 800BA83C C41031AC */  sw         $s1, %lo(D_801210C4)($at)
    /* AB040 800BA840 331F040C */  jal        func_80107CCC
    /* AB044 800BA844 00000000 */   nop
    /* AB048 800BA848 0C80053C */  lui        $a1, %hi(func_800B9A64)
    /* AB04C 800BA84C 649AA524 */  addiu      $a1, $a1, %lo(func_800B9A64)
    /* AB050 800BA850 1280013C */  lui        $at, %hi(D_8011E748)
    /* AB054 800BA854 48E720AC */  sw         $zero, %lo(D_8011E748)($at)
    /* AB058 800BA858 82DF030C */  jal        func_800F7E08
    /* AB05C 800BA85C 21200002 */   addu      $a0, $s0, $zero
    /* AB060 800BA860 0C80023C */  lui        $v0, %hi(func_800BA43C)
    /* AB064 800BA864 3CA44224 */  addiu      $v0, $v0, %lo(func_800BA43C)
    /* AB068 800BA868 1280013C */  lui        $at, %hi(D_80120DE8)
    /* AB06C 800BA86C E80D22AC */  sw         $v0, %lo(D_80120DE8)($at)
  .L800BA870:
    /* AB070 800BA870 1280023C */  lui        $v0, %hi(D_80120DA0)
    /* AB074 800BA874 A00D428C */  lw         $v0, %lo(D_80120DA0)($v0)
    /* AB078 800BA878 00000000 */  nop
    /* AB07C 800BA87C 05004010 */  beqz       $v0, .L800BA894
    /* AB080 800BA880 00000000 */   nop
    /* AB084 800BA884 1E12040C */  jal        func_80104878
    /* AB088 800BA888 00000000 */   nop
    /* AB08C 800BA88C 1CEA0208 */  j          .L800BA870
    /* AB090 800BA890 00000000 */   nop
  .L800BA894:
    /* AB094 800BA894 3000BF8F */  lw         $ra, 0x30($sp)
    /* AB098 800BA898 2C00B18F */  lw         $s1, 0x2C($sp)
    /* AB09C 800BA89C 2800B08F */  lw         $s0, 0x28($sp)
    /* AB0A0 800BA8A0 3800BD27 */  addiu      $sp, $sp, 0x38
    /* AB0A4 800BA8A4 0800E003 */  jr         $ra
    /* AB0A8 800BA8A8 00000000 */   nop
endlabel func_800BA7E8
