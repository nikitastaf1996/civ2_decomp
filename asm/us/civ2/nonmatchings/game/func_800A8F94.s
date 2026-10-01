.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A8F94, 0xF4

glabel func_800A8F94
    /* 99794 800A8F94 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 99798 800A8F98 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 9979C 800A8F9C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 997A0 800A8FA0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 997A4 800A8FA4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 997A8 800A8FA8 21888000 */  addu       $s1, $a0, $zero
    /* 997AC 800A8FAC 2190A000 */  addu       $s2, $a1, $zero
    /* 997B0 800A8FB0 6C0880AF */  sw         $zero, %gp_rel(D_80158D44)($gp)
    /* 997B4 800A8FB4 90002426 */  addiu      $a0, $s1, 0x90
    /* 997B8 800A8FB8 21280000 */  addu       $a1, $zero, $zero
    /* 997BC 800A8FBC A9E0030C */  jal        func_800F82A4
    /* 997C0 800A8FC0 21300000 */   addu      $a2, $zero, $zero
    /* 997C4 800A8FC4 CE68030C */  jal        func_800DA338
    /* 997C8 800A8FC8 00000000 */   nop
    /* 997CC 800A8FCC 895E020C */  jal        func_80097A24
    /* 997D0 800A8FD0 00000000 */   nop
    /* 997D4 800A8FD4 40010424 */  addiu      $a0, $zero, 0x140
    /* 997D8 800A8FD8 0E1F040C */  jal        func_80107C38
    /* 997DC 800A8FDC F0000524 */   addiu     $a1, $zero, 0xF0
    /* 997E0 800A8FE0 1280013C */  lui        $at, %hi(D_8011E748)
    /* 997E4 800A8FE4 48E722AC */  sw         $v0, %lo(D_8011E748)($at)
    /* 997E8 800A8FE8 80000224 */  addiu      $v0, $zero, 0x80
    /* 997EC 800A8FEC 1680013C */  lui        $at, %hi(D_801592E4)
    /* 997F0 800A8FF0 E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* 997F4 800A8FF4 5674020C */  jal        func_8009D158
    /* 997F8 800A8FF8 00000000 */   nop
    /* 997FC 800A8FFC B010248E */  lw         $a0, 0x10B0($s1)
    /* 99800 800A9000 00000000 */  nop
    /* 99804 800A9004 03008010 */  beqz       $a0, .L800A9014
    /* 99808 800A9008 00000000 */   nop
    /* 9980C 800A900C E511040C */  jal        func_80104794
    /* 99810 800A9010 00000000 */   nop
  .L800A9014:
    /* 99814 800A9014 0C0E2426 */  addiu      $a0, $s1, 0xE0C
    /* 99818 800A9018 0AC7020C */  jal        func_800B1C28
    /* 9981C 800A901C 02000524 */   addiu     $a1, $zero, 0x2
    /* 99820 800A9020 80012426 */  addiu      $a0, $s1, 0x180
    /* 99824 800A9024 C32B030C */  jal        func_800CAF0C
    /* 99828 800A9028 02000524 */   addiu     $a1, $zero, 0x2
    /* 9982C 800A902C 54012426 */  addiu      $a0, $s1, 0x154
    /* 99830 800A9030 4CE1030C */  jal        func_800F8530
    /* 99834 800A9034 02000524 */   addiu     $a1, $zero, 0x2
    /* 99838 800A9038 90003026 */  addiu      $s0, $s1, 0x90
    /* 9983C 800A903C 0180023C */  lui        $v0, %hi(D_800138BC)
    /* 99840 800A9040 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* 99844 800A9044 B80022AE */  sw         $v0, 0xB8($s1)
    /* 99848 800A9048 BC002426 */  addiu      $a0, $s1, 0xBC
    /* 9984C 800A904C F5E9030C */  jal        func_800FA7D4
    /* 99850 800A9050 21280000 */   addu      $a1, $zero, $zero
    /* 99854 800A9054 21200002 */  addu       $a0, $s0, $zero
    /* 99858 800A9058 4CE1030C */  jal        func_800F8530
    /* 9985C 800A905C 02000524 */   addiu     $a1, $zero, 0x2
    /* 99860 800A9060 21202002 */  addu       $a0, $s1, $zero
    /* 99864 800A9064 F5E9030C */  jal        func_800FA7D4
    /* 99868 800A9068 21284002 */   addu      $a1, $s2, $zero
    /* 9986C 800A906C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 99870 800A9070 1800B28F */  lw         $s2, 0x18($sp)
    /* 99874 800A9074 1400B18F */  lw         $s1, 0x14($sp)
    /* 99878 800A9078 1000B08F */  lw         $s0, 0x10($sp)
    /* 9987C 800A907C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 99880 800A9080 0800E003 */  jr         $ra
    /* 99884 800A9084 00000000 */   nop
endlabel func_800A8F94
