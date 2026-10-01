.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B4090, 0x224

glabel func_800B4090
    /* A4890 800B4090 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* A4894 800B4094 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* A4898 800B4098 4800B6AF */  sw         $s6, 0x48($sp)
    /* A489C 800B409C 4400B5AF */  sw         $s5, 0x44($sp)
    /* A48A0 800B40A0 4000B4AF */  sw         $s4, 0x40($sp)
    /* A48A4 800B40A4 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* A48A8 800B40A8 3800B2AF */  sw         $s2, 0x38($sp)
    /* A48AC 800B40AC 3400B1AF */  sw         $s1, 0x34($sp)
    /* A48B0 800B40B0 3000B0AF */  sw         $s0, 0x30($sp)
    /* A48B4 800B40B4 21888000 */  addu       $s1, $a0, $zero
    /* A48B8 800B40B8 21A8A000 */  addu       $s5, $a1, $zero
    /* A48BC 800B40BC 7200A012 */  beqz       $s5, .L800B4288
    /* A48C0 800B40C0 21B0C000 */   addu      $s6, $a2, $zero
    /* A48C4 800B40C4 1C00228E */  lw         $v0, 0x1C($s1)
    /* A48C8 800B40C8 00000000 */  nop
    /* A48CC 800B40CC 6E004010 */  beqz       $v0, .L800B4288
    /* A48D0 800B40D0 00000000 */   nop
    /* A48D4 800B40D4 0000228E */  lw         $v0, 0x0($s1)
    /* A48D8 800B40D8 00000000 */  nop
    /* A48DC 800B40DC 6A004010 */  beqz       $v0, .L800B4288
    /* A48E0 800B40E0 00000000 */   nop
    /* A48E4 800B40E4 6001258E */  lw         $a1, 0x160($s1)
    /* A48E8 800B40E8 7ACC020C */  jal        func_800B31E8
    /* A48EC 800B40EC 00000000 */   nop
    /* A48F0 800B40F0 21804000 */  addu       $s0, $v0, $zero
    /* A48F4 800B40F4 21202002 */  addu       $a0, $s1, $zero
    /* A48F8 800B40F8 7ACC020C */  jal        func_800B31E8
    /* A48FC 800B40FC 2128A002 */   addu      $a1, $s5, $zero
    /* A4900 800B4100 21384000 */  addu       $a3, $v0, $zero
    /* A4904 800B4104 2328F000 */  subu       $a1, $a3, $s0
    /* A4908 800B4108 5F00A004 */  bltz       $a1, .L800B4288
    /* A490C 800B410C 00000000 */   nop
    /* A4910 800B4110 4400238E */  lw         $v1, 0x44($s1)
    /* A4914 800B4114 2C00228E */  lw         $v0, 0x2C($s1)
    /* A4918 800B4118 00000000 */  nop
    /* A491C 800B411C 18006200 */  mult       $v1, $v0
    /* A4920 800B4120 12400000 */  mflo       $t0
    /* A4924 800B4124 2A10A800 */  slt        $v0, $a1, $t0
    /* A4928 800B4128 57004010 */  beqz       $v0, .L800B4288
    /* A492C 800B412C 00000000 */   nop
    /* A4930 800B4130 1A00A300 */  div        $zero, $a1, $v1
    /* A4934 800B4134 02006014 */  bnez       $v1, .L800B4140
    /* A4938 800B4138 00000000 */   nop
    /* A493C 800B413C 0D000700 */  break      7
  .L800B4140:
    /* A4940 800B4140 FFFF0124 */  addiu      $at, $zero, -0x1
    /* A4944 800B4144 04006114 */  bne        $v1, $at, .L800B4158
    /* A4948 800B4148 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A494C 800B414C 0200A114 */  bne        $a1, $at, .L800B4158
    /* A4950 800B4150 00000000 */   nop
    /* A4954 800B4154 0D000600 */  break      6
  .L800B4158:
    /* A4958 800B4158 12100000 */  mflo       $v0
    /* A495C 800B415C 10280000 */  mfhi       $a1
    /* A4960 800B4160 4C01248E */  lw         $a0, 0x14C($s1)
    /* A4964 800B4164 00000000 */  nop
    /* A4968 800B4168 18004400 */  mult       $v0, $a0
    /* A496C 800B416C 4401228E */  lw         $v0, 0x144($s1)
    /* A4970 800B4170 12400000 */  mflo       $t0
    /* A4974 800B4174 21980201 */  addu       $s3, $t0, $v0
    /* A4978 800B4178 5001238E */  lw         $v1, 0x150($s1)
    /* A497C 800B417C 00000000 */  nop
    /* A4980 800B4180 1800A300 */  mult       $a1, $v1
    /* A4984 800B4184 4801228E */  lw         $v0, 0x148($s1)
    /* A4988 800B4188 12400000 */  mflo       $t0
    /* A498C 800B418C 21A00201 */  addu       $s4, $t0, $v0
    /* A4990 800B4190 2000B3A7 */  sh         $s3, 0x20($sp)
    /* A4994 800B4194 2200B4A7 */  sh         $s4, 0x22($sp)
    /* A4998 800B4198 21206402 */  addu       $a0, $s3, $a0
    /* A499C 800B419C 2400A4A7 */  sh         $a0, 0x24($sp)
    /* A49A0 800B41A0 21188302 */  addu       $v1, $s4, $v1
    /* A49A4 800B41A4 2600A3A7 */  sh         $v1, 0x26($sp)
    /* A49A8 800B41A8 6801228E */  lw         $v0, 0x168($s1)
    /* A49AC 800B41AC 00000000 */  nop
    /* A49B0 800B41B0 2610A202 */  xor        $v0, $s5, $v0
    /* A49B4 800B41B4 0100522C */  sltiu      $s2, $v0, 0x1
    /* A49B8 800B41B8 2300A28B */  lwl        $v0, 0x23($sp)
    /* A49BC 800B41BC 2000A29B */  lwr        $v0, 0x20($sp)
    /* A49C0 800B41C0 2700A38B */  lwl        $v1, 0x27($sp)
    /* A49C4 800B41C4 2400A39B */  lwr        $v1, 0x24($sp)
    /* A49C8 800B41C8 2B00A2AB */  swl        $v0, 0x2B($sp)
    /* A49CC 800B41CC 2800A2BB */  swr        $v0, 0x28($sp)
    /* A49D0 800B41D0 2F00A3AB */  swl        $v1, 0x2F($sp)
    /* A49D4 800B41D4 2C00A3BB */  swr        $v1, 0x2C($sp)
    /* A49D8 800B41D8 5C01228E */  lw         $v0, 0x15C($s1)
    /* A49DC 800B41DC 00000000 */  nop
    /* A49E0 800B41E0 06004010 */  beqz       $v0, .L800B41FC
    /* A49E4 800B41E4 00000000 */   nop
    /* A49E8 800B41E8 2800A297 */  lhu        $v0, 0x28($sp)
    /* A49EC 800B41EC 5C012396 */  lhu        $v1, 0x15C($s1)
    /* A49F0 800B41F0 00000000 */  nop
    /* A49F4 800B41F4 21104300 */  addu       $v0, $v0, $v1
    /* A49F8 800B41F8 2800A2A7 */  sh         $v0, 0x28($sp)
  .L800B41FC:
    /* A49FC 800B41FC 9001228E */  lw         $v0, 0x190($s1)
    /* A4A00 800B4200 00000000 */  nop
    /* A4A04 800B4204 0D004010 */  beqz       $v0, .L800B423C
    /* A4A08 800B4208 00000000 */   nop
    /* A4A0C 800B420C 1000B3AF */  sw         $s3, 0x10($sp)
    /* A4A10 800B4210 1400B4AF */  sw         $s4, 0x14($sp)
    /* A4A14 800B4214 5001228E */  lw         $v0, 0x150($s1)
    /* A4A18 800B4218 00000000 */  nop
    /* A4A1C 800B421C 1800A2AF */  sw         $v0, 0x18($sp)
    /* A4A20 800B4220 9001228E */  lw         $v0, 0x190($s1)
    /* A4A24 800B4224 0000258E */  lw         $a1, 0x0($s1)
    /* A4A28 800B4228 0400A68E */  lw         $a2, 0x4($s5)
    /* A4A2C 800B422C 09F84000 */  jalr       $v0
    /* A4A30 800B4230 21202002 */   addu      $a0, $s1, $zero
    /* A4A34 800B4234 14004014 */  bnez       $v0, .L800B4288
    /* A4A38 800B4238 00000000 */   nop
  .L800B423C:
    /* A4A3C 800B423C 0A004012 */  beqz       $s2, .L800B4268
    /* A4A40 800B4240 2800B027 */   addiu     $s0, $sp, 0x28
    /* A4A44 800B4244 0000248E */  lw         $a0, 0x0($s1)
    /* A4A48 800B4248 5C00268E */  lw         $a2, 0x5C($s1)
    /* A4A4C 800B424C 6000278E */  lw         $a3, 0x60($s1)
    /* A4A50 800B4250 2414020C */  jal        func_80085090
    /* A4A54 800B4254 21280002 */   addu      $a1, $s0, $zero
    /* A4A58 800B4258 21200002 */  addu       $a0, $s0, $zero
    /* A4A5C 800B425C FFFF0524 */  addiu      $a1, $zero, -0x1
    /* A4A60 800B4260 82D4030C */  jal        func_800F5208
    /* A4A64 800B4264 FFFF0624 */   addiu     $a2, $zero, -0x1
  .L800B4268:
    /* A4A68 800B4268 02000224 */  addiu      $v0, $zero, 0x2
    /* A4A6C 800B426C 0600C212 */  beq        $s6, $v0, .L800B4288
    /* A4A70 800B4270 21202002 */   addu      $a0, $s1, $zero
    /* A4A74 800B4274 1000B2AF */  sw         $s2, 0x10($sp)
    /* A4A78 800B4278 0800A58E */  lw         $a1, 0x8($s5)
    /* A4A7C 800B427C 02006626 */  addiu      $a2, $s3, 0x2
    /* A4A80 800B4280 19D0020C */  jal        func_800B4064
    /* A4A84 800B4284 21388002 */   addu      $a3, $s4, $zero
  .L800B4288:
    /* A4A88 800B4288 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* A4A8C 800B428C 4800B68F */  lw         $s6, 0x48($sp)
    /* A4A90 800B4290 4400B58F */  lw         $s5, 0x44($sp)
    /* A4A94 800B4294 4000B48F */  lw         $s4, 0x40($sp)
    /* A4A98 800B4298 3C00B38F */  lw         $s3, 0x3C($sp)
    /* A4A9C 800B429C 3800B28F */  lw         $s2, 0x38($sp)
    /* A4AA0 800B42A0 3400B18F */  lw         $s1, 0x34($sp)
    /* A4AA4 800B42A4 3000B08F */  lw         $s0, 0x30($sp)
    /* A4AA8 800B42A8 5000BD27 */  addiu      $sp, $sp, 0x50
    /* A4AAC 800B42AC 0800E003 */  jr         $ra
    /* A4AB0 800B42B0 00000000 */   nop
endlabel func_800B4090
