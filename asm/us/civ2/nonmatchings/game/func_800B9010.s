.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B9010, 0x13C

glabel func_800B9010
    /* A9810 800B9010 88FCBD27 */  addiu      $sp, $sp, -0x378
    /* A9814 800B9014 7403BFAF */  sw         $ra, 0x374($sp)
    /* A9818 800B9018 7003B4AF */  sw         $s4, 0x370($sp)
    /* A981C 800B901C 6C03B3AF */  sw         $s3, 0x36C($sp)
    /* A9820 800B9020 6803B2AF */  sw         $s2, 0x368($sp)
    /* A9824 800B9024 6403B1AF */  sw         $s1, 0x364($sp)
    /* A9828 800B9028 6003B0AF */  sw         $s0, 0x360($sp)
    /* A982C 800B902C 21908000 */  addu       $s2, $a0, $zero
    /* A9830 800B9030 2198A000 */  addu       $s3, $a1, $zero
    /* A9834 800B9034 2188C000 */  addu       $s1, $a2, $zero
    /* A9838 800B9038 21A0E000 */  addu       $s4, $a3, $zero
    /* A983C 800B903C 2800A427 */  addiu      $a0, $sp, 0x28
    /* A9840 800B9040 ADC5020C */  jal        func_800B16B4
    /* A9844 800B9044 00200524 */   addiu     $a1, $zero, 0x2000
    /* A9848 800B9048 C802B027 */  addiu      $s0, $sp, 0x2C8
    /* A984C 800B904C FCEC030C */  jal        func_800FB3F0
    /* A9850 800B9050 21200002 */   addu      $a0, $s0, $zero
    /* A9854 800B9054 21200002 */  addu       $a0, $s0, $zero
    /* A9858 800B9058 1680023C */  lui        $v0, %hi(D_801588A4)
    /* A985C 800B905C A488428C */  lw         $v0, %lo(D_801588A4)($v0)
    /* A9860 800B9060 00000000 */  nop
    /* A9864 800B9064 04004010 */  beqz       $v0, .L800B9078
    /* A9868 800B9068 20000524 */   addiu     $a1, $zero, 0x20
    /* A986C 800B906C 40000524 */  addiu      $a1, $zero, 0x40
    /* A9870 800B9070 1680023C */  lui        $v0, %hi(D_801588A4)
    /* A9874 800B9074 A488428C */  lw         $v0, %lo(D_801588A4)($v0)
  .L800B9078:
    /* A9878 800B9078 00000000 */  nop
    /* A987C 800B907C 02004010 */  beqz       $v0, .L800B9088
    /* A9880 800B9080 18000624 */   addiu     $a2, $zero, 0x18
    /* A9884 800B9084 30000624 */  addiu      $a2, $zero, 0x30
  .L800B9088:
    /* A9888 800B9088 27ED030C */  jal        func_800FB49C
    /* A988C 800B908C 21380000 */   addu      $a3, $zero, $zero
    /* A9890 800B9090 2800B027 */  addiu      $s0, $sp, 0x28
    /* A9894 800B9094 1000A0AF */  sw         $zero, 0x10($sp)
    /* A9898 800B9098 1400A0AF */  sw         $zero, 0x14($sp)
    /* A989C 800B909C 1800A0AF */  sw         $zero, 0x18($sp)
    /* A98A0 800B90A0 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* A98A4 800B90A4 2000B1AF */  sw         $s1, 0x20($sp)
    /* A98A8 800B90A8 21200002 */  addu       $a0, $s0, $zero
    /* A98AC 800B90AC 21284002 */  addu       $a1, $s2, $zero
    /* A98B0 800B90B0 21306002 */  addu       $a2, $s3, $zero
    /* A98B4 800B90B4 2CE0020C */  jal        func_800B80B0
    /* A98B8 800B90B8 21380000 */   addu      $a3, $zero, $zero
    /* A98BC 800B90BC 0C80053C */  lui        $a1, %hi(func_800B8FB8)
    /* A98C0 800B90C0 B88FA524 */  addiu      $a1, $a1, %lo(func_800B8FB8)
    /* A98C4 800B90C4 35C9020C */  jal        func_800B24D4
    /* A98C8 800B90C8 21200002 */   addu      $a0, $s0, $zero
    /* A98CC 800B90CC 21200002 */  addu       $a0, $s0, $zero
    /* A98D0 800B90D0 3BC9020C */  jal        func_800B24EC
    /* A98D4 800B90D4 21280000 */   addu      $a1, $zero, $zero
    /* A98D8 800B90D8 C802B127 */  addiu      $s1, $sp, 0x2C8
    /* A98DC 800B90DC 21200002 */  addu       $a0, $s0, $zero
    /* A98E0 800B90E0 21282002 */  addu       $a1, $s1, $zero
    /* A98E4 800B90E4 21308002 */  addu       $a2, $s4, $zero
    /* A98E8 800B90E8 3DC9020C */  jal        func_800B24F4
    /* A98EC 800B90EC 21380000 */   addu      $a3, $zero, $zero
    /* A98F0 800B90F0 21200002 */  addu       $a0, $s0, $zero
    /* A98F4 800B90F4 52DF020C */  jal        func_800B7D48
    /* A98F8 800B90F8 21280000 */   addu      $a1, $zero, $zero
    /* A98FC 800B90FC 21904000 */  addu       $s2, $v0, $zero
    /* A9900 800B9100 E800A28F */  lw         $v0, 0xE8($sp)
    /* A9904 800B9104 1680013C */  lui        $at, %hi(D_80158FD8)
    /* A9908 800B9108 D88F22AC */  sw         $v0, %lo(D_80158FD8)($at)
    /* A990C 800B910C 21202002 */  addu       $a0, $s1, $zero
    /* A9910 800B9110 12ED030C */  jal        func_800FB448
    /* A9914 800B9114 02000524 */   addiu     $a1, $zero, 0x2
    /* A9918 800B9118 21200002 */  addu       $a0, $s0, $zero
    /* A991C 800B911C 0AC7020C */  jal        func_800B1C28
    /* A9920 800B9120 02000524 */   addiu     $a1, $zero, 0x2
    /* A9924 800B9124 21104002 */  addu       $v0, $s2, $zero
    /* A9928 800B9128 7403BF8F */  lw         $ra, 0x374($sp)
    /* A992C 800B912C 7003B48F */  lw         $s4, 0x370($sp)
    /* A9930 800B9130 6C03B38F */  lw         $s3, 0x36C($sp)
    /* A9934 800B9134 6803B28F */  lw         $s2, 0x368($sp)
    /* A9938 800B9138 6403B18F */  lw         $s1, 0x364($sp)
    /* A993C 800B913C 6003B08F */  lw         $s0, 0x360($sp)
    /* A9940 800B9140 7803BD27 */  addiu      $sp, $sp, 0x378
    /* A9944 800B9144 0800E003 */  jr         $ra
    /* A9948 800B9148 00000000 */   nop
endlabel func_800B9010
