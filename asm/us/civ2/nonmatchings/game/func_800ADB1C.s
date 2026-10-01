.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800ADB1C, 0x124

glabel func_800ADB1C
    /* 9E31C 800ADB1C 28FDBD27 */  addiu      $sp, $sp, -0x2D8
    /* 9E320 800ADB20 D002BFAF */  sw         $ra, 0x2D0($sp)
    /* 9E324 800ADB24 CC02B1AF */  sw         $s1, 0x2CC($sp)
    /* 9E328 800ADB28 C802B0AF */  sw         $s0, 0x2C8($sp)
    /* 9E32C 800ADB2C 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9E330 800ADB30 ADC5020C */  jal        func_800B16B4
    /* 9E334 800ADB34 00200524 */   addiu     $a1, $zero, 0x2000
    /* 9E338 800ADB38 2800B027 */  addiu      $s0, $sp, 0x28
  .L800ADB3C:
    /* 9E33C 800ADB3C A008858F */  lw         $a1, %gp_rel(D_80158D78)($gp)
    /* 9E340 800ADB40 01000224 */  addiu      $v0, $zero, 0x1
    /* 9E344 800ADB44 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9E348 800ADB48 1400A0AF */  sw         $zero, 0x14($sp)
    /* 9E34C 800ADB4C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 9E350 800ADB50 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 9E354 800ADB54 2000A2AF */  sw         $v0, 0x20($sp)
    /* 9E358 800ADB58 21200002 */  addu       $a0, $s0, $zero
    /* 9E35C 800ADB5C 21060624 */  addiu      $a2, $zero, 0x621
    /* 9E360 800ADB60 2CE0020C */  jal        func_800B80B0
    /* 9E364 800ADB64 21380000 */   addu      $a3, $zero, $zero
    /* 9E368 800ADB68 1680023C */  lui        $v0, %hi(D_8015894C)
    /* 9E36C 800ADB6C 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* 9E370 800ADB70 00000000 */  nop
    /* 9E374 800ADB74 C803448C */  lw         $a0, 0x3C8($v0)
    /* 9E378 800ADB78 A63A030C */  jal        func_800CEA98
    /* 9E37C 800ADB7C 00000000 */   nop
    /* 9E380 800ADB80 21200002 */  addu       $a0, $s0, $zero
    /* 9E384 800ADB84 21284000 */  addu       $a1, $v0, $zero
    /* 9E388 800ADB88 A8C9020C */  jal        func_800B26A0
    /* 9E38C 800ADB8C 63000624 */   addiu     $a2, $zero, 0x63
    /* 9E390 800ADB90 21800000 */  addu       $s0, $zero, $zero
    /* 9E394 800ADB94 1280113C */  lui        $s1, %hi(D_8011A65C)
    /* 9E398 800ADB98 5CA63126 */  addiu      $s1, $s1, %lo(D_8011A65C)
    /* 9E39C 800ADB9C 80101000 */  sll        $v0, $s0, 2
  .L800ADBA0:
    /* 9E3A0 800ADBA0 21105100 */  addu       $v0, $v0, $s1
    /* 9E3A4 800ADBA4 0000448C */  lw         $a0, 0x0($v0)
    /* 9E3A8 800ADBA8 A63A030C */  jal        func_800CEA98
    /* 9E3AC 800ADBAC 00000000 */   nop
    /* 9E3B0 800ADBB0 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9E3B4 800ADBB4 21284000 */  addu       $a1, $v0, $zero
    /* 9E3B8 800ADBB8 A8C9020C */  jal        func_800B26A0
    /* 9E3BC 800ADBBC 21300002 */   addu      $a2, $s0, $zero
    /* 9E3C0 800ADBC0 01001026 */  addiu      $s0, $s0, 0x1
    /* 9E3C4 800ADBC4 0700022A */  slti       $v0, $s0, 0x7
    /* 9E3C8 800ADBC8 F5FF4014 */  bnez       $v0, .L800ADBA0
    /* 9E3CC 800ADBCC 80101000 */   sll       $v0, $s0, 2
    /* 9E3D0 800ADBD0 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9E3D4 800ADBD4 21280000 */  addu       $a1, $zero, $zero
    /* 9E3D8 800ADBD8 78000624 */  addiu      $a2, $zero, 0x78
    /* 9E3DC 800ADBDC ACE2020C */  jal        func_800B8AB0
    /* 9E3E0 800ADBE0 E8030724 */   addiu     $a3, $zero, 0x3E8
    /* 9E3E4 800ADBE4 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9E3E8 800ADBE8 21280000 */  addu       $a1, $zero, $zero
    /* 9E3EC 800ADBEC 78000624 */  addiu      $a2, $zero, 0x78
    /* 9E3F0 800ADBF0 B0E2020C */  jal        func_800B8AC0
    /* 9E3F4 800ADBF4 E8030724 */   addiu     $a3, $zero, 0x3E8
    /* 9E3F8 800ADBF8 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9E3FC 800ADBFC 52DF020C */  jal        func_800B7D48
    /* 9E400 800ADC00 21280000 */   addu      $a1, $zero, $zero
    /* 9E404 800ADC04 21804000 */  addu       $s0, $v0, $zero
    /* 9E408 800ADC08 05000006 */  bltz       $s0, .L800ADC20
    /* 9E40C 800ADC0C 2800A427 */   addiu     $a0, $sp, 0x28
    /* 9E410 800ADC10 B0B6020C */  jal        func_800ADAC0
    /* 9E414 800ADC14 21200002 */   addu      $a0, $s0, $zero
    /* 9E418 800ADC18 CFB60208 */  j          .L800ADB3C
    /* 9E41C 800ADC1C 2800B027 */   addiu     $s0, $sp, 0x28
  .L800ADC20:
    /* 9E420 800ADC20 0AC7020C */  jal        func_800B1C28
    /* 9E424 800ADC24 02000524 */   addiu     $a1, $zero, 0x2
    /* 9E428 800ADC28 D002BF8F */  lw         $ra, 0x2D0($sp)
    /* 9E42C 800ADC2C CC02B18F */  lw         $s1, 0x2CC($sp)
    /* 9E430 800ADC30 C802B08F */  lw         $s0, 0x2C8($sp)
    /* 9E434 800ADC34 D802BD27 */  addiu      $sp, $sp, 0x2D8
    /* 9E438 800ADC38 0800E003 */  jr         $ra
    /* 9E43C 800ADC3C 00000000 */   nop
endlabel func_800ADB1C
