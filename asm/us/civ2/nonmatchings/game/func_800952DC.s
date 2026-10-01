.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800952DC, 0xA0

glabel func_800952DC
    /* 85ADC 800952DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 85AE0 800952E0 1400BFAF */  sw         $ra, 0x14($sp)
    /* 85AE4 800952E4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 85AE8 800952E8 98E9030C */  jal        func_800FA660
    /* 85AEC 800952EC 21808000 */   addu      $s0, $a0, $zero
    /* 85AF0 800952F0 1680013C */  lui        $at, %hi(D_801593EC)
    /* 85AF4 800952F4 EC9320A4 */  sh         $zero, %lo(D_801593EC)($at)
    /* 85AF8 800952F8 3E82030C */  jal        __builtin_new
    /* 85AFC 800952FC 44060424 */   addiu     $a0, $zero, 0x644
    /* 85B00 80095300 DF54020C */  jal        func_8009537C
    /* 85B04 80095304 21204000 */   addu      $a0, $v0, $zero
    /* 85B08 80095308 840482AF */  sw         $v0, %gp_rel(D_8015895C)($gp)
    /* 85B0C 8009530C 16004010 */  beqz       $v0, .L80095368
    /* 85B10 80095310 21204000 */   addu      $a0, $v0, $zero
    /* 85B14 80095314 2655020C */  jal        func_80095498
    /* 85B18 80095318 21280002 */   addu      $a1, $s0, $zero
    /* 85B1C 8009531C 04004010 */  beqz       $v0, .L80095330
    /* 85B20 80095320 00000000 */   nop
    /* 85B24 80095324 8404848F */  lw         $a0, %gp_rel(D_8015895C)($gp)
    /* 85B28 80095328 6255020C */  jal        func_80095588
    /* 85B2C 8009532C 00000000 */   nop
  .L80095330:
    /* 85B30 80095330 8404848F */  lw         $a0, %gp_rel(D_8015895C)($gp)
    /* 85B34 80095334 00000000 */  nop
    /* 85B38 80095338 03008010 */  beqz       $a0, .L80095348
    /* 85B3C 8009533C 00000000 */   nop
    /* 85B40 80095340 1155020C */  jal        func_80095444
    /* 85B44 80095344 03000524 */   addiu     $a1, $zero, 0x3
  .L80095348:
    /* 85B48 80095348 840480AF */  sw         $zero, %gp_rel(D_8015895C)($gp)
    /* 85B4C 8009534C 01000224 */  addiu      $v0, $zero, 0x1
    /* 85B50 80095350 1680013C */  lui        $at, %hi(D_801593EC)
    /* 85B54 80095354 EC9322A4 */  sh         $v0, %lo(D_801593EC)($at)
    /* 85B58 80095358 3E0C040C */  jal        func_801030F8
    /* 85B5C 8009535C 01000424 */   addiu     $a0, $zero, 0x1
    /* 85B60 80095360 A8E9030C */  jal        func_800FA6A0
    /* 85B64 80095364 00000000 */   nop
  .L80095368:
    /* 85B68 80095368 1400BF8F */  lw         $ra, 0x14($sp)
    /* 85B6C 8009536C 1000B08F */  lw         $s0, 0x10($sp)
    /* 85B70 80095370 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 85B74 80095374 0800E003 */  jr         $ra
    /* 85B78 80095378 00000000 */   nop
endlabel func_800952DC
