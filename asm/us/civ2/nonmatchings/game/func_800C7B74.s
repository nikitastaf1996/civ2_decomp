.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C7B74, 0x190

glabel func_800C7B74
    /* B8374 800C7B74 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* B8378 800C7B78 BC00BFAF */  sw         $ra, 0xBC($sp)
    /* B837C 800C7B7C B800B2AF */  sw         $s2, 0xB8($sp)
    /* B8380 800C7B80 B400B1AF */  sw         $s1, 0xB4($sp)
    /* B8384 800C7B84 B000B0AF */  sw         $s0, 0xB0($sp)
    /* B8388 800C7B88 21908000 */  addu       $s2, $a0, $zero
    /* B838C 800C7B8C 2188A000 */  addu       $s1, $a1, $zero
    /* B8390 800C7B90 221B040C */  jal        func_80106C88
    /* B8394 800C7B94 A000A427 */   addiu     $a0, $sp, 0xA0
    /* B8398 800C7B98 CB1A030C */  jal        func_800C6B2C
    /* B839C 800C7B9C 2000A427 */   addiu     $a0, $sp, 0x20
    /* B83A0 800C7BA0 9C0251AE */  sw         $s1, 0x29C($s2)
    /* B83A4 800C7BA4 1000A0AF */  sw         $zero, 0x10($sp)
    /* B83A8 800C7BA8 40010224 */  addiu      $v0, $zero, 0x140
    /* B83AC 800C7BAC 1400A2AF */  sw         $v0, 0x14($sp)
    /* B83B0 800C7BB0 F0000224 */  addiu      $v0, $zero, 0xF0
    /* B83B4 800C7BB4 1800A2AF */  sw         $v0, 0x18($sp)
    /* B83B8 800C7BB8 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* B83BC 800C7BBC 84004426 */  addiu      $a0, $s2, 0x84
    /* B83C0 800C7BC0 1680053C */  lui        $a1, %hi(D_80159134)
    /* B83C4 800C7BC4 3491A524 */  addiu      $a1, $a1, %lo(D_80159134)
    /* B83C8 800C7BC8 00080624 */  addiu      $a2, $zero, 0x800
    /* B83CC 800C7BCC B3DE030C */  jal        func_800F7ACC
    /* B83D0 800C7BD0 21380000 */   addu      $a3, $zero, $zero
    /* B83D4 800C7BD4 48015026 */  addiu      $s0, $s2, 0x148
    /* B83D8 800C7BD8 21200002 */  addu       $a0, $s0, $zero
    /* B83DC 800C7BDC 11270524 */  addiu      $a1, $zero, 0x2711
    /* B83E0 800C7BE0 0A000624 */  addiu      $a2, $zero, 0xA
    /* B83E4 800C7BE4 44E3030C */  jal        func_800F8D10
    /* B83E8 800C7BE8 EC000724 */   addiu     $a3, $zero, 0xEC
    /* B83EC 800C7BEC 1000A0AF */  sw         $zero, 0x10($sp)
    /* B83F0 800C7BF0 94000224 */  addiu      $v0, $zero, 0x94
    /* B83F4 800C7BF4 1400A2AF */  sw         $v0, 0x14($sp)
    /* B83F8 800C7BF8 56000224 */  addiu      $v0, $zero, 0x56
    /* B83FC 800C7BFC 1800A2AF */  sw         $v0, 0x18($sp)
    /* B8400 800C7C00 74014426 */  addiu      $a0, $s2, 0x174
    /* B8404 800C7C04 21280002 */  addu       $a1, $s0, $zero
    /* B8408 800C7C08 08000624 */  addiu      $a2, $zero, 0x8
    /* B840C 800C7C0C 67ED030C */  jal        func_800FB59C
    /* B8410 800C7C10 21380000 */   addu      $a3, $zero, $zero
    /* B8414 800C7C14 21200002 */  addu       $a0, $s0, $zero
    /* B8418 800C7C18 21280000 */  addu       $a1, $zero, $zero
    /* B841C 800C7C1C A9E0030C */  jal        func_800F82A4
    /* B8420 800C7C20 21300000 */   addu      $a2, $zero, $zero
    /* B8424 800C7C24 21200002 */  addu       $a0, $s0, $zero
    /* B8428 800C7C28 10270524 */  addiu      $a1, $zero, 0x2710
    /* B842C 800C7C2C 0A000624 */  addiu      $a2, $zero, 0xA
    /* B8430 800C7C30 44E3030C */  jal        func_800F8D10
    /* B8434 800C7C34 EC000724 */   addiu     $a3, $zero, 0xEC
    /* B8438 800C7C38 60000224 */  addiu      $v0, $zero, 0x60
    /* B843C 800C7C3C AC0242A6 */  sh         $v0, 0x2AC($s2)
    /* B8440 800C7C40 B9000224 */  addiu      $v0, $zero, 0xB9
    /* B8444 800C7C44 AE0242A6 */  sh         $v0, 0x2AE($s2)
    /* B8448 800C7C48 DF000224 */  addiu      $v0, $zero, 0xDF
    /* B844C 800C7C4C B00242A6 */  sh         $v0, 0x2B0($s2)
    /* B8450 800C7C50 E6000224 */  addiu      $v0, $zero, 0xE6
    /* B8454 800C7C54 B20242A6 */  sh         $v0, 0x2B2($s2)
    /* B8458 800C7C58 21280000 */  addu       $a1, $zero, $zero
    /* B845C 800C7C5C FF003132 */  andi       $s1, $s1, 0xFF
  .L800C7C60:
    /* B8460 800C7C60 1280013C */  lui        $at, %hi(D_8011A40E)
    /* B8464 800C7C64 21082500 */  addu       $at, $at, $a1
    /* B8468 800C7C68 0EA42290 */  lbu        $v0, %lo(D_8011A40E)($at)
    /* B846C 800C7C6C 00000000 */  nop
    /* B8470 800C7C70 05005110 */  beq        $v0, $s1, .L800C7C88
    /* B8474 800C7C74 00000000 */   nop
    /* B8478 800C7C78 0100A524 */  addiu      $a1, $a1, 0x1
    /* B847C 800C7C7C 0C00A228 */  slti       $v0, $a1, 0xC
    /* B8480 800C7C80 F7FF4014 */  bnez       $v0, .L800C7C60
    /* B8484 800C7C84 00000000 */   nop
  .L800C7C88:
    /* B8488 800C7C88 580C80AF */  sw         $zero, %gp_rel(D_80159130)($gp)
    /* B848C 800C7C8C D01F030C */  jal        func_800C7F40
    /* B8490 800C7C90 21204002 */   addu      $a0, $s2, $zero
    /* B8494 800C7C94 9A000224 */  addiu      $v0, $zero, 0x9A
    /* B8498 800C7C98 BC0242AE */  sw         $v0, 0x2BC($s2)
    /* B849C 800C7C9C 55000224 */  addiu      $v0, $zero, 0x55
    /* B84A0 800C7CA0 A40242A6 */  sh         $v0, 0x2A4($s2)
    /* B84A4 800C7CA4 BC024296 */  lhu        $v0, 0x2BC($s2)
    /* B84A8 800C7CA8 00000000 */  nop
    /* B84AC 800C7CAC A60242A6 */  sh         $v0, 0x2A6($s2)
    /* B84B0 800C7CB0 E9000224 */  addiu      $v0, $zero, 0xE9
    /* B84B4 800C7CB4 A80242A6 */  sh         $v0, 0x2A8($s2)
    /* B84B8 800C7CB8 BC024296 */  lhu        $v0, 0x2BC($s2)
    /* B84BC 800C7CBC 00000000 */  nop
    /* B84C0 800C7CC0 56004224 */  addiu      $v0, $v0, 0x56
    /* B84C4 800C7CC4 AA0242A6 */  sh         $v0, 0x2AA($s2)
    /* B84C8 800C7CC8 21204002 */  addu       $a0, $s2, $zero
    /* B84CC 800C7CCC 6920030C */  jal        func_800C81A4
    /* B84D0 800C7CD0 21280000 */   addu      $a1, $zero, $zero
    /* B84D4 800C7CD4 0C80053C */  lui        $a1, %hi(func_800C77EC)
    /* B84D8 800C7CD8 EC77A524 */  addiu      $a1, $a1, %lo(func_800C77EC)
    /* B84DC 800C7CDC 82DF030C */  jal        func_800F7E08
    /* B84E0 800C7CE0 84004426 */   addiu     $a0, $s2, 0x84
    /* B84E4 800C7CE4 01000224 */  addiu      $v0, $zero, 0x1
    /* B84E8 800C7CE8 BC00BF8F */  lw         $ra, 0xBC($sp)
    /* B84EC 800C7CEC B800B28F */  lw         $s2, 0xB8($sp)
    /* B84F0 800C7CF0 B400B18F */  lw         $s1, 0xB4($sp)
    /* B84F4 800C7CF4 B000B08F */  lw         $s0, 0xB0($sp)
    /* B84F8 800C7CF8 C000BD27 */  addiu      $sp, $sp, 0xC0
    /* B84FC 800C7CFC 0800E003 */  jr         $ra
    /* B8500 800C7D00 00000000 */   nop
endlabel func_800C7B74
