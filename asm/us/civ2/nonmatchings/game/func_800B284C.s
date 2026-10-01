.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B284C, 0x1C0

glabel func_800B284C
    /* A304C 800B284C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A3050 800B2850 2800BFAF */  sw         $ra, 0x28($sp)
    /* A3054 800B2854 2400B5AF */  sw         $s5, 0x24($sp)
    /* A3058 800B2858 2000B4AF */  sw         $s4, 0x20($sp)
    /* A305C 800B285C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A3060 800B2860 1800B2AF */  sw         $s2, 0x18($sp)
    /* A3064 800B2864 1400B1AF */  sw         $s1, 0x14($sp)
    /* A3068 800B2868 1000B0AF */  sw         $s0, 0x10($sp)
    /* A306C 800B286C 21908000 */  addu       $s2, $a0, $zero
    /* A3070 800B2870 21A0A000 */  addu       $s4, $a1, $zero
    /* A3074 800B2874 21A8C000 */  addu       $s5, $a2, $zero
    /* A3078 800B2878 2198E000 */  addu       $s3, $a3, $zero
    /* A307C 800B287C 8001508E */  lw         $s0, 0x180($s2)
    /* A3080 800B2880 00000000 */  nop
    /* A3084 800B2884 06000012 */  beqz       $s0, .L800B28A0
    /* A3088 800B2888 21880000 */   addu      $s1, $zero, $zero
  .L800B288C:
    /* A308C 800B288C 21880002 */  addu       $s1, $s0, $zero
    /* A3090 800B2890 1800108E */  lw         $s0, 0x18($s0)
    /* A3094 800B2894 00000000 */  nop
    /* A3098 800B2898 FCFF0016 */  bnez       $s0, .L800B288C
    /* A309C 800B289C 00000000 */   nop
  .L800B28A0:
    /* A30A0 800B28A0 98014426 */  addiu      $a0, $s2, 0x198
    /* A30A4 800B28A4 F552020C */  jal        func_80094BD4
    /* A30A8 800B28A8 1C000524 */   addiu     $a1, $zero, 0x1C
    /* A30AC 800B28AC 03002012 */  beqz       $s1, .L800B28BC
    /* A30B0 800B28B0 21804000 */   addu      $s0, $v0, $zero
    /* A30B4 800B28B4 30CA0208 */  j          .L800B28C0
    /* A30B8 800B28B8 180030AE */   sw        $s0, 0x18($s1)
  .L800B28BC:
    /* A30BC 800B28BC 800150AE */  sw         $s0, 0x180($s2)
  .L800B28C0:
    /* A30C0 800B28C0 180000AE */  sw         $zero, 0x18($s0)
    /* A30C4 800B28C4 000000AE */  sw         $zero, 0x0($s0)
    /* A30C8 800B28C8 AD87030C */  jal        func_800E1EB4
    /* A30CC 800B28CC 21208002 */   addu      $a0, $s4, $zero
    /* A30D0 800B28D0 02804224 */  addiu      $v0, $v0, -0x7FFE
    /* A30D4 800B28D4 98014426 */  addiu      $a0, $s2, 0x198
    /* A30D8 800B28D8 F552020C */  jal        func_80094BD4
    /* A30DC 800B28DC FFFF4530 */   andi      $a1, $v0, 0xFFFF
    /* A30E0 800B28E0 100002AE */  sw         $v0, 0x10($s0)
    /* A30E4 800B28E4 21204000 */  addu       $a0, $v0, $zero
    /* A30E8 800B28E8 A587030C */  jal        func_800E1E94
    /* A30EC 800B28EC 21288002 */   addu      $a1, $s4, $zero
    /* A30F0 800B28F0 1000048E */  lw         $a0, 0x10($s0)
    /* A30F4 800B28F4 1680053C */  lui        $a1, %hi(D_80158F54)
    /* A30F8 800B28F8 548FA524 */  addiu      $a1, $a1, %lo(D_80158F54)
    /* A30FC 800B28FC 9987030C */  jal        func_800E1E64
    /* A3100 800B2900 00000000 */   nop
    /* A3104 800B2904 1000048E */  lw         $a0, 0x10($s0)
    /* A3108 800B2908 AD87030C */  jal        func_800E1EB4
    /* A310C 800B290C 00000000 */   nop
    /* A3110 800B2910 01004324 */  addiu      $v1, $v0, 0x1
    /* A3114 800B2914 40100300 */  sll        $v0, $v1, 1
    /* A3118 800B2918 21104300 */  addu       $v0, $v0, $v1
    /* A311C 800B291C 40200200 */  sll        $a0, $v0, 1
    /* A3120 800B2920 F400428E */  lw         $v0, 0xF4($s2)
    /* A3124 800B2924 00000000 */  nop
    /* A3128 800B2928 2A184400 */  slt        $v1, $v0, $a0
    /* A312C 800B292C 02006010 */  beqz       $v1, .L800B2938
    /* A3130 800B2930 00000000 */   nop
    /* A3134 800B2934 21108000 */  addu       $v0, $a0, $zero
  .L800B2938:
    /* A3138 800B2938 F40042AE */  sw         $v0, 0xF4($s2)
    /* A313C 800B293C FF00622A */  slti       $v0, $s3, 0xFF
    /* A3140 800B2940 02004010 */  beqz       $v0, .L800B294C
    /* A3144 800B2944 FF000324 */   addiu     $v1, $zero, 0xFF
    /* A3148 800B2948 21186002 */  addu       $v1, $s3, $zero
  .L800B294C:
    /* A314C 800B294C 21986000 */  addu       $s3, $v1, $zero
    /* A3150 800B2950 080013AE */  sw         $s3, 0x8($s0)
    /* A3154 800B2954 98014426 */  addiu      $a0, $s2, 0x198
    /* A3158 800B2958 F552020C */  jal        func_80094BD4
    /* A315C 800B295C 00010524 */   addiu     $a1, $zero, 0x100
    /* A3160 800B2960 140002AE */  sw         $v0, 0x14($s0)
    /* A3164 800B2964 40101300 */  sll        $v0, $s3, 1
    /* A3168 800B2968 21105300 */  addu       $v0, $v0, $s3
    /* A316C 800B296C 40100200 */  sll        $v0, $v0, 1
    /* A3170 800B2970 040002AE */  sw         $v0, 0x4($s0)
    /* A3174 800B2974 F400438E */  lw         $v1, 0xF4($s2)
    /* A3178 800B2978 00000000 */  nop
    /* A317C 800B297C 21206200 */  addu       $a0, $v1, $v0
    /* A3180 800B2980 0C01428E */  lw         $v0, 0x10C($s2)
    /* A3184 800B2984 00000000 */  nop
    /* A3188 800B2988 2A184400 */  slt        $v1, $v0, $a0
    /* A318C 800B298C 02006010 */  beqz       $v1, .L800B2998
    /* A3190 800B2990 00000000 */   nop
    /* A3194 800B2994 21108000 */  addu       $v0, $a0, $zero
  .L800B2998:
    /* A3198 800B2998 0400A016 */  bnez       $s5, .L800B29AC
    /* A319C 800B299C 0C0142AE */   sw        $v0, 0x10C($s2)
    /* A31A0 800B29A0 1400028E */  lw         $v0, 0x14($s0)
    /* A31A4 800B29A4 73CA0208 */  j          .L800B29CC
    /* A31A8 800B29A8 000040A0 */   sb        $zero, 0x0($v0)
  .L800B29AC:
    /* A31AC 800B29AC 1400048E */  lw         $a0, 0x14($s0)
    /* A31B0 800B29B0 2128A002 */  addu       $a1, $s5, $zero
    /* A31B4 800B29B4 A987030C */  jal        func_800E1EA4
    /* A31B8 800B29B8 21306002 */   addu      $a2, $s3, $zero
    /* A31BC 800B29BC 1400028E */  lw         $v0, 0x14($s0)
    /* A31C0 800B29C0 00000000 */  nop
    /* A31C4 800B29C4 21105300 */  addu       $v0, $v0, $s3
    /* A31C8 800B29C8 000040A0 */  sb         $zero, 0x0($v0)
  .L800B29CC:
    /* A31CC 800B29CC 1800438E */  lw         $v1, 0x18($s2)
    /* A31D0 800B29D0 00000000 */  nop
    /* A31D4 800B29D4 01006224 */  addiu      $v0, $v1, 0x1
    /* A31D8 800B29D8 180042AE */  sw         $v0, 0x18($s2)
    /* A31DC 800B29DC 0C0003AE */  sw         $v1, 0xC($s0)
    /* A31E0 800B29E0 21100002 */  addu       $v0, $s0, $zero
    /* A31E4 800B29E4 2800BF8F */  lw         $ra, 0x28($sp)
    /* A31E8 800B29E8 2400B58F */  lw         $s5, 0x24($sp)
    /* A31EC 800B29EC 2000B48F */  lw         $s4, 0x20($sp)
    /* A31F0 800B29F0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A31F4 800B29F4 1800B28F */  lw         $s2, 0x18($sp)
    /* A31F8 800B29F8 1400B18F */  lw         $s1, 0x14($sp)
    /* A31FC 800B29FC 1000B08F */  lw         $s0, 0x10($sp)
    /* A3200 800B2A00 3000BD27 */  addiu      $sp, $sp, 0x30
    /* A3204 800B2A04 0800E003 */  jr         $ra
    /* A3208 800B2A08 00000000 */   nop
endlabel func_800B284C
