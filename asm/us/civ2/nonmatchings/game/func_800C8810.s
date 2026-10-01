.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C8810, 0x708

glabel func_800C8810
    /* B9010 800C8810 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* B9014 800C8814 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* B9018 800C8818 2800B6AF */  sw         $s6, 0x28($sp)
    /* B901C 800C881C 2400B5AF */  sw         $s5, 0x24($sp)
    /* B9020 800C8820 2000B4AF */  sw         $s4, 0x20($sp)
    /* B9024 800C8824 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* B9028 800C8828 1800B2AF */  sw         $s2, 0x18($sp)
    /* B902C 800C882C 1400B1AF */  sw         $s1, 0x14($sp)
    /* B9030 800C8830 1000B0AF */  sw         $s0, 0x10($sp)
    /* B9034 800C8834 21988000 */  addu       $s3, $a0, $zero
    /* B9038 800C8838 2188A000 */  addu       $s1, $a1, $zero
    /* B903C 800C883C 4BDF010C */  jal        func_80077D2C
    /* B9040 800C8840 21800000 */   addu      $s0, $zero, $zero
    /* B9044 800C8844 04004014 */  bnez       $v0, .L800C8858
    /* B9048 800C8848 21206002 */   addu      $a0, $s3, $zero
    /* B904C 800C884C 8ACA010C */  jal        func_80072A28
    /* B9050 800C8850 20000524 */   addiu     $a1, $zero, 0x20
    /* B9054 800C8854 2B800200 */  sltu       $s0, $zero, $v0
  .L800C8858:
    /* B9058 800C8858 0F000012 */  beqz       $s0, .L800C8898
    /* B905C 800C885C 40101300 */   sll       $v0, $s3, 1
    /* B9060 800C8860 21105300 */  addu       $v0, $v0, $s3
    /* B9064 800C8864 80100200 */  sll        $v0, $v0, 2
    /* B9068 800C8868 23105300 */  subu       $v0, $v0, $s3
    /* B906C 800C886C 00110200 */  sll        $v0, $v0, 4
    /* B9070 800C8870 23105300 */  subu       $v0, $v0, $s3
    /* B9074 800C8874 C0100200 */  sll        $v0, $v0, 3
    /* B9078 800C8878 1180013C */  lui        $at, %hi(D_80117A74)
    /* B907C 800C887C 21082200 */  addu       $at, $at, $v0
    /* B9080 800C8880 747A2390 */  lbu        $v1, %lo(D_80117A74)($at)
    /* B9084 800C8884 00000000 */  nop
    /* B9088 800C8888 08006334 */  ori        $v1, $v1, 0x8
    /* B908C 800C888C 1180013C */  lui        $at, %hi(D_80117A74)
    /* B9090 800C8890 21082200 */  addu       $at, $at, $v0
    /* B9094 800C8894 747A23A0 */  sb         $v1, %lo(D_80117A74)($at)
  .L800C8898:
    /* B9098 800C8898 40101300 */  sll        $v0, $s3, 1
    /* B909C 800C889C 21105300 */  addu       $v0, $v0, $s3
    /* B90A0 800C88A0 80100200 */  sll        $v0, $v0, 2
    /* B90A4 800C88A4 23105300 */  subu       $v0, $v0, $s3
    /* B90A8 800C88A8 00110200 */  sll        $v0, $v0, 4
    /* B90AC 800C88AC 23105300 */  subu       $v0, $v0, $s3
    /* B90B0 800C88B0 C0100200 */  sll        $v0, $v0, 3
    /* B90B4 800C88B4 1180013C */  lui        $at, %hi(D_80117A74)
    /* B90B8 800C88B8 21082200 */  addu       $at, $at, $v0
    /* B90BC 800C88BC 747A2290 */  lbu        $v0, %lo(D_80117A74)($at)
    /* B90C0 800C88C0 00000000 */  nop
    /* B90C4 800C88C4 08005530 */  andi       $s5, $v0, 0x8
    /* B90C8 800C88C8 9C0C80AF */  sw         $zero, %gp_rel(D_80159174)($gp)
    /* B90CC 800C88CC 21280000 */  addu       $a1, $zero, $zero
    /* B90D0 800C88D0 40101300 */  sll        $v0, $s3, 1
    /* B90D4 800C88D4 21105300 */  addu       $v0, $v0, $s3
    /* B90D8 800C88D8 80100200 */  sll        $v0, $v0, 2
    /* B90DC 800C88DC 23105300 */  subu       $v0, $v0, $s3
    /* B90E0 800C88E0 00110200 */  sll        $v0, $v0, 4
    /* B90E4 800C88E4 23105300 */  subu       $v0, $v0, $s3
    /* B90E8 800C88E8 C0100200 */  sll        $v0, $v0, 3
    /* B90EC 800C88EC 1180033C */  lui        $v1, %hi(D_80117A7C)
    /* B90F0 800C88F0 7C7A6324 */  addiu      $v1, $v1, %lo(D_80117A7C)
    /* B90F4 800C88F4 21304300 */  addu       $a2, $v0, $v1
    /* B90F8 800C88F8 40180500 */  sll        $v1, $a1, 1
  .L800C88FC:
    /* B90FC 800C88FC 21106500 */  addu       $v0, $v1, $a1
    /* B9100 800C8900 40100200 */  sll        $v0, $v0, 1
    /* B9104 800C8904 1280013C */  lui        $at, %hi(D_80121B44)
    /* B9108 800C8908 21082200 */  addu       $at, $at, $v0
    /* B910C 800C890C 441B2484 */  lh         $a0, %lo(D_80121B44)($at)
    /* B9110 800C8910 21186600 */  addu       $v1, $v1, $a2
    /* B9114 800C8914 00006284 */  lh         $v0, 0x0($v1)
    /* B9118 800C8918 00000000 */  nop
    /* B911C 800C891C 18008200 */  mult       $a0, $v0
    /* B9120 800C8920 9C0C828F */  lw         $v0, %gp_rel(D_80159174)($gp)
    /* B9124 800C8924 12380000 */  mflo       $a3
    /* B9128 800C8928 2110E200 */  addu       $v0, $a3, $v0
    /* B912C 800C892C 9C0C82AF */  sw         $v0, %gp_rel(D_80159174)($gp)
    /* B9130 800C8930 0100A524 */  addiu      $a1, $a1, 0x1
    /* B9134 800C8934 0600A228 */  slti       $v0, $a1, 0x6
    /* B9138 800C8938 F0FF4014 */  bnez       $v0, .L800C88FC
    /* B913C 800C893C 40180500 */   sll       $v1, $a1, 1
    /* B9140 800C8940 9C0C948F */  lw         $s4, %gp_rel(D_80159174)($gp)
    /* B9144 800C8944 21280000 */  addu       $a1, $zero, $zero
    /* B9148 800C8948 40101300 */  sll        $v0, $s3, 1
    /* B914C 800C894C 21105300 */  addu       $v0, $v0, $s3
    /* B9150 800C8950 80100200 */  sll        $v0, $v0, 2
    /* B9154 800C8954 23105300 */  subu       $v0, $v0, $s3
    /* B9158 800C8958 00110200 */  sll        $v0, $v0, 4
    /* B915C 800C895C 23105300 */  subu       $v0, $v0, $s3
    /* B9160 800C8960 C0100200 */  sll        $v0, $v0, 3
    /* B9164 800C8964 1180033C */  lui        $v1, %hi(D_80117A7C)
    /* B9168 800C8968 7C7A6324 */  addiu      $v1, $v1, %lo(D_80117A7C)
    /* B916C 800C896C 21204300 */  addu       $a0, $v0, $v1
    /* B9170 800C8970 40180500 */  sll        $v1, $a1, 1
  .L800C8974:
    /* B9174 800C8974 21106400 */  addu       $v0, $v1, $a0
    /* B9178 800C8978 00004284 */  lh         $v0, 0x0($v0)
    /* B917C 800C897C 00000000 */  nop
    /* B9180 800C8980 07004014 */  bnez       $v0, .L800C89A0
    /* B9184 800C8984 21106500 */   addu      $v0, $v1, $a1
    /* B9188 800C8988 40100200 */  sll        $v0, $v0, 1
    /* B918C 800C898C 1280013C */  lui        $at, %hi(D_80121B44)
    /* B9190 800C8990 21082200 */  addu       $at, $at, $v0
    /* B9194 800C8994 441B2284 */  lh         $v0, %lo(D_80121B44)($at)
    /* B9198 800C8998 00000000 */  nop
    /* B919C 800C899C 21A08202 */  addu       $s4, $s4, $v0
  .L800C89A0:
    /* B91A0 800C89A0 0100A524 */  addiu      $a1, $a1, 0x1
    /* B91A4 800C89A4 0600A228 */  slti       $v0, $a1, 0x6
    /* B91A8 800C89A8 F2FF4014 */  bnez       $v0, .L800C8974
    /* B91AC 800C89AC 40180500 */   sll       $v1, $a1, 1
    /* B91B0 800C89B0 64000224 */  addiu      $v0, $zero, 0x64
    /* B91B4 800C89B4 A00C82AF */  sw         $v0, %gp_rel(D_80159178)($gp)
    /* B91B8 800C89B8 21206002 */  addu       $a0, $s3, $zero
    /* B91BC 800C89BC 3C21030C */  jal        func_800C84F0
    /* B91C0 800C89C0 04000524 */   addiu     $a1, $zero, 0x4
    /* B91C4 800C89C4 21804000 */  addu       $s0, $v0, $zero
    /* B91C8 800C89C8 21206002 */  addu       $a0, $s3, $zero
    /* B91CC 800C89CC 3C21030C */  jal        func_800C84F0
    /* B91D0 800C89D0 03000524 */   addiu     $a1, $zero, 0x3
    /* B91D4 800C89D4 21204000 */  addu       $a0, $v0, $zero
    /* B91D8 800C89D8 01000524 */  addiu      $a1, $zero, 0x1
    /* B91DC 800C89DC F53A030C */  jal        func_800CEBD4
    /* B91E0 800C89E0 63000624 */   addiu     $a2, $zero, 0x63
    /* B91E4 800C89E4 40181000 */  sll        $v1, $s0, 1
    /* B91E8 800C89E8 21187000 */  addu       $v1, $v1, $s0
    /* B91EC 800C89EC C0180300 */  sll        $v1, $v1, 3
    /* B91F0 800C89F0 21187000 */  addu       $v1, $v1, $s0
    /* B91F4 800C89F4 80180300 */  sll        $v1, $v1, 2
    /* B91F8 800C89F8 1A006200 */  div        $zero, $v1, $v0
    /* B91FC 800C89FC 02004014 */  bnez       $v0, .L800C8A08
    /* B9200 800C8A00 00000000 */   nop
    /* B9204 800C8A04 0D000700 */  break      7
  .L800C8A08:
    /* B9208 800C8A08 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B920C 800C8A0C 04004114 */  bne        $v0, $at, .L800C8A20
    /* B9210 800C8A10 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B9214 800C8A14 02006114 */  bne        $v1, $at, .L800C8A20
    /* B9218 800C8A18 00000000 */   nop
    /* B921C 800C8A1C 0D000600 */  break      6
  .L800C8A20:
    /* B9220 800C8A20 12200000 */  mflo       $a0
    /* B9224 800C8A24 00000000 */  nop
    /* B9228 800C8A28 A40C84AF */  sw         $a0, %gp_rel(D_8015917C)($gp)
    /* B922C 800C8A2C 10002012 */  beqz       $s1, .L800C8A70
    /* B9230 800C8A30 00000000 */   nop
    /* B9234 800C8A34 21280000 */  addu       $a1, $zero, $zero
    /* B9238 800C8A38 F53A030C */  jal        func_800CEBD4
    /* B923C 800C8A3C 64000624 */   addiu     $a2, $zero, 0x64
    /* B9240 800C8A40 A00C838F */  lw         $v1, %gp_rel(D_80159178)($gp)
    /* B9244 800C8A44 00000000 */  nop
    /* B9248 800C8A48 18004300 */  mult       $v0, $v1
    /* B924C 800C8A4C 12100000 */  mflo       $v0
    /* B9250 800C8A50 EB51033C */  lui        $v1, (0x51EB851F >> 16)
    /* B9254 800C8A54 1F856334 */  ori        $v1, $v1, (0x51EB851F & 0xFFFF)
    /* B9258 800C8A58 18004300 */  mult       $v0, $v1
    /* B925C 800C8A5C 10380000 */  mfhi       $a3
    /* B9260 800C8A60 43190700 */  sra        $v1, $a3, 5
    /* B9264 800C8A64 C3170200 */  sra        $v0, $v0, 31
    /* B9268 800C8A68 23186200 */  subu       $v1, $v1, $v0
    /* B926C 800C8A6C A00C83AF */  sw         $v1, %gp_rel(D_80159178)($gp)
  .L800C8A70:
    /* B9270 800C8A70 21206002 */  addu       $a0, $s3, $zero
    /* B9274 800C8A74 3C21030C */  jal        func_800C84F0
    /* B9278 800C8A78 05000524 */   addiu     $a1, $zero, 0x5
    /* B927C 800C8A7C 21804000 */  addu       $s0, $v0, $zero
    /* B9280 800C8A80 21206002 */  addu       $a0, $s3, $zero
    /* B9284 800C8A84 3C21030C */  jal        func_800C84F0
    /* B9288 800C8A88 04000524 */   addiu     $a1, $zero, 0x4
    /* B928C 800C8A8C 21884000 */  addu       $s1, $v0, $zero
    /* B9290 800C8A90 21206002 */  addu       $a0, $s3, $zero
    /* B9294 800C8A94 3C21030C */  jal        func_800C84F0
    /* B9298 800C8A98 03000524 */   addiu     $a1, $zero, 0x3
    /* B929C 800C8A9C 21202202 */  addu       $a0, $s1, $v0
    /* B92A0 800C8AA0 01000524 */  addiu      $a1, $zero, 0x1
    /* B92A4 800C8AA4 F53A030C */  jal        func_800CEBD4
    /* B92A8 800C8AA8 63000624 */   addiu     $a2, $zero, 0x63
    /* B92AC 800C8AAC 40201000 */  sll        $a0, $s0, 1
    /* B92B0 800C8AB0 21209000 */  addu       $a0, $a0, $s0
    /* B92B4 800C8AB4 C0200400 */  sll        $a0, $a0, 3
    /* B92B8 800C8AB8 21209000 */  addu       $a0, $a0, $s0
    /* B92BC 800C8ABC C0200400 */  sll        $a0, $a0, 3
    /* B92C0 800C8AC0 1A008200 */  div        $zero, $a0, $v0
    /* B92C4 800C8AC4 02004014 */  bnez       $v0, .L800C8AD0
    /* B92C8 800C8AC8 00000000 */   nop
    /* B92CC 800C8ACC 0D000700 */  break      7
  .L800C8AD0:
    /* B92D0 800C8AD0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B92D4 800C8AD4 04004114 */  bne        $v0, $at, .L800C8AE8
    /* B92D8 800C8AD8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B92DC 800C8ADC 02008114 */  bne        $a0, $at, .L800C8AE8
    /* B92E0 800C8AE0 00000000 */   nop
    /* B92E4 800C8AE4 0D000600 */  break      6
  .L800C8AE8:
    /* B92E8 800C8AE8 12200000 */  mflo       $a0
    /* B92EC 800C8AEC 00000000 */  nop
    /* B92F0 800C8AF0 A80C84AF */  sw         $a0, %gp_rel(D_80159180)($gp)
    /* B92F4 800C8AF4 21280000 */  addu       $a1, $zero, $zero
    /* B92F8 800C8AF8 F53A030C */  jal        func_800CEBD4
    /* B92FC 800C8AFC 64000624 */   addiu     $a2, $zero, 0x64
    /* B9300 800C8B00 A00C838F */  lw         $v1, %gp_rel(D_80159178)($gp)
    /* B9304 800C8B04 00000000 */  nop
    /* B9308 800C8B08 18004300 */  mult       $v0, $v1
    /* B930C 800C8B0C 12100000 */  mflo       $v0
    /* B9310 800C8B10 EB51033C */  lui        $v1, (0x51EB851F >> 16)
    /* B9314 800C8B14 1F856334 */  ori        $v1, $v1, (0x51EB851F & 0xFFFF)
    /* B9318 800C8B18 18004300 */  mult       $v0, $v1
    /* B931C 800C8B1C 10380000 */  mfhi       $a3
    /* B9320 800C8B20 43190700 */  sra        $v1, $a3, 5
    /* B9324 800C8B24 C3170200 */  sra        $v0, $v0, 31
    /* B9328 800C8B28 23186200 */  subu       $v1, $v1, $v0
    /* B932C 800C8B2C A00C83AF */  sw         $v1, %gp_rel(D_80159178)($gp)
    /* B9330 800C8B30 21206002 */  addu       $a0, $s3, $zero
    /* B9334 800C8B34 3C21030C */  jal        func_800C84F0
    /* B9338 800C8B38 02000524 */   addiu     $a1, $zero, 0x2
    /* B933C 800C8B3C 21804000 */  addu       $s0, $v0, $zero
    /* B9340 800C8B40 21206002 */  addu       $a0, $s3, $zero
    /* B9344 800C8B44 3C21030C */  jal        func_800C84F0
    /* B9348 800C8B48 01000524 */   addiu     $a1, $zero, 0x1
    /* B934C 800C8B4C 21204000 */  addu       $a0, $v0, $zero
    /* B9350 800C8B50 01000524 */  addiu      $a1, $zero, 0x1
    /* B9354 800C8B54 F53A030C */  jal        func_800CEBD4
    /* B9358 800C8B58 63000624 */   addiu     $a2, $zero, 0x63
    /* B935C 800C8B5C 40181000 */  sll        $v1, $s0, 1
    /* B9360 800C8B60 21187000 */  addu       $v1, $v1, $s0
    /* B9364 800C8B64 C0180300 */  sll        $v1, $v1, 3
    /* B9368 800C8B68 21187000 */  addu       $v1, $v1, $s0
    /* B936C 800C8B6C 80180300 */  sll        $v1, $v1, 2
    /* B9370 800C8B70 1A006200 */  div        $zero, $v1, $v0
    /* B9374 800C8B74 02004014 */  bnez       $v0, .L800C8B80
    /* B9378 800C8B78 00000000 */   nop
    /* B937C 800C8B7C 0D000700 */  break      7
  .L800C8B80:
    /* B9380 800C8B80 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B9384 800C8B84 04004114 */  bne        $v0, $at, .L800C8B98
    /* B9388 800C8B88 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B938C 800C8B8C 02006114 */  bne        $v1, $at, .L800C8B98
    /* B9390 800C8B90 00000000 */   nop
    /* B9394 800C8B94 0D000600 */  break      6
  .L800C8B98:
    /* B9398 800C8B98 12180000 */  mflo       $v1
    /* B939C 800C8B9C 00000000 */  nop
    /* B93A0 800C8BA0 AC0C83AF */  sw         $v1, %gp_rel(D_80159184)($gp)
    /* B93A4 800C8BA4 1280123C */  lui        $s2, %hi(D_8011A5DC)
    /* B93A8 800C8BA8 DCA55292 */  lbu        $s2, %lo(D_8011A5DC)($s2)
    /* B93AC 800C8BAC 0600A012 */  beqz       $s5, .L800C8BC8
    /* B93B0 800C8BB0 40101200 */   sll       $v0, $s2, 1
    /* B93B4 800C8BB4 21904202 */  addu       $s2, $s2, $v0
    /* B93B8 800C8BB8 02004106 */  bgez       $s2, .L800C8BC4
    /* B93BC 800C8BBC 21104002 */   addu      $v0, $s2, $zero
    /* B93C0 800C8BC0 03004226 */  addiu      $v0, $s2, 0x3
  .L800C8BC4:
    /* B93C4 800C8BC4 83900200 */  sra        $s2, $v0, 2
  .L800C8BC8:
    /* B93C8 800C8BC8 6500422A */  slti       $v0, $s2, 0x65
    /* B93CC 800C8BCC 05004014 */  bnez       $v0, .L800C8BE4
    /* B93D0 800C8BD0 01001524 */   addiu     $s5, $zero, 0x1
  .L800C8BD4:
    /* B93D4 800C8BD4 43901200 */  sra        $s2, $s2, 1
    /* B93D8 800C8BD8 6500422A */  slti       $v0, $s2, 0x65
    /* B93DC 800C8BDC FDFF4010 */  beqz       $v0, .L800C8BD4
    /* B93E0 800C8BE0 40A81500 */   sll       $s5, $s5, 1
  .L800C8BE4:
    /* B93E4 800C8BE4 21206002 */  addu       $a0, $s3, $zero
    /* B93E8 800C8BE8 3C21030C */  jal        func_800C84F0
    /* B93EC 800C8BEC 01000524 */   addiu     $a1, $zero, 0x1
    /* B93F0 800C8BF0 F021030C */  jal        func_800C87C0
    /* B93F4 800C8BF4 21204000 */   addu      $a0, $v0, $zero
    /* B93F8 800C8BF8 80800200 */  sll        $s0, $v0, 2
    /* B93FC 800C8BFC 21800202 */  addu       $s0, $s0, $v0
    /* B9400 800C8C00 40801000 */  sll        $s0, $s0, 1
    /* B9404 800C8C04 21206002 */  addu       $a0, $s3, $zero
    /* B9408 800C8C08 3C21030C */  jal        func_800C84F0
    /* B940C 800C8C0C 02000524 */   addiu     $a1, $zero, 0x2
    /* B9410 800C8C10 F021030C */  jal        func_800C87C0
    /* B9414 800C8C14 21204000 */   addu      $a0, $v0, $zero
    /* B9418 800C8C18 80300200 */  sll        $a2, $v0, 2
    /* B941C 800C8C1C 2130C200 */  addu       $a2, $a2, $v0
    /* B9420 800C8C20 21200002 */  addu       $a0, $s0, $zero
    /* B9424 800C8C24 21280000 */  addu       $a1, $zero, $zero
    /* B9428 800C8C28 F53A030C */  jal        func_800CEBD4
    /* B942C 800C8C2C 40300600 */   sll       $a2, $a2, 1
    /* B9430 800C8C30 9C0C838F */  lw         $v1, %gp_rel(D_80159174)($gp)
    /* B9434 800C8C34 00000000 */  nop
    /* B9438 800C8C38 18004302 */  mult       $s2, $v1
    /* B943C 800C8C3C 12180000 */  mflo       $v1
    /* B9440 800C8C40 01004224 */  addiu      $v0, $v0, 0x1
    /* B9444 800C8C44 00000000 */  nop
    /* B9448 800C8C48 1A006200 */  div        $zero, $v1, $v0
    /* B944C 800C8C4C 02004014 */  bnez       $v0, .L800C8C58
    /* B9450 800C8C50 00000000 */   nop
    /* B9454 800C8C54 0D000700 */  break      7
  .L800C8C58:
    /* B9458 800C8C58 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B945C 800C8C5C 04004114 */  bne        $v0, $at, .L800C8C70
    /* B9460 800C8C60 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B9464 800C8C64 02006114 */  bne        $v1, $at, .L800C8C70
    /* B9468 800C8C68 00000000 */   nop
    /* B946C 800C8C6C 0D000600 */  break      6
  .L800C8C70:
    /* B9470 800C8C70 12100000 */  mflo       $v0
    /* B9474 800C8C74 00000000 */  nop
    /* B9478 800C8C78 B00C82AF */  sw         $v0, %gp_rel(D_80159188)($gp)
    /* B947C 800C8C7C 21206002 */  addu       $a0, $s3, $zero
    /* B9480 800C8C80 3C21030C */  jal        func_800C84F0
    /* B9484 800C8C84 01000524 */   addiu     $a1, $zero, 0x1
    /* B9488 800C8C88 F021030C */  jal        func_800C87C0
    /* B948C 800C8C8C 21204000 */   addu      $a0, $v0, $zero
    /* B9490 800C8C90 80800200 */  sll        $s0, $v0, 2
    /* B9494 800C8C94 21800202 */  addu       $s0, $s0, $v0
    /* B9498 800C8C98 40801000 */  sll        $s0, $s0, 1
    /* B949C 800C8C9C 21206002 */  addu       $a0, $s3, $zero
    /* B94A0 800C8CA0 3C21030C */  jal        func_800C84F0
    /* B94A4 800C8CA4 02000524 */   addiu     $a1, $zero, 0x2
    /* B94A8 800C8CA8 F021030C */  jal        func_800C87C0
    /* B94AC 800C8CAC 21204000 */   addu      $a0, $v0, $zero
    /* B94B0 800C8CB0 80300200 */  sll        $a2, $v0, 2
    /* B94B4 800C8CB4 2130C200 */  addu       $a2, $a2, $v0
    /* B94B8 800C8CB8 21200002 */  addu       $a0, $s0, $zero
    /* B94BC 800C8CBC 21280000 */  addu       $a1, $zero, $zero
    /* B94C0 800C8CC0 F53A030C */  jal        func_800CEBD4
    /* B94C4 800C8CC4 40300600 */   sll       $a2, $a2, 1
    /* B94C8 800C8CC8 18005402 */  mult       $s2, $s4
    /* B94CC 800C8CCC 12B00000 */  mflo       $s6
    /* B94D0 800C8CD0 01004224 */  addiu      $v0, $v0, 0x1
    /* B94D4 800C8CD4 00000000 */  nop
    /* B94D8 800C8CD8 1A00C202 */  div        $zero, $s6, $v0
    /* B94DC 800C8CDC 02004014 */  bnez       $v0, .L800C8CE8
    /* B94E0 800C8CE0 00000000 */   nop
    /* B94E4 800C8CE4 0D000700 */  break      7
  .L800C8CE8:
    /* B94E8 800C8CE8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B94EC 800C8CEC 04004114 */  bne        $v0, $at, .L800C8D00
    /* B94F0 800C8CF0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B94F4 800C8CF4 0200C116 */  bne        $s6, $at, .L800C8D00
    /* B94F8 800C8CF8 00000000 */   nop
    /* B94FC 800C8CFC 0D000600 */  break      6
  .L800C8D00:
    /* B9500 800C8D00 12B00000 */  mflo       $s6
    /* B9504 800C8D04 40801300 */  sll        $s0, $s3, 1
    /* B9508 800C8D08 21801302 */  addu       $s0, $s0, $s3
    /* B950C 800C8D0C 80801000 */  sll        $s0, $s0, 2
    /* B9510 800C8D10 23801302 */  subu       $s0, $s0, $s3
    /* B9514 800C8D14 00811000 */  sll        $s0, $s0, 4
    /* B9518 800C8D18 23801302 */  subu       $s0, $s0, $s3
    /* B951C 800C8D1C C0801000 */  sll        $s0, $s0, 3
    /* B9520 800C8D20 1180013C */  lui        $at, %hi(D_80117A7E)
    /* B9524 800C8D24 21083000 */  addu       $at, $at, $s0
    /* B9528 800C8D28 7E7A2484 */  lh         $a0, %lo(D_80117A7E)($at)
    /* B952C 800C8D2C F021030C */  jal        func_800C87C0
    /* B9530 800C8D30 00000000 */   nop
    /* B9534 800C8D34 80880200 */  sll        $s1, $v0, 2
    /* B9538 800C8D38 21882202 */  addu       $s1, $s1, $v0
    /* B953C 800C8D3C 1180013C */  lui        $at, %hi(D_80117A80)
    /* B9540 800C8D40 21083000 */  addu       $at, $at, $s0
    /* B9544 800C8D44 807A2484 */  lh         $a0, %lo(D_80117A80)($at)
    /* B9548 800C8D48 F021030C */  jal        func_800C87C0
    /* B954C 800C8D4C 40881100 */   sll       $s1, $s1, 1
    /* B9550 800C8D50 80300200 */  sll        $a2, $v0, 2
    /* B9554 800C8D54 2130C200 */  addu       $a2, $a2, $v0
    /* B9558 800C8D58 21202002 */  addu       $a0, $s1, $zero
    /* B955C 800C8D5C 21280000 */  addu       $a1, $zero, $zero
    /* B9560 800C8D60 F53A030C */  jal        func_800CEBD4
    /* B9564 800C8D64 40300600 */   sll       $a2, $a2, 1
    /* B9568 800C8D68 18005402 */  mult       $s2, $s4
    /* B956C 800C8D6C 12A00000 */  mflo       $s4
    /* B9570 800C8D70 01004224 */  addiu      $v0, $v0, 0x1
    /* B9574 800C8D74 00000000 */  nop
    /* B9578 800C8D78 1A008202 */  div        $zero, $s4, $v0
    /* B957C 800C8D7C 02004014 */  bnez       $v0, .L800C8D88
    /* B9580 800C8D80 00000000 */   nop
    /* B9584 800C8D84 0D000700 */  break      7
  .L800C8D88:
    /* B9588 800C8D88 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B958C 800C8D8C 04004114 */  bne        $v0, $at, .L800C8DA0
    /* B9590 800C8D90 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B9594 800C8D94 02008116 */  bne        $s4, $at, .L800C8DA0
    /* B9598 800C8D98 00000000 */   nop
    /* B959C 800C8D9C 0D000600 */  break      6
  .L800C8DA0:
    /* B95A0 800C8DA0 12A00000 */  mflo       $s4
    /* B95A4 800C8DA4 0200A22A */  slti       $v0, $s5, 0x2
    /* B95A8 800C8DA8 0D004014 */  bnez       $v0, .L800C8DE0
    /* B95AC 800C8DAC 00000000 */   nop
    /* B95B0 800C8DB0 B00C828F */  lw         $v0, %gp_rel(D_80159188)($gp)
    /* B95B4 800C8DB4 00000000 */  nop
    /* B95B8 800C8DB8 1800A202 */  mult       $s5, $v0
    /* B95BC 800C8DBC 12180000 */  mflo       $v1
    /* B95C0 800C8DC0 B00C83AF */  sw         $v1, %gp_rel(D_80159188)($gp)
    /* B95C4 800C8DC4 00000000 */  nop
    /* B95C8 800C8DC8 1800D502 */  mult       $s6, $s5
    /* B95CC 800C8DCC 12B00000 */  mflo       $s6
    /* B95D0 800C8DD0 00000000 */  nop
    /* B95D4 800C8DD4 00000000 */  nop
    /* B95D8 800C8DD8 18009502 */  mult       $s4, $s5
    /* B95DC 800C8DDC 12A00000 */  mflo       $s4
  .L800C8DE0:
    /* B95E0 800C8DE0 B00C838F */  lw         $v1, %gp_rel(D_80159188)($gp)
    /* B95E4 800C8DE4 00000000 */  nop
    /* B95E8 800C8DE8 97006228 */  slti       $v0, $v1, 0x97
    /* B95EC 800C8DEC 0C004014 */  bnez       $v0, .L800C8E20
    /* B95F0 800C8DF0 6AFF6224 */   addiu     $v0, $v1, -0x96
    /* B95F4 800C8DF4 6666033C */  lui        $v1, (0x66666667 >> 16)
    /* B95F8 800C8DF8 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
    /* B95FC 800C8DFC 18004300 */  mult       $v0, $v1
    /* B9600 800C8E00 10380000 */  mfhi       $a3
    /* B9604 800C8E04 83180700 */  sra        $v1, $a3, 2
    /* B9608 800C8E08 C3170200 */  sra        $v0, $v0, 31
    /* B960C 800C8E0C 23186200 */  subu       $v1, $v1, $v0
    /* B9610 800C8E10 A00C828F */  lw         $v0, %gp_rel(D_80159178)($gp)
    /* B9614 800C8E14 00000000 */  nop
    /* B9618 800C8E18 23104300 */  subu       $v0, $v0, $v1
    /* B961C 800C8E1C A00C82AF */  sw         $v0, %gp_rel(D_80159178)($gp)
  .L800C8E20:
    /* B9620 800C8E20 A00C848F */  lw         $a0, %gp_rel(D_80159178)($gp)
    /* B9624 800C8E24 21280000 */  addu       $a1, $zero, $zero
    /* B9628 800C8E28 F53A030C */  jal        func_800CEBD4
    /* B962C 800C8E2C 64000624 */   addiu     $a2, $zero, 0x64
    /* B9630 800C8E30 A00C82AF */  sw         $v0, %gp_rel(D_80159178)($gp)
    /* B9634 800C8E34 4BDF010C */  jal        func_80077D2C
    /* B9638 800C8E38 21206002 */   addu      $a0, $s3, $zero
    /* B963C 800C8E3C 2B004014 */  bnez       $v0, .L800C8EEC
    /* B9640 800C8E40 21206002 */   addu      $a0, $s3, $zero
    /* B9644 800C8E44 3C21030C */  jal        func_800C84F0
    /* B9648 800C8E48 03000524 */   addiu     $a1, $zero, 0x3
    /* B964C 800C8E4C 40801300 */  sll        $s0, $s3, 1
    /* B9650 800C8E50 21801302 */  addu       $s0, $s0, $s3
    /* B9654 800C8E54 80801000 */  sll        $s0, $s0, 2
    /* B9658 800C8E58 23801302 */  subu       $s0, $s0, $s3
    /* B965C 800C8E5C 00811000 */  sll        $s0, $s0, 4
    /* B9660 800C8E60 23801302 */  subu       $s0, $s0, $s3
    /* B9664 800C8E64 C0801000 */  sll        $s0, $s0, 3
    /* B9668 800C8E68 1180013C */  lui        $at, %hi(D_80117A7A)
    /* B966C 800C8E6C 21083000 */  addu       $at, $at, $s0
    /* B9670 800C8E70 7A7A22A4 */  sh         $v0, %lo(D_80117A7A)($at)
    /* B9674 800C8E74 1280113C */  lui        $s1, %hi(D_8011A262)
    /* B9678 800C8E78 62A23126 */  addiu      $s1, $s1, %lo(D_8011A262)
    /* B967C 800C8E7C 00002486 */  lh         $a0, 0x0($s1)
    /* B9680 800C8E80 1D98010C */  jal        func_80066074
    /* B9684 800C8E84 6666123C */   lui       $s2, (0x66666667 >> 16)
    /* B9688 800C8E88 1180013C */  lui        $at, %hi(D_80117A78)
    /* B968C 800C8E8C 21083000 */  addu       $at, $at, $s0
    /* B9690 800C8E90 787A22A4 */  sh         $v0, %lo(D_80117A78)($at)
    /* B9694 800C8E94 00002486 */  lh         $a0, 0x0($s1)
    /* B9698 800C8E98 1D98010C */  jal        func_80066074
    /* B969C 800C8E9C 67665236 */   ori       $s2, $s2, (0x66666667 & 0xFFFF)
    /* B96A0 800C8EA0 1800D202 */  mult       $s6, $s2
    /* B96A4 800C8EA4 10380000 */  mfhi       $a3
    /* B96A8 800C8EA8 83180700 */  sra        $v1, $a3, 2
    /* B96AC 800C8EAC C3271600 */  sra        $a0, $s6, 31
    /* B96B0 800C8EB0 23186400 */  subu       $v1, $v1, $a0
    /* B96B4 800C8EB4 21104300 */  addu       $v0, $v0, $v1
    /* B96B8 800C8EB8 1180013C */  lui        $at, %hi(D_80117A76)
    /* B96BC 800C8EBC 21083000 */  addu       $at, $at, $s0
    /* B96C0 800C8EC0 767A22A4 */  sh         $v0, %lo(D_80117A76)($at)
    /* B96C4 800C8EC4 00002486 */  lh         $a0, 0x0($s1)
    /* B96C8 800C8EC8 1D98010C */  jal        func_80066074
    /* B96CC 800C8ECC 00000000 */   nop
    /* B96D0 800C8ED0 18009202 */  mult       $s4, $s2
    /* B96D4 800C8ED4 10380000 */  mfhi       $a3
    /* B96D8 800C8ED8 83180700 */  sra        $v1, $a3, 2
    /* B96DC 800C8EDC C3271400 */  sra        $a0, $s4, 31
    /* B96E0 800C8EE0 23186400 */  subu       $v1, $v1, $a0
    /* B96E4 800C8EE4 21104300 */  addu       $v0, $v0, $v1
    /* B96E8 800C8EE8 B40C82AF */  sw         $v0, %gp_rel(D_8015918C)($gp)
  .L800C8EEC:
    /* B96EC 800C8EEC 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* B96F0 800C8EF0 2800B68F */  lw         $s6, 0x28($sp)
    /* B96F4 800C8EF4 2400B58F */  lw         $s5, 0x24($sp)
    /* B96F8 800C8EF8 2000B48F */  lw         $s4, 0x20($sp)
    /* B96FC 800C8EFC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* B9700 800C8F00 1800B28F */  lw         $s2, 0x18($sp)
    /* B9704 800C8F04 1400B18F */  lw         $s1, 0x14($sp)
    /* B9708 800C8F08 1000B08F */  lw         $s0, 0x10($sp)
    /* B970C 800C8F0C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* B9710 800C8F10 0800E003 */  jr         $ra
    /* B9714 800C8F14 00000000 */   nop
endlabel func_800C8810
