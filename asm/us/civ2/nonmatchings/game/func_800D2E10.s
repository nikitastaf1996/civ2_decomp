.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D2E10, 0x524

glabel func_800D2E10
    /* C3610 800D2E10 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* C3614 800D2E14 9C00BFAF */  sw         $ra, 0x9C($sp)
    /* C3618 800D2E18 9800BEAF */  sw         $fp, 0x98($sp)
    /* C361C 800D2E1C 9400B7AF */  sw         $s7, 0x94($sp)
    /* C3620 800D2E20 9000B6AF */  sw         $s6, 0x90($sp)
    /* C3624 800D2E24 8C00B5AF */  sw         $s5, 0x8C($sp)
    /* C3628 800D2E28 8800B4AF */  sw         $s4, 0x88($sp)
    /* C362C 800D2E2C 8400B3AF */  sw         $s3, 0x84($sp)
    /* C3630 800D2E30 8000B2AF */  sw         $s2, 0x80($sp)
    /* C3634 800D2E34 7C00B1AF */  sw         $s1, 0x7C($sp)
    /* C3638 800D2E38 7800B0AF */  sw         $s0, 0x78($sp)
    /* C363C 800D2E3C 21908000 */  addu       $s2, $a0, $zero
    /* C3640 800D2E40 1280113C */  lui        $s1, %hi(D_80122C54)
    /* C3644 800D2E44 542C3126 */  addiu      $s1, $s1, %lo(D_80122C54)
    /* C3648 800D2E48 0000228E */  lw         $v0, 0x0($s1)
    /* C364C 800D2E4C 00000000 */  nop
    /* C3650 800D2E50 27004010 */  beqz       $v0, .L800D2EF0
    /* C3654 800D2E54 21F0A000 */   addu      $fp, $a1, $zero
    /* C3658 800D2E58 2500C013 */  beqz       $fp, .L800D2EF0
    /* C365C 800D2E5C 5800B027 */   addiu     $s0, $sp, 0x58
    /* C3660 800D2E60 BD9E030C */  jal        SetTile
    /* C3664 800D2E64 21200002 */   addu      $a0, $s0, $zero
    /* C3668 800D2E68 040F4296 */  lhu        $v0, 0xF04($s2)
    /* C366C 800D2E6C 00000000 */  nop
    /* C3670 800D2E70 6000A2A7 */  sh         $v0, 0x60($sp)
    /* C3674 800D2E74 060F4296 */  lhu        $v0, 0xF06($s2)
    /* C3678 800D2E78 00000000 */  nop
    /* C367C 800D2E7C 6200A2A7 */  sh         $v0, 0x62($sp)
    /* C3680 800D2E80 080F4296 */  lhu        $v0, 0xF08($s2)
    /* C3684 800D2E84 040F4396 */  lhu        $v1, 0xF04($s2)
    /* C3688 800D2E88 00000000 */  nop
    /* C368C 800D2E8C 23104300 */  subu       $v0, $v0, $v1
    /* C3690 800D2E90 6400A2A7 */  sh         $v0, 0x64($sp)
    /* C3694 800D2E94 0A0F4296 */  lhu        $v0, 0xF0A($s2)
    /* C3698 800D2E98 060F4396 */  lhu        $v1, 0xF06($s2)
    /* C369C 800D2E9C 00000000 */  nop
    /* C36A0 800D2EA0 23104300 */  subu       $v0, $v0, $v1
    /* C36A4 800D2EA4 6600A2A7 */  sh         $v0, 0x66($sp)
    /* C36A8 800D2EA8 5C00A0A3 */  sb         $zero, 0x5C($sp)
    /* C36AC 800D2EAC 5D00A0A3 */  sb         $zero, 0x5D($sp)
    /* C36B0 800D2EB0 5E00A0A3 */  sb         $zero, 0x5E($sp)
    /* C36B4 800D2EB4 928E030C */  jal        DrawPrim
    /* C36B8 800D2EB8 21200002 */   addu      $a0, $s0, $zero
    /* C36BC 800D2EBC 040F4786 */  lh         $a3, 0xF04($s2)
    /* C36C0 800D2EC0 060F4286 */  lh         $v0, 0xF06($s2)
    /* C36C4 800D2EC4 00000000 */  nop
    /* C36C8 800D2EC8 1000A2AF */  sw         $v0, 0x10($sp)
    /* C36CC 800D2ECC 6800A427 */  addiu      $a0, $sp, 0x68
    /* C36D0 800D2ED0 1280063C */  lui        $a2, %hi(D_80121BF8)
    /* C36D4 800D2ED4 F81BC624 */  addiu      $a2, $a2, %lo(D_80121BF8)
    /* C36D8 800D2ED8 89EE030C */  jal        func_800FBA24
    /* C36DC 800D2EDC E4FF2526 */   addiu     $a1, $s1, -0x1C
    /* C36E0 800D2EE0 2C8D030C */  jal        DrawSync
    /* C36E4 800D2EE4 21200000 */   addu      $a0, $zero, $zero
    /* C36E8 800D2EE8 C04C0308 */  j          .L800D3300
    /* C36EC 800D2EEC 00000000 */   nop
  .L800D2EF0:
    /* C36F0 800D2EF0 10000224 */  addiu      $v0, $zero, 0x10
    /* C36F4 800D2EF4 040F42A6 */  sh         $v0, 0xF04($s2)
    /* C36F8 800D2EF8 48000224 */  addiu      $v0, $zero, 0x48
    /* C36FC 800D2EFC 060F42A6 */  sh         $v0, 0xF06($s2)
    /* C3700 800D2F00 70000224 */  addiu      $v0, $zero, 0x70
    /* C3704 800D2F04 080F42A6 */  sh         $v0, 0xF08($s2)
    /* C3708 800D2F08 A4000224 */  addiu      $v0, $zero, 0xA4
    /* C370C 800D2F0C 0A0F42A6 */  sh         $v0, 0xF0A($s2)
    /* C3710 800D2F10 070F428A */  lwl        $v0, 0xF07($s2)
    /* C3714 800D2F14 040F429A */  lwr        $v0, 0xF04($s2)
    /* C3718 800D2F18 0B0F438A */  lwl        $v1, 0xF0B($s2)
    /* C371C 800D2F1C 080F439A */  lwr        $v1, 0xF08($s2)
    /* C3720 800D2F20 2B00A2AB */  swl        $v0, 0x2B($sp)
    /* C3724 800D2F24 2800A2BB */  swr        $v0, 0x28($sp)
    /* C3728 800D2F28 2F00A3AB */  swl        $v1, 0x2F($sp)
    /* C372C 800D2F2C 2C00A3BB */  swr        $v1, 0x2C($sp)
    /* C3730 800D2F30 28025026 */  addiu      $s0, $s2, 0x228
    /* C3734 800D2F34 21200002 */  addu       $a0, $s0, $zero
    /* C3738 800D2F38 082C030C */  jal        func_800CB020
    /* C373C 800D2F3C 05000524 */   addiu     $a1, $zero, 0x5
    /* C3740 800D2F40 2800A787 */  lh         $a3, 0x28($sp)
    /* C3744 800D2F44 2A00A287 */  lh         $v0, 0x2A($sp)
    /* C3748 800D2F48 00000000 */  nop
    /* C374C 800D2F4C 1000A2AF */  sw         $v0, 0x10($sp)
    /* C3750 800D2F50 2C00A287 */  lh         $v0, 0x2C($sp)
    /* C3754 800D2F54 2800A387 */  lh         $v1, 0x28($sp)
    /* C3758 800D2F58 00000000 */  nop
    /* C375C 800D2F5C 23104300 */  subu       $v0, $v0, $v1
    /* C3760 800D2F60 1400A2AF */  sw         $v0, 0x14($sp)
    /* C3764 800D2F64 2E00A287 */  lh         $v0, 0x2E($sp)
    /* C3768 800D2F68 2A00A387 */  lh         $v1, 0x2A($sp)
    /* C376C 800D2F6C 00000000 */  nop
    /* C3770 800D2F70 23104300 */  subu       $v0, $v0, $v1
    /* C3774 800D2F74 1800A2AF */  sw         $v0, 0x18($sp)
    /* C3778 800D2F78 21200002 */  addu       $a0, $s0, $zero
    /* C377C 800D2F7C 21280000 */  addu       $a1, $zero, $zero
    /* C3780 800D2F80 252C030C */  jal        func_800CB094
    /* C3784 800D2F84 05000624 */   addiu     $a2, $zero, 0x5
    /* C3788 800D2F88 1680033C */  lui        $v1, %hi(D_80158864)
    /* C378C 800D2F8C 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* C3790 800D2F90 00000000 */  nop
    /* C3794 800D2F94 3D006480 */  lb         $a0, 0x3D($v1)
    /* C3798 800D2F98 00000000 */  nop
    /* C379C 800D2F9C 20008004 */  bltz       $a0, .L800D3020
    /* C37A0 800D2FA0 80100400 */   sll       $v0, $a0, 2
    /* C37A4 800D2FA4 21104400 */  addu       $v0, $v0, $a0
    /* C37A8 800D2FA8 80100200 */  sll        $v0, $v0, 2
    /* C37AC 800D2FAC 1180013C */  lui        $at, %hi(D_8010D28C)
    /* C37B0 800D2FB0 21082200 */  addu       $at, $at, $v0
    /* C37B4 800D2FB4 8CD23380 */  lb         $s3, %lo(D_8010D28C)($at)
    /* C37B8 800D2FB8 08006580 */  lb         $a1, 0x8($v1)
    /* C37BC 800D2FBC 6E51020C */  jal        func_800945B8
    /* C37C0 800D2FC0 00000000 */   nop
    /* C37C4 800D2FC4 21284000 */  addu       $a1, $v0, $zero
    /* C37C8 800D2FC8 E40E438E */  lw         $v1, 0xEE4($s2)
    /* C37CC 800D2FCC 01000224 */  addiu      $v0, $zero, 0x1
    /* C37D0 800D2FD0 03006214 */  bne        $v1, $v0, .L800D2FE0
    /* C37D4 800D2FD4 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* C37D8 800D2FD8 FBFF0424 */  addiu      $a0, $zero, -0x5
    /* C37DC 800D2FDC E40E438E */  lw         $v1, 0xEE4($s2)
  .L800D2FE0:
    /* C37E0 800D2FE0 03000224 */  addiu      $v0, $zero, 0x3
    /* C37E4 800D2FE4 02006214 */  bne        $v1, $v0, .L800D2FF0
    /* C37E8 800D2FE8 00000000 */   nop
    /* C37EC 800D2FEC 01000424 */  addiu      $a0, $zero, 0x1
  .L800D2FF0:
    /* C37F0 800D2FF0 040F4786 */  lh         $a3, 0xF04($s2)
    /* C37F4 800D2FF4 060F4286 */  lh         $v0, 0xF06($s2)
    /* C37F8 800D2FF8 00000000 */  nop
    /* C37FC 800D2FFC 1000A2AF */  sw         $v0, 0x10($sp)
    /* C3800 800D3000 1400A4AF */  sw         $a0, 0x14($sp)
    /* C3804 800D3004 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* C3808 800D3008 F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* C380C 800D300C 21300000 */  addu       $a2, $zero, $zero
    /* C3810 800D3010 4CBB020C */  jal        func_800AED30
    /* C3814 800D3014 2000E724 */   addiu     $a3, $a3, 0x20
    /* C3818 800D3018 554C0308 */  j          .L800D3154
    /* C381C 800D301C 00000000 */   nop
  .L800D3020:
    /* C3820 800D3020 1680023C */  lui        $v0, %hi(D_80158864)
    /* C3824 800D3024 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C3828 800D3028 00000000 */  nop
    /* C382C 800D302C 3D005180 */  lb         $s1, 0x3D($v0)
    /* C3830 800D3030 00000000 */  nop
    /* C3834 800D3034 27881100 */  nor        $s1, $zero, $s1
    /* C3838 800D3038 01003126 */  addiu      $s1, $s1, 0x1
    /* C383C 800D303C C0181100 */  sll        $v1, $s1, 3
    /* C3840 800D3040 1180013C */  lui        $at, %hi(D_8010D068)
    /* C3844 800D3044 21082300 */  addu       $at, $at, $v1
    /* C3848 800D3048 68D03390 */  lbu        $s3, %lo(D_8010D068)($at)
    /* C384C 800D304C C40F428E */  lw         $v0, 0xFC4($s2)
    /* C3850 800D3050 00000000 */  nop
    /* C3854 800D3054 23004014 */  bnez       $v0, .L800D30E4
    /* C3858 800D3058 00000000 */   nop
    /* C385C 800D305C 060F4296 */  lhu        $v0, 0xF06($s2)
    /* C3860 800D3060 00000000 */  nop
    /* C3864 800D3064 04004224 */  addiu      $v0, $v0, 0x4
    /* C3868 800D3068 6A00A2A7 */  sh         $v0, 0x6A($sp)
    /* C386C 800D306C 040F4296 */  lhu        $v0, 0xF04($s2)
    /* C3870 800D3070 00000000 */  nop
    /* C3874 800D3074 18004224 */  addiu      $v0, $v0, 0x18
    /* C3878 800D3078 6800A2A7 */  sh         $v0, 0x68($sp)
    /* C387C 800D307C 080F4296 */  lhu        $v0, 0xF08($s2)
    /* C3880 800D3080 00000000 */  nop
    /* C3884 800D3084 06004224 */  addiu      $v0, $v0, 0x6
    /* C3888 800D3088 6C00A2A7 */  sh         $v0, 0x6C($sp)
    /* C388C 800D308C 0A0F4296 */  lhu        $v0, 0xF0A($s2)
    /* C3890 800D3090 00000000 */  nop
    /* C3894 800D3094 6E00A2A7 */  sh         $v0, 0x6E($sp)
    /* C3898 800D3098 1180013C */  lui        $at, %hi(D_8010D064)
    /* C389C 800D309C 21082300 */  addu       $at, $at, $v1
    /* C38A0 800D30A0 64D0248C */  lw         $a0, %lo(D_8010D064)($at)
    /* C38A4 800D30A4 A63A030C */  jal        func_800CEA98
    /* C38A8 800D30A8 00000000 */   nop
    /* C38AC 800D30AC 3000B027 */  addiu      $s0, $sp, 0x30
    /* C38B0 800D30B0 21200002 */  addu       $a0, $s0, $zero
    /* C38B4 800D30B4 A587030C */  jal        func_800E1E94
    /* C38B8 800D30B8 21284000 */   addu      $a1, $v0, $zero
    /* C38BC 800D30BC 6C00A287 */  lh         $v0, 0x6C($sp)
    /* C38C0 800D30C0 6800A587 */  lh         $a1, 0x68($sp)
    /* C38C4 800D30C4 21200002 */  addu       $a0, $s0, $zero
    /* C38C8 800D30C8 D050000C */  jal        func_80014340
    /* C38CC 800D30CC 23284500 */   subu      $a1, $v0, $a1
    /* C38D0 800D30D0 21200002 */  addu       $a0, $s0, $zero
    /* C38D4 800D30D4 6800A527 */  addiu      $a1, $sp, 0x68
    /* C38D8 800D30D8 DC0F040C */  jal        func_80103F70
    /* C38DC 800D30DC 10000624 */   addiu     $a2, $zero, 0x10
    /* C38E0 800D30E0 C40F42AE */  sw         $v0, 0xFC4($s2)
  .L800D30E4:
    /* C38E4 800D30E4 E40E448E */  lw         $a0, 0xEE4($s2)
    /* C38E8 800D30E8 00000000 */  nop
    /* C38EC 800D30EC 80240400 */  sll        $a0, $a0, 18
    /* C38F0 800D30F0 03240400 */  sra        $a0, $a0, 16
    /* C38F4 800D30F4 D0EC030C */  jal        func_800FB340
    /* C38F8 800D30F8 08000524 */   addiu     $a1, $zero, 0x8
    /* C38FC 800D30FC C0281100 */  sll        $a1, $s1, 3
    /* C3900 800D3100 2128B100 */  addu       $a1, $a1, $s1
    /* C3904 800D3104 80280500 */  sll        $a1, $a1, 2
    /* C3908 800D3108 2128B100 */  addu       $a1, $a1, $s1
    /* C390C 800D310C 80280500 */  sll        $a1, $a1, 2
    /* C3910 800D3110 1380033C */  lui        $v1, %hi(D_80131638)
    /* C3914 800D3114 38166324 */  addiu      $v1, $v1, %lo(D_80131638)
    /* C3918 800D3118 040F4786 */  lh         $a3, 0xF04($s2)
    /* C391C 800D311C 060F4296 */  lhu        $v0, 0xF06($s2)
    /* C3920 800D3120 00000000 */  nop
    /* C3924 800D3124 04004224 */  addiu      $v0, $v0, 0x4
    /* C3928 800D3128 00140200 */  sll        $v0, $v0, 16
    /* C392C 800D312C 03140200 */  sra        $v0, $v0, 16
    /* C3930 800D3130 1000A2AF */  sw         $v0, 0x10($sp)
    /* C3934 800D3134 6800A427 */  addiu      $a0, $sp, 0x68
    /* C3938 800D3138 1280063C */  lui        $a2, %hi(D_80121BF8)
    /* C393C 800D313C F81BC624 */  addiu      $a2, $a2, %lo(D_80121BF8)
    /* C3940 800D3140 89EE030C */  jal        func_800FBA24
    /* C3944 800D3144 2128A300 */   addu      $a1, $a1, $v1
    /* C3948 800D3148 01000424 */  addiu      $a0, $zero, 0x1
    /* C394C 800D314C D0EC030C */  jal        func_800FB340
    /* C3950 800D3150 01000524 */   addiu     $a1, $zero, 0x1
  .L800D3154:
    /* C3954 800D3154 1680023C */  lui        $v0, %hi(D_80158864)
    /* C3958 800D3158 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C395C 800D315C 00000000 */  nop
    /* C3960 800D3160 3D004380 */  lb         $v1, 0x3D($v0)
    /* C3964 800D3164 DAFF0224 */  addiu      $v0, $zero, -0x26
    /* C3968 800D3168 5F006210 */  beq        $v1, $v0, .L800D32E8
    /* C396C 800D316C 0A000424 */   addiu     $a0, $zero, 0xA
    /* C3970 800D3170 2A00A297 */  lhu        $v0, 0x2A($sp)
    /* C3974 800D3174 00000000 */  nop
    /* C3978 800D3178 1C004224 */  addiu      $v0, $v0, 0x1C
    /* C397C 800D317C 2A00A2A7 */  sh         $v0, 0x2A($sp)
    /* C3980 800D3180 2E00A687 */  lh         $a2, 0x2E($sp)
    /* C3984 800D3184 00140200 */  sll        $v0, $v0, 16
    /* C3988 800D3188 03140200 */  sra        $v0, $v0, 16
    /* C398C 800D318C 2330C200 */  subu       $a2, $a2, $v0
    /* C3990 800D3190 00340600 */  sll        $a2, $a2, 16
    /* C3994 800D3194 1000A0AF */  sw         $zero, 0x10($sp)
    /* C3998 800D3198 0E000524 */  addiu      $a1, $zero, 0xE
    /* C399C 800D319C 03340600 */  sra        $a2, $a2, 16
    /* C39A0 800D31A0 2A1A030C */  jal        func_800C68A8
    /* C39A4 800D31A4 21380000 */   addu      $a3, $zero, $zero
    /* C39A8 800D31A8 21B04000 */  addu       $s6, $v0, $zero
    /* C39AC 800D31AC 21A06002 */  addu       $s4, $s3, $zero
    /* C39B0 800D31B0 0A00822A */  slti       $v0, $s4, 0xA
    /* C39B4 800D31B4 09004010 */  beqz       $v0, .L800D31DC
    /* C39B8 800D31B8 0A000224 */   addiu     $v0, $zero, 0xA
    /* C39BC 800D31BC 1680143C */  lui        $s4, %hi(D_80158540)
    /* C39C0 800D31C0 4085948E */  lw         $s4, %lo(D_80158540)($s4)
    /* C39C4 800D31C4 23105300 */  subu       $v0, $v0, $s3
    /* C39C8 800D31C8 1800C202 */  mult       $s6, $v0
    /* C39CC 800D31CC 2E00A297 */  lhu        $v0, 0x2E($sp)
    /* C39D0 800D31D0 12400000 */  mflo       $t0
    /* C39D4 800D31D4 23104800 */  subu       $v0, $v0, $t0
    /* C39D8 800D31D8 2E00A2A7 */  sh         $v0, 0x2E($sp)
  .L800D31DC:
    /* C39DC 800D31DC 2C00A687 */  lh         $a2, 0x2C($sp)
    /* C39E0 800D31E0 2800A287 */  lh         $v0, 0x28($sp)
    /* C39E4 800D31E4 00000000 */  nop
    /* C39E8 800D31E8 2330C200 */  subu       $a2, $a2, $v0
    /* C39EC 800D31EC 00340600 */  sll        $a2, $a2, 16
    /* C39F0 800D31F0 1000A0AF */  sw         $zero, 0x10($sp)
    /* C39F4 800D31F4 1680043C */  lui        $a0, %hi(D_80158540)
    /* C39F8 800D31F8 4085848C */  lw         $a0, %lo(D_80158540)($a0)
    /* C39FC 800D31FC 0B000524 */  addiu      $a1, $zero, 0xB
    /* C3A00 800D3200 03340600 */  sra        $a2, $a2, 16
    /* C3A04 800D3204 2A1A030C */  jal        func_800C68A8
    /* C3A08 800D3208 7000A727 */   addiu     $a3, $sp, 0x70
    /* C3A0C 800D320C 1680033C */  lui        $v1, %hi(D_80158540)
    /* C3A10 800D3210 4085638C */  lw         $v1, %lo(D_80158540)($v1)
    /* C3A14 800D3214 00000000 */  nop
    /* C3A18 800D3218 18004300 */  mult       $v0, $v1
    /* C3A1C 800D321C 12100000 */  mflo       $v0
    /* C3A20 800D3220 2C00A387 */  lh         $v1, 0x2C($sp)
    /* C3A24 800D3224 2800A487 */  lh         $a0, 0x28($sp)
    /* C3A28 800D3228 00000000 */  nop
    /* C3A2C 800D322C 23186400 */  subu       $v1, $v1, $a0
    /* C3A30 800D3230 21A80000 */  addu       $s5, $zero, $zero
    /* C3A34 800D3234 1680023C */  lui        $v0, %hi(D_80158864)
    /* C3A38 800D3238 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C3A3C 800D323C 00000000 */  nop
    /* C3A40 800D3240 1E005184 */  lh         $s1, 0x1E($v0)
    /* C3A44 800D3244 2800B787 */  lh         $s7, 0x28($sp)
    /* C3A48 800D3248 2A00B387 */  lh         $s3, 0x2A($sp)
    /* C3A4C 800D324C E40E448E */  lw         $a0, 0xEE4($s2)
    /* C3A50 800D3250 00000000 */  nop
    /* C3A54 800D3254 80240400 */  sll        $a0, $a0, 18
    /* C3A58 800D3258 03240400 */  sra        $a0, $a0, 16
    /* C3A5C 800D325C D0EC030C */  jal        func_800FB340
    /* C3A60 800D3260 08000524 */   addiu     $a1, $zero, 0x8
  .L800D3264:
    /* C3A64 800D3264 1D00201A */  blez       $s1, .L800D32DC
    /* C3A68 800D3268 0A00A22A */   slti      $v0, $s5, 0xA
    /* C3A6C 800D326C 1B004010 */  beqz       $v0, .L800D32DC
    /* C3A70 800D3270 2A109102 */   slt       $v0, $s4, $s1
    /* C3A74 800D3274 02004010 */  beqz       $v0, .L800D3280
    /* C3A78 800D3278 21802002 */   addu      $s0, $s1, $zero
    /* C3A7C 800D327C 21808002 */  addu       $s0, $s4, $zero
  .L800D3280:
    /* C3A80 800D3280 2C00A387 */  lh         $v1, 0x2C($sp)
    /* C3A84 800D3284 2800A287 */  lh         $v0, 0x28($sp)
    /* C3A88 800D3288 00000000 */  nop
    /* C3A8C 800D328C 23186200 */  subu       $v1, $v1, $v0
    /* C3A90 800D3290 001C0300 */  sll        $v1, $v1, 16
    /* C3A94 800D3294 031C0300 */  sra        $v1, $v1, 16
    /* C3A98 800D3298 1000B0AF */  sw         $s0, 0x10($sp)
    /* C3A9C 800D329C 1400B4AF */  sw         $s4, 0x14($sp)
    /* C3AA0 800D32A0 0B000224 */  addiu      $v0, $zero, 0xB
    /* C3AA4 800D32A4 1800A2AF */  sw         $v0, 0x18($sp)
    /* C3AA8 800D32A8 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* C3AAC 800D32AC 01000224 */  addiu      $v0, $zero, 0x1
    /* C3AB0 800D32B0 2000A2AF */  sw         $v0, 0x20($sp)
    /* C3AB4 800D32B4 21204002 */  addu       $a0, $s2, $zero
    /* C3AB8 800D32B8 1380053C */  lui        $a1, %hi(D_80130574)
    /* C3ABC 800D32BC 7405A524 */  addiu      $a1, $a1, %lo(D_80130574)
    /* C3AC0 800D32C0 2130E002 */  addu       $a2, $s7, $zero
    /* C3AC4 800D32C4 651A030C */  jal        func_800C6994
    /* C3AC8 800D32C8 21386002 */   addu      $a3, $s3, $zero
    /* C3ACC 800D32CC 23883002 */  subu       $s1, $s1, $s0
    /* C3AD0 800D32D0 0100B526 */  addiu      $s5, $s5, 0x1
    /* C3AD4 800D32D4 994C0308 */  j          .L800D3264
    /* C3AD8 800D32D8 21987602 */   addu      $s3, $s3, $s6
  .L800D32DC:
    /* C3ADC 800D32DC 01000424 */  addiu      $a0, $zero, 0x1
    /* C3AE0 800D32E0 D0EC030C */  jal        func_800FB340
    /* C3AE4 800D32E4 01000524 */   addiu     $a1, $zero, 0x1
  .L800D32E8:
    /* C3AE8 800D32E8 0500C013 */  beqz       $fp, .L800D3300
    /* C3AEC 800D32EC 00000000 */   nop
    /* C3AF0 800D32F0 1280043C */  lui        $a0, %hi(D_80122C38)
    /* C3AF4 800D32F4 382C8424 */  addiu      $a0, $a0, %lo(D_80122C38)
    /* C3AF8 800D32F8 79ED030C */  jal        func_800FB5E4
    /* C3AFC 800D32FC 040F4526 */   addiu     $a1, $s2, 0xF04
  .L800D3300:
    /* C3B00 800D3300 9C00BF8F */  lw         $ra, 0x9C($sp)
    /* C3B04 800D3304 9800BE8F */  lw         $fp, 0x98($sp)
    /* C3B08 800D3308 9400B78F */  lw         $s7, 0x94($sp)
    /* C3B0C 800D330C 9000B68F */  lw         $s6, 0x90($sp)
    /* C3B10 800D3310 8C00B58F */  lw         $s5, 0x8C($sp)
    /* C3B14 800D3314 8800B48F */  lw         $s4, 0x88($sp)
    /* C3B18 800D3318 8400B38F */  lw         $s3, 0x84($sp)
    /* C3B1C 800D331C 8000B28F */  lw         $s2, 0x80($sp)
    /* C3B20 800D3320 7C00B18F */  lw         $s1, 0x7C($sp)
    /* C3B24 800D3324 7800B08F */  lw         $s0, 0x78($sp)
    /* C3B28 800D3328 A000BD27 */  addiu      $sp, $sp, 0xA0
    /* C3B2C 800D332C 0800E003 */  jr         $ra
    /* C3B30 800D3330 00000000 */   nop
endlabel func_800D2E10
