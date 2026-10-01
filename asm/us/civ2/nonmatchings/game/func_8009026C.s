.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009026C, 0x134

glabel func_8009026C
    /* 80A6C 8009026C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 80A70 80090270 2400BFAF */  sw         $ra, 0x24($sp)
    /* 80A74 80090274 2000B2AF */  sw         $s2, 0x20($sp)
    /* 80A78 80090278 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 80A7C 8009027C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 80A80 80090280 21908000 */  addu       $s2, $a0, $zero
    /* 80A84 80090284 1000A0A7 */  sh         $zero, 0x10($sp)
    /* 80A88 80090288 1200A0A7 */  sh         $zero, 0x12($sp)
    /* 80A8C 8009028C 40010224 */  addiu      $v0, $zero, 0x140
    /* 80A90 80090290 1400A2A7 */  sh         $v0, 0x14($sp)
    /* 80A94 80090294 E0010224 */  addiu      $v0, $zero, 0x1E0
    /* 80A98 80090298 1600A2A7 */  sh         $v0, 0x16($sp)
    /* 80A9C 8009029C 1000A427 */  addiu      $a0, $sp, 0x10
    /* 80AA0 800902A0 21280000 */  addu       $a1, $zero, $zero
    /* 80AA4 800902A4 21300000 */  addu       $a2, $zero, $zero
    /* 80AA8 800902A8 8D8D030C */  jal        ClearImage
    /* 80AAC 800902AC 21380000 */   addu      $a3, $zero, $zero
    /* 80AB0 800902B0 1680013C */  lui        $at, %hi(D_801592E4)
    /* 80AB4 800902B4 E49220A4 */  sh         $zero, %lo(D_801592E4)($at)
    /* 80AB8 800902B8 E9EA030C */  jal        func_800FABA4
    /* 80ABC 800902BC B0004426 */   addiu     $a0, $s2, 0xB0
    /* 80AC0 800902C0 4F1B040C */  jal        func_80106D3C
    /* 80AC4 800902C4 21204000 */   addu      $a0, $v0, $zero
    /* 80AC8 800902C8 21800000 */  addu       $s0, $zero, $zero
  .L800902CC:
    /* 80ACC 800902CC ED12040C */  jal        func_80104BB4
    /* 80AD0 800902D0 21200000 */   addu      $a0, $zero, $zero
    /* 80AD4 800902D4 21884000 */  addu       $s1, $v0, $zero
    /* 80AD8 800902D8 00802232 */  andi       $v0, $s1, 0x8000
    /* 80ADC 800902DC 05004010 */  beqz       $v0, .L800902F4
    /* 80AE0 800902E0 00202232 */   andi      $v0, $s1, 0x2000
    /* 80AE4 800902E4 E945020C */  jal        func_800917A4
    /* 80AE8 800902E8 21204002 */   addu      $a0, $s2, $zero
    /* 80AEC 800902EC C1400208 */  j          .L80090304
    /* 80AF0 800902F0 00000000 */   nop
  .L800902F4:
    /* 80AF4 800902F4 03004010 */  beqz       $v0, .L80090304
    /* 80AF8 800902F8 00000000 */   nop
    /* 80AFC 800902FC DE45020C */  jal        func_80091778
    /* 80B00 80090300 21204002 */   addu      $a0, $s2, $zero
  .L80090304:
    /* 80B04 80090304 4C45020C */  jal        func_80091530
    /* 80B08 80090308 21204002 */   addu      $a0, $s2, $zero
    /* 80B0C 8009030C 1C07040C */  jal        func_80101C70
    /* 80B10 80090310 00000000 */   nop
    /* 80B14 80090314 8000022A */  slti       $v0, $s0, 0x80
    /* 80B18 80090318 07004010 */  beqz       $v0, .L80090338
    /* 80B1C 8009031C 60002232 */   andi      $v0, $s1, 0x60
    /* 80B20 80090320 08001026 */  addiu      $s0, $s0, 0x8
    /* 80B24 80090324 1680013C */  lui        $at, %hi(D_801592E4)
    /* 80B28 80090328 E49230A4 */  sh         $s0, %lo(D_801592E4)($at)
    /* 80B2C 8009032C 068D030C */  jal        SetDispMask
    /* 80B30 80090330 01000424 */   addiu     $a0, $zero, 0x1
    /* 80B34 80090334 60002232 */  andi       $v0, $s1, 0x60
  .L80090338:
    /* 80B38 80090338 E4FF4010 */  beqz       $v0, .L800902CC
    /* 80B3C 8009033C 00000000 */   nop
    /* 80B40 80090340 0900001A */  blez       $s0, .L80090368
    /* 80B44 80090344 F8FF1026 */   addiu     $s0, $s0, -0x8
  .L80090348:
    /* 80B48 80090348 1680013C */  lui        $at, %hi(D_801592E4)
    /* 80B4C 8009034C E49230A4 */  sh         $s0, %lo(D_801592E4)($at)
    /* 80B50 80090350 4C45020C */  jal        func_80091530
    /* 80B54 80090354 21204002 */   addu      $a0, $s2, $zero
    /* 80B58 80090358 1C07040C */  jal        func_80101C70
    /* 80B5C 8009035C 00000000 */   nop
    /* 80B60 80090360 F9FF001E */  bgtz       $s0, .L80090348
    /* 80B64 80090364 F8FF1026 */   addiu     $s0, $s0, -0x8
  .L80090368:
    /* 80B68 80090368 B0005026 */  addiu      $s0, $s2, 0xB0
    /* 80B6C 8009036C E9EA030C */  jal        func_800FABA4
    /* 80B70 80090370 21200002 */   addu      $a0, $s0, $zero
    /* 80B74 80090374 511B040C */  jal        func_80106D44
    /* 80B78 80090378 21204000 */   addu      $a0, $v0, $zero
    /* 80B7C 8009037C EFEA030C */  jal        func_800FABBC
    /* 80B80 80090380 21200002 */   addu      $a0, $s0, $zero
    /* 80B84 80090384 2400BF8F */  lw         $ra, 0x24($sp)
    /* 80B88 80090388 2000B28F */  lw         $s2, 0x20($sp)
    /* 80B8C 8009038C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 80B90 80090390 1800B08F */  lw         $s0, 0x18($sp)
    /* 80B94 80090394 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 80B98 80090398 0800E003 */  jr         $ra
    /* 80B9C 8009039C 00000000 */   nop
endlabel func_8009026C
