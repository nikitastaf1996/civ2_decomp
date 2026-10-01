.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002FB00, 0xE8

glabel func_8002FB00
    /* 20300 8002FB00 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 20304 8002FB04 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 20308 8002FB08 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2030C 8002FB0C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 20310 8002FB10 1000B0AF */  sw         $s0, 0x10($sp)
    /* 20314 8002FB14 21808000 */  addu       $s0, $a0, $zero
    /* 20318 8002FB18 2188A000 */  addu       $s1, $a1, $zero
    /* 2031C 8002FB1C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 20320 8002FB20 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 20324 8002FB24 CB1A030C */  jal        func_800C6B2C
    /* 20328 8002FB28 2190C000 */   addu      $s2, $a2, $zero
    /* 2032C 8002FB2C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 20330 8002FB30 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 20334 8002FB34 731B030C */  jal        func_800C6DCC
    /* 20338 8002FB38 0B000524 */   addiu     $a1, $zero, 0xB
    /* 2033C 8002FB3C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 20340 8002FB40 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 20344 8002FB44 F71A030C */  jal        func_800C6BDC
    /* 20348 8002FB48 00000000 */   nop
    /* 2034C 8002FB4C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 20350 8002FB50 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 20354 8002FB54 151B030C */  jal        func_800C6C54
    /* 20358 8002FB58 00000000 */   nop
    /* 2035C 8002FB5C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 20360 8002FB60 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 20364 8002FB64 9C1B030C */  jal        func_800C6E70
    /* 20368 8002FB68 21280002 */   addu      $a1, $s0, $zero
    /* 2036C 8002FB6C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 20370 8002FB70 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 20374 8002FB74 ED1A030C */  jal        func_800C6BB4
    /* 20378 8002FB78 00000000 */   nop
    /* 2037C 8002FB7C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 20380 8002FB80 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 20384 8002FB84 9C1B030C */  jal        func_800C6E70
    /* 20388 8002FB88 21282002 */   addu      $a1, $s1, $zero
    /* 2038C 8002FB8C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 20390 8002FB90 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 20394 8002FB94 1F1B030C */  jal        func_800C6C7C
    /* 20398 8002FB98 00000000 */   nop
    /* 2039C 8002FB9C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 203A0 8002FBA0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 203A4 8002FBA4 CD1A030C */  jal        func_800C6B34
    /* 203A8 8002FBA8 00000000 */   nop
    /* 203AC 8002FBAC 21200002 */  addu       $a0, $s0, $zero
    /* 203B0 8002FBB0 2561020C */  jal        func_80098494
    /* 203B4 8002FBB4 21282002 */   addu      $a1, $s1, $zero
    /* 203B8 8002FBB8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 203BC 8002FBBC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 203C0 8002FBC0 9C1B030C */  jal        func_800C6E70
    /* 203C4 8002FBC4 21284000 */   addu      $a1, $v0, $zero
    /* 203C8 8002FBC8 21104002 */  addu       $v0, $s2, $zero
    /* 203CC 8002FBCC 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 203D0 8002FBD0 1800B28F */  lw         $s2, 0x18($sp)
    /* 203D4 8002FBD4 1400B18F */  lw         $s1, 0x14($sp)
    /* 203D8 8002FBD8 1000B08F */  lw         $s0, 0x10($sp)
    /* 203DC 8002FBDC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 203E0 8002FBE0 0800E003 */  jr         $ra
    /* 203E4 8002FBE4 00000000 */   nop
endlabel func_8002FB00
