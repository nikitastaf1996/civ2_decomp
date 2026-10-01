.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C150C, 0x23C

glabel func_800C150C
    /* B1D0C 800C150C 90FDBD27 */  addiu      $sp, $sp, -0x270
    /* B1D10 800C1510 6802B0AF */  sw         $s0, 0x268($sp)
    /* B1D14 800C1514 2800B027 */  addiu      $s0, $sp, 0x28
    /* B1D18 800C1518 6C02BFAF */  sw         $ra, 0x26C($sp)
    /* B1D1C 800C151C 9AE0030C */  jal        func_800F8268
    /* B1D20 800C1520 21200002 */   addu      $a0, $s0, $zero
    /* B1D24 800C1524 EFE9030C */  jal        func_800FA7BC
    /* B1D28 800C1528 5400A427 */   addiu     $a0, $sp, 0x54
    /* B1D2C 800C152C 2C000424 */  addiu      $a0, $zero, 0x2C
    /* B1D30 800C1530 00400224 */  addiu      $v0, $zero, 0x4000
    /* B1D34 800C1534 C400A2A7 */  sh         $v0, 0xC4($sp)
    /* B1D38 800C1538 C600A2A7 */  sh         $v0, 0xC6($sp)
    /* B1D3C 800C153C 01000224 */  addiu      $v0, $zero, 0x1
    /* B1D40 800C1540 CA00A2A7 */  sh         $v0, 0xCA($sp)
    /* B1D44 800C1544 CC00A2A7 */  sh         $v0, 0xCC($sp)
    /* B1D48 800C1548 01000224 */  addiu      $v0, $zero, 0x1
    /* B1D4C 800C154C 6400A0AF */  sw         $zero, 0x64($sp)
    /* B1D50 800C1550 6800A0AF */  sw         $zero, 0x68($sp)
    /* B1D54 800C1554 6C00A0AF */  sw         $zero, 0x6C($sp)
    /* B1D58 800C1558 7000A0AF */  sw         $zero, 0x70($sp)
    /* B1D5C 800C155C 7400A0AF */  sw         $zero, 0x74($sp)
    /* B1D60 800C1560 7800A0AF */  sw         $zero, 0x78($sp)
    /* B1D64 800C1564 7C00A0AF */  sw         $zero, 0x7C($sp)
    /* B1D68 800C1568 8000A0AF */  sw         $zero, 0x80($sp)
    /* B1D6C 800C156C 8400A0AF */  sw         $zero, 0x84($sp)
    /* B1D70 800C1570 8800A0AF */  sw         $zero, 0x88($sp)
    /* B1D74 800C1574 8C00A0AF */  sw         $zero, 0x8C($sp)
    /* B1D78 800C1578 9000A0AF */  sw         $zero, 0x90($sp)
    /* B1D7C 800C157C 9400A0AF */  sw         $zero, 0x94($sp)
    /* B1D80 800C1580 9800A0AF */  sw         $zero, 0x98($sp)
    /* B1D84 800C1584 9C00A0AF */  sw         $zero, 0x9C($sp)
    /* B1D88 800C1588 A000A0AF */  sw         $zero, 0xA0($sp)
    /* B1D8C 800C158C A400A0AF */  sw         $zero, 0xA4($sp)
    /* B1D90 800C1590 A800A0AF */  sw         $zero, 0xA8($sp)
    /* B1D94 800C1594 AC00A0AF */  sw         $zero, 0xAC($sp)
    /* B1D98 800C1598 B000A0AF */  sw         $zero, 0xB0($sp)
    /* B1D9C 800C159C B400A0AF */  sw         $zero, 0xB4($sp)
    /* B1DA0 800C15A0 B800A0AF */  sw         $zero, 0xB8($sp)
    /* B1DA4 800C15A4 BC00A0AF */  sw         $zero, 0xBC($sp)
    /* B1DA8 800C15A8 C000A0A7 */  sh         $zero, 0xC0($sp)
    /* B1DAC 800C15AC C200A0A7 */  sh         $zero, 0xC2($sp)
    /* B1DB0 800C15B0 CE00A0A7 */  sh         $zero, 0xCE($sp)
    /* B1DB4 800C15B4 D000A0A7 */  sh         $zero, 0xD0($sp)
    /* B1DB8 800C15B8 C800A0A7 */  sh         $zero, 0xC8($sp)
    /* B1DBC 800C15BC D800A0AF */  sw         $zero, 0xD8($sp)
    /* B1DC0 800C15C0 DC00A0AF */  sw         $zero, 0xDC($sp)
    /* B1DC4 800C15C4 E400A2A3 */  sb         $v0, 0xE4($sp)
    /* B1DC8 800C15C8 0180023C */  lui        $v0, %hi(D_800138BC)
    /* B1DCC 800C15CC BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* B1DD0 800C15D0 E000A0AF */  sw         $zero, 0xE0($sp)
    /* B1DD4 800C15D4 5000A2AF */  sw         $v0, 0x50($sp)
    /* B1DD8 800C15D8 D800A0AF */  sw         $zero, 0xD8($sp)
    /* B1DDC 800C15DC E800A0AF */  sw         $zero, 0xE8($sp)
    /* B1DE0 800C15E0 3E82030C */  jal        __builtin_new
    /* B1DE4 800C15E4 5000A2AF */   sw        $v0, 0x50($sp)
    /* B1DE8 800C15E8 9AE0030C */  jal        func_800F8268
    /* B1DEC 800C15EC 21204000 */   addu      $a0, $v0, $zero
    /* B1DF0 800C15F0 21204000 */  addu       $a0, $v0, $zero
    /* B1DF4 800C15F4 33000524 */  addiu      $a1, $zero, 0x33
    /* B1DF8 800C15F8 0A000624 */  addiu      $a2, $zero, 0xA
    /* B1DFC 800C15FC 400B84AF */  sw         $a0, %gp_rel(D_80159018)($gp)
    /* B1E00 800C1600 44E3030C */  jal        func_800F8D10
    /* B1E04 800C1604 C0000724 */   addiu     $a3, $zero, 0xC0
    /* B1E08 800C1608 5802A427 */  addiu      $a0, $sp, 0x258
    /* B1E0C 800C160C 21280000 */  addu       $a1, $zero, $zero
    /* B1E10 800C1610 78000624 */  addiu      $a2, $zero, 0x78
    /* B1E14 800C1614 E8030724 */  addiu      $a3, $zero, 0x3E8
    /* B1E18 800C1618 400B838F */  lw         $v1, %gp_rel(D_80159018)($gp)
    /* B1E1C 800C161C 40010224 */  addiu      $v0, $zero, 0x140
    /* B1E20 800C1620 5C02A2A7 */  sh         $v0, 0x25C($sp)
    /* B1E24 800C1624 F0000224 */  addiu      $v0, $zero, 0xF0
    /* B1E28 800C1628 5802A0A7 */  sh         $zero, 0x258($sp)
    /* B1E2C 800C162C 5A02A0A7 */  sh         $zero, 0x25A($sp)
    /* B1E30 800C1630 5E02A2A7 */  sh         $v0, 0x25E($sp)
    /* B1E34 800C1634 7D1C040C */  jal        func_801071F4
    /* B1E38 800C1638 1000A3AF */   sw        $v1, 0x10($sp)
    /* B1E3C 800C163C B31E040C */  jal        func_80107ACC
    /* B1E40 800C1640 00000000 */   nop
    /* B1E44 800C1644 1680023C */  lui        $v0, %hi(D_8015894C)
    /* B1E48 800C1648 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* B1E4C 800C164C 00000000 */  nop
    /* B1E50 800C1650 5803448C */  lw         $a0, 0x358($v0)
    /* B1E54 800C1654 A63A030C */  jal        func_800CEA98
    /* B1E58 800C1658 00000000 */   nop
    /* B1E5C 800C165C 21200002 */  addu       $a0, $s0, $zero
    /* B1E60 800C1660 21284000 */  addu       $a1, $v0, $zero
    /* B1E64 800C1664 0D000624 */  addiu      $a2, $zero, 0xD
    /* B1E68 800C1668 21380000 */  addu       $a3, $zero, $zero
    /* B1E6C 800C166C 40010224 */  addiu      $v0, $zero, 0x140
    /* B1E70 800C1670 1400A2AF */  sw         $v0, 0x14($sp)
    /* B1E74 800C1674 F0000224 */  addiu      $v0, $zero, 0xF0
    /* B1E78 800C1678 1000A0AF */  sw         $zero, 0x10($sp)
    /* B1E7C 800C167C 1800A2AF */  sw         $v0, 0x18($sp)
    /* B1E80 800C1680 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* B1E84 800C1684 2000A0AF */  sw         $zero, 0x20($sp)
    /* B1E88 800C1688 F84A020C */  jal        func_80092BE0
    /* B1E8C 800C168C 2400A0AF */   sw        $zero, 0x24($sp)
    /* B1E90 800C1690 0C80053C */  lui        $a1, %hi(func_800C0C80)
    /* B1E94 800C1694 800CA524 */  addiu      $a1, $a1, %lo(func_800C0C80)
    /* B1E98 800C1698 82DF030C */  jal        func_800F7E08
    /* B1E9C 800C169C 21200002 */   addu      $a0, $s0, $zero
    /* B1EA0 800C16A0 0C80023C */  lui        $v0, %hi(func_800C14B8)
    /* B1EA4 800C16A4 B8144224 */  addiu      $v0, $v0, %lo(func_800C14B8)
    /* B1EA8 800C16A8 8C00A2AF */  sw         $v0, 0x8C($sp)
    /* B1EAC 800C16AC 440B90AF */  sw         $s0, %gp_rel(D_8015901C)($gp)
  .L800C16B0:
    /* B1EB0 800C16B0 440B828F */  lw         $v0, %gp_rel(D_8015901C)($gp)
    /* B1EB4 800C16B4 00000000 */  nop
    /* B1EB8 800C16B8 1C00428C */  lw         $v0, 0x1C($v0)
    /* B1EBC 800C16BC 00000000 */  nop
    /* B1EC0 800C16C0 05004010 */  beqz       $v0, .L800C16D8
    /* B1EC4 800C16C4 6002A427 */   addiu     $a0, $sp, 0x260
    /* B1EC8 800C16C8 1E12040C */  jal        func_80104878
    /* B1ECC 800C16CC 00000000 */   nop
    /* B1ED0 800C16D0 AC050308 */  j          .L800C16B0
    /* B1ED4 800C16D4 00000000 */   nop
  .L800C16D8:
    /* B1ED8 800C16D8 21280000 */  addu       $a1, $zero, $zero
    /* B1EDC 800C16DC 78000624 */  addiu      $a2, $zero, 0x78
    /* B1EE0 800C16E0 E8030724 */  addiu      $a3, $zero, 0x3E8
    /* B1EE4 800C16E4 400B838F */  lw         $v1, %gp_rel(D_80159018)($gp)
    /* B1EE8 800C16E8 40010224 */  addiu      $v0, $zero, 0x140
    /* B1EEC 800C16EC 6402A2A7 */  sh         $v0, 0x264($sp)
    /* B1EF0 800C16F0 F0000224 */  addiu      $v0, $zero, 0xF0
    /* B1EF4 800C16F4 6002A0A7 */  sh         $zero, 0x260($sp)
    /* B1EF8 800C16F8 6202A0A7 */  sh         $zero, 0x262($sp)
    /* B1EFC 800C16FC 6602A2A7 */  sh         $v0, 0x266($sp)
    /* B1F00 800C1700 011D040C */  jal        func_80107404
    /* B1F04 800C1704 1000A3AF */   sw        $v1, 0x10($sp)
    /* B1F08 800C1708 B31E040C */  jal        func_80107ACC
    /* B1F0C 800C170C 00000000 */   nop
    /* B1F10 800C1710 400B848F */  lw         $a0, %gp_rel(D_80159018)($gp)
    /* B1F14 800C1714 00000000 */  nop
    /* B1F18 800C1718 03008010 */  beqz       $a0, .L800C1728
    /* B1F1C 800C171C 00000000 */   nop
    /* B1F20 800C1720 4CE1030C */  jal        func_800F8530
    /* B1F24 800C1724 03000524 */   addiu     $a1, $zero, 0x3
  .L800C1728:
    /* B1F28 800C1728 2800A427 */  addiu      $a0, $sp, 0x28
    /* B1F2C 800C172C D74A020C */  jal        func_80092B5C
    /* B1F30 800C1730 02000524 */   addiu     $a1, $zero, 0x2
    /* B1F34 800C1734 6C02BF8F */  lw         $ra, 0x26C($sp)
    /* B1F38 800C1738 6802B08F */  lw         $s0, 0x268($sp)
    /* B1F3C 800C173C 7002BD27 */  addiu      $sp, $sp, 0x270
    /* B1F40 800C1740 0800E003 */  jr         $ra
    /* B1F44 800C1744 00000000 */   nop
endlabel func_800C150C
