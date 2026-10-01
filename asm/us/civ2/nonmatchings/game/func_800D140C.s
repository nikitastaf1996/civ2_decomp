.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D140C, 0x18C

glabel func_800D140C
    /* C1C0C 800D140C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C1C10 800D1410 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* C1C14 800D1414 1800B2AF */  sw         $s2, 0x18($sp)
    /* C1C18 800D1418 1400B1AF */  sw         $s1, 0x14($sp)
    /* C1C1C 800D141C 1000B0AF */  sw         $s0, 0x10($sp)
    /* C1C20 800D1420 21888000 */  addu       $s1, $a0, $zero
    /* C1C24 800D1424 2190A000 */  addu       $s2, $a1, $zero
    /* C1C28 800D1428 1280043C */  lui        $a0, %hi(D_80122AA4)
    /* C1C2C 800D142C A42A848C */  lw         $a0, %lo(D_80122AA4)($a0)
    /* C1C30 800D1430 0C25020C */  jal        func_80089430
    /* C1C34 800D1434 FFFF1024 */   addiu     $s0, $zero, -0x1
    /* C1C38 800D1438 1680023C */  lui        $v0, %hi(D_80158864)
    /* C1C3C 800D143C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C1C40 800D1440 00000000 */  nop
    /* C1C44 800D1444 08004380 */  lb         $v1, 0x8($v0)
    /* C1C48 800D1448 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* C1C4C 800D144C B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* C1C50 800D1450 00000000 */  nop
    /* C1C54 800D1454 06006210 */  beq        $v1, $v0, .L800D1470
    /* C1C58 800D1458 00000000 */   nop
    /* C1C5C 800D145C 1280023C */  lui        $v0, %hi(D_8011A271)
    /* C1C60 800D1460 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* C1C64 800D1464 00000000 */  nop
    /* C1C68 800D1468 44004010 */  beqz       $v0, .L800D157C
    /* C1C6C 800D146C 00000000 */   nop
  .L800D1470:
    /* C1C70 800D1470 0C63000C */  jal        func_80018C30
    /* C1C74 800D1474 21200000 */   addu      $a0, $zero, $zero
    /* C1C78 800D1478 21202002 */  addu       $a0, $s1, $zero
    /* C1C7C 800D147C 21284002 */  addu       $a1, $s2, $zero
    /* C1C80 800D1480 21180000 */  addu       $v1, $zero, $zero
  .L800D1484:
    /* C1C84 800D1484 1280013C */  lui        $at, %hi(D_8011AC3C)
    /* C1C88 800D1488 21082300 */  addu       $at, $at, $v1
    /* C1C8C 800D148C 3CAC2280 */  lb         $v0, %lo(D_8011AC3C)($at)
    /* C1C90 800D1490 00000000 */  nop
    /* C1C94 800D1494 07008214 */  bne        $a0, $v0, .L800D14B4
    /* C1C98 800D1498 00000000 */   nop
    /* C1C9C 800D149C 1280013C */  lui        $at, %hi(D_8011AC6C)
    /* C1CA0 800D14A0 21082300 */  addu       $at, $at, $v1
    /* C1CA4 800D14A4 6CAC2280 */  lb         $v0, %lo(D_8011AC6C)($at)
    /* C1CA8 800D14A8 00000000 */  nop
    /* C1CAC 800D14AC 0B00A210 */  beq        $a1, $v0, .L800D14DC
    /* C1CB0 800D14B0 00000000 */   nop
  .L800D14B4:
    /* C1CB4 800D14B4 01006324 */  addiu      $v1, $v1, 0x1
    /* C1CB8 800D14B8 15006228 */  slti       $v0, $v1, 0x15
    /* C1CBC 800D14BC F1FF4014 */  bnez       $v0, .L800D1484
    /* C1CC0 800D14C0 00000000 */   nop
  .L800D14C4:
    /* C1CC4 800D14C4 2D000006 */  bltz       $s0, .L800D157C
    /* C1CC8 800D14C8 14000224 */   addiu     $v0, $zero, 0x14
    /* C1CCC 800D14CC 1C000212 */  beq        $s0, $v0, .L800D1540
    /* C1CD0 800D14D0 00000000 */   nop
    /* C1CD4 800D14D4 39450308 */  j          .L800D14E4
    /* C1CD8 800D14D8 00000000 */   nop
  .L800D14DC:
    /* C1CDC 800D14DC 31450308 */  j          .L800D14C4
    /* C1CE0 800D14E0 21806000 */   addu      $s0, $v1, $zero
  .L800D14E4:
    /* C1CE4 800D14E4 1680043C */  lui        $a0, %hi(D_80158860)
    /* C1CE8 800D14E8 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* C1CEC 800D14EC AB52000C */  jal        func_80014AAC
    /* C1CF0 800D14F0 21280002 */   addu      $a1, $s0, $zero
    /* C1CF4 800D14F4 07004010 */  beqz       $v0, .L800D1514
    /* C1CF8 800D14F8 21280002 */   addu      $a1, $s0, $zero
    /* C1CFC 800D14FC 1680043C */  lui        $a0, %hi(D_80158860)
    /* C1D00 800D1500 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* C1D04 800D1504 B952000C */  jal        func_80014AE4
    /* C1D08 800D1508 21300000 */   addu      $a2, $zero, $zero
    /* C1D0C 800D150C 59450308 */  j          .L800D1564
    /* C1D10 800D1510 01000424 */   addiu     $a0, $zero, 0x1
  .L800D1514:
    /* C1D14 800D1514 1180013C */  lui        $at, %hi(D_8010BA20)
    /* C1D18 800D1518 21083000 */  addu       $at, $at, $s0
    /* C1D1C 800D151C 20BA2290 */  lbu        $v0, %lo(D_8010BA20)($at)
    /* C1D20 800D1520 00000000 */  nop
    /* C1D24 800D1524 15004014 */  bnez       $v0, .L800D157C
    /* C1D28 800D1528 00000000 */   nop
    /* C1D2C 800D152C 1680023C */  lui        $v0, %hi(D_8015858C)
    /* C1D30 800D1530 8C85428C */  lw         $v0, %lo(D_8015858C)($v0)
    /* C1D34 800D1534 00000000 */  nop
    /* C1D38 800D1538 05004014 */  bnez       $v0, .L800D1550
    /* C1D3C 800D153C 21280002 */   addu      $a1, $s0, $zero
  .L800D1540:
    /* C1D40 800D1540 1680023C */  lui        $v0, %hi(D_80158864)
    /* C1D44 800D1544 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C1D48 800D1548 5B450308 */  j          .L800D156C
    /* C1D4C 800D154C 340040AC */   sw        $zero, 0x34($v0)
  .L800D1550:
    /* C1D50 800D1550 1680043C */  lui        $a0, %hi(D_80158860)
    /* C1D54 800D1554 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* C1D58 800D1558 B952000C */  jal        func_80014AE4
    /* C1D5C 800D155C 01000624 */   addiu     $a2, $zero, 0x1
    /* C1D60 800D1560 FFFF0424 */  addiu      $a0, $zero, -0x1
  .L800D1564:
    /* C1D64 800D1564 BD5A000C */  jal        func_80016AF4
    /* C1D68 800D1568 00000000 */   nop
  .L800D156C:
    /* C1D6C 800D156C 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* C1D70 800D1570 F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* C1D74 800D1574 B042030C */  jal        func_800D0AC0
    /* C1D78 800D1578 21280000 */   addu      $a1, $zero, $zero
  .L800D157C:
    /* C1D7C 800D157C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* C1D80 800D1580 1800B28F */  lw         $s2, 0x18($sp)
    /* C1D84 800D1584 1400B18F */  lw         $s1, 0x14($sp)
    /* C1D88 800D1588 1000B08F */  lw         $s0, 0x10($sp)
    /* C1D8C 800D158C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C1D90 800D1590 0800E003 */  jr         $ra
    /* C1D94 800D1594 00000000 */   nop
endlabel func_800D140C
