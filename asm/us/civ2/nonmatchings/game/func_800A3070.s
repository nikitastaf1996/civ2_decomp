.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A3070, 0x384

glabel func_800A3070
    /* 93870 800A3070 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 93874 800A3074 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 93878 800A3078 FFFFA330 */  andi       $v1, $a1, 0xFFFF
    /* 9387C 800A307C 0F000224 */  addiu      $v0, $zero, 0xF
    /* 93880 800A3080 06006210 */  beq        $v1, $v0, .L800A309C
    /* 93884 800A3084 3800B0AF */   sw        $s0, 0x38($sp)
    /* 93888 800A3088 00010224 */  addiu      $v0, $zero, 0x100
    /* 9388C 800A308C 5B006210 */  beq        $v1, $v0, .L800A31FC
    /* 93890 800A3090 FFFFA530 */   andi      $a1, $a1, 0xFFFF
    /* 93894 800A3094 F38C0208 */  j          .L800A33CC
    /* 93898 800A3098 00000000 */   nop
  .L800A309C:
    /* 9389C 800A309C 7907040C */  jal        func_80101DE4
    /* 938A0 800A30A0 01000424 */   addiu     $a0, $zero, 0x1
    /* 938A4 800A30A4 A405828F */  lw         $v0, %gp_rel(D_80158A7C)($gp)
    /* 938A8 800A30A8 00000000 */  nop
    /* 938AC 800A30AC 2000428C */  lw         $v0, 0x20($v0)
    /* 938B0 800A30B0 00000000 */  nop
    /* 938B4 800A30B4 0400448C */  lw         $a0, 0x4($v0)
    /* 938B8 800A30B8 D707040C */  jal        func_80101F5C
    /* 938BC 800A30BC 00000000 */   nop
    /* 938C0 800A30C0 F8FF0224 */  addiu      $v0, $zero, -0x8
    /* 938C4 800A30C4 1800A2A7 */  sh         $v0, 0x18($sp)
    /* 938C8 800A30C8 F0FF0224 */  addiu      $v0, $zero, -0x10
    /* 938CC 800A30CC 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* 938D0 800A30D0 A405828F */  lw         $v0, %gp_rel(D_80158A7C)($gp)
    /* 938D4 800A30D4 00000000 */  nop
    /* 938D8 800A30D8 2000448C */  lw         $a0, 0x20($v0)
    /* 938DC 800A30DC D31A040C */  jal        func_80106B4C
    /* 938E0 800A30E0 00000000 */   nop
    /* 938E4 800A30E4 08004224 */  addiu      $v0, $v0, 0x8
    /* 938E8 800A30E8 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* 938EC 800A30EC A405828F */  lw         $v0, %gp_rel(D_80158A7C)($gp)
    /* 938F0 800A30F0 00000000 */  nop
    /* 938F4 800A30F4 2000448C */  lw         $a0, 0x20($v0)
    /* 938F8 800A30F8 EB1A040C */  jal        func_80106BAC
    /* 938FC 800A30FC 00000000 */   nop
    /* 93900 800A3100 10004224 */  addiu      $v0, $v0, 0x10
    /* 93904 800A3104 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* 93908 800A3108 1800A427 */  addiu      $a0, $sp, 0x18
    /* 9390C 800A310C A314020C */  jal        func_8008528C
    /* 93910 800A3110 21280000 */   addu      $a1, $zero, $zero
    /* 93914 800A3114 2000B027 */  addiu      $s0, $sp, 0x20
    /* 93918 800A3118 BD9E030C */  jal        SetTile
    /* 9391C 800A311C 21200002 */   addu      $a0, $s0, $zero
    /* 93920 800A3120 FD8C020C */  jal        func_800A33F4
    /* 93924 800A3124 21200002 */   addu      $a0, $s0, $zero
    /* 93928 800A3128 1C00A297 */  lhu        $v0, 0x1C($sp)
    /* 9392C 800A312C 00000000 */  nop
    /* 93930 800A3130 FAFF4224 */  addiu      $v0, $v0, -0x6
    /* 93934 800A3134 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* 93938 800A3138 0C000224 */  addiu      $v0, $zero, 0xC
    /* 9393C 800A313C 2E00A2A7 */  sh         $v0, 0x2E($sp)
    /* 93940 800A3140 2800A0A7 */  sh         $zero, 0x28($sp)
    /* 93944 800A3144 A405828F */  lw         $v0, %gp_rel(D_80158A7C)($gp)
    /* 93948 800A3148 00000000 */  nop
    /* 9394C 800A314C 29004380 */  lb         $v1, 0x29($v0)
    /* 93950 800A3150 00000000 */  nop
    /* 93954 800A3154 40100300 */  sll        $v0, $v1, 1
    /* 93958 800A3158 21104300 */  addu       $v0, $v0, $v1
    /* 9395C 800A315C 80100200 */  sll        $v0, $v0, 2
    /* 93960 800A3160 2A00A2A7 */  sh         $v0, 0x2A($sp)
    /* 93964 800A3164 21200002 */  addu       $a0, $s0, $zero
    /* 93968 800A3168 999E030C */  jal        SetSemiTrans
    /* 9396C 800A316C 01000524 */   addiu     $a1, $zero, 0x1
    /* 93970 800A3170 928E030C */  jal        DrawPrim
    /* 93974 800A3174 21200002 */   addu      $a0, $s0, $zero
    /* 93978 800A3178 1800A0A7 */  sh         $zero, 0x18($sp)
    /* 9397C 800A317C 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* 93980 800A3180 A405828F */  lw         $v0, %gp_rel(D_80158A7C)($gp)
    /* 93984 800A3184 00000000 */  nop
    /* 93988 800A3188 2000448C */  lw         $a0, 0x20($v0)
    /* 9398C 800A318C D31A040C */  jal        func_80106B4C
    /* 93990 800A3190 00000000 */   nop
    /* 93994 800A3194 0A004224 */  addiu      $v0, $v0, 0xA
    /* 93998 800A3198 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* 9399C 800A319C A405828F */  lw         $v0, %gp_rel(D_80158A7C)($gp)
    /* 939A0 800A31A0 00000000 */  nop
    /* 939A4 800A31A4 2000448C */  lw         $a0, 0x20($v0)
    /* 939A8 800A31A8 EB1A040C */  jal        func_80106BAC
    /* 939AC 800A31AC 00000000 */   nop
    /* 939B0 800A31B0 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* 939B4 800A31B4 A405828F */  lw         $v0, %gp_rel(D_80158A7C)($gp)
    /* 939B8 800A31B8 00000000 */  nop
    /* 939BC 800A31BC 1C00448C */  lw         $a0, 0x1C($v0)
    /* 939C0 800A31C0 AD87030C */  jal        func_800E1EB4
    /* 939C4 800A31C4 00000000 */   nop
    /* 939C8 800A31C8 00140200 */  sll        $v0, $v0, 16
    /* 939CC 800A31CC A405858F */  lw         $a1, %gp_rel(D_80158A7C)($gp)
    /* 939D0 800A31D0 10000324 */  addiu      $v1, $zero, 0x10
    /* 939D4 800A31D4 1000A3AF */  sw         $v1, 0x10($sp)
    /* 939D8 800A31D8 2400A48C */  lw         $a0, 0x24($a1)
    /* 939DC 800A31DC 1C00A58C */  lw         $a1, 0x1C($a1)
    /* 939E0 800A31E0 03340200 */  sra        $a2, $v0, 16
    /* 939E4 800A31E4 320F040C */  jal        func_80103CC8
    /* 939E8 800A31E8 1800A727 */   addiu     $a3, $sp, 0x18
    /* 939EC 800A31EC 2C8D030C */  jal        DrawSync
    /* 939F0 800A31F0 21200000 */   addu      $a0, $zero, $zero
    /* 939F4 800A31F4 F88C0208 */  j          .L800A33E0
    /* 939F8 800A31F8 21100000 */   addu      $v0, $zero, $zero
  .L800A31FC:
    /* 939FC 800A31FC FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* 93A00 800A3200 6400C228 */  slti       $v0, $a2, 0x64
    /* 93A04 800A3204 12004010 */  beqz       $v0, .L800A3250
    /* 93A08 800A3208 6100C228 */   slti      $v0, $a2, 0x61
    /* 93A0C 800A320C 3A004010 */  beqz       $v0, .L800A32F8
    /* 93A10 800A3210 1B000224 */   addiu     $v0, $zero, 0x1B
    /* 93A14 800A3214 5F00C210 */  beq        $a2, $v0, .L800A3394
    /* 93A18 800A3218 1C00C228 */   slti      $v0, $a2, 0x1C
    /* 93A1C 800A321C 05004010 */  beqz       $v0, .L800A3234
    /* 93A20 800A3220 0D000224 */   addiu     $v0, $zero, 0xD
    /* 93A24 800A3224 5200C210 */  beq        $a2, $v0, .L800A3370
    /* 93A28 800A3228 68000424 */   addiu     $a0, $zero, 0x68
    /* 93A2C 800A322C F88C0208 */  j          .L800A33E0
    /* 93A30 800A3230 21100000 */   addu      $v0, $zero, $zero
  .L800A3234:
    /* 93A34 800A3234 35000224 */  addiu      $v0, $zero, 0x35
    /* 93A38 800A3238 6800C210 */  beq        $a2, $v0, .L800A33DC
    /* 93A3C 800A323C 36000224 */   addiu     $v0, $zero, 0x36
    /* 93A40 800A3240 5A00C210 */  beq        $a2, $v0, .L800A33AC
    /* 93A44 800A3244 21100000 */   addu      $v0, $zero, $zero
    /* 93A48 800A3248 F88C0208 */  j          .L800A33E0
    /* 93A4C 800A324C 00000000 */   nop
  .L800A3250:
    /* 93A50 800A3250 65000224 */  addiu      $v0, $zero, 0x65
    /* 93A54 800A3254 6100C210 */  beq        $a2, $v0, .L800A33DC
    /* 93A58 800A3258 6500C228 */   slti      $v0, $a2, 0x65
    /* 93A5C 800A325C 60004014 */  bnez       $v0, .L800A33E0
    /* 93A60 800A3260 21100000 */   addu      $v0, $zero, $zero
    /* 93A64 800A3264 6A00C228 */  slti       $v0, $a2, 0x6A
    /* 93A68 800A3268 5C004010 */  beqz       $v0, .L800A33DC
    /* 93A6C 800A326C 6700C228 */   slti      $v0, $a2, 0x67
    /* 93A70 800A3270 5B004014 */  bnez       $v0, .L800A33E0
    /* 93A74 800A3274 21100000 */   addu      $v0, $zero, $zero
    /* 93A78 800A3278 5E000424 */  addiu      $a0, $zero, 0x5E
    /* 93A7C 800A327C 21280000 */  addu       $a1, $zero, $zero
    /* 93A80 800A3280 21300000 */  addu       $a2, $zero, $zero
    /* 93A84 800A3284 2B9D020C */  jal        func_800A74AC
    /* 93A88 800A3288 21380000 */   addu      $a3, $zero, $zero
    /* 93A8C 800A328C A405848F */  lw         $a0, %gp_rel(D_80158A7C)($gp)
    /* 93A90 800A3290 00000000 */  nop
    /* 93A94 800A3294 29008280 */  lb         $v0, 0x29($a0)
    /* 93A98 800A3298 00000000 */  nop
    /* 93A9C 800A329C 04004018 */  blez       $v0, .L800A32B0
    /* 93AA0 800A32A0 21184000 */   addu      $v1, $v0, $zero
    /* 93AA4 800A32A4 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* 93AA8 800A32A8 F78C0208 */  j          .L800A33DC
    /* 93AAC 800A32AC 290082A0 */   sb        $v0, 0x29($a0)
  .L800A32B0:
    /* 93AB0 800A32B0 A405828F */  lw         $v0, %gp_rel(D_80158A7C)($gp)
    /* 93AB4 800A32B4 00000000 */  nop
    /* 93AB8 800A32B8 2000448C */  lw         $a0, 0x20($v0)
    /* 93ABC 800A32BC EB1A040C */  jal        func_80106BAC
    /* 93AC0 800A32C0 00000000 */   nop
    /* 93AC4 800A32C4 A405858F */  lw         $a1, %gp_rel(D_80158A7C)($gp)
    /* 93AC8 800A32C8 00140200 */  sll        $v0, $v0, 16
    /* 93ACC 800A32CC 03240200 */  sra        $a0, $v0, 16
    /* 93AD0 800A32D0 AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
    /* 93AD4 800A32D4 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* 93AD8 800A32D8 18008300 */  mult       $a0, $v1
    /* 93ADC 800A32DC 10400000 */  mfhi       $t0
    /* 93AE0 800A32E0 43180800 */  sra        $v1, $t0, 1
    /* 93AE4 800A32E4 C3170200 */  sra        $v0, $v0, 31
    /* 93AE8 800A32E8 23186200 */  subu       $v1, $v1, $v0
    /* 93AEC 800A32EC FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 93AF0 800A32F0 F78C0208 */  j          .L800A33DC
    /* 93AF4 800A32F4 2900A3A0 */   sb        $v1, 0x29($a1)
  .L800A32F8:
    /* 93AF8 800A32F8 5E000424 */  addiu      $a0, $zero, 0x5E
    /* 93AFC 800A32FC 21280000 */  addu       $a1, $zero, $zero
    /* 93B00 800A3300 21300000 */  addu       $a2, $zero, $zero
    /* 93B04 800A3304 2B9D020C */  jal        func_800A74AC
    /* 93B08 800A3308 21380000 */   addu      $a3, $zero, $zero
    /* 93B0C 800A330C A405838F */  lw         $v1, %gp_rel(D_80158A7C)($gp)
    /* 93B10 800A3310 00000000 */  nop
    /* 93B14 800A3314 29006280 */  lb         $v0, 0x29($v1)
    /* 93B18 800A3318 00000000 */  nop
    /* 93B1C 800A331C 40800200 */  sll        $s0, $v0, 1
    /* 93B20 800A3320 21800202 */  addu       $s0, $s0, $v0
    /* 93B24 800A3324 2000648C */  lw         $a0, 0x20($v1)
    /* 93B28 800A3328 EB1A040C */  jal        func_80106BAC
    /* 93B2C 800A332C 80801000 */   sll       $s0, $s0, 2
    /* 93B30 800A3330 00140200 */  sll        $v0, $v0, 16
    /* 93B34 800A3334 03140200 */  sra        $v0, $v0, 16
    /* 93B38 800A3338 F4FF4224 */  addiu      $v0, $v0, -0xC
    /* 93B3C 800A333C 2A800202 */  slt        $s0, $s0, $v0
    /* 93B40 800A3340 08000012 */  beqz       $s0, .L800A3364
    /* 93B44 800A3344 00000000 */   nop
    /* 93B48 800A3348 A405838F */  lw         $v1, %gp_rel(D_80158A7C)($gp)
    /* 93B4C 800A334C 00000000 */  nop
    /* 93B50 800A3350 29006290 */  lbu        $v0, 0x29($v1)
    /* 93B54 800A3354 00000000 */  nop
    /* 93B58 800A3358 01004224 */  addiu      $v0, $v0, 0x1
    /* 93B5C 800A335C F78C0208 */  j          .L800A33DC
    /* 93B60 800A3360 290062A0 */   sb        $v0, 0x29($v1)
  .L800A3364:
    /* 93B64 800A3364 A405828F */  lw         $v0, %gp_rel(D_80158A7C)($gp)
    /* 93B68 800A3368 F78C0208 */  j          .L800A33DC
    /* 93B6C 800A336C 290040A0 */   sb        $zero, 0x29($v0)
  .L800A3370:
    /* 93B70 800A3370 A405828F */  lw         $v0, %gp_rel(D_80158A7C)($gp)
    /* 93B74 800A3374 00000000 */  nop
    /* 93B78 800A3378 280040A0 */  sb         $zero, 0x28($v0)
    /* 93B7C 800A337C 21280000 */  addu       $a1, $zero, $zero
    /* 93B80 800A3380 21300000 */  addu       $a2, $zero, $zero
    /* 93B84 800A3384 2B9D020C */  jal        func_800A74AC
    /* 93B88 800A3388 21380000 */   addu      $a3, $zero, $zero
    /* 93B8C 800A338C F88C0208 */  j          .L800A33E0
    /* 93B90 800A3390 21100000 */   addu      $v0, $zero, $zero
  .L800A3394:
    /* 93B94 800A3394 A405828F */  lw         $v0, %gp_rel(D_80158A7C)($gp)
    /* 93B98 800A3398 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 93B9C 800A339C 290043A0 */  sb         $v1, 0x29($v0)
    /* 93BA0 800A33A0 A405828F */  lw         $v0, %gp_rel(D_80158A7C)($gp)
    /* 93BA4 800A33A4 F78C0208 */  j          .L800A33DC
    /* 93BA8 800A33A8 280040A0 */   sb        $zero, 0x28($v0)
  .L800A33AC:
    /* 93BAC 800A33AC 1680023C */  lui        $v0, %hi(D_801589EC)
    /* 93BB0 800A33B0 EC89428C */  lw         $v0, %lo(D_801589EC)($v0)
    /* 93BB4 800A33B4 00000000 */  nop
    /* 93BB8 800A33B8 0100422C */  sltiu      $v0, $v0, 0x1
    /* 93BBC 800A33BC 1680013C */  lui        $at, %hi(D_801589EC)
    /* 93BC0 800A33C0 EC8922AC */  sw         $v0, %lo(D_801589EC)($at)
    /* 93BC4 800A33C4 F88C0208 */  j          .L800A33E0
    /* 93BC8 800A33C8 21100000 */   addu      $v0, $zero, $zero
  .L800A33CC:
    /* 93BCC 800A33CC 761B040C */  jal        func_80106DD8
    /* 93BD0 800A33D0 FFFFC630 */   andi      $a2, $a2, 0xFFFF
    /* 93BD4 800A33D4 F88C0208 */  j          .L800A33E0
    /* 93BD8 800A33D8 00000000 */   nop
  .L800A33DC:
    /* 93BDC 800A33DC 21100000 */  addu       $v0, $zero, $zero
  .L800A33E0:
    /* 93BE0 800A33E0 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 93BE4 800A33E4 3800B08F */  lw         $s0, 0x38($sp)
    /* 93BE8 800A33E8 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 93BEC 800A33EC 0800E003 */  jr         $ra
    /* 93BF0 800A33F0 00000000 */   nop
endlabel func_800A3070
