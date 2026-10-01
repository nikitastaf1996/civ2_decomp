.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B0B94, 0x370

glabel func_800B0B94
    /* A1394 800B0B94 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* A1398 800B0B98 4000BFAF */  sw         $ra, 0x40($sp)
    /* A139C 800B0B9C 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* A13A0 800B0BA0 3800B6AF */  sw         $s6, 0x38($sp)
    /* A13A4 800B0BA4 3400B5AF */  sw         $s5, 0x34($sp)
    /* A13A8 800B0BA8 3000B4AF */  sw         $s4, 0x30($sp)
    /* A13AC 800B0BAC 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* A13B0 800B0BB0 2800B2AF */  sw         $s2, 0x28($sp)
    /* A13B4 800B0BB4 2400B1AF */  sw         $s1, 0x24($sp)
    /* A13B8 800B0BB8 2000B0AF */  sw         $s0, 0x20($sp)
    /* A13BC 800B0BBC 21988000 */  addu       $s3, $a0, $zero
    /* A13C0 800B0BC0 21A0A000 */  addu       $s4, $a1, $zero
    /* A13C4 800B0BC4 21A8C000 */  addu       $s5, $a2, $zero
    /* A13C8 800B0BC8 21B0E000 */  addu       $s6, $a3, $zero
    /* A13CC 800B0BCC 21800000 */  addu       $s0, $zero, $zero
    /* A13D0 800B0BD0 40101300 */  sll        $v0, $s3, 1
    /* A13D4 800B0BD4 21105300 */  addu       $v0, $v0, $s3
    /* A13D8 800B0BD8 80100200 */  sll        $v0, $v0, 2
    /* A13DC 800B0BDC 23105300 */  subu       $v0, $v0, $s3
    /* A13E0 800B0BE0 00110200 */  sll        $v0, $v0, 4
    /* A13E4 800B0BE4 23105300 */  subu       $v0, $v0, $s3
    /* A13E8 800B0BE8 C0300200 */  sll        $a2, $v0, 3
    /* A13EC 800B0BEC 00161600 */  sll        $v0, $s6, 24
    /* A13F0 800B0BF0 032E0200 */  sra        $a1, $v0, 24
    /* A13F4 800B0BF4 5800B78F */  lw         $s7, 0x58($sp)
    /* A13F8 800B0BF8 5800A483 */  lb         $a0, 0x58($sp)
    /* A13FC 800B0BFC 40101000 */  sll        $v0, $s0, 1
  .L800B0C00:
    /* A1400 800B0C00 21105000 */  addu       $v0, $v0, $s0
    /* A1404 800B0C04 40100200 */  sll        $v0, $v0, 1
    /* A1408 800B0C08 21184600 */  addu       $v1, $v0, $a2
    /* A140C 800B0C0C 1180013C */  lui        $at, %hi(D_80117A88)
    /* A1410 800B0C10 21082300 */  addu       $at, $at, $v1
    /* A1414 800B0C14 887A2284 */  lh         $v0, %lo(D_80117A88)($at)
    /* A1418 800B0C18 00000000 */  nop
    /* A141C 800B0C1C 14005414 */  bne        $v0, $s4, .L800B0C70
    /* A1420 800B0C20 00000000 */   nop
    /* A1424 800B0C24 1180013C */  lui        $at, %hi(D_80117A8A)
    /* A1428 800B0C28 21082300 */  addu       $at, $at, $v1
    /* A142C 800B0C2C 8A7A2284 */  lh         $v0, %lo(D_80117A8A)($at)
    /* A1430 800B0C30 00000000 */  nop
    /* A1434 800B0C34 0E005514 */  bne        $v0, $s5, .L800B0C70
    /* A1438 800B0C38 00000000 */   nop
    /* A143C 800B0C3C 1180013C */  lui        $at, %hi(D_80117A8C)
    /* A1440 800B0C40 21082300 */  addu       $at, $at, $v1
    /* A1444 800B0C44 8C7A2280 */  lb         $v0, %lo(D_80117A8C)($at)
    /* A1448 800B0C48 00000000 */  nop
    /* A144C 800B0C4C 08004514 */  bne        $v0, $a1, .L800B0C70
    /* A1450 800B0C50 00000000 */   nop
    /* A1454 800B0C54 1180013C */  lui        $at, %hi(D_80117A8D)
    /* A1458 800B0C58 21082300 */  addu       $at, $at, $v1
    /* A145C 800B0C5C 8D7A2280 */  lb         $v0, %lo(D_80117A8D)($at)
    /* A1460 800B0C60 00000000 */  nop
    /* A1464 800B0C64 2A104400 */  slt        $v0, $v0, $a0
    /* A1468 800B0C68 9A004010 */  beqz       $v0, .L800B0ED4
    /* A146C 800B0C6C 00000000 */   nop
  .L800B0C70:
    /* A1470 800B0C70 01001026 */  addiu      $s0, $s0, 0x1
    /* A1474 800B0C74 3000022A */  slti       $v0, $s0, 0x30
    /* A1478 800B0C78 E1FF4014 */  bnez       $v0, .L800B0C00
    /* A147C 800B0C7C 40101000 */   sll       $v0, $s0, 1
    /* A1480 800B0C80 1280033C */  lui        $v1, %hi(D_8011A26F)
    /* A1484 800B0C84 6FA26324 */  addiu      $v1, $v1, %lo(D_8011A26F)
    /* A1488 800B0C88 00006280 */  lb         $v0, 0x0($v1)
    /* A148C 800B0C8C 00000000 */  nop
    /* A1490 800B0C90 56006216 */  bne        $s3, $v0, .L800B0DEC
    /* A1494 800B0C94 00000000 */   nop
    /* A1498 800B0C98 06006290 */  lbu        $v0, 0x6($v1)
    /* A149C 800B0C9C 00000000 */  nop
    /* A14A0 800B0CA0 07106202 */  srav       $v0, $v0, $s3
    /* A14A4 800B0CA4 01004230 */  andi       $v0, $v0, 0x1
    /* A14A8 800B0CA8 50004014 */  bnez       $v0, .L800B0DEC
    /* A14AC 800B0CAC FEFFC226 */   addiu     $v0, $s6, -0x2
    /* A14B0 800B0CB0 0200422C */  sltiu      $v0, $v0, 0x2
    /* A14B4 800B0CB4 4D004010 */  beqz       $v0, .L800B0DEC
    /* A14B8 800B0CB8 00000000 */   nop
    /* A14BC 800B0CBC 11006284 */  lh         $v0, 0x11($v1)
    /* A14C0 800B0CC0 00000000 */  nop
    /* A14C4 800B0CC4 49004018 */  blez       $v0, .L800B0DEC
    /* A14C8 800B0CC8 21900000 */   addu      $s2, $zero, $zero
    /* A14CC 800B0CCC 40101200 */  sll        $v0, $s2, 1
  .L800B0CD0:
    /* A14D0 800B0CD0 21105200 */  addu       $v0, $v0, $s2
    /* A14D4 800B0CD4 80100200 */  sll        $v0, $v0, 2
    /* A14D8 800B0CD8 21105200 */  addu       $v0, $v0, $s2
    /* A14DC 800B0CDC 40880200 */  sll        $s1, $v0, 1
    /* A14E0 800B0CE0 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* A14E4 800B0CE4 21083100 */  addu       $at, $at, $s1
    /* A14E8 800B0CE8 BBD62280 */  lb         $v0, %lo(D_8010D6BB)($at)
    /* A14EC 800B0CEC 00000000 */  nop
    /* A14F0 800B0CF0 37005314 */  bne        $v0, $s3, .L800B0DD0
    /* A14F4 800B0CF4 00000000 */   nop
    /* A14F8 800B0CF8 EDF9010C */  jal        func_8007E7B4
    /* A14FC 800B0CFC 21204002 */   addu      $a0, $s2, $zero
    /* A1500 800B0D00 33004010 */  beqz       $v0, .L800B0DD0
    /* A1504 800B0D04 00000000 */   nop
    /* A1508 800B0D08 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* A150C 800B0D0C 21083100 */  addu       $at, $at, $s1
    /* A1510 800B0D10 BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* A1514 800B0D14 00000000 */  nop
    /* A1518 800B0D18 80180200 */  sll        $v1, $v0, 2
    /* A151C 800B0D1C 21186200 */  addu       $v1, $v1, $v0
    /* A1520 800B0D20 80180300 */  sll        $v1, $v1, 2
    /* A1524 800B0D24 1180013C */  lui        $at, %hi(D_8010D28E)
    /* A1528 800B0D28 21082300 */  addu       $at, $at, $v1
    /* A152C 800B0D2C 8ED22280 */  lb         $v0, %lo(D_8010D28E)($at)
    /* A1530 800B0D30 00000000 */  nop
    /* A1534 800B0D34 2600C216 */  bne        $s6, $v0, .L800B0DD0
    /* A1538 800B0D38 00000000 */   nop
    /* A153C 800B0D3C 21208002 */  addu       $a0, $s4, $zero
    /* A1540 800B0D40 2561020C */  jal        func_80098494
    /* A1544 800B0D44 2128A002 */   addu      $a1, $s5, $zero
    /* A1548 800B0D48 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* A154C 800B0D4C 21083100 */  addu       $at, $at, $s1
    /* A1550 800B0D50 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* A1554 800B0D54 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* A1558 800B0D58 21083100 */  addu       $at, $at, $s1
    /* A155C 800B0D5C B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* A1560 800B0D60 2561020C */  jal        func_80098494
    /* A1564 800B0D64 21804000 */   addu      $s0, $v0, $zero
    /* A1568 800B0D68 19000216 */  bne        $s0, $v0, .L800B0DD0
    /* A156C 800B0D6C 00000000 */   nop
    /* A1570 800B0D70 21208002 */  addu       $a0, $s4, $zero
    /* A1574 800B0D74 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* A1578 800B0D78 21083100 */  addu       $at, $at, $s1
    /* A157C 800B0D7C B4D62684 */  lh         $a2, %lo(D_8010D6B4)($at)
    /* A1580 800B0D80 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* A1584 800B0D84 21083100 */  addu       $at, $at, $s1
    /* A1588 800B0D88 B6D62784 */  lh         $a3, %lo(D_8010D6B6)($at)
    /* A158C 800B0D8C A73B030C */  jal        func_800CEE9C
    /* A1590 800B0D90 2128A002 */   addu      $a1, $s5, $zero
    /* A1594 800B0D94 40800200 */  sll        $s0, $v0, 1
    /* A1598 800B0D98 A8ED010C */  jal        func_8007B6A0
    /* A159C 800B0D9C 21204002 */   addu      $a0, $s2, $zero
    /* A15A0 800B0DA0 2A105000 */  slt        $v0, $v0, $s0
    /* A15A4 800B0DA4 0A004014 */  bnez       $v0, .L800B0DD0
    /* A15A8 800B0DA8 0B000224 */   addiu     $v0, $zero, 0xB
    /* A15AC 800B0DAC 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* A15B0 800B0DB0 21083100 */  addu       $at, $at, $s1
    /* A15B4 800B0DB4 C3D622A0 */  sb         $v0, %lo(D_8010D6C3)($at)
    /* A15B8 800B0DB8 1180013C */  lui        $at, %hi(D_8010D6C6)
    /* A15BC 800B0DBC 21083100 */  addu       $at, $at, $s1
    /* A15C0 800B0DC0 C6D634A4 */  sh         $s4, %lo(D_8010D6C6)($at)
    /* A15C4 800B0DC4 1180013C */  lui        $at, %hi(D_8010D6C8)
    /* A15C8 800B0DC8 21083100 */  addu       $at, $at, $s1
    /* A15CC 800B0DCC C8D635A4 */  sh         $s5, %lo(D_8010D6C8)($at)
  .L800B0DD0:
    /* A15D0 800B0DD0 01005226 */  addiu      $s2, $s2, 0x1
    /* A15D4 800B0DD4 1280023C */  lui        $v0, %hi(D_8011A280)
    /* A15D8 800B0DD8 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* A15DC 800B0DDC 00000000 */  nop
    /* A15E0 800B0DE0 2A104202 */  slt        $v0, $s2, $v0
    /* A15E4 800B0DE4 BAFF4014 */  bnez       $v0, .L800B0CD0
    /* A15E8 800B0DE8 40101200 */   sll       $v0, $s2, 1
  .L800B0DEC:
    /* A15EC 800B0DEC 21800000 */  addu       $s0, $zero, $zero
    /* A15F0 800B0DF0 40101300 */  sll        $v0, $s3, 1
    /* A15F4 800B0DF4 21105300 */  addu       $v0, $v0, $s3
    /* A15F8 800B0DF8 80100200 */  sll        $v0, $v0, 2
    /* A15FC 800B0DFC 23105300 */  subu       $v0, $v0, $s3
    /* A1600 800B0E00 00110200 */  sll        $v0, $v0, 4
    /* A1604 800B0E04 23105300 */  subu       $v0, $v0, $s3
    /* A1608 800B0E08 C0280200 */  sll        $a1, $v0, 3
    /* A160C 800B0E0C 40101300 */  sll        $v0, $s3, 1
    /* A1610 800B0E10 21105300 */  addu       $v0, $v0, $s3
    /* A1614 800B0E14 80880200 */  sll        $s1, $v0, 2
    /* A1618 800B0E18 23883302 */  subu       $s1, $s1, $s3
    /* A161C 800B0E1C 40101000 */  sll        $v0, $s0, 1
  .L800B0E20:
    /* A1620 800B0E20 21105000 */  addu       $v0, $v0, $s0
    /* A1624 800B0E24 40100200 */  sll        $v0, $v0, 1
    /* A1628 800B0E28 21204500 */  addu       $a0, $v0, $a1
    /* A162C 800B0E2C 1180013C */  lui        $at, %hi(D_80117A8D)
    /* A1630 800B0E30 21082400 */  addu       $at, $at, $a0
    /* A1634 800B0E34 8D7A2380 */  lb         $v1, %lo(D_80117A8D)($at)
    /* A1638 800B0E38 00161700 */  sll        $v0, $s7, 24
    /* A163C 800B0E3C 03160200 */  sra        $v0, $v0, 24
    /* A1640 800B0E40 2A186200 */  slt        $v1, $v1, $v0
    /* A1644 800B0E44 07006014 */  bnez       $v1, .L800B0E64
    /* A1648 800B0E48 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A164C 800B0E4C 1180013C */  lui        $at, %hi(D_80117A8C)
    /* A1650 800B0E50 21082400 */  addu       $at, $at, $a0
    /* A1654 800B0E54 8C7A2380 */  lb         $v1, %lo(D_80117A8C)($at)
    /* A1658 800B0E58 00000000 */  nop
    /* A165C 800B0E5C 19006214 */  bne        $v1, $v0, .L800B0EC4
    /* A1660 800B0E60 00000000 */   nop
  .L800B0E64:
    /* A1664 800B0E64 21206002 */  addu       $a0, $s3, $zero
    /* A1668 800B0E68 33C2020C */  jal        func_800B08CC
    /* A166C 800B0E6C 21280002 */   addu      $a1, $s0, $zero
    /* A1670 800B0E70 40181000 */  sll        $v1, $s0, 1
    /* A1674 800B0E74 21187000 */  addu       $v1, $v1, $s0
    /* A1678 800B0E78 40180300 */  sll        $v1, $v1, 1
    /* A167C 800B0E7C 00111100 */  sll        $v0, $s1, 4
    /* A1680 800B0E80 23105300 */  subu       $v0, $v0, $s3
    /* A1684 800B0E84 C0100200 */  sll        $v0, $v0, 3
    /* A1688 800B0E88 21186200 */  addu       $v1, $v1, $v0
    /* A168C 800B0E8C 1180013C */  lui        $at, %hi(D_80117A88)
    /* A1690 800B0E90 21082300 */  addu       $at, $at, $v1
    /* A1694 800B0E94 887A34A4 */  sh         $s4, %lo(D_80117A88)($at)
    /* A1698 800B0E98 1180013C */  lui        $at, %hi(D_80117A8A)
    /* A169C 800B0E9C 21082300 */  addu       $at, $at, $v1
    /* A16A0 800B0EA0 8A7A35A4 */  sh         $s5, %lo(D_80117A8A)($at)
    /* A16A4 800B0EA4 1180013C */  lui        $at, %hi(D_80117A8C)
    /* A16A8 800B0EA8 21082300 */  addu       $at, $at, $v1
    /* A16AC 800B0EAC 8C7A36A0 */  sb         $s6, %lo(D_80117A8C)($at)
    /* A16B0 800B0EB0 1180013C */  lui        $at, %hi(D_80117A8D)
    /* A16B4 800B0EB4 21082300 */  addu       $at, $at, $v1
    /* A16B8 800B0EB8 8D7A37A0 */  sb         $s7, %lo(D_80117A8D)($at)
    /* A16BC 800B0EBC B5C30208 */  j          .L800B0ED4
    /* A16C0 800B0EC0 00000000 */   nop
  .L800B0EC4:
    /* A16C4 800B0EC4 01001026 */  addiu      $s0, $s0, 0x1
    /* A16C8 800B0EC8 3000022A */  slti       $v0, $s0, 0x30
    /* A16CC 800B0ECC D4FF4014 */  bnez       $v0, .L800B0E20
    /* A16D0 800B0ED0 40101000 */   sll       $v0, $s0, 1
  .L800B0ED4:
    /* A16D4 800B0ED4 4000BF8F */  lw         $ra, 0x40($sp)
    /* A16D8 800B0ED8 3C00B78F */  lw         $s7, 0x3C($sp)
    /* A16DC 800B0EDC 3800B68F */  lw         $s6, 0x38($sp)
    /* A16E0 800B0EE0 3400B58F */  lw         $s5, 0x34($sp)
    /* A16E4 800B0EE4 3000B48F */  lw         $s4, 0x30($sp)
    /* A16E8 800B0EE8 2C00B38F */  lw         $s3, 0x2C($sp)
    /* A16EC 800B0EEC 2800B28F */  lw         $s2, 0x28($sp)
    /* A16F0 800B0EF0 2400B18F */  lw         $s1, 0x24($sp)
    /* A16F4 800B0EF4 2000B08F */  lw         $s0, 0x20($sp)
    /* A16F8 800B0EF8 4800BD27 */  addiu      $sp, $sp, 0x48
    /* A16FC 800B0EFC 0800E003 */  jr         $ra
    /* A1700 800B0F00 00000000 */   nop
endlabel func_800B0B94
