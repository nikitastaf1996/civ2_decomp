.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D3710, 0x2DC

glabel func_800D3710
    /* C3F10 800D3710 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* C3F14 800D3714 2800BFAF */  sw         $ra, 0x28($sp)
    /* C3F18 800D3718 2400B3AF */  sw         $s3, 0x24($sp)
    /* C3F1C 800D371C 2000B2AF */  sw         $s2, 0x20($sp)
    /* C3F20 800D3720 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* C3F24 800D3724 1800B0AF */  sw         $s0, 0x18($sp)
    /* C3F28 800D3728 21908000 */  addu       $s2, $a0, $zero
    /* C3F2C 800D372C 21880000 */  addu       $s1, $zero, $zero
    /* C3F30 800D3730 1280043C */  lui        $a0, %hi(D_80122AA4)
    /* C3F34 800D3734 A42A848C */  lw         $a0, %lo(D_80122AA4)($a0)
    /* C3F38 800D3738 0C25020C */  jal        func_80089430
    /* C3F3C 800D373C FFFF1324 */   addiu     $s3, $zero, -0x1
    /* C3F40 800D3740 1680023C */  lui        $v0, %hi(D_80158864)
    /* C3F44 800D3744 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C3F48 800D3748 00000000 */  nop
    /* C3F4C 800D374C 08004380 */  lb         $v1, 0x8($v0)
    /* C3F50 800D3750 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* C3F54 800D3754 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* C3F58 800D3758 00000000 */  nop
    /* C3F5C 800D375C 06006210 */  beq        $v1, $v0, .L800D3778
    /* C3F60 800D3760 00000000 */   nop
    /* C3F64 800D3764 1280023C */  lui        $v0, %hi(D_8011A271)
    /* C3F68 800D3768 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* C3F6C 800D376C 00000000 */  nop
    /* C3F70 800D3770 96004010 */  beqz       $v0, .L800D39CC
    /* C3F74 800D3774 00000000 */   nop
  .L800D3778:
    /* C3F78 800D3778 1680023C */  lui        $v0, %hi(D_80158864)
    /* C3F7C 800D377C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C3F80 800D3780 00000000 */  nop
    /* C3F84 800D3784 0400428C */  lw         $v0, 0x4($v0)
    /* C3F88 800D3788 00000000 */  nop
    /* C3F8C 800D378C 04004230 */  andi       $v0, $v0, 0x4
    /* C3F90 800D3790 1B004010 */  beqz       $v0, .L800D3800
    /* C3F94 800D3794 00000000 */   nop
    /* C3F98 800D3798 1280033C */  lui        $v1, %hi(D_8011A271)
    /* C3F9C 800D379C 71A26324 */  addiu      $v1, $v1, %lo(D_8011A271)
    /* C3FA0 800D37A0 00006290 */  lbu        $v0, 0x0($v1)
    /* C3FA4 800D37A4 00000000 */  nop
    /* C3FA8 800D37A8 06004010 */  beqz       $v0, .L800D37C4
    /* C3FAC 800D37AC 69000424 */   addiu     $a0, $zero, 0x69
    /* C3FB0 800D37B0 E9FF6294 */  lhu        $v0, -0x17($v1)
    /* C3FB4 800D37B4 00000000 */  nop
    /* C3FB8 800D37B8 80004230 */  andi       $v0, $v0, 0x80
    /* C3FBC 800D37BC 10004014 */  bnez       $v0, .L800D3800
    /* C3FC0 800D37C0 00000000 */   nop
  .L800D37C4:
    /* C3FC4 800D37C4 21280000 */  addu       $a1, $zero, $zero
    /* C3FC8 800D37C8 21300000 */  addu       $a2, $zero, $zero
    /* C3FCC 800D37CC 2B9D020C */  jal        func_800A74AC
    /* C3FD0 800D37D0 21380000 */   addu      $a3, $zero, $zero
    /* C3FD4 800D37D4 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* C3FD8 800D37D8 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* C3FDC 800D37DC C8D80534 */  ori        $a1, $zero, 0xD8C8
    /* C3FE0 800D37E0 1680073C */  lui        $a3, %hi(D_80158860)
    /* C3FE4 800D37E4 6088E78C */  lw         $a3, %lo(D_80158860)($a3)
    /* C3FE8 800D37E8 04E4020C */  jal        func_800B9010
    /* C3FEC 800D37EC 21300000 */   addu      $a2, $zero, $zero
    /* C3FF0 800D37F0 734E0308 */  j          .L800D39CC
    /* C3FF4 800D37F4 00000000 */   nop
  .L800D37F8:
    /* C3FF8 800D37F8 144E0308 */  j          .L800D3850
    /* C3FFC 800D37FC 21980002 */   addu      $s3, $s0, $zero
  .L800D3800:
    /* C4000 800D3800 0C63000C */  jal        func_80018C30
    /* C4004 800D3804 21200000 */   addu      $a0, $zero, $zero
    /* C4008 800D3808 01005226 */  addiu      $s2, $s2, 0x1
    /* C400C 800D380C 01001024 */  addiu      $s0, $zero, 0x1
    /* C4010 800D3810 00141200 */  sll        $v0, $s2, 16
    /* C4014 800D3814 03940200 */  sra        $s2, $v0, 16
  .L800D3818:
    /* C4018 800D3818 2700022A */  slti       $v0, $s0, 0x27
    /* C401C 800D381C 0C004010 */  beqz       $v0, .L800D3850
    /* C4020 800D3820 00000000 */   nop
    /* C4024 800D3824 1680043C */  lui        $a0, %hi(D_80158860)
    /* C4028 800D3828 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* C402C 800D382C C826020C */  jal        func_80089B20
    /* C4030 800D3830 21280002 */   addu      $a1, $s0, $zero
    /* C4034 800D3834 04004010 */  beqz       $v0, .L800D3848
    /* C4038 800D3838 00000000 */   nop
    /* C403C 800D383C 01003126 */  addiu      $s1, $s1, 0x1
    /* C4040 800D3840 EDFF3212 */  beq        $s1, $s2, .L800D37F8
    /* C4044 800D3844 00000000 */   nop
  .L800D3848:
    /* C4048 800D3848 064E0308 */  j          .L800D3818
    /* C404C 800D384C 01001026 */   addiu     $s0, $s0, 0x1
  .L800D3850:
    /* C4050 800D3850 5E006006 */  bltz       $s3, .L800D39CC
    /* C4054 800D3854 01000224 */   addiu     $v0, $zero, 0x1
    /* C4058 800D3858 1B000216 */  bne        $s0, $v0, .L800D38C8
    /* C405C 800D385C 00000000 */   nop
    /* C4060 800D3860 1280033C */  lui        $v1, %hi(D_8011A271)
    /* C4064 800D3864 71A26324 */  addiu      $v1, $v1, %lo(D_8011A271)
    /* C4068 800D3868 00006290 */  lbu        $v0, 0x0($v1)
    /* C406C 800D386C 00000000 */  nop
    /* C4070 800D3870 07004010 */  beqz       $v0, .L800D3890
    /* C4074 800D3874 69000424 */   addiu     $a0, $zero, 0x69
    /* C4078 800D3878 E9FF6294 */  lhu        $v0, -0x17($v1)
    /* C407C 800D387C 00000000 */  nop
    /* C4080 800D3880 80004230 */  andi       $v0, $v0, 0x80
    /* C4084 800D3884 11004014 */  bnez       $v0, .L800D38CC
    /* C4088 800D3888 21806002 */   addu      $s0, $s3, $zero
    /* C408C 800D388C 69000424 */  addiu      $a0, $zero, 0x69
  .L800D3890:
    /* C4090 800D3890 21280000 */  addu       $a1, $zero, $zero
    /* C4094 800D3894 21300000 */  addu       $a2, $zero, $zero
    /* C4098 800D3898 2B9D020C */  jal        func_800A74AC
    /* C409C 800D389C 21380000 */   addu      $a3, $zero, $zero
    /* C40A0 800D38A0 08000224 */  addiu      $v0, $zero, 0x8
    /* C40A4 800D38A4 1000A2AF */  sw         $v0, 0x10($sp)
    /* C40A8 800D38A8 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* C40AC 800D38AC F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* C40B0 800D38B0 932F0524 */  addiu      $a1, $zero, 0x2F93
    /* C40B4 800D38B4 21300000 */  addu       $a2, $zero, $zero
    /* C40B8 800D38B8 C3E3020C */  jal        func_800B8F0C
    /* C40BC 800D38BC 01000724 */   addiu     $a3, $zero, 0x1
    /* C40C0 800D38C0 734E0308 */  j          .L800D39CC
    /* C40C4 800D38C4 00000000 */   nop
  .L800D38C8:
    /* C40C8 800D38C8 21806002 */  addu       $s0, $s3, $zero
  .L800D38CC:
    /* C40CC 800D38CC C0181300 */  sll        $v1, $s3, 3
    /* C40D0 800D38D0 1180013C */  lui        $at, %hi(D_8010D068)
    /* C40D4 800D38D4 21082300 */  addu       $at, $at, $v1
    /* C40D8 800D38D8 68D03190 */  lbu        $s1, %lo(D_8010D068)($at)
    /* C40DC 800D38DC 1280023C */  lui        $v0, %hi(D_8011A5CC)
    /* C40E0 800D38E0 CCA54290 */  lbu        $v0, %lo(D_8011A5CC)($v0)
    /* C40E4 800D38E4 00000000 */  nop
    /* C40E8 800D38E8 18002202 */  mult       $s1, $v0
    /* C40EC 800D38EC 12880000 */  mflo       $s1
    /* C40F0 800D38F0 1180013C */  lui        $at, %hi(D_8010D064)
    /* C40F4 800D38F4 21082300 */  addu       $at, $at, $v1
    /* C40F8 800D38F8 64D0258C */  lw         $a1, %lo(D_8010D064)($at)
    /* C40FC 800D38FC ABAC020C */  jal        func_800AB2AC
    /* C4100 800D3900 21200000 */   addu      $a0, $zero, $zero
    /* C4104 800D3904 1280013C */  lui        $at, %hi(D_8011FF28)
    /* C4108 800D3908 28FF31AC */  sw         $s1, %lo(D_8011FF28)($at)
    /* C410C 800D390C 08000224 */  addiu      $v0, $zero, 0x8
    /* C4110 800D3910 1000A2AF */  sw         $v0, 0x10($sp)
    /* C4114 800D3914 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* C4118 800D3918 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* C411C 800D391C 0100053C */  lui        $a1, (0x12F36 >> 16)
    /* C4120 800D3920 362FA534 */  ori        $a1, $a1, (0x12F36 & 0xFFFF)
    /* C4124 800D3924 01000624 */  addiu      $a2, $zero, 0x1
    /* C4128 800D3928 C3E3020C */  jal        func_800B8F0C
    /* C412C 800D392C 21380002 */   addu      $a3, $s0, $zero
    /* C4130 800D3930 26004014 */  bnez       $v0, .L800D39CC
    /* C4134 800D3934 6E000424 */   addiu     $a0, $zero, 0x6E
    /* C4138 800D3938 21280000 */  addu       $a1, $zero, $zero
    /* C413C 800D393C 21300000 */  addu       $a2, $zero, $zero
    /* C4140 800D3940 2B9D020C */  jal        func_800A74AC
    /* C4144 800D3944 21380000 */   addu      $a3, $zero, $zero
    /* C4148 800D3948 1680043C */  lui        $a0, %hi(D_80158860)
    /* C414C 800D394C 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* C4150 800D3950 21280002 */  addu       $a1, $s0, $zero
    /* C4154 800D3954 E926020C */  jal        func_80089BA4
    /* C4158 800D3958 21300000 */   addu      $a2, $zero, $zero
    /* C415C 800D395C 1680043C */  lui        $a0, %hi(D_80158864)
    /* C4160 800D3960 6488848C */  lw         $a0, %lo(D_80158864)($a0)
    /* C4164 800D3964 00000000 */  nop
    /* C4168 800D3968 08008380 */  lb         $v1, 0x8($a0)
    /* C416C 800D396C 00000000 */  nop
    /* C4170 800D3970 40100300 */  sll        $v0, $v1, 1
    /* C4174 800D3974 21104300 */  addu       $v0, $v0, $v1
    /* C4178 800D3978 80100200 */  sll        $v0, $v0, 2
    /* C417C 800D397C 23104300 */  subu       $v0, $v0, $v1
    /* C4180 800D3980 00110200 */  sll        $v0, $v0, 4
    /* C4184 800D3984 23104300 */  subu       $v0, $v0, $v1
    /* C4188 800D3988 C0100200 */  sll        $v0, $v0, 3
    /* C418C 800D398C 1180013C */  lui        $at, %hi(D_80117694)
    /* C4190 800D3990 21082200 */  addu       $at, $at, $v0
    /* C4194 800D3994 9476238C */  lw         $v1, %lo(D_80117694)($at)
    /* C4198 800D3998 00000000 */  nop
    /* C419C 800D399C 21182302 */  addu       $v1, $s1, $v1
    /* C41A0 800D39A0 1180013C */  lui        $at, %hi(D_80117694)
    /* C41A4 800D39A4 21082200 */  addu       $at, $at, $v0
    /* C41A8 800D39A8 947623AC */  sw         $v1, %lo(D_80117694)($at)
    /* C41AC 800D39AC 0400828C */  lw         $v0, 0x4($a0)
    /* C41B0 800D39B0 00000000 */  nop
    /* C41B4 800D39B4 04004234 */  ori        $v0, $v0, 0x4
    /* C41B8 800D39B8 040082AC */  sw         $v0, 0x4($a0)
    /* C41BC 800D39BC 9FBF000C */  jal        func_8002FE7C
    /* C41C0 800D39C0 01000424 */   addiu     $a0, $zero, 0x1
    /* C41C4 800D39C4 1E3C030C */  jal        func_800CF078
    /* C41C8 800D39C8 21200000 */   addu      $a0, $zero, $zero
  .L800D39CC:
    /* C41CC 800D39CC 2800BF8F */  lw         $ra, 0x28($sp)
    /* C41D0 800D39D0 2400B38F */  lw         $s3, 0x24($sp)
    /* C41D4 800D39D4 2000B28F */  lw         $s2, 0x20($sp)
    /* C41D8 800D39D8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* C41DC 800D39DC 1800B08F */  lw         $s0, 0x18($sp)
    /* C41E0 800D39E0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* C41E4 800D39E4 0800E003 */  jr         $ra
    /* C41E8 800D39E8 00000000 */   nop
endlabel func_800D3710
