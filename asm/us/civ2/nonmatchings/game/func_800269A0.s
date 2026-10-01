.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800269A0, 0x240

glabel func_800269A0
    /* 171A0 800269A0 18FDBD27 */  addiu      $sp, $sp, -0x2E8
    /* 171A4 800269A4 E402BFAF */  sw         $ra, 0x2E4($sp)
    /* 171A8 800269A8 E002B6AF */  sw         $s6, 0x2E0($sp)
    /* 171AC 800269AC DC02B5AF */  sw         $s5, 0x2DC($sp)
    /* 171B0 800269B0 D802B4AF */  sw         $s4, 0x2D8($sp)
    /* 171B4 800269B4 D402B3AF */  sw         $s3, 0x2D4($sp)
    /* 171B8 800269B8 D002B2AF */  sw         $s2, 0x2D0($sp)
    /* 171BC 800269BC CC02B1AF */  sw         $s1, 0x2CC($sp)
    /* 171C0 800269C0 C802B0AF */  sw         $s0, 0x2C8($sp)
    /* 171C4 800269C4 21888000 */  addu       $s1, $a0, $zero
    /* 171C8 800269C8 2198A000 */  addu       $s3, $a1, $zero
    /* 171CC 800269CC FFFF1424 */  addiu      $s4, $zero, -0x1
    /* 171D0 800269D0 19FC1524 */  addiu      $s5, $zero, -0x3E7
    /* 171D4 800269D4 2800A427 */  addiu      $a0, $sp, 0x28
    /* 171D8 800269D8 ADC5020C */  jal        func_800B16B4
    /* 171DC 800269DC 00200524 */   addiu     $a1, $zero, 0x2000
    /* 171E0 800269E0 72002012 */  beqz       $s1, .L80026BAC
    /* 171E4 800269E4 2800A427 */   addiu     $a0, $sp, 0x28
    /* 171E8 800269E8 70006012 */  beqz       $s3, .L80026BAC
    /* 171EC 800269EC 01000224 */   addiu     $v0, $zero, 0x1
    /* 171F0 800269F0 1280163C */  lui        $s6, %hi(D_8011A275)
    /* 171F4 800269F4 75A2D692 */  lbu        $s6, %lo(D_8011A275)($s6)
    /* 171F8 800269F8 04102202 */  sllv       $v0, $v0, $s1
    /* 171FC 800269FC 24B0C202 */  and        $s6, $s6, $v0
    /* 17200 80026A00 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 17204 80026A04 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 17208 80026A08 00000000 */  nop
    /* 1720C 80026A0C 26102202 */  xor        $v0, $s1, $v0
    /* 17210 80026A10 0100522C */  sltiu      $s2, $v0, 0x1
  .L80026A14:
    /* 17214 80026A14 0F004012 */  beqz       $s2, .L80026A54
    /* 17218 80026A18 2800B027 */   addiu     $s0, $sp, 0x28
    /* 1721C 80026A1C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 17220 80026A20 1400A0AF */  sw         $zero, 0x14($sp)
    /* 17224 80026A24 1800A0AF */  sw         $zero, 0x18($sp)
    /* 17228 80026A28 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 1722C 80026A2C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 17230 80026A30 21200002 */  addu       $a0, $s0, $zero
    /* 17234 80026A34 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* 17238 80026A38 F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* 1723C 80026A3C BB410624 */  addiu      $a2, $zero, 0x41BB
    /* 17240 80026A40 2CE0020C */  jal        func_800B80B0
    /* 17244 80026A44 21380000 */   addu      $a3, $zero, $zero
    /* 17248 80026A48 21200002 */  addu       $a0, $s0, $zero
    /* 1724C 80026A4C 58C8020C */  jal        func_800B2160
    /* 17250 80026A50 3C000524 */   addiu     $a1, $zero, 0x3C
  .L80026A54:
    /* 17254 80026A54 21800000 */  addu       $s0, $zero, $zero
    /* 17258 80026A58 21202002 */  addu       $a0, $s1, $zero
  .L80026A5C:
    /* 1725C 80026A5C 8ACA010C */  jal        func_80072A28
    /* 17260 80026A60 21280002 */   addu      $a1, $s0, $zero
    /* 17264 80026A64 19004014 */  bnez       $v0, .L80026ACC
    /* 17268 80026A68 21206002 */   addu      $a0, $s3, $zero
    /* 1726C 80026A6C 8ACA010C */  jal        func_80072A28
    /* 17270 80026A70 21280002 */   addu      $a1, $s0, $zero
    /* 17274 80026A74 15004010 */  beqz       $v0, .L80026ACC
    /* 17278 80026A78 00000000 */   nop
    /* 1727C 80026A7C 0A004012 */  beqz       $s2, .L80026AA8
    /* 17280 80026A80 00111000 */   sll       $v0, $s0, 4
    /* 17284 80026A84 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* 17288 80026A88 21082200 */  addu       $at, $at, $v0
    /* 1728C 80026A8C A0C2248C */  lw         $a0, %lo(D_8010C2A0)($at)
    /* 17290 80026A90 A63A030C */  jal        func_800CEA98
    /* 17294 80026A94 00000000 */   nop
    /* 17298 80026A98 2800A427 */  addiu      $a0, $sp, 0x28
    /* 1729C 80026A9C 21284000 */  addu       $a1, $v0, $zero
    /* 172A0 80026AA0 A8C9020C */  jal        func_800B26A0
    /* 172A4 80026AA4 21300002 */   addu      $a2, $s0, $zero
  .L80026AA8:
    /* 172A8 80026AA8 21202002 */  addu       $a0, $s1, $zero
    /* 172AC 80026AAC DBCA010C */  jal        func_80072B6C
    /* 172B0 80026AB0 21280002 */   addu      $a1, $s0, $zero
    /* 172B4 80026AB4 21184000 */  addu       $v1, $v0, $zero
    /* 172B8 80026AB8 2A107500 */  slt        $v0, $v1, $s5
    /* 172BC 80026ABC 03004014 */  bnez       $v0, .L80026ACC
    /* 172C0 80026AC0 00000000 */   nop
    /* 172C4 80026AC4 21A86000 */  addu       $s5, $v1, $zero
    /* 172C8 80026AC8 21A00002 */  addu       $s4, $s0, $zero
  .L80026ACC:
    /* 172CC 80026ACC 01001026 */  addiu      $s0, $s0, 0x1
    /* 172D0 80026AD0 5D00022A */  slti       $v0, $s0, 0x5D
    /* 172D4 80026AD4 E1FF4014 */  bnez       $v0, .L80026A5C
    /* 172D8 80026AD8 21202002 */   addu      $a0, $s1, $zero
    /* 172DC 80026ADC 33008006 */  bltz       $s4, .L80026BAC
    /* 172E0 80026AE0 2800A427 */   addiu     $a0, $sp, 0x28
    /* 172E4 80026AE4 0F00C012 */  beqz       $s6, .L80026B24
    /* 172E8 80026AE8 21808002 */   addu      $s0, $s4, $zero
    /* 172EC 80026AEC 2F004012 */  beqz       $s2, .L80026BAC
    /* 172F0 80026AF0 00000000 */   nop
    /* 172F4 80026AF4 52DF020C */  jal        func_800B7D48
    /* 172F8 80026AF8 21280000 */   addu      $a1, $zero, $zero
    /* 172FC 80026AFC 21804000 */  addu       $s0, $v0, $zero
    /* 17300 80026B00 E800A28F */  lw         $v0, 0xE8($sp)
    /* 17304 80026B04 00000000 */  nop
    /* 17308 80026B08 06004010 */  beqz       $v0, .L80026B24
    /* 1730C 80026B0C 21202002 */   addu      $a0, $s1, $zero
    /* 17310 80026B10 21280000 */  addu       $a1, $zero, $zero
    /* 17314 80026B14 D2D6010C */  jal        func_80075B48
    /* 17318 80026B18 21306002 */   addu      $a2, $s3, $zero
    /* 1731C 80026B1C 859A0008 */  j          .L80026A14
    /* 17320 80026B20 00000000 */   nop
  .L80026B24:
    /* 17324 80026B24 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 17328 80026B28 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 1732C 80026B2C 00000000 */  nop
    /* 17330 80026B30 14006216 */  bne        $s3, $v0, .L80026B84
    /* 17334 80026B34 00000000 */   nop
    /* 17338 80026B38 5D54020C */  jal        func_80095174
    /* 1733C 80026B3C 21202002 */   addu      $a0, $s1, $zero
    /* 17340 80026B40 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 17344 80026B44 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 17348 80026B48 A587030C */  jal        func_800E1E94
    /* 1734C 80026B4C 21284000 */   addu      $a1, $v0, $zero
    /* 17350 80026B50 00111000 */  sll        $v0, $s0, 4
    /* 17354 80026B54 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* 17358 80026B58 21082200 */  addu       $at, $at, $v0
    /* 1735C 80026B5C A0C2258C */  lw         $a1, %lo(D_8010C2A0)($at)
    /* 17360 80026B60 ABAC020C */  jal        func_800AB2AC
    /* 17364 80026B64 01000424 */   addiu     $a0, $zero, 0x1
    /* 17368 80026B68 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1736C 80026B6C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 17370 80026B70 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 17374 80026B74 0F420524 */  addiu      $a1, $zero, 0x420F
    /* 17378 80026B78 21300000 */  addu       $a2, $zero, $zero
    /* 1737C 80026B7C A3E3020C */  jal        func_800B8E8C
    /* 17380 80026B80 21380002 */   addu      $a3, $s0, $zero
  .L80026B84:
    /* 17384 80026B84 21202002 */  addu       $a0, $s1, $zero
    /* 17388 80026B88 21280002 */  addu       $a1, $s0, $zero
    /* 1738C 80026B8C F5CF010C */  jal        func_80073FD4
    /* 17390 80026B90 21306002 */   addu      $a2, $s3, $zero
    /* 17394 80026B94 0500C016 */  bnez       $s6, .L80026BAC
    /* 17398 80026B98 2800A427 */   addiu     $a0, $sp, 0x28
    /* 1739C 80026B9C 21202002 */  addu       $a0, $s1, $zero
    /* 173A0 80026BA0 F73C020C */  jal        func_8008F3DC
    /* 173A4 80026BA4 FFFF0524 */   addiu     $a1, $zero, -0x1
    /* 173A8 80026BA8 2800A427 */  addiu      $a0, $sp, 0x28
  .L80026BAC:
    /* 173AC 80026BAC 0AC7020C */  jal        func_800B1C28
    /* 173B0 80026BB0 02000524 */   addiu     $a1, $zero, 0x2
    /* 173B4 80026BB4 E402BF8F */  lw         $ra, 0x2E4($sp)
    /* 173B8 80026BB8 E002B68F */  lw         $s6, 0x2E0($sp)
    /* 173BC 80026BBC DC02B58F */  lw         $s5, 0x2DC($sp)
    /* 173C0 80026BC0 D802B48F */  lw         $s4, 0x2D8($sp)
    /* 173C4 80026BC4 D402B38F */  lw         $s3, 0x2D4($sp)
    /* 173C8 80026BC8 D002B28F */  lw         $s2, 0x2D0($sp)
    /* 173CC 80026BCC CC02B18F */  lw         $s1, 0x2CC($sp)
    /* 173D0 80026BD0 C802B08F */  lw         $s0, 0x2C8($sp)
    /* 173D4 80026BD4 E802BD27 */  addiu      $sp, $sp, 0x2E8
    /* 173D8 80026BD8 0800E003 */  jr         $ra
    /* 173DC 80026BDC 00000000 */   nop
endlabel func_800269A0
