.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C7700, 0xEC

glabel func_800C7700
    /* B7F00 800C7700 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B7F04 800C7704 1800BFAF */  sw         $ra, 0x18($sp)
    /* B7F08 800C7708 1400B1AF */  sw         $s1, 0x14($sp)
    /* B7F0C 800C770C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B7F10 800C7710 98E9030C */  jal        func_800FA660
    /* B7F14 800C7714 21808000 */   addu      $s0, $a0, $zero
    /* B7F18 800C7718 1280043C */  lui        $a0, %hi(D_8011E748)
    /* B7F1C 800C771C 48E7848C */  lw         $a0, %lo(D_8011E748)($a0)
    /* B7F20 800C7720 331F040C */  jal        func_80107CCC
    /* B7F24 800C7724 00000000 */   nop
    /* B7F28 800C7728 1280013C */  lui        $at, %hi(D_8011E748)
    /* B7F2C 800C772C 48E720AC */  sw         $zero, %lo(D_8011E748)($at)
    /* B7F30 800C7730 A569030C */  jal        func_800DA694
    /* B7F34 800C7734 00000000 */   nop
    /* B7F38 800C7738 AE5E020C */  jal        func_80097AB8
    /* B7F3C 800C773C 00000000 */   nop
    /* B7F40 800C7740 80000224 */  addiu      $v0, $zero, 0x80
    /* B7F44 800C7744 1680013C */  lui        $at, %hi(D_801592E4)
    /* B7F48 800C7748 E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* B7F4C 800C774C 3E82030C */  jal        __builtin_new
    /* B7F50 800C7750 C4020424 */   addiu     $a0, $zero, 0x2C4
    /* B7F54 800C7754 411E030C */  jal        func_800C7904
    /* B7F58 800C7758 21204000 */   addu      $a0, $v0, $zero
    /* B7F5C 800C775C 21884000 */  addu       $s1, $v0, $zero
    /* B7F60 800C7760 21202002 */  addu       $a0, $s1, $zero
    /* B7F64 800C7764 DD1E030C */  jal        func_800C7B74
    /* B7F68 800C7768 21280002 */   addu      $a1, $s0, $zero
    /* B7F6C 800C776C 19004010 */  beqz       $v0, .L800C77D4
    /* B7F70 800C7770 00000000 */   nop
    /* B7F74 800C7774 411F030C */  jal        func_800C7D04
    /* B7F78 800C7778 21202002 */   addu      $a0, $s1, $zero
    /* B7F7C 800C777C 98E9030C */  jal        func_800FA660
    /* B7F80 800C7780 00000000 */   nop
    /* B7F84 800C7784 03002012 */  beqz       $s1, .L800C7794
    /* B7F88 800C7788 21202002 */   addu      $a0, $s1, $zero
    /* B7F8C 800C778C B21E030C */  jal        func_800C7AC8
    /* B7F90 800C7790 03000524 */   addiu     $a1, $zero, 0x3
  .L800C7794:
    /* B7F94 800C7794 CE68030C */  jal        func_800DA338
    /* B7F98 800C7798 00000000 */   nop
    /* B7F9C 800C779C 895E020C */  jal        func_80097A24
    /* B7FA0 800C77A0 00000000 */   nop
    /* B7FA4 800C77A4 40010424 */  addiu      $a0, $zero, 0x140
    /* B7FA8 800C77A8 0E1F040C */  jal        func_80107C38
    /* B7FAC 800C77AC F0000524 */   addiu     $a1, $zero, 0xF0
    /* B7FB0 800C77B0 1280013C */  lui        $at, %hi(D_8011E748)
    /* B7FB4 800C77B4 48E722AC */  sw         $v0, %lo(D_8011E748)($at)
    /* B7FB8 800C77B8 80000224 */  addiu      $v0, $zero, 0x80
    /* B7FBC 800C77BC 1680013C */  lui        $at, %hi(D_801592E4)
    /* B7FC0 800C77C0 E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* B7FC4 800C77C4 5674020C */  jal        func_8009D158
    /* B7FC8 800C77C8 00000000 */   nop
    /* B7FCC 800C77CC A8E9030C */  jal        func_800FA6A0
    /* B7FD0 800C77D0 00000000 */   nop
  .L800C77D4:
    /* B7FD4 800C77D4 1800BF8F */  lw         $ra, 0x18($sp)
    /* B7FD8 800C77D8 1400B18F */  lw         $s1, 0x14($sp)
    /* B7FDC 800C77DC 1000B08F */  lw         $s0, 0x10($sp)
    /* B7FE0 800C77E0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B7FE4 800C77E4 0800E003 */  jr         $ra
    /* B7FE8 800C77E8 00000000 */   nop
endlabel func_800C7700
