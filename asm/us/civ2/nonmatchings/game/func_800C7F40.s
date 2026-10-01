.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C7F40, 0x194

glabel func_800C7F40
    /* B8740 800C7F40 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B8744 800C7F44 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* B8748 800C7F48 1800B2AF */  sw         $s2, 0x18($sp)
    /* B874C 800C7F4C 1400B1AF */  sw         $s1, 0x14($sp)
    /* B8750 800C7F50 1000B0AF */  sw         $s0, 0x10($sp)
    /* B8754 800C7F54 21908000 */  addu       $s2, $a0, $zero
    /* B8758 800C7F58 580C828F */  lw         $v0, %gp_rel(D_80159130)($gp)
    /* B875C 800C7F5C 00000000 */  nop
    /* B8760 800C7F60 32004010 */  beqz       $v0, .L800C802C
    /* B8764 800C7F64 2188A000 */   addu      $s1, $a1, $zero
    /* B8768 800C7F68 1280043C */  lui        $a0, %hi(D_80121340)
    /* B876C 800C7F6C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B8770 800C7F70 CB1A030C */  jal        func_800C6B2C
    /* B8774 800C7F74 00000000 */   nop
    /* B8778 800C7F78 40281100 */  sll        $a1, $s1, 1
    /* B877C 800C7F7C 2128B100 */  addu       $a1, $a1, $s1
    /* B8780 800C7F80 C0280500 */  sll        $a1, $a1, 3
    /* B8784 800C7F84 1280103C */  lui        $s0, %hi(D_8011A426)
    /* B8788 800C7F88 26A41026 */  addiu      $s0, $s0, %lo(D_8011A426)
    /* B878C 800C7F8C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B8790 800C7F90 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B8794 800C7F94 9987030C */  jal        func_800E1E64
    /* B8798 800C7F98 2128B000 */   addu      $a1, $a1, $s0
    /* B879C 800C7F9C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B87A0 800C7FA0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B87A4 800C7FA4 F71A030C */  jal        func_800C6BDC
    /* B87A8 800C7FA8 00000000 */   nop
    /* B87AC 800C7FAC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B87B0 800C7FB0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B87B4 800C7FB4 1680053C */  lui        $a1, %hi(D_8015913C)
    /* B87B8 800C7FB8 3C91A524 */  addiu      $a1, $a1, %lo(D_8015913C)
    /* B87BC 800C7FBC 9987030C */  jal        func_800E1E64
    /* B87C0 800C7FC0 00000000 */   nop
    /* B87C4 800C7FC4 1680023C */  lui        $v0, %hi(D_8015894C)
    /* B87C8 800C7FC8 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* B87CC 800C7FCC 00000000 */  nop
    /* B87D0 800C7FD0 1C07448C */  lw         $a0, 0x71C($v0)
    /* B87D4 800C7FD4 A63A030C */  jal        func_800CEA98
    /* B87D8 800C7FD8 00000000 */   nop
    /* B87DC 800C7FDC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B87E0 800C7FE0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B87E4 800C7FE4 9987030C */  jal        func_800E1E64
    /* B87E8 800C7FE8 21284000 */   addu      $a1, $v0, $zero
    /* B87EC 800C7FEC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B87F0 800C7FF0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B87F4 800C7FF4 CD1A030C */  jal        func_800C6B34
    /* B87F8 800C7FF8 00000000 */   nop
    /* B87FC 800C7FFC 40101100 */  sll        $v0, $s1, 1
    /* B8800 800C8000 21800202 */  addu       $s0, $s0, $v0
    /* B8804 800C8004 D0FF0486 */  lh         $a0, -0x30($s0)
    /* B8808 800C8008 1D98010C */  jal        func_80066074
    /* B880C 800C800C 00000000 */   nop
    /* B8810 800C8010 1280043C */  lui        $a0, %hi(D_80121340)
    /* B8814 800C8014 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B8818 800C8018 AD98010C */  jal        func_800662B4
    /* B881C 800C801C 21284000 */   addu      $a1, $v0, $zero
    /* B8820 800C8020 580C80AF */  sw         $zero, %gp_rel(D_80159130)($gp)
    /* B8824 800C8024 1E200308 */  j          .L800C8078
    /* B8828 800C8028 00000000 */   nop
  .L800C802C:
    /* B882C 800C802C AC024726 */  addiu      $a3, $s2, 0x2AC
    /* B8830 800C8030 1680043C */  lui        $a0, %hi(D_8015EE40)
    /* B8834 800C8034 40EE8424 */  addiu      $a0, $a0, %lo(D_8015EE40)
    /* B8838 800C8038 48014526 */  addiu      $a1, $s2, 0x148
    /* B883C 800C803C EDE3030C */  jal        func_800F8FB4
    /* B8840 800C8040 2130E000 */   addu      $a2, $a3, $zero
    /* B8844 800C8044 1280043C */  lui        $a0, %hi(D_80121340)
    /* B8848 800C8048 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B884C 800C804C CB1A030C */  jal        func_800C6B2C
    /* B8850 800C8050 00000000 */   nop
    /* B8854 800C8054 40281100 */  sll        $a1, $s1, 1
    /* B8858 800C8058 2128B100 */  addu       $a1, $a1, $s1
    /* B885C 800C805C C0280500 */  sll        $a1, $a1, 3
    /* B8860 800C8060 1280023C */  lui        $v0, %hi(D_8011A426)
    /* B8864 800C8064 26A44224 */  addiu      $v0, $v0, %lo(D_8011A426)
    /* B8868 800C8068 1280043C */  lui        $a0, %hi(D_80121340)
    /* B886C 800C806C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B8870 800C8070 9987030C */  jal        func_800E1E64
    /* B8874 800C8074 2128A200 */   addu      $a1, $a1, $v0
  .L800C8078:
    /* B8878 800C8078 C002448E */  lw         $a0, 0x2C0($s2)
    /* B887C 800C807C 00000000 */  nop
    /* B8880 800C8080 03008010 */  beqz       $a0, .L800C8090
    /* B8884 800C8084 00000000 */   nop
    /* B8888 800C8088 E511040C */  jal        func_80104794
    /* B888C 800C808C 00000000 */   nop
  .L800C8090:
    /* B8890 800C8090 3E0C040C */  jal        func_801030F8
    /* B8894 800C8094 0F000424 */   addiu     $a0, $zero, 0xF
    /* B8898 800C8098 1280043C */  lui        $a0, %hi(D_80121340)
    /* B889C 800C809C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B88A0 800C80A0 AC024526 */  addiu      $a1, $s2, 0x2AC
    /* B88A4 800C80A4 DC0F040C */  jal        func_80103F70
    /* B88A8 800C80A8 21300000 */   addu      $a2, $zero, $zero
    /* B88AC 800C80AC C00242AE */  sw         $v0, 0x2C0($s2)
    /* B88B0 800C80B0 3E0C040C */  jal        func_801030F8
    /* B88B4 800C80B4 01000424 */   addiu     $a0, $zero, 0x1
    /* B88B8 800C80B8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* B88BC 800C80BC 1800B28F */  lw         $s2, 0x18($sp)
    /* B88C0 800C80C0 1400B18F */  lw         $s1, 0x14($sp)
    /* B88C4 800C80C4 1000B08F */  lw         $s0, 0x10($sp)
    /* B88C8 800C80C8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B88CC 800C80CC 0800E003 */  jr         $ra
    /* B88D0 800C80D0 00000000 */   nop
endlabel func_800C7F40
