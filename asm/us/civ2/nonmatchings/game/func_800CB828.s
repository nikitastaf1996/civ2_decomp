.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CB828, 0x160

glabel func_800CB828
    /* BC028 800CB828 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* BC02C 800CB82C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* BC030 800CB830 1800B2AF */  sw         $s2, 0x18($sp)
    /* BC034 800CB834 1400B1AF */  sw         $s1, 0x14($sp)
    /* BC038 800CB838 1000B0AF */  sw         $s0, 0x10($sp)
    /* BC03C 800CB83C 21888000 */  addu       $s1, $a0, $zero
    /* BC040 800CB840 B80C80AF */  sw         $zero, %gp_rel(D_80159190)($gp)
    /* BC044 800CB844 60012486 */  lh         $a0, 0x160($s1)
    /* BC048 800CB848 00000000 */  nop
    /* BC04C 800CB84C 04008010 */  beqz       $a0, .L800CB860
    /* BC050 800CB850 2190A000 */   addu      $s2, $a1, $zero
    /* BC054 800CB854 7DF3030C */  jal        func_800FCDF4
    /* BC058 800CB858 00000000 */   nop
    /* BC05C 800CB85C 600120A6 */  sh         $zero, 0x160($s1)
  .L800CB860:
    /* BC060 800CB860 5C012486 */  lh         $a0, 0x15C($s1)
    /* BC064 800CB864 00000000 */  nop
    /* BC068 800CB868 04008010 */  beqz       $a0, .L800CB87C
    /* BC06C 800CB86C 00000000 */   nop
    /* BC070 800CB870 7DF3030C */  jal        func_800FCDF4
    /* BC074 800CB874 00000000 */   nop
    /* BC078 800CB878 5C0120A6 */  sh         $zero, 0x15C($s1)
  .L800CB87C:
    /* BC07C 800CB87C 5E012486 */  lh         $a0, 0x15E($s1)
    /* BC080 800CB880 00000000 */  nop
    /* BC084 800CB884 04008010 */  beqz       $a0, .L800CB898
    /* BC088 800CB888 00000000 */   nop
    /* BC08C 800CB88C 7DF3030C */  jal        func_800FCDF4
    /* BC090 800CB890 00000000 */   nop
    /* BC094 800CB894 5E0120A6 */  sh         $zero, 0x15E($s1)
  .L800CB898:
    /* BC098 800CB898 E404248E */  lw         $a0, 0x4E4($s1)
    /* BC09C 800CB89C 00000000 */  nop
    /* BC0A0 800CB8A0 04008010 */  beqz       $a0, .L800CB8B4
    /* BC0A4 800CB8A4 00000000 */   nop
    /* BC0A8 800CB8A8 E511040C */  jal        func_80104794
    /* BC0AC 800CB8AC 00000000 */   nop
    /* BC0B0 800CB8B0 E40420AE */  sw         $zero, 0x4E4($s1)
  .L800CB8B4:
    /* BC0B4 800CB8B4 00092426 */  addiu      $a0, $s1, 0x900
    /* BC0B8 800CB8B8 C32B030C */  jal        func_800CAF0C
    /* BC0BC 800CB8BC 02000524 */   addiu     $a1, $zero, 0x2
    /* BC0C0 800CB8C0 68082426 */  addiu      $a0, $s1, 0x868
    /* BC0C4 800CB8C4 12ED030C */  jal        func_800FB448
    /* BC0C8 800CB8C8 02000524 */   addiu     $a1, $zero, 0x2
    /* BC0CC 800CB8CC D4072426 */  addiu      $a0, $s1, 0x7D4
    /* BC0D0 800CB8D0 12ED030C */  jal        func_800FB448
    /* BC0D4 800CB8D4 02000524 */   addiu     $a1, $zero, 0x2
    /* BC0D8 800CB8D8 40072426 */  addiu      $a0, $s1, 0x740
    /* BC0DC 800CB8DC 12ED030C */  jal        func_800FB448
    /* BC0E0 800CB8E0 02000524 */   addiu     $a1, $zero, 0x2
    /* BC0E4 800CB8E4 AC062426 */  addiu      $a0, $s1, 0x6AC
    /* BC0E8 800CB8E8 12ED030C */  jal        func_800FB448
    /* BC0EC 800CB8EC 02000524 */   addiu     $a1, $zero, 0x2
    /* BC0F0 800CB8F0 18062426 */  addiu      $a0, $s1, 0x618
    /* BC0F4 800CB8F4 12ED030C */  jal        func_800FB448
    /* BC0F8 800CB8F8 02000524 */   addiu     $a1, $zero, 0x2
    /* BC0FC 800CB8FC 84052426 */  addiu      $a0, $s1, 0x584
    /* BC100 800CB900 12ED030C */  jal        func_800FB448
    /* BC104 800CB904 02000524 */   addiu     $a1, $zero, 0x2
    /* BC108 800CB908 F0042426 */  addiu      $a0, $s1, 0x4F0
    /* BC10C 800CB90C 12ED030C */  jal        func_800FB448
    /* BC110 800CB910 02000524 */   addiu     $a1, $zero, 0x2
    /* BC114 800CB914 4C042426 */  addiu      $a0, $s1, 0x44C
    /* BC118 800CB918 12ED030C */  jal        func_800FB448
    /* BC11C 800CB91C 02000524 */   addiu     $a1, $zero, 0x2
    /* BC120 800CB920 20042426 */  addiu      $a0, $s1, 0x420
    /* BC124 800CB924 4CE1030C */  jal        func_800F8530
    /* BC128 800CB928 02000524 */   addiu     $a1, $zero, 0x2
    /* BC12C 800CB92C F4032426 */  addiu      $a0, $s1, 0x3F4
    /* BC130 800CB930 4CE1030C */  jal        func_800F8530
    /* BC134 800CB934 02000524 */   addiu     $a1, $zero, 0x2
    /* BC138 800CB938 84003026 */  addiu      $s0, $s1, 0x84
    /* BC13C 800CB93C 0180023C */  lui        $v0, %hi(D_800138BC)
    /* BC140 800CB940 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* BC144 800CB944 AC0022AE */  sw         $v0, 0xAC($s1)
    /* BC148 800CB948 B0002426 */  addiu      $a0, $s1, 0xB0
    /* BC14C 800CB94C F5E9030C */  jal        func_800FA7D4
    /* BC150 800CB950 21280000 */   addu      $a1, $zero, $zero
    /* BC154 800CB954 21200002 */  addu       $a0, $s0, $zero
    /* BC158 800CB958 4CE1030C */  jal        func_800F8530
    /* BC15C 800CB95C 02000524 */   addiu     $a1, $zero, 0x2
    /* BC160 800CB960 21202002 */  addu       $a0, $s1, $zero
    /* BC164 800CB964 F5E9030C */  jal        func_800FA7D4
    /* BC168 800CB968 21284002 */   addu      $a1, $s2, $zero
    /* BC16C 800CB96C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* BC170 800CB970 1800B28F */  lw         $s2, 0x18($sp)
    /* BC174 800CB974 1400B18F */  lw         $s1, 0x14($sp)
    /* BC178 800CB978 1000B08F */  lw         $s0, 0x10($sp)
    /* BC17C 800CB97C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* BC180 800CB980 0800E003 */  jr         $ra
    /* BC184 800CB984 00000000 */   nop
endlabel func_800CB828
