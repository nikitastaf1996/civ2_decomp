.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AC278, 0x11C

glabel func_800AC278
    /* 9CA78 800AC278 30FDBD27 */  addiu      $sp, $sp, -0x2D0
    /* 9CA7C 800AC27C CC02BFAF */  sw         $ra, 0x2CC($sp)
    /* 9CA80 800AC280 C802B0AF */  sw         $s0, 0x2C8($sp)
    /* 9CA84 800AC284 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9CA88 800AC288 ADC5020C */  jal        func_800B16B4
    /* 9CA8C 800AC28C 00200524 */   addiu     $a1, $zero, 0x2000
  .L800AC290:
    /* 9CA90 800AC290 A008858F */  lw         $a1, %gp_rel(D_80158D78)($gp)
    /* 9CA94 800AC294 01000224 */  addiu      $v0, $zero, 0x1
    /* 9CA98 800AC298 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9CA9C 800AC29C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 9CAA0 800AC2A0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 9CAA4 800AC2A4 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 9CAA8 800AC2A8 2000A2AF */  sw         $v0, 0x20($sp)
    /* 9CAAC 800AC2AC 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9CAB0 800AC2B0 BA000624 */  addiu      $a2, $zero, 0xBA
    /* 9CAB4 800AC2B4 2CE0020C */  jal        func_800B80B0
    /* 9CAB8 800AC2B8 21380000 */   addu      $a3, $zero, $zero
    /* 9CABC 800AC2BC 21800000 */  addu       $s0, $zero, $zero
    /* 9CAC0 800AC2C0 00111000 */  sll        $v0, $s0, 4
  .L800AC2C4:
    /* 9CAC4 800AC2C4 1180013C */  lui        $at, %hi(D_8010C2A5)
    /* 9CAC8 800AC2C8 21082200 */  addu       $at, $at, $v0
    /* 9CACC 800AC2CC A5C22290 */  lbu        $v0, %lo(D_8010C2A5)($at)
    /* 9CAD0 800AC2D0 00000000 */  nop
    /* 9CAD4 800AC2D4 07004014 */  bnez       $v0, .L800AC2F4
    /* 9CAD8 800AC2D8 00111000 */   sll       $v0, $s0, 4
    /* 9CADC 800AC2DC 1680043C */  lui        $a0, %hi(D_80158EB8)
    /* 9CAE0 800AC2E0 B88E8424 */  addiu      $a0, $a0, %lo(D_80158EB8)
    /* 9CAE4 800AC2E4 4551000C */  jal        func_80014514
    /* 9CAE8 800AC2E8 21280002 */   addu      $a1, $s0, $zero
    /* 9CAEC 800AC2EC C7B00208 */  j          .L800AC31C
    /* 9CAF0 800AC2F0 01001026 */   addiu     $s0, $s0, 0x1
  .L800AC2F4:
    /* 9CAF4 800AC2F4 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* 9CAF8 800AC2F8 21082200 */  addu       $at, $at, $v0
    /* 9CAFC 800AC2FC A0C2248C */  lw         $a0, %lo(D_8010C2A0)($at)
    /* 9CB00 800AC300 A63A030C */  jal        func_800CEA98
    /* 9CB04 800AC304 00000000 */   nop
    /* 9CB08 800AC308 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9CB0C 800AC30C 21284000 */  addu       $a1, $v0, $zero
    /* 9CB10 800AC310 A8C9020C */  jal        func_800B26A0
    /* 9CB14 800AC314 21300002 */   addu      $a2, $s0, $zero
    /* 9CB18 800AC318 01001026 */  addiu      $s0, $s0, 0x1
  .L800AC31C:
    /* 9CB1C 800AC31C 5D00022A */  slti       $v0, $s0, 0x5D
    /* 9CB20 800AC320 E8FF4014 */  bnez       $v0, .L800AC2C4
    /* 9CB24 800AC324 00111000 */   sll       $v0, $s0, 4
    /* 9CB28 800AC328 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9CB2C 800AC32C 21280000 */  addu       $a1, $zero, $zero
    /* 9CB30 800AC330 78000624 */  addiu      $a2, $zero, 0x78
    /* 9CB34 800AC334 ACE2020C */  jal        func_800B8AB0
    /* 9CB38 800AC338 E8030724 */   addiu     $a3, $zero, 0x3E8
    /* 9CB3C 800AC33C 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9CB40 800AC340 21280000 */  addu       $a1, $zero, $zero
    /* 9CB44 800AC344 78000624 */  addiu      $a2, $zero, 0x78
    /* 9CB48 800AC348 B0E2020C */  jal        func_800B8AC0
    /* 9CB4C 800AC34C E8030724 */   addiu     $a3, $zero, 0x3E8
    /* 9CB50 800AC350 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9CB54 800AC354 52DF020C */  jal        func_800B7D48
    /* 9CB58 800AC358 21280000 */   addu      $a1, $zero, $zero
    /* 9CB5C 800AC35C 21804000 */  addu       $s0, $v0, $zero
    /* 9CB60 800AC360 05000006 */  bltz       $s0, .L800AC378
    /* 9CB64 800AC364 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9CB68 800AC368 71AD020C */  jal        func_800AB5C4
    /* 9CB6C 800AC36C 21200002 */   addu      $a0, $s0, $zero
    /* 9CB70 800AC370 A4B00208 */  j          .L800AC290
    /* 9CB74 800AC374 00000000 */   nop
  .L800AC378:
    /* 9CB78 800AC378 0AC7020C */  jal        func_800B1C28
    /* 9CB7C 800AC37C 02000524 */   addiu     $a1, $zero, 0x2
    /* 9CB80 800AC380 CC02BF8F */  lw         $ra, 0x2CC($sp)
    /* 9CB84 800AC384 C802B08F */  lw         $s0, 0x2C8($sp)
    /* 9CB88 800AC388 D002BD27 */  addiu      $sp, $sp, 0x2D0
    /* 9CB8C 800AC38C 0800E003 */  jr         $ra
    /* 9CB90 800AC390 00000000 */   nop
endlabel func_800AC278
