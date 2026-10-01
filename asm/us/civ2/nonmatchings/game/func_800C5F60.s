.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C5F60, 0x184

glabel func_800C5F60
    /* B6760 800C5F60 30FDBD27 */  addiu      $sp, $sp, -0x2D0
    /* B6764 800C5F64 C802B4AF */  sw         $s4, 0x2C8($sp)
    /* B6768 800C5F68 21A08000 */  addu       $s4, $a0, $zero
    /* B676C 800C5F6C 1800A427 */  addiu      $a0, $sp, 0x18
    /* B6770 800C5F70 00200524 */  addiu      $a1, $zero, 0x2000
    /* B6774 800C5F74 CC02BFAF */  sw         $ra, 0x2CC($sp)
    /* B6778 800C5F78 C402B3AF */  sw         $s3, 0x2C4($sp)
    /* B677C 800C5F7C C002B2AF */  sw         $s2, 0x2C0($sp)
    /* B6780 800C5F80 BC02B1AF */  sw         $s1, 0x2BC($sp)
    /* B6784 800C5F84 ADC5020C */  jal        func_800B16B4
    /* B6788 800C5F88 B802B0AF */   sw        $s0, 0x2B8($sp)
    /* B678C 800C5F8C 0200822E */  sltiu      $v0, $s4, 0x2
    /* B6790 800C5F90 47004010 */  beqz       $v0, .L800C60B0
    /* B6794 800C5F94 00000000 */   nop
    /* B6798 800C5F98 FED4030C */  jal        func_800F53F8
    /* B679C 800C5F9C 20030424 */   addiu     $a0, $zero, 0x320
    /* B67A0 800C5FA0 21904000 */  addu       $s2, $v0, $zero
    /* B67A4 800C5FA4 7CD6030C */  jal        func_800F59F0
    /* B67A8 800C5FA8 21204002 */   addu      $a0, $s2, $zero
    /* B67AC 800C5FAC 1280043C */  lui        $a0, %hi(D_801211D8)
    /* B67B0 800C5FB0 D8118424 */  addiu      $a0, $a0, %lo(D_801211D8)
    /* B67B4 800C5FB4 21984000 */  addu       $s3, $v0, $zero
    /* B67B8 800C5FB8 00026526 */  addiu      $a1, $s3, 0x200
    /* B67BC 800C5FBC C187030C */  jal        func_800E1F04
    /* B67C0 800C5FC0 20010624 */   addiu     $a2, $zero, 0x120
    /* B67C4 800C5FC4 5BB7010C */  jal        func_8006DD6C
    /* B67C8 800C5FC8 03000424 */   addiu     $a0, $zero, 0x3
    /* B67CC 800C5FCC 1800B027 */  addiu      $s0, $sp, 0x18
    /* B67D0 800C5FD0 21200002 */  addu       $a0, $s0, $zero
    /* B67D4 800C5FD4 21280000 */  addu       $a1, $zero, $zero
    /* B67D8 800C5FD8 21300000 */  addu       $a2, $zero, $zero
    /* B67DC 800C5FDC 21380000 */  addu       $a3, $zero, $zero
    /* B67E0 800C5FE0 08000224 */  addiu      $v0, $zero, 0x8
    /* B67E4 800C5FE4 1EC7020C */  jal        func_800B1C78
    /* B67E8 800C5FE8 1000A2AF */   sw        $v0, 0x10($sp)
    /* B67EC 800C5FEC 21200002 */  addu       $a0, $s0, $zero
    /* B67F0 800C5FF0 F8FF0524 */  addiu      $a1, $zero, -0x8
    /* B67F4 800C5FF4 5AC8020C */  jal        func_800B2168
    /* B67F8 800C5FF8 F8FF0624 */   addiu     $a2, $zero, -0x8
    /* B67FC 800C5FFC 0180053C */  lui        $a1, %hi(D_800125D4)
    /* B6800 800C6000 D425A524 */  addiu      $a1, $a1, %lo(D_800125D4)
    /* B6804 800C6004 1CC8020C */  jal        func_800B2070
    /* B6808 800C6008 21200002 */   addu      $a0, $s0, $zero
    /* B680C 800C600C 21200002 */  addu       $a0, $s0, $zero
    /* B6810 800C6010 39C8020C */  jal        func_800B20E4
    /* B6814 800C6014 10010524 */   addiu     $a1, $zero, 0x110
    /* B6818 800C6018 21200002 */  addu       $a0, $s0, $zero
    /* B681C 800C601C 88E2020C */  jal        func_800B8A20
    /* B6820 800C6020 28000524 */   addiu     $a1, $zero, 0x28
    /* B6824 800C6024 21200002 */  addu       $a0, $s0, $zero
    /* B6828 800C6028 1680113C */  lui        $s1, %hi(D_80159020)
    /* B682C 800C602C 20903126 */  addiu      $s1, $s1, %lo(D_80159020)
    /* B6830 800C6030 69C7020C */  jal        func_800B1DA4
    /* B6834 800C6034 21282002 */   addu      $a1, $s1, $zero
    /* B6838 800C6038 0180053C */  lui        $a1, %hi(D_800125E4)
    /* B683C 800C603C E425A524 */  addiu      $a1, $a1, %lo(D_800125E4)
    /* B6840 800C6040 69C7020C */  jal        func_800B1DA4
    /* B6844 800C6044 21200002 */   addu      $a0, $s0, $zero
    /* B6848 800C6048 0180053C */  lui        $a1, %hi(D_8001260C)
    /* B684C 800C604C 0C26A524 */  addiu      $a1, $a1, %lo(D_8001260C)
    /* B6850 800C6050 69C7020C */  jal        func_800B1DA4
    /* B6854 800C6054 21200002 */   addu      $a0, $s0, $zero
    /* B6858 800C6058 21200002 */  addu       $a0, $s0, $zero
    /* B685C 800C605C 69C7020C */  jal        func_800B1DA4
    /* B6860 800C6060 21282002 */   addu      $a1, $s1, $zero
    /* B6864 800C6064 21200002 */  addu       $a0, $s0, $zero
    /* B6868 800C6068 52DF020C */  jal        func_800B7D48
    /* B686C 800C606C 21280000 */   addu      $a1, $zero, $zero
    /* B6870 800C6070 94E2020C */  jal        func_800B8A50
    /* B6874 800C6074 21200002 */   addu      $a0, $s0, $zero
    /* B6878 800C6078 21208002 */  addu       $a0, $s4, $zero
    /* B687C 800C607C 02000524 */  addiu      $a1, $zero, 0x2
    /* B6880 800C6080 21306002 */  addu       $a2, $s3, $zero
    /* B6884 800C6084 20010724 */  addiu      $a3, $zero, 0x120
    /* B6888 800C6088 0EBF010C */  jal        func_8006FC38
    /* B688C 800C608C 1000B0AF */   sw        $s0, 0x10($sp)
    /* B6890 800C6090 BCC5020C */  jal        func_800B16F0
    /* B6894 800C6094 21200002 */   addu      $a0, $s0, $zero
    /* B6898 800C6098 89D6030C */  jal        func_800F5A24
    /* B689C 800C609C 21204002 */   addu      $a0, $s2, $zero
    /* B68A0 800C60A0 C6D5030C */  jal        func_800F5718
    /* B68A4 800C60A4 21204002 */   addu      $a0, $s2, $zero
    /* B68A8 800C60A8 2D180308 */  j          .L800C60B4
    /* B68AC 800C60AC 21200002 */   addu      $a0, $s0, $zero
  .L800C60B0:
    /* B68B0 800C60B0 1800A427 */  addiu      $a0, $sp, 0x18
  .L800C60B4:
    /* B68B4 800C60B4 0AC7020C */  jal        func_800B1C28
    /* B68B8 800C60B8 02000524 */   addiu     $a1, $zero, 0x2
    /* B68BC 800C60BC 21100000 */  addu       $v0, $zero, $zero
    /* B68C0 800C60C0 CC02BF8F */  lw         $ra, 0x2CC($sp)
    /* B68C4 800C60C4 C802B48F */  lw         $s4, 0x2C8($sp)
    /* B68C8 800C60C8 C402B38F */  lw         $s3, 0x2C4($sp)
    /* B68CC 800C60CC C002B28F */  lw         $s2, 0x2C0($sp)
    /* B68D0 800C60D0 BC02B18F */  lw         $s1, 0x2BC($sp)
    /* B68D4 800C60D4 B802B08F */  lw         $s0, 0x2B8($sp)
    /* B68D8 800C60D8 D002BD27 */  addiu      $sp, $sp, 0x2D0
    /* B68DC 800C60DC 0800E003 */  jr         $ra
    /* B68E0 800C60E0 00000000 */   nop
endlabel func_800C5F60
