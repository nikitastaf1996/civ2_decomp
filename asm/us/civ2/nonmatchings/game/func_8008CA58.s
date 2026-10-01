.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008CA58, 0x8A4

glabel func_8008CA58
    /* 7D258 8008CA58 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 7D25C 8008CA5C 4400BFAF */  sw         $ra, 0x44($sp)
    /* 7D260 8008CA60 4000BEAF */  sw         $fp, 0x40($sp)
    /* 7D264 8008CA64 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 7D268 8008CA68 3800B6AF */  sw         $s6, 0x38($sp)
    /* 7D26C 8008CA6C 3400B5AF */  sw         $s5, 0x34($sp)
    /* 7D270 8008CA70 3000B4AF */  sw         $s4, 0x30($sp)
    /* 7D274 8008CA74 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 7D278 8008CA78 2800B2AF */  sw         $s2, 0x28($sp)
    /* 7D27C 8008CA7C 2400B1AF */  sw         $s1, 0x24($sp)
    /* 7D280 8008CA80 2000B0AF */  sw         $s0, 0x20($sp)
    /* 7D284 8008CA84 21A88000 */  addu       $s5, $a0, $zero
    /* 7D288 8008CA88 21B0A000 */  addu       $s6, $a1, $zero
    /* 7D28C 8008CA8C 21A0C000 */  addu       $s4, $a2, $zero
    /* 7D290 8008CA90 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 7D294 8008CA94 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 7D298 8008CA98 00000000 */  nop
    /* 7D29C 8008CA9C 7F004228 */  slti       $v0, $v0, 0x7F
    /* 7D2A0 8008CAA0 11004014 */  bnez       $v0, .L8008CAE8
    /* 7D2A4 8008CAA4 FFFF1E24 */   addiu     $fp, $zero, -0x1
    /* 7D2A8 8008CAA8 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 7D2AC 8008CAAC B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 7D2B0 8008CAB0 00000000 */  nop
    /* 7D2B4 8008CAB4 04028216 */  bne        $s4, $v0, .L8008D2C8
    /* 7D2B8 8008CAB8 2110C003 */   addu      $v0, $fp, $zero
    /* 7D2BC 8008CABC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 7D2C0 8008CAC0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 7D2C4 8008CAC4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 7D2C8 8008CAC8 1680043C */  lui        $a0, %hi(D_80158EF8)
    /* 7D2CC 8008CACC F88E8424 */  addiu      $a0, $a0, %lo(D_80158EF8)
    /* 7D2D0 8008CAD0 60000524 */  addiu      $a1, $zero, 0x60
    /* 7D2D4 8008CAD4 21300000 */  addu       $a2, $zero, $zero
    /* 7D2D8 8008CAD8 B4E2020C */  jal        func_800B8AD0
    /* 7D2DC 8008CADC 21380000 */   addu      $a3, $zero, $zero
    /* 7D2E0 8008CAE0 B2340208 */  j          .L8008D2C8
    /* 7D2E4 8008CAE4 2110C003 */   addu      $v0, $fp, $zero
  .L8008CAE8:
    /* 7D2E8 8008CAE8 1280103C */  lui        $s0, %hi(D_8011A282)
    /* 7D2EC 8008CAEC 82A21026 */  addiu      $s0, $s0, %lo(D_8011A282)
    /* 7D2F0 8008CAF0 00000296 */  lhu        $v0, 0x0($s0)
    /* 7D2F4 8008CAF4 00000000 */  nop
    /* 7D2F8 8008CAF8 01004324 */  addiu      $v1, $v0, 0x1
    /* 7D2FC 8008CAFC 000003A6 */  sh         $v1, 0x0($s0)
    /* 7D300 8008CB00 00140200 */  sll        $v0, $v0, 16
    /* 7D304 8008CB04 03F40200 */  sra        $fp, $v0, 16
    /* 7D308 8008CB08 40101400 */  sll        $v0, $s4, 1
    /* 7D30C 8008CB0C 21105400 */  addu       $v0, $v0, $s4
    /* 7D310 8008CB10 80100200 */  sll        $v0, $v0, 2
    /* 7D314 8008CB14 23105400 */  subu       $v0, $v0, $s4
    /* 7D318 8008CB18 00110200 */  sll        $v0, $v0, 4
    /* 7D31C 8008CB1C 23105400 */  subu       $v0, $v0, $s4
    /* 7D320 8008CB20 C0100200 */  sll        $v0, $v0, 3
    /* 7D324 8008CB24 1180013C */  lui        $at, %hi(D_801176FA)
    /* 7D328 8008CB28 21082200 */  addu       $at, $at, $v0
    /* 7D32C 8008CB2C FA762394 */  lhu        $v1, %lo(D_801176FA)($at)
    /* 7D330 8008CB30 00000000 */  nop
    /* 7D334 8008CB34 01006324 */  addiu      $v1, $v1, 0x1
    /* 7D338 8008CB38 1180013C */  lui        $at, %hi(D_801176FA)
    /* 7D33C 8008CB3C 21082200 */  addu       $at, $at, $v0
    /* 7D340 8008CB40 FA7623A4 */  sh         $v1, %lo(D_801176FA)($at)
    /* 7D344 8008CB44 E0FF0396 */  lhu        $v1, -0x20($s0)
    /* 7D348 8008CB48 1180013C */  lui        $at, %hi(D_801176A0)
    /* 7D34C 8008CB4C 21082200 */  addu       $at, $at, $v0
    /* 7D350 8008CB50 A07623A4 */  sh         $v1, %lo(D_801176A0)($at)
    /* 7D354 8008CB54 2120A002 */  addu       $a0, $s5, $zero
    /* 7D358 8008CB58 2128C002 */  addu       $a1, $s6, $zero
    /* 7D35C 8008CB5C 02000624 */  addiu      $a2, $zero, 0x2
    /* 7D360 8008CB60 7261020C */  jal        func_800985C8
    /* 7D364 8008CB64 01000724 */   addiu     $a3, $zero, 0x1
    /* 7D368 8008CB68 2120A002 */  addu       $a0, $s5, $zero
    /* 7D36C 8008CB6C 2128C002 */  addu       $a1, $s6, $zero
    /* 7D370 8008CB70 40000624 */  addiu      $a2, $zero, 0x40
    /* 7D374 8008CB74 7261020C */  jal        func_800985C8
    /* 7D378 8008CB78 21380000 */   addu      $a3, $zero, $zero
    /* 7D37C 8008CB7C 0C25020C */  jal        func_80089430
    /* 7D380 8008CB80 2120C003 */   addu      $a0, $fp, $zero
    /* 7D384 8008CB84 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7D388 8008CB88 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7D38C 8008CB8C 00000000 */  nop
    /* 7D390 8008CB90 000055A4 */  sh         $s5, 0x0($v0)
    /* 7D394 8008CB94 020056A4 */  sh         $s6, 0x2($v0)
    /* 7D398 8008CB98 080054A0 */  sb         $s4, 0x8($v0)
    /* 7D39C 8008CB9C 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7D3A0 8008CBA0 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7D3A4 8008CBA4 00000000 */  nop
    /* 7D3A8 8008CBA8 0A0054A0 */  sb         $s4, 0xA($v0)
    /* 7D3AC 8008CBAC 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7D3B0 8008CBB0 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7D3B4 8008CBB4 00000000 */  nop
    /* 7D3B8 8008CBB8 0B0040A0 */  sb         $zero, 0xB($v0)
    /* 7D3BC 8008CBBC 1680033C */  lui        $v1, %hi(D_80158864)
    /* 7D3C0 8008CBC0 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* 7D3C4 8008CBC4 0200023C */  lui        $v0, (0x20000 >> 16)
    /* 7D3C8 8008CBC8 040062AC */  sw         $v0, 0x4($v1)
    /* 7D3CC 8008CBCC 01000224 */  addiu      $v0, $zero, 0x1
    /* 7D3D0 8008CBD0 090062A0 */  sb         $v0, 0x9($v1)
    /* 7D3D4 8008CBD4 F2000286 */  lh         $v0, 0xF2($s0)
    /* 7D3D8 8008CBD8 00000000 */  nop
    /* 7D3DC 8008CBDC 20004004 */  bltz       $v0, .L8008CC60
    /* 7D3E0 8008CBE0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 7D3E4 8008CBE4 1680033C */  lui        $v1, %hi(D_80158864)
    /* 7D3E8 8008CBE8 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* 7D3EC 8008CBEC 00000000 */  nop
    /* 7D3F0 8008CBF0 0C0062A0 */  sb         $v0, 0xC($v1)
    /* 7D3F4 8008CBF4 21800000 */  addu       $s0, $zero, $zero
    /* 7D3F8 8008CBF8 01000324 */  addiu      $v1, $zero, 0x1
  .L8008CBFC:
    /* 7D3FC 8008CBFC 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7D400 8008CC00 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7D404 8008CC04 00000000 */  nop
    /* 7D408 8008CC08 21105000 */  addu       $v0, $v0, $s0
    /* 7D40C 8008CC0C 0D0043A0 */  sb         $v1, 0xD($v0)
    /* 7D410 8008CC10 01001026 */  addiu      $s0, $s0, 0x1
    /* 7D414 8008CC14 0800022A */  slti       $v0, $s0, 0x8
    /* 7D418 8008CC18 F8FF4014 */  bnez       $v0, .L8008CBFC
    /* 7D41C 8008CC1C 00000000 */   nop
    /* 7D420 8008CC20 2120A002 */  addu       $a0, $s5, $zero
    /* 7D424 8008CC24 BD60020C */  jal        func_800982F4
    /* 7D428 8008CC28 2128C002 */   addu      $a1, $s6, $zero
    /* 7D42C 8008CC2C FF000324 */  addiu      $v1, $zero, 0xFF
    /* 7D430 8008CC30 040043A0 */  sb         $v1, 0x4($v0)
    /* 7D434 8008CC34 01001024 */  addiu      $s0, $zero, 0x1
    /* 7D438 8008CC38 2120A002 */  addu       $a0, $s5, $zero
  .L8008CC3C:
    /* 7D43C 8008CC3C 2128C002 */  addu       $a1, $s6, $zero
    /* 7D440 8008CC40 8961020C */  jal        func_80098624
    /* 7D444 8008CC44 21300002 */   addu      $a2, $s0, $zero
    /* 7D448 8008CC48 01001026 */  addiu      $s0, $s0, 0x1
    /* 7D44C 8008CC4C 0800022A */  slti       $v0, $s0, 0x8
    /* 7D450 8008CC50 FAFF4014 */  bnez       $v0, .L8008CC3C
    /* 7D454 8008CC54 2120A002 */   addu      $a0, $s5, $zero
    /* 7D458 8008CC58 26330208 */  j          .L8008CC98
    /* 7D45C 8008CC5C 00000000 */   nop
  .L8008CC60:
    /* 7D460 8008CC60 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7D464 8008CC64 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7D468 8008CC68 00000000 */  nop
    /* 7D46C 8008CC6C 0C0040A0 */  sb         $zero, 0xC($v0)
    /* 7D470 8008CC70 21800000 */  addu       $s0, $zero, $zero
  .L8008CC74:
    /* 7D474 8008CC74 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7D478 8008CC78 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7D47C 8008CC7C 00000000 */  nop
    /* 7D480 8008CC80 21105000 */  addu       $v0, $v0, $s0
    /* 7D484 8008CC84 0D0040A0 */  sb         $zero, 0xD($v0)
    /* 7D488 8008CC88 01001026 */  addiu      $s0, $s0, 0x1
    /* 7D48C 8008CC8C 0800022A */  slti       $v0, $s0, 0x8
    /* 7D490 8008CC90 F8FF4014 */  bnez       $v0, .L8008CC74
    /* 7D494 8008CC94 00000000 */   nop
  .L8008CC98:
    /* 7D498 8008CC98 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7D49C 8008CC9C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7D4A0 8008CCA0 00000000 */  nop
    /* 7D4A4 8008CCA4 180040AC */  sw         $zero, 0x18($v0)
    /* 7D4A8 8008CCA8 3D0040A0 */  sb         $zero, 0x3D($v0)
    /* 7D4AC 8008CCAC 21900000 */  addu       $s2, $zero, $zero
    /* 7D4B0 8008CCB0 02001124 */  addiu      $s1, $zero, 0x2
    /* 7D4B4 8008CCB4 80101100 */  sll        $v0, $s1, 2
  .L8008CCB8:
    /* 7D4B8 8008CCB8 21105100 */  addu       $v0, $v0, $s1
    /* 7D4BC 8008CCBC 80800200 */  sll        $s0, $v0, 2
    /* 7D4C0 8008CCC0 1180013C */  lui        $at, %hi(D_8010D28E)
    /* 7D4C4 8008CCC4 21083000 */  addu       $at, $at, $s0
    /* 7D4C8 8008CCC8 8ED22380 */  lb         $v1, %lo(D_8010D28E)($at)
    /* 7D4CC 8008CCCC 01000224 */  addiu      $v0, $zero, 0x1
    /* 7D4D0 8008CCD0 2B006214 */  bne        $v1, $v0, .L8008CD80
    /* 7D4D4 8008CCD4 21208002 */   addu      $a0, $s4, $zero
    /* 7D4D8 8008CCD8 1680053C */  lui        $a1, %hi(D_80158860)
    /* 7D4DC 8008CCDC 6088A58C */  lw         $a1, %lo(D_80158860)($a1)
    /* 7D4E0 8008CCE0 81D3010C */  jal        func_80074E04
    /* 7D4E4 8008CCE4 21302002 */   addu      $a2, $s1, $zero
    /* 7D4E8 8008CCE8 25004010 */  beqz       $v0, .L8008CD80
    /* 7D4EC 8008CCEC 00000000 */   nop
    /* 7D4F0 8008CCF0 1180013C */  lui        $at, %hi(D_8010D289)
    /* 7D4F4 8008CCF4 21083000 */  addu       $at, $at, $s0
    /* 7D4F8 8008CCF8 89D22380 */  lb         $v1, %lo(D_8010D289)($at)
    /* 7D4FC 8008CCFC 00000000 */  nop
    /* 7D500 8008CD00 C0180300 */  sll        $v1, $v1, 3
    /* 7D504 8008CD04 1180013C */  lui        $at, %hi(D_8010D28C)
    /* 7D508 8008CD08 21083000 */  addu       $at, $at, $s0
    /* 7D50C 8008CD0C 8CD22280 */  lb         $v0, %lo(D_8010D28C)($at)
    /* 7D510 8008CD10 00000000 */  nop
    /* 7D514 8008CD14 1A006200 */  div        $zero, $v1, $v0
    /* 7D518 8008CD18 02004014 */  bnez       $v0, .L8008CD24
    /* 7D51C 8008CD1C 00000000 */   nop
    /* 7D520 8008CD20 0D000700 */  break      7
  .L8008CD24:
    /* 7D524 8008CD24 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 7D528 8008CD28 04004114 */  bne        $v0, $at, .L8008CD3C
    /* 7D52C 8008CD2C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 7D530 8008CD30 02006114 */  bne        $v1, $at, .L8008CD3C
    /* 7D534 8008CD34 00000000 */   nop
    /* 7D538 8008CD38 0D000600 */  break      6
  .L8008CD3C:
    /* 7D53C 8008CD3C 12180000 */  mflo       $v1
    /* 7D540 8008CD40 1180013C */  lui        $at, %hi(D_8010D280)
    /* 7D544 8008CD44 21083000 */  addu       $at, $at, $s0
    /* 7D548 8008CD48 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 7D54C 8008CD4C 00000000 */  nop
    /* 7D550 8008CD50 00044230 */  andi       $v0, $v0, 0x400
    /* 7D554 8008CD54 03004010 */  beqz       $v0, .L8008CD64
    /* 7D558 8008CD58 2A107200 */   slt       $v0, $v1, $s2
    /* 7D55C 8008CD5C 01006324 */  addiu      $v1, $v1, 0x1
    /* 7D560 8008CD60 2A107200 */  slt        $v0, $v1, $s2
  .L8008CD64:
    /* 7D564 8008CD64 06004014 */  bnez       $v0, .L8008CD80
    /* 7D568 8008CD68 00000000 */   nop
    /* 7D56C 8008CD6C 21906000 */  addu       $s2, $v1, $zero
    /* 7D570 8008CD70 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7D574 8008CD74 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7D578 8008CD78 00000000 */  nop
    /* 7D57C 8008CD7C 3D0051A0 */  sb         $s1, 0x3D($v0)
  .L8008CD80:
    /* 7D580 8008CD80 01003126 */  addiu      $s1, $s1, 0x1
    /* 7D584 8008CD84 3600222A */  slti       $v0, $s1, 0x36
    /* 7D588 8008CD88 CBFF4014 */  bnez       $v0, .L8008CCB8
    /* 7D58C 8008CD8C 80101100 */   sll       $v0, $s1, 2
    /* 7D590 8008CD90 40101400 */  sll        $v0, $s4, 1
    /* 7D594 8008CD94 21105400 */  addu       $v0, $v0, $s4
    /* 7D598 8008CD98 80100200 */  sll        $v0, $v0, 2
    /* 7D59C 8008CD9C 23105400 */  subu       $v0, $v0, $s4
    /* 7D5A0 8008CDA0 00110200 */  sll        $v0, $v0, 4
    /* 7D5A4 8008CDA4 23105400 */  subu       $v0, $v0, $s4
    /* 7D5A8 8008CDA8 C0800200 */  sll        $s0, $v0, 3
    /* 7D5AC 8008CDAC 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7D5B0 8008CDB0 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7D5B4 8008CDB4 00000000 */  nop
    /* 7D5B8 8008CDB8 3D004280 */  lb         $v0, 0x3D($v0)
    /* 7D5BC 8008CDBC 1180033C */  lui        $v1, %hi(D_801177CF)
    /* 7D5C0 8008CDC0 CF776324 */  addiu      $v1, $v1, %lo(D_801177CF)
    /* 7D5C4 8008CDC4 21180302 */  addu       $v1, $s0, $v1
    /* 7D5C8 8008CDC8 21186200 */  addu       $v1, $v1, $v0
    /* 7D5CC 8008CDCC 00006290 */  lbu        $v0, 0x0($v1)
    /* 7D5D0 8008CDD0 00000000 */  nop
    /* 7D5D4 8008CDD4 01004224 */  addiu      $v0, $v0, 0x1
    /* 7D5D8 8008CDD8 000062A0 */  sb         $v0, 0x0($v1)
    /* 7D5DC 8008CDDC 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7D5E0 8008CDE0 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7D5E4 8008CDE4 00000000 */  nop
    /* 7D5E8 8008CDE8 1C0040A4 */  sh         $zero, 0x1C($v0)
    /* 7D5EC 8008CDEC 1E0040A4 */  sh         $zero, 0x1E($v0)
    /* 7D5F0 8008CDF0 200040A4 */  sh         $zero, 0x20($v0)
    /* 7D5F4 8008CDF4 220040A0 */  sb         $zero, 0x22($v0)
    /* 7D5F8 8008CDF8 B831020C */  jal        func_8008C6E0
    /* 7D5FC 8008CDFC 2120C003 */   addu      $a0, $fp, $zero
    /* 7D600 8008CE00 1680043C */  lui        $a0, %hi(D_80158864)
    /* 7D604 8008CE04 6488848C */  lw         $a0, %lo(D_80158864)($a0)
    /* 7D608 8008CE08 00000000 */  nop
    /* 7D60C 8008CE0C 340080AC */  sw         $zero, 0x34($a0)
    /* 7D610 8008CE10 38008424 */  addiu      $a0, $a0, 0x38
    /* 7D614 8008CE14 21280000 */  addu       $a1, $zero, $zero
    /* 7D618 8008CE18 C987030C */  jal        func_800E1F24
    /* 7D61C 8008CE1C 05000624 */   addiu     $a2, $zero, 0x5
    /* 7D620 8008CE20 1180013C */  lui        $at, %hi(D_801176FA)
    /* 7D624 8008CE24 21083000 */  addu       $at, $at, $s0
    /* 7D628 8008CE28 FA762384 */  lh         $v1, %lo(D_801176FA)($at)
    /* 7D62C 8008CE2C 01000224 */  addiu      $v0, $zero, 0x1
    /* 7D630 8008CE30 98006214 */  bne        $v1, $v0, .L8008D094
    /* 7D634 8008CE34 01000524 */   addiu     $a1, $zero, 0x1
    /* 7D638 8008CE38 1680043C */  lui        $a0, %hi(D_80158860)
    /* 7D63C 8008CE3C 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* 7D640 8008CE40 E926020C */  jal        func_80089BA4
    /* 7D644 8008CE44 01000624 */   addiu     $a2, $zero, 0x1
    /* 7D648 8008CE48 1180013C */  lui        $at, %hi(D_8011769E)
    /* 7D64C 8008CE4C 21083000 */  addu       $at, $at, $s0
    /* 7D650 8008CE50 9E7635A4 */  sh         $s5, %lo(D_8011769E)($at)
    /* 7D654 8008CE54 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 7D658 8008CE58 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 7D65C 8008CE5C 00000000 */  nop
    /* 7D660 8008CE60 07108202 */  srav       $v0, $v0, $s4
    /* 7D664 8008CE64 01004230 */  andi       $v0, $v0, 0x1
    /* 7D668 8008CE68 8A004014 */  bnez       $v0, .L8008D094
    /* 7D66C 8008CE6C 21980000 */   addu      $s3, $zero, $zero
    /* 7D670 8008CE70 01000224 */  addiu      $v0, $zero, 0x1
    /* 7D674 8008CE74 04B88202 */  sllv       $s7, $v0, $s4
    /* 7D678 8008CE78 1280123C */  lui        $s2, %hi(D_8011A262)
    /* 7D67C 8008CE7C 62A25226 */  addiu      $s2, $s2, %lo(D_8011A262)
  .L8008CE80:
    /* 7D680 8008CE80 1400622A */  slti       $v0, $s3, 0x14
    /* 7D684 8008CE84 45004010 */  beqz       $v0, .L8008CF9C
    /* 7D688 8008CE88 00000000 */   nop
    /* 7D68C 8008CE8C 1280013C */  lui        $at, %hi(D_8011AC3C)
    /* 7D690 8008CE90 21083300 */  addu       $at, $at, $s3
    /* 7D694 8008CE94 3CAC2480 */  lb         $a0, %lo(D_8011AC3C)($at)
    /* 7D698 8008CE98 173B030C */  jal        func_800CEC5C
    /* 7D69C 8008CE9C 2120A402 */   addu      $a0, $s5, $a0
    /* 7D6A0 8008CEA0 21884000 */  addu       $s1, $v0, $zero
    /* 7D6A4 8008CEA4 1280013C */  lui        $at, %hi(D_8011AC6C)
    /* 7D6A8 8008CEA8 21083300 */  addu       $at, $at, $s3
    /* 7D6AC 8008CEAC 6CAC2280 */  lb         $v0, %lo(D_8011AC6C)($at)
    /* 7D6B0 8008CEB0 00000000 */  nop
    /* 7D6B4 8008CEB4 2180C202 */  addu       $s0, $s6, $v0
    /* 7D6B8 8008CEB8 0D000006 */  bltz       $s0, .L8008CEF0
    /* 7D6BC 8008CEBC 21180000 */   addu      $v1, $zero, $zero
    /* 7D6C0 8008CEC0 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 7D6C4 8008CEC4 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 7D6C8 8008CEC8 00000000 */  nop
    /* 7D6CC 8008CECC 2A100202 */  slt        $v0, $s0, $v0
    /* 7D6D0 8008CED0 07004010 */  beqz       $v0, .L8008CEF0
    /* 7D6D4 8008CED4 00000000 */   nop
    /* 7D6D8 8008CED8 05002006 */  bltz       $s1, .L8008CEF0
    /* 7D6DC 8008CEDC 00000000 */   nop
    /* 7D6E0 8008CEE0 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 7D6E4 8008CEE4 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 7D6E8 8008CEE8 00000000 */  nop
    /* 7D6EC 8008CEEC 2A182202 */  slt        $v1, $s1, $v0
  .L8008CEF0:
    /* 7D6F0 8008CEF0 28006010 */  beqz       $v1, .L8008CF94
    /* 7D6F4 8008CEF4 21202002 */   addu      $a0, $s1, $zero
    /* 7D6F8 8008CEF8 BD60020C */  jal        func_800982F4
    /* 7D6FC 8008CEFC 21280002 */   addu      $a1, $s0, $zero
    /* 7D700 8008CF00 04004390 */  lbu        $v1, 0x4($v0)
    /* 7D704 8008CF04 00000000 */  nop
    /* 7D708 8008CF08 25187700 */  or         $v1, $v1, $s7
    /* 7D70C 8008CF0C 040043A0 */  sb         $v1, 0x4($v0)
    /* 7D710 8008CF10 00004286 */  lh         $v0, 0x0($s2)
    /* 7D714 8008CF14 00000000 */  nop
    /* 7D718 8008CF18 28004228 */  slti       $v0, $v0, 0x28
    /* 7D71C 8008CF1C 1D004014 */  bnez       $v0, .L8008CF94
    /* 7D720 8008CF20 0800622A */   slti      $v0, $s3, 0x8
    /* 7D724 8008CF24 1B004010 */  beqz       $v0, .L8008CF94
    /* 7D728 8008CF28 21202002 */   addu      $a0, $s1, $zero
    /* 7D72C 8008CF2C BD60020C */  jal        func_800982F4
    /* 7D730 8008CF30 21280002 */   addu      $a1, $s0, $zero
    /* 7D734 8008CF34 04004290 */  lbu        $v0, 0x4($v0)
    /* 7D738 8008CF38 13004392 */  lbu        $v1, 0x13($s2)
    /* 7D73C 8008CF3C 00000000 */  nop
    /* 7D740 8008CF40 24104300 */  and        $v0, $v0, $v1
    /* 7D744 8008CF44 13004014 */  bnez       $v0, .L8008CF94
    /* 7D748 8008CF48 21202002 */   addu      $a0, $s1, $zero
    /* 7D74C 8008CF4C D560020C */  jal        func_80098354
    /* 7D750 8008CF50 21280002 */   addu      $a1, $s0, $zero
    /* 7D754 8008CF54 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7D758 8008CF58 80180200 */  sll        $v1, $v0, 2
    /* 7D75C 8008CF5C 21186200 */  addu       $v1, $v1, $v0
    /* 7D760 8008CF60 80180300 */  sll        $v1, $v1, 2
    /* 7D764 8008CF64 1180013C */  lui        $at, %hi(D_8010C878)
    /* 7D768 8008CF68 21082300 */  addu       $at, $at, $v1
    /* 7D76C 8008CF6C 78C82380 */  lb         $v1, %lo(D_8010C878)($at)
    /* 7D770 8008CF70 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* 7D774 8008CF74 07006214 */  bne        $v1, $v0, .L8008CF94
    /* 7D778 8008CF78 21202002 */   addu      $a0, $s1, $zero
    /* 7D77C 8008CF7C BD60020C */  jal        func_800982F4
    /* 7D780 8008CF80 21280002 */   addu      $a1, $s0, $zero
    /* 7D784 8008CF84 01004390 */  lbu        $v1, 0x1($v0)
    /* 7D788 8008CF88 00000000 */  nop
    /* 7D78C 8008CF8C 04006334 */  ori        $v1, $v1, 0x4
    /* 7D790 8008CF90 010043A0 */  sb         $v1, 0x1($v0)
  .L8008CF94:
    /* 7D794 8008CF94 A0330208 */  j          .L8008CE80
    /* 7D798 8008CF98 01007326 */   addiu     $s3, $s3, 0x1
  .L8008CF9C:
    /* 7D79C 8008CF9C 1280103C */  lui        $s0, %hi(D_8011A262)
    /* 7D7A0 8008CFA0 62A21026 */  addiu      $s0, $s0, %lo(D_8011A262)
    /* 7D7A4 8008CFA4 00000286 */  lh         $v0, 0x0($s0)
    /* 7D7A8 8008CFA8 00000000 */  nop
    /* 7D7AC 8008CFAC 29004228 */  slti       $v0, $v0, 0x29
    /* 7D7B0 8008CFB0 38004014 */  bnez       $v0, .L8008D094
    /* 7D7B4 8008CFB4 2120A002 */   addu      $a0, $s5, $zero
    /* 7D7B8 8008CFB8 BD60020C */  jal        func_800982F4
    /* 7D7BC 8008CFBC 2128C002 */   addu      $a1, $s6, $zero
    /* 7D7C0 8008CFC0 04004290 */  lbu        $v0, 0x4($v0)
    /* 7D7C4 8008CFC4 13000392 */  lbu        $v1, 0x13($s0)
    /* 7D7C8 8008CFC8 00000000 */  nop
    /* 7D7CC 8008CFCC 24104300 */  and        $v0, $v0, $v1
    /* 7D7D0 8008CFD0 20004014 */  bnez       $v0, .L8008D054
    /* 7D7D4 8008CFD4 6666023C */   lui       $v0, (0x66666667 >> 16)
    /* 7D7D8 8008CFD8 00000486 */  lh         $a0, 0x0($s0)
    /* 7D7DC 8008CFDC 00000000 */  nop
    /* 7D7E0 8008CFE0 ECFF8424 */  addiu      $a0, $a0, -0x14
    /* 7D7E4 8008CFE4 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 7D7E8 8008CFE8 18008200 */  mult       $a0, $v0
    /* 7D7EC 8008CFEC 10400000 */  mfhi       $t0
    /* 7D7F0 8008CFF0 C3100800 */  sra        $v0, $t0, 3
    /* 7D7F4 8008CFF4 C3270400 */  sra        $a0, $a0, 31
    /* 7D7F8 8008CFF8 23204400 */  subu       $a0, $v0, $a0
    /* 7D7FC 8008CFFC 02000524 */  addiu      $a1, $zero, 0x2
    /* 7D800 8008D000 F53A030C */  jal        func_800CEBD4
    /* 7D804 8008D004 0A000624 */   addiu     $a2, $zero, 0xA
    /* 7D808 8008D008 1680033C */  lui        $v1, %hi(D_80158864)
    /* 7D80C 8008D00C 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* 7D810 8008D010 00000000 */  nop
    /* 7D814 8008D014 090062A0 */  sb         $v0, 0x9($v1)
    /* 7D818 8008D018 1680043C */  lui        $a0, %hi(D_80158860)
    /* 7D81C 8008D01C 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* 7D820 8008D020 04000524 */  addiu      $a1, $zero, 0x4
    /* 7D824 8008D024 E926020C */  jal        func_80089BA4
    /* 7D828 8008D028 01000624 */   addiu     $a2, $zero, 0x1
    /* 7D82C 8008D02C 1680043C */  lui        $a0, %hi(D_80158860)
    /* 7D830 8008D030 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* 7D834 8008D034 05000524 */  addiu      $a1, $zero, 0x5
    /* 7D838 8008D038 E926020C */  jal        func_80089BA4
    /* 7D83C 8008D03C 01000624 */   addiu     $a2, $zero, 0x1
    /* 7D840 8008D040 1680043C */  lui        $a0, %hi(D_80158860)
    /* 7D844 8008D044 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* 7D848 8008D048 06000524 */  addiu      $a1, $zero, 0x6
    /* 7D84C 8008D04C E926020C */  jal        func_80089BA4
    /* 7D850 8008D050 01000624 */   addiu     $a2, $zero, 0x1
  .L8008D054:
    /* 7D854 8008D054 1280023C */  lui        $v0, %hi(D_8011A262)
    /* 7D858 8008D058 62A24284 */  lh         $v0, %lo(D_8011A262)($v0)
    /* 7D85C 8008D05C 00000000 */  nop
    /* 7D860 8008D060 29004228 */  slti       $v0, $v0, 0x29
    /* 7D864 8008D064 0B004014 */  bnez       $v0, .L8008D094
    /* 7D868 8008D068 00000000 */   nop
    /* 7D86C 8008D06C 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7D870 8008D070 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7D874 8008D074 00000000 */  nop
    /* 7D878 8008D078 3D004480 */  lb         $a0, 0x3D($v0)
    /* 7D87C 8008D07C 00000000 */  nop
    /* 7D880 8008D080 06008010 */  beqz       $a0, .L8008D09C
    /* 7D884 8008D084 21288002 */   addu      $a1, $s4, $zero
    /* 7D888 8008D088 2130A002 */  addu       $a2, $s5, $zero
    /* 7D88C 8008D08C 8DF0010C */  jal        func_8007C234
    /* 7D890 8008D090 2138C002 */   addu      $a3, $s6, $zero
  .L8008D094:
    /* 7D894 8008D094 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7D898 8008D098 6488428C */  lw         $v0, %lo(D_80158864)($v0)
  .L8008D09C:
    /* 7D89C 8008D09C 00000000 */  nop
    /* 7D8A0 8008D0A0 3E0040A0 */  sb         $zero, 0x3E($v0)
    /* 7D8A4 8008D0A4 1680043C */  lui        $a0, %hi(D_80158864)
    /* 7D8A8 8008D0A8 6488848C */  lw         $a0, %lo(D_80158864)($a0)
    /* 7D8AC 8008D0AC 00000000 */  nop
    /* 7D8B0 8008D0B0 48008424 */  addiu      $a0, $a0, 0x48
    /* 7D8B4 8008D0B4 21280000 */  addu       $a1, $zero, $zero
    /* 7D8B8 8008D0B8 C987030C */  jal        func_800E1F24
    /* 7D8BC 8008D0BC 03000624 */   addiu     $a2, $zero, 0x3
    /* 7D8C0 8008D0C0 1680043C */  lui        $a0, %hi(D_80158864)
    /* 7D8C4 8008D0C4 6488848C */  lw         $a0, %lo(D_80158864)($a0)
    /* 7D8C8 8008D0C8 00000000 */  nop
    /* 7D8CC 8008D0CC 45008424 */  addiu      $a0, $a0, 0x45
    /* 7D8D0 8008D0D0 21280000 */  addu       $a1, $zero, $zero
    /* 7D8D4 8008D0D4 C987030C */  jal        func_800E1F24
    /* 7D8D8 8008D0D8 03000624 */   addiu     $a2, $zero, 0x3
    /* 7D8DC 8008D0DC 21980000 */  addu       $s3, $zero, $zero
  .L8008D0E0:
    /* 7D8E0 8008D0E0 0900622A */  slti       $v0, $s3, 0x9
    /* 7D8E4 8008D0E4 5E004010 */  beqz       $v0, .L8008D260
    /* 7D8E8 8008D0E8 00000000 */   nop
    /* 7D8EC 8008D0EC 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 7D8F0 8008D0F0 21083300 */  addu       $at, $at, $s3
    /* 7D8F4 8008D0F4 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* 7D8F8 8008D0F8 173B030C */  jal        func_800CEC5C
    /* 7D8FC 8008D0FC 2120A402 */   addu      $a0, $s5, $a0
    /* 7D900 8008D100 21884000 */  addu       $s1, $v0, $zero
    /* 7D904 8008D104 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 7D908 8008D108 21083300 */  addu       $at, $at, $s3
    /* 7D90C 8008D10C 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 7D910 8008D110 00000000 */  nop
    /* 7D914 8008D114 2180C202 */  addu       $s0, $s6, $v0
    /* 7D918 8008D118 0D000006 */  bltz       $s0, .L8008D150
    /* 7D91C 8008D11C 21180000 */   addu      $v1, $zero, $zero
    /* 7D920 8008D120 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 7D924 8008D124 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 7D928 8008D128 00000000 */  nop
    /* 7D92C 8008D12C 2A100202 */  slt        $v0, $s0, $v0
    /* 7D930 8008D130 07004010 */  beqz       $v0, .L8008D150
    /* 7D934 8008D134 00000000 */   nop
    /* 7D938 8008D138 05002006 */  bltz       $s1, .L8008D150
    /* 7D93C 8008D13C 00000000 */   nop
    /* 7D940 8008D140 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 7D944 8008D144 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 7D948 8008D148 00000000 */  nop
    /* 7D94C 8008D14C 2A182202 */  slt        $v1, $s1, $v0
  .L8008D150:
    /* 7D950 8008D150 41006010 */  beqz       $v1, .L8008D258
    /* 7D954 8008D154 21202002 */   addu      $a0, $s1, $zero
    /* 7D958 8008D158 F760020C */  jal        func_800983DC
    /* 7D95C 8008D15C 21280002 */   addu      $a1, $s0, $zero
    /* 7D960 8008D160 24004010 */  beqz       $v0, .L8008D1F4
    /* 7D964 8008D164 21202002 */   addu      $a0, $s1, $zero
    /* 7D968 8008D168 2561020C */  jal        func_80098494
    /* 7D96C 8008D16C 21280002 */   addu      $a1, $s0, $zero
    /* 7D970 8008D170 21184000 */  addu       $v1, $v0, $zero
    /* 7D974 8008D174 00110300 */  sll        $v0, $v1, 4
    /* 7D978 8008D178 1180013C */  lui        $at, %hi(D_8010CC68)
    /* 7D97C 8008D17C 21082200 */  addu       $at, $at, $v0
    /* 7D980 8008D180 68CC2284 */  lh         $v0, %lo(D_8010CC68)($at)
    /* 7D984 8008D184 00000000 */  nop
    /* 7D988 8008D188 02004228 */  slti       $v0, $v0, 0x2
    /* 7D98C 8008D18C 12004014 */  bnez       $v0, .L8008D1D8
    /* 7D990 8008D190 3F006228 */   slti      $v0, $v1, 0x3F
    /* 7D994 8008D194 09004014 */  bnez       $v0, .L8008D1BC
    /* 7D998 8008D198 00000000 */   nop
    /* 7D99C 8008D19C 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7D9A0 8008D1A0 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7D9A4 8008D1A4 00000000 */  nop
    /* 7D9A8 8008D1A8 0400428C */  lw         $v0, 0x4($v0)
    /* 7D9AC 8008D1AC 00000000 */  nop
    /* 7D9B0 8008D1B0 80004230 */  andi       $v0, $v0, 0x80
    /* 7D9B4 8008D1B4 08004010 */  beqz       $v0, .L8008D1D8
    /* 7D9B8 8008D1B8 00000000 */   nop
  .L8008D1BC:
    /* 7D9BC 8008D1BC 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7D9C0 8008D1C0 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7D9C4 8008D1C4 00000000 */  nop
    /* 7D9C8 8008D1C8 0400438C */  lw         $v1, 0x4($v0)
    /* 7D9CC 8008D1CC 2000043C */  lui        $a0, (0x200000 >> 16)
    /* 7D9D0 8008D1D0 25186400 */  or         $v1, $v1, $a0
    /* 7D9D4 8008D1D4 040043AC */  sw         $v1, 0x4($v0)
  .L8008D1D8:
    /* 7D9D8 8008D1D8 1680033C */  lui        $v1, %hi(D_80158864)
    /* 7D9DC 8008D1DC 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* 7D9E0 8008D1E0 00000000 */  nop
    /* 7D9E4 8008D1E4 0400628C */  lw         $v0, 0x4($v1)
    /* 7D9E8 8008D1E8 00000000 */  nop
    /* 7D9EC 8008D1EC 80004234 */  ori        $v0, $v0, 0x80
    /* 7D9F0 8008D1F0 040062AC */  sw         $v0, 0x4($v1)
  .L8008D1F4:
    /* 7D9F4 8008D1F4 21900000 */  addu       $s2, $zero, $zero
    /* 7D9F8 8008D1F8 21202002 */  addu       $a0, $s1, $zero
    /* 7D9FC 8008D1FC BD60020C */  jal        func_800982F4
    /* 7DA00 8008D200 21280002 */   addu      $a1, $s0, $zero
    /* 7DA04 8008D204 00004290 */  lbu        $v0, 0x0($v0)
    /* 7DA08 8008D208 00000000 */  nop
    /* 7DA0C 8008D20C 80004230 */  andi       $v0, $v0, 0x80
    /* 7DA10 8008D210 07004014 */  bnez       $v0, .L8008D230
    /* 7DA14 8008D214 21202002 */   addu      $a0, $s1, $zero
    /* 7DA18 8008D218 D560020C */  jal        func_80098354
    /* 7DA1C 8008D21C 21280002 */   addu      $a1, $s0, $zero
    /* 7DA20 8008D220 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7DA24 8008D224 05000324 */  addiu      $v1, $zero, 0x5
    /* 7DA28 8008D228 02004314 */  bne        $v0, $v1, .L8008D234
    /* 7DA2C 8008D22C 00000000 */   nop
  .L8008D230:
    /* 7DA30 8008D230 01001224 */  addiu      $s2, $zero, 0x1
  .L8008D234:
    /* 7DA34 8008D234 08004012 */  beqz       $s2, .L8008D258
    /* 7DA38 8008D238 00000000 */   nop
    /* 7DA3C 8008D23C 1680033C */  lui        $v1, %hi(D_80158864)
    /* 7DA40 8008D240 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* 7DA44 8008D244 00000000 */  nop
    /* 7DA48 8008D248 0400628C */  lw         $v0, 0x4($v1)
    /* 7DA4C 8008D24C 00000000 */  nop
    /* 7DA50 8008D250 00084234 */  ori        $v0, $v0, 0x800
    /* 7DA54 8008D254 040062AC */  sw         $v0, 0x4($v1)
  .L8008D258:
    /* 7DA58 8008D258 38340208 */  j          .L8008D0E0
    /* 7DA5C 8008D25C 01007326 */   addiu     $s3, $s3, 0x1
  .L8008D260:
    /* 7DA60 8008D260 1680043C */  lui        $a0, %hi(D_80158860)
    /* 7DA64 8008D264 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* 7DA68 8008D268 4932020C */  jal        func_8008C924
    /* 7DA6C 8008D26C 00000000 */   nop
    /* 7DA70 8008D270 4827020C */  jal        func_80089D20
    /* 7DA74 8008D274 2120C003 */   addu      $a0, $fp, $zero
    /* 7DA78 8008D278 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7DA7C 8008D27C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7DA80 8008D280 00000000 */  nop
    /* 7DA84 8008D284 4E0040A4 */  sh         $zero, 0x4E($v0)
    /* 7DA88 8008D288 500040A4 */  sh         $zero, 0x50($v0)
    /* 7DA8C 8008D28C 520040A4 */  sh         $zero, 0x52($v0)
    /* 7DA90 8008D290 540040A0 */  sb         $zero, 0x54($v0)
    /* 7DA94 8008D294 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7DA98 8008D298 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7DA9C 8008D29C 00000000 */  nop
    /* 7DAA0 8008D2A0 550040A0 */  sb         $zero, 0x55($v0)
    /* 7DAA4 8008D2A4 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7DAA8 8008D2A8 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7DAAC 8008D2AC 00000000 */  nop
    /* 7DAB0 8008D2B0 560040A0 */  sb         $zero, 0x56($v0)
    /* 7DAB4 8008D2B4 1680023C */  lui        $v0, %hi(D_80158864)
    /* 7DAB8 8008D2B8 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 7DABC 8008D2BC 00000000 */  nop
    /* 7DAC0 8008D2C0 570040A0 */  sb         $zero, 0x57($v0)
    /* 7DAC4 8008D2C4 2110C003 */  addu       $v0, $fp, $zero
  .L8008D2C8:
    /* 7DAC8 8008D2C8 4400BF8F */  lw         $ra, 0x44($sp)
    /* 7DACC 8008D2CC 4000BE8F */  lw         $fp, 0x40($sp)
    /* 7DAD0 8008D2D0 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 7DAD4 8008D2D4 3800B68F */  lw         $s6, 0x38($sp)
    /* 7DAD8 8008D2D8 3400B58F */  lw         $s5, 0x34($sp)
    /* 7DADC 8008D2DC 3000B48F */  lw         $s4, 0x30($sp)
    /* 7DAE0 8008D2E0 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 7DAE4 8008D2E4 2800B28F */  lw         $s2, 0x28($sp)
    /* 7DAE8 8008D2E8 2400B18F */  lw         $s1, 0x24($sp)
    /* 7DAEC 8008D2EC 2000B08F */  lw         $s0, 0x20($sp)
    /* 7DAF0 8008D2F0 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 7DAF4 8008D2F4 0800E003 */  jr         $ra
    /* 7DAF8 8008D2F8 00000000 */   nop
endlabel func_8008CA58
