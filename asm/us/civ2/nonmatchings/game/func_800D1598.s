.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D1598, 0x1538

glabel func_800D1598
    /* C1D98 800D1598 20FFBD27 */  addiu      $sp, $sp, -0xE0
    /* C1D9C 800D159C DC00BFAF */  sw         $ra, 0xDC($sp)
    /* C1DA0 800D15A0 D800BEAF */  sw         $fp, 0xD8($sp)
    /* C1DA4 800D15A4 D400B7AF */  sw         $s7, 0xD4($sp)
    /* C1DA8 800D15A8 D000B6AF */  sw         $s6, 0xD0($sp)
    /* C1DAC 800D15AC CC00B5AF */  sw         $s5, 0xCC($sp)
    /* C1DB0 800D15B0 C800B4AF */  sw         $s4, 0xC8($sp)
    /* C1DB4 800D15B4 C400B3AF */  sw         $s3, 0xC4($sp)
    /* C1DB8 800D15B8 C000B2AF */  sw         $s2, 0xC0($sp)
    /* C1DBC 800D15BC BC00B1AF */  sw         $s1, 0xBC($sp)
    /* C1DC0 800D15C0 B800B0AF */  sw         $s0, 0xB8($sp)
    /* C1DC4 800D15C4 9000A4AF */  sw         $a0, 0x90($sp)
    /* C1DC8 800D15C8 F40E9184 */  lh         $s1, 0xEF4($a0)
    /* C1DCC 800D15CC F60E9384 */  lh         $s3, 0xEF6($a0)
    /* C1DD0 800D15D0 5000B227 */  addiu      $s2, $sp, 0x50
    /* C1DD4 800D15D4 C59E030C */  jal        SetLineF2
    /* C1DD8 800D15D8 21204002 */   addu      $a0, $s2, $zero
    /* C1DDC 800D15DC 3000B027 */  addiu      $s0, $sp, 0x30
    /* C1DE0 800D15E0 CD9E030C */  jal        SetLineF4
    /* C1DE4 800D15E4 21200002 */   addu      $a0, $s0, $zero
    /* C1DE8 800D15E8 3400A0A3 */  sb         $zero, 0x34($sp)
    /* C1DEC 800D15EC 3500A0A3 */  sb         $zero, 0x35($sp)
    /* C1DF0 800D15F0 3600A0A3 */  sb         $zero, 0x36($sp)
    /* C1DF4 800D15F4 5400A0A3 */  sb         $zero, 0x54($sp)
    /* C1DF8 800D15F8 5500A0A3 */  sb         $zero, 0x55($sp)
    /* C1DFC 800D15FC 5600A0A3 */  sb         $zero, 0x56($sp)
    /* C1E00 800D1600 21A02002 */  addu       $s4, $s1, $zero
    /* C1E04 800D1604 FDFF2326 */  addiu      $v1, $s1, -0x3
    /* C1E08 800D1608 3800A3A7 */  sh         $v1, 0x38($sp)
    /* C1E0C 800D160C 0D006426 */  addiu      $a0, $s3, 0xD
    /* C1E10 800D1610 3A00A4A7 */  sh         $a0, 0x3A($sp)
    /* C1E14 800D1614 82002226 */  addiu      $v0, $s1, 0x82
    /* C1E18 800D1618 3C00A2A7 */  sh         $v0, 0x3C($sp)
    /* C1E1C 800D161C 3E00A4A7 */  sh         $a0, 0x3E($sp)
    /* C1E20 800D1620 4000A2A7 */  sh         $v0, 0x40($sp)
    /* C1E24 800D1624 52006226 */  addiu      $v0, $s3, 0x52
    /* C1E28 800D1628 4200A2A7 */  sh         $v0, 0x42($sp)
    /* C1E2C 800D162C 4400A3A7 */  sh         $v1, 0x44($sp)
    /* C1E30 800D1630 4600A2A7 */  sh         $v0, 0x46($sp)
    /* C1E34 800D1634 5800A3A7 */  sh         $v1, 0x58($sp)
    /* C1E38 800D1638 5A00A4A7 */  sh         $a0, 0x5A($sp)
    /* C1E3C 800D163C 5C00A3A7 */  sh         $v1, 0x5C($sp)
    /* C1E40 800D1640 5E00A2A7 */  sh         $v0, 0x5E($sp)
    /* C1E44 800D1644 928E030C */  jal        DrawPrim
    /* C1E48 800D1648 21200002 */   addu      $a0, $s0, $zero
    /* C1E4C 800D164C 928E030C */  jal        DrawPrim
    /* C1E50 800D1650 21204002 */   addu      $a0, $s2, $zero
    /* C1E54 800D1654 2C8D030C */  jal        DrawSync
    /* C1E58 800D1658 21200000 */   addu      $a0, $zero, $zero
    /* C1E5C 800D165C 3800A297 */  lhu        $v0, 0x38($sp)
    /* C1E60 800D1660 00000000 */  nop
    /* C1E64 800D1664 01004224 */  addiu      $v0, $v0, 0x1
    /* C1E68 800D1668 5C00A2A7 */  sh         $v0, 0x5C($sp)
    /* C1E6C 800D166C 5800A2A7 */  sh         $v0, 0x58($sp)
    /* C1E70 800D1670 4400A2A7 */  sh         $v0, 0x44($sp)
    /* C1E74 800D1674 3800A2A7 */  sh         $v0, 0x38($sp)
    /* C1E78 800D1678 3A00A297 */  lhu        $v0, 0x3A($sp)
    /* C1E7C 800D167C 00000000 */  nop
    /* C1E80 800D1680 01004224 */  addiu      $v0, $v0, 0x1
    /* C1E84 800D1684 5A00A2A7 */  sh         $v0, 0x5A($sp)
    /* C1E88 800D1688 3E00A2A7 */  sh         $v0, 0x3E($sp)
    /* C1E8C 800D168C 3A00A2A7 */  sh         $v0, 0x3A($sp)
    /* C1E90 800D1690 3C00A297 */  lhu        $v0, 0x3C($sp)
    /* C1E94 800D1694 00000000 */  nop
    /* C1E98 800D1698 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* C1E9C 800D169C 4000A2A7 */  sh         $v0, 0x40($sp)
    /* C1EA0 800D16A0 3C00A2A7 */  sh         $v0, 0x3C($sp)
    /* C1EA4 800D16A4 4200A297 */  lhu        $v0, 0x42($sp)
    /* C1EA8 800D16A8 00000000 */  nop
    /* C1EAC 800D16AC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* C1EB0 800D16B0 5E00A2A7 */  sh         $v0, 0x5E($sp)
    /* C1EB4 800D16B4 4600A2A7 */  sh         $v0, 0x46($sp)
    /* C1EB8 800D16B8 4200A2A7 */  sh         $v0, 0x42($sp)
    /* C1EBC 800D16BC FF000224 */  addiu      $v0, $zero, 0xFF
    /* C1EC0 800D16C0 3400A2A3 */  sb         $v0, 0x34($sp)
    /* C1EC4 800D16C4 3500A2A3 */  sb         $v0, 0x35($sp)
    /* C1EC8 800D16C8 3600A2A3 */  sb         $v0, 0x36($sp)
    /* C1ECC 800D16CC 5400A2A3 */  sb         $v0, 0x54($sp)
    /* C1ED0 800D16D0 5500A2A3 */  sb         $v0, 0x55($sp)
    /* C1ED4 800D16D4 5600A2A3 */  sb         $v0, 0x56($sp)
    /* C1ED8 800D16D8 928E030C */  jal        DrawPrim
    /* C1EDC 800D16DC 21200002 */   addu      $a0, $s0, $zero
    /* C1EE0 800D16E0 928E030C */  jal        DrawPrim
    /* C1EE4 800D16E4 21204002 */   addu      $a0, $s2, $zero
    /* C1EE8 800D16E8 2C8D030C */  jal        DrawSync
    /* C1EEC 800D16EC 21200000 */   addu      $a0, $zero, $zero
    /* C1EF0 800D16F0 3800A297 */  lhu        $v0, 0x38($sp)
    /* C1EF4 800D16F4 00000000 */  nop
    /* C1EF8 800D16F8 01004224 */  addiu      $v0, $v0, 0x1
    /* C1EFC 800D16FC 5C00A2A7 */  sh         $v0, 0x5C($sp)
    /* C1F00 800D1700 5800A2A7 */  sh         $v0, 0x58($sp)
    /* C1F04 800D1704 4400A2A7 */  sh         $v0, 0x44($sp)
    /* C1F08 800D1708 3800A2A7 */  sh         $v0, 0x38($sp)
    /* C1F0C 800D170C 3A00A297 */  lhu        $v0, 0x3A($sp)
    /* C1F10 800D1710 00000000 */  nop
    /* C1F14 800D1714 01004224 */  addiu      $v0, $v0, 0x1
    /* C1F18 800D1718 5A00A2A7 */  sh         $v0, 0x5A($sp)
    /* C1F1C 800D171C 3E00A2A7 */  sh         $v0, 0x3E($sp)
    /* C1F20 800D1720 3A00A2A7 */  sh         $v0, 0x3A($sp)
    /* C1F24 800D1724 3C00A297 */  lhu        $v0, 0x3C($sp)
    /* C1F28 800D1728 00000000 */  nop
    /* C1F2C 800D172C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* C1F30 800D1730 4000A2A7 */  sh         $v0, 0x40($sp)
    /* C1F34 800D1734 3C00A2A7 */  sh         $v0, 0x3C($sp)
    /* C1F38 800D1738 4200A297 */  lhu        $v0, 0x42($sp)
    /* C1F3C 800D173C 00000000 */  nop
    /* C1F40 800D1740 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* C1F44 800D1744 5E00A2A7 */  sh         $v0, 0x5E($sp)
    /* C1F48 800D1748 4600A2A7 */  sh         $v0, 0x46($sp)
    /* C1F4C 800D174C 4200A2A7 */  sh         $v0, 0x42($sp)
    /* C1F50 800D1750 3400A0A3 */  sb         $zero, 0x34($sp)
    /* C1F54 800D1754 3500A0A3 */  sb         $zero, 0x35($sp)
    /* C1F58 800D1758 3600A0A3 */  sb         $zero, 0x36($sp)
    /* C1F5C 800D175C 5400A0A3 */  sb         $zero, 0x54($sp)
    /* C1F60 800D1760 5500A0A3 */  sb         $zero, 0x55($sp)
    /* C1F64 800D1764 5600A0A3 */  sb         $zero, 0x56($sp)
    /* C1F68 800D1768 928E030C */  jal        DrawPrim
    /* C1F6C 800D176C 21200002 */   addu      $a0, $s0, $zero
    /* C1F70 800D1770 928E030C */  jal        DrawPrim
    /* C1F74 800D1774 21204002 */   addu      $a0, $s2, $zero
    /* C1F78 800D1778 2C8D030C */  jal        DrawSync
    /* C1F7C 800D177C 21200000 */   addu      $a0, $zero, $zero
    /* C1F80 800D1780 9000A88F */  lw         $t0, 0x90($sp)
    /* C1F84 800D1784 00000000 */  nop
    /* C1F88 800D1788 28021025 */  addiu      $s0, $t0, 0x228
    /* C1F8C 800D178C 21200002 */  addu       $a0, $s0, $zero
    /* C1F90 800D1790 082C030C */  jal        func_800CB020
    /* C1F94 800D1794 01000524 */   addiu     $a1, $zero, 0x1
    /* C1F98 800D1798 10006326 */  addiu      $v1, $s3, 0x10
    /* C1F9C 800D179C 2800B4A7 */  sh         $s4, 0x28($sp)
    /* C1FA0 800D17A0 2A00A3A7 */  sh         $v1, 0x2A($sp)
    /* C1FA4 800D17A4 80002226 */  addiu      $v0, $s1, 0x80
    /* C1FA8 800D17A8 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* C1FAC 800D17AC 50006226 */  addiu      $v0, $s3, 0x50
    /* C1FB0 800D17B0 2E00A2A7 */  sh         $v0, 0x2E($sp)
    /* C1FB4 800D17B4 001C0300 */  sll        $v1, $v1, 16
    /* C1FB8 800D17B8 031C0300 */  sra        $v1, $v1, 16
    /* C1FBC 800D17BC 1000A3AF */  sw         $v1, 0x10($sp)
    /* C1FC0 800D17C0 2C00A287 */  lh         $v0, 0x2C($sp)
    /* C1FC4 800D17C4 2800A387 */  lh         $v1, 0x28($sp)
    /* C1FC8 800D17C8 00000000 */  nop
    /* C1FCC 800D17CC 23104300 */  subu       $v0, $v0, $v1
    /* C1FD0 800D17D0 1400A2AF */  sw         $v0, 0x14($sp)
    /* C1FD4 800D17D4 2E00A287 */  lh         $v0, 0x2E($sp)
    /* C1FD8 800D17D8 2A00A387 */  lh         $v1, 0x2A($sp)
    /* C1FDC 800D17DC 00000000 */  nop
    /* C1FE0 800D17E0 23104300 */  subu       $v0, $v0, $v1
    /* C1FE4 800D17E4 1800A2AF */  sw         $v0, 0x18($sp)
    /* C1FE8 800D17E8 21200002 */  addu       $a0, $s0, $zero
    /* C1FEC 800D17EC 21280000 */  addu       $a1, $zero, $zero
    /* C1FF0 800D17F0 01000624 */  addiu      $a2, $zero, 0x1
    /* C1FF4 800D17F4 252C030C */  jal        func_800CB094
    /* C1FF8 800D17F8 21382002 */   addu      $a3, $s1, $zero
    /* C1FFC 800D17FC 30003126 */  addiu      $s1, $s1, 0x30
    /* C2000 800D1800 A000B1AF */  sw         $s1, 0xA0($sp)
    /* C2004 800D1804 28007326 */  addiu      $s3, $s3, 0x28
    /* C2008 800D1808 A800B3AF */  sw         $s3, 0xA8($sp)
    /* C200C 800D180C 21B80000 */  addu       $s7, $zero, $zero
  .L800D1810:
    /* C2010 800D1810 1500E22A */  slti       $v0, $s7, 0x15
    /* C2014 800D1814 04014010 */  beqz       $v0, .L800D1C28
    /* C2018 800D1818 00000000 */   nop
    /* C201C 800D181C 1680023C */  lui        $v0, %hi(D_80158864)
    /* C2020 800D1820 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C2024 800D1824 00000000 */  nop
    /* C2028 800D1828 00004284 */  lh         $v0, 0x0($v0)
    /* C202C 800D182C 1280013C */  lui        $at, %hi(D_80122FF0)
    /* C2030 800D1830 21083700 */  addu       $at, $at, $s7
    /* C2034 800D1834 F02F2480 */  lb         $a0, %lo(D_80122FF0)($at)
    /* C2038 800D1838 173B030C */  jal        func_800CEC5C
    /* C203C 800D183C 21204400 */   addu      $a0, $v0, $a0
    /* C2040 800D1840 21A04000 */  addu       $s4, $v0, $zero
    /* C2044 800D1844 1680023C */  lui        $v0, %hi(D_80158864)
    /* C2048 800D1848 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C204C 800D184C 00000000 */  nop
    /* C2050 800D1850 02004284 */  lh         $v0, 0x2($v0)
    /* C2054 800D1854 1280013C */  lui        $at, %hi(D_80123008)
    /* C2058 800D1858 21083700 */  addu       $at, $at, $s7
    /* C205C 800D185C 08302380 */  lb         $v1, %lo(D_80123008)($at)
    /* C2060 800D1860 00000000 */  nop
    /* C2064 800D1864 21904300 */  addu       $s2, $v0, $v1
    /* C2068 800D1868 1280013C */  lui        $at, %hi(D_80122FF0)
    /* C206C 800D186C 21083700 */  addu       $at, $at, $s7
    /* C2070 800D1870 F02F2280 */  lb         $v0, %lo(D_80122FF0)($at)
    /* C2074 800D1874 10000924 */  addiu      $t1, $zero, 0x10
    /* C2078 800D1878 18004900 */  mult       $v0, $t1
    /* C207C 800D187C 12480000 */  mflo       $t1
    /* C2080 800D1880 A000A88F */  lw         $t0, 0xA0($sp)
    /* C2084 800D1884 00000000 */  nop
    /* C2088 800D1888 21480901 */  addu       $t1, $t0, $t1
    /* C208C 800D188C 9800A9AF */  sw         $t1, 0x98($sp)
    /* C2090 800D1890 08000824 */  addiu      $t0, $zero, 0x8
    /* C2094 800D1894 18006800 */  mult       $v1, $t0
    /* C2098 800D1898 A800A98F */  lw         $t1, 0xA8($sp)
    /* C209C 800D189C 12400000 */  mflo       $t0
    /* C20A0 800D18A0 21B02801 */  addu       $s6, $t1, $t0
    /* C20A4 800D18A4 F8FFD526 */  addiu      $s5, $s6, -0x8
    /* C20A8 800D18A8 21800000 */  addu       $s0, $zero, $zero
    /* C20AC 800D18AC 21200000 */  addu       $a0, $zero, $zero
    /* C20B0 800D18B0 1280013C */  lui        $at, %hi(D_80122FF0)
    /* C20B4 800D18B4 21083700 */  addu       $at, $at, $s7
    /* C20B8 800D18B8 F02F2580 */  lb         $a1, %lo(D_80122FF0)($at)
  .L800D18BC:
    /* C20BC 800D18BC 1280013C */  lui        $at, %hi(D_8011AC3C)
    /* C20C0 800D18C0 21082400 */  addu       $at, $at, $a0
    /* C20C4 800D18C4 3CAC2280 */  lb         $v0, %lo(D_8011AC3C)($at)
    /* C20C8 800D18C8 00000000 */  nop
    /* C20CC 800D18CC 0A00A214 */  bne        $a1, $v0, .L800D18F8
    /* C20D0 800D18D0 00000000 */   nop
    /* C20D4 800D18D4 1280013C */  lui        $at, %hi(D_80123008)
    /* C20D8 800D18D8 21083700 */  addu       $at, $at, $s7
    /* C20DC 800D18DC 08302380 */  lb         $v1, %lo(D_80123008)($at)
    /* C20E0 800D18E0 1280013C */  lui        $at, %hi(D_8011AC6C)
    /* C20E4 800D18E4 21082400 */  addu       $at, $at, $a0
    /* C20E8 800D18E8 6CAC2280 */  lb         $v0, %lo(D_8011AC6C)($at)
    /* C20EC 800D18EC 00000000 */  nop
    /* C20F0 800D18F0 34006210 */  beq        $v1, $v0, .L800D19C4
    /* C20F4 800D18F4 00000000 */   nop
  .L800D18F8:
    /* C20F8 800D18F8 01008424 */  addiu      $a0, $a0, 0x1
    /* C20FC 800D18FC 15008228 */  slti       $v0, $a0, 0x15
    /* C2100 800D1900 EEFF4014 */  bnez       $v0, .L800D18BC
    /* C2104 800D1904 00000000 */   nop
  .L800D1908:
    /* C2108 800D1908 1000B4AF */  sw         $s4, 0x10($sp)
    /* C210C 800D190C 1400B2AF */  sw         $s2, 0x14($sp)
    /* C2110 800D1910 1680023C */  lui        $v0, %hi(D_80158864)
    /* C2114 800D1914 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C2118 800D1918 00000000 */  nop
    /* C211C 800D191C 08004280 */  lb         $v0, 0x8($v0)
    /* C2120 800D1920 00000000 */  nop
    /* C2124 800D1924 1800A2AF */  sw         $v0, 0x18($sp)
    /* C2128 800D1928 9000A98F */  lw         $t1, 0x90($sp)
    /* C212C 800D192C 00000000 */  nop
    /* C2130 800D1930 E80E228D */  lw         $v0, 0xEE8($t1)
    /* C2134 800D1934 00000000 */  nop
    /* C2138 800D1938 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* C213C 800D193C 2000B0AF */  sw         $s0, 0x20($sp)
    /* C2140 800D1940 1280043C */  lui        $a0, %hi(D_8011E72C)
    /* C2144 800D1944 2CE78424 */  addiu      $a0, $a0, %lo(D_8011E72C)
    /* C2148 800D1948 9000A58F */  lw         $a1, 0x90($sp)
    /* C214C 800D194C 9800A68F */  lw         $a2, 0x98($sp)
    /* C2150 800D1950 B166020C */  jal        func_80099AC4
    /* C2154 800D1954 2138C002 */   addu      $a3, $s6, $zero
    /* C2158 800D1958 1500E22A */  slti       $v0, $s7, 0x15
    /* C215C 800D195C B0004010 */  beqz       $v0, .L800D1C20
    /* C2160 800D1960 00000000 */   nop
    /* C2164 800D1964 1180013C */  lui        $at, %hi(D_8010BA20)
    /* C2168 800D1968 21083000 */  addu       $at, $at, $s0
    /* C216C 800D196C 20BA2290 */  lbu        $v0, %lo(D_8010BA20)($at)
    /* C2170 800D1970 00000000 */  nop
    /* C2174 800D1974 08004230 */  andi       $v0, $v0, 0x8
    /* C2178 800D1978 14004010 */  beqz       $v0, .L800D19CC
    /* C217C 800D197C 21208002 */   addu      $a0, $s4, $zero
    /* C2180 800D1980 1E26020C */  jal        func_80089878
    /* C2184 800D1984 21284002 */   addu      $a1, $s2, $zero
    /* C2188 800D1988 21284000 */  addu       $a1, $v0, $zero
    /* C218C 800D198C 5D00A004 */  bltz       $a1, .L800D1B04
    /* C2190 800D1990 00000000 */   nop
    /* C2194 800D1994 1000B5AF */  sw         $s5, 0x10($sp)
    /* C2198 800D1998 9000A88F */  lw         $t0, 0x90($sp)
    /* C219C 800D199C 00000000 */  nop
    /* C21A0 800D19A0 E80E028D */  lw         $v0, 0xEE8($t0)
    /* C21A4 800D19A4 00000000 */  nop
    /* C21A8 800D19A8 1400A2AF */  sw         $v0, 0x14($sp)
    /* C21AC 800D19AC 9000A48F */  lw         $a0, 0x90($sp)
    /* C21B0 800D19B0 9800A78F */  lw         $a3, 0x98($sp)
    /* C21B4 800D19B4 17C0020C */  jal        func_800B005C
    /* C21B8 800D19B8 01000624 */   addiu     $a2, $zero, 0x1
    /* C21BC 800D19BC C1460308 */  j          .L800D1B04
    /* C21C0 800D19C0 00000000 */   nop
  .L800D19C4:
    /* C21C4 800D19C4 42460308 */  j          .L800D1908
    /* C21C8 800D19C8 21808000 */   addu      $s0, $a0, $zero
  .L800D19CC:
    /* C21CC 800D19CC 1180013C */  lui        $at, %hi(D_8010BA20)
    /* C21D0 800D19D0 21083000 */  addu       $at, $at, $s0
    /* C21D4 800D19D4 20BA2290 */  lbu        $v0, %lo(D_8010BA20)($at)
    /* C21D8 800D19D8 00000000 */  nop
    /* C21DC 800D19DC 04004230 */  andi       $v0, $v0, 0x4
    /* C21E0 800D19E0 29004010 */  beqz       $v0, .L800D1A88
    /* C21E4 800D19E4 00000000 */   nop
    /* C21E8 800D19E8 04EE010C */  jal        func_8007B810
    /* C21EC 800D19EC 21284002 */   addu      $a1, $s2, $zero
    /* C21F0 800D19F0 81460308 */  j          .L800D1A04
    /* C21F4 800D19F4 21284000 */   addu      $a1, $v0, $zero
  .L800D19F8:
    /* C21F8 800D19F8 BFED010C */  jal        func_8007B6FC
    /* C21FC 800D19FC 2120A000 */   addu      $a0, $a1, $zero
    /* C2200 800D1A00 21284000 */  addu       $a1, $v0, $zero
  .L800D1A04:
    /* C2204 800D1A04 3F00A004 */  bltz       $a1, .L800D1B04
    /* C2208 800D1A08 40100500 */   sll       $v0, $a1, 1
    /* C220C 800D1A0C 21104500 */  addu       $v0, $v0, $a1
    /* C2210 800D1A10 80100200 */  sll        $v0, $v0, 2
    /* C2214 800D1A14 21104500 */  addu       $v0, $v0, $a1
    /* C2218 800D1A18 40100200 */  sll        $v0, $v0, 1
    /* C221C 800D1A1C 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* C2220 800D1A20 21082200 */  addu       $at, $at, $v0
    /* C2224 800D1A24 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* C2228 800D1A28 00000000 */  nop
    /* C222C 800D1A2C 80100300 */  sll        $v0, $v1, 2
    /* C2230 800D1A30 21104300 */  addu       $v0, $v0, $v1
    /* C2234 800D1A34 80100200 */  sll        $v0, $v0, 2
    /* C2238 800D1A38 1180013C */  lui        $at, %hi(D_8010D288)
    /* C223C 800D1A3C 21082200 */  addu       $at, $at, $v0
    /* C2240 800D1A40 88D22280 */  lb         $v0, %lo(D_8010D288)($at)
    /* C2244 800D1A44 00000000 */  nop
    /* C2248 800D1A48 EBFF4010 */  beqz       $v0, .L800D19F8
    /* C224C 800D1A4C 00000000 */   nop
    /* C2250 800D1A50 2C00A004 */  bltz       $a1, .L800D1B04
    /* C2254 800D1A54 00000000 */   nop
    /* C2258 800D1A58 1000B5AF */  sw         $s5, 0x10($sp)
    /* C225C 800D1A5C 9000A98F */  lw         $t1, 0x90($sp)
    /* C2260 800D1A60 00000000 */  nop
    /* C2264 800D1A64 E80E228D */  lw         $v0, 0xEE8($t1)
    /* C2268 800D1A68 00000000 */  nop
    /* C226C 800D1A6C 1400A2AF */  sw         $v0, 0x14($sp)
    /* C2270 800D1A70 9000A48F */  lw         $a0, 0x90($sp)
    /* C2274 800D1A74 9800A78F */  lw         $a3, 0x98($sp)
    /* C2278 800D1A78 4CBB020C */  jal        func_800AED30
    /* C227C 800D1A7C 07000624 */   addiu     $a2, $zero, 0x7
    /* C2280 800D1A80 C1460308 */  j          .L800D1B04
    /* C2284 800D1A84 00000000 */   nop
  .L800D1A88:
    /* C2288 800D1A88 1180013C */  lui        $at, %hi(D_8010BA20)
    /* C228C 800D1A8C 21083000 */  addu       $at, $at, $s0
    /* C2290 800D1A90 20BA2290 */  lbu        $v0, %lo(D_8010BA20)($at)
    /* C2294 800D1A94 00000000 */  nop
    /* C2298 800D1A98 02004230 */  andi       $v0, $v0, 0x2
    /* C229C 800D1A9C 19004010 */  beqz       $v0, .L800D1B04
    /* C22A0 800D1AA0 00000000 */   nop
    /* C22A4 800D1AA4 9000A88F */  lw         $t0, 0x90($sp)
    /* C22A8 800D1AA8 00000000 */  nop
    /* C22AC 800D1AAC E80E048D */  lw         $a0, 0xEE8($t0)
    /* C22B0 800D1AB0 00000000 */  nop
    /* C22B4 800D1AB4 08008424 */  addiu      $a0, $a0, 0x8
    /* C22B8 800D1AB8 00240400 */  sll        $a0, $a0, 16
    /* C22BC 800D1ABC 03240400 */  sra        $a0, $a0, 16
    /* C22C0 800D1AC0 D0EC030C */  jal        func_800FB340
    /* C22C4 800D1AC4 08000524 */   addiu     $a1, $zero, 0x8
    /* C22C8 800D1AC8 9800A98F */  lw         $t1, 0x98($sp)
    /* C22CC 800D1ACC 00000000 */  nop
    /* C22D0 800D1AD0 003C0900 */  sll        $a3, $t1, 16
    /* C22D4 800D1AD4 00141600 */  sll        $v0, $s6, 16
    /* C22D8 800D1AD8 03140200 */  sra        $v0, $v0, 16
    /* C22DC 800D1ADC 1000A2AF */  sw         $v0, 0x10($sp)
    /* C22E0 800D1AE0 6000A427 */  addiu      $a0, $sp, 0x60
    /* C22E4 800D1AE4 1280053C */  lui        $a1, %hi(D_80125C10)
    /* C22E8 800D1AE8 105CA524 */  addiu      $a1, $a1, %lo(D_80125C10)
    /* C22EC 800D1AEC 9000A68F */  lw         $a2, 0x90($sp)
    /* C22F0 800D1AF0 89EE030C */  jal        func_800FBA24
    /* C22F4 800D1AF4 033C0700 */   sra       $a3, $a3, 16
    /* C22F8 800D1AF8 01000424 */  addiu      $a0, $zero, 0x1
    /* C22FC 800D1AFC D0EC030C */  jal        func_800FB340
    /* C2300 800D1B00 01000524 */   addiu     $a1, $zero, 0x1
  .L800D1B04:
    /* C2304 800D1B04 1180013C */  lui        $at, %hi(D_8010BA20)
    /* C2308 800D1B08 21083000 */  addu       $at, $at, $s0
    /* C230C 800D1B0C 20BA2490 */  lbu        $a0, %lo(D_8010BA20)($at)
    /* C2310 800D1B10 00000000 */  nop
    /* C2314 800D1B14 10008230 */  andi       $v0, $a0, 0x10
    /* C2318 800D1B18 41004010 */  beqz       $v0, .L800D1C20
    /* C231C 800D1B1C 09008230 */   andi      $v0, $a0, 0x9
    /* C2320 800D1B20 3F004014 */  bnez       $v0, .L800D1C20
    /* C2324 800D1B24 00000000 */   nop
    /* C2328 800D1B28 9000A88F */  lw         $t0, 0x90($sp)
    /* C232C 800D1B2C 00000000 */  nop
    /* C2330 800D1B30 E80E048D */  lw         $a0, 0xEE8($t0)
    /* C2334 800D1B34 00000000 */  nop
    /* C2338 800D1B38 08008424 */  addiu      $a0, $a0, 0x8
    /* C233C 800D1B3C 00240400 */  sll        $a0, $a0, 16
    /* C2340 800D1B40 03240400 */  sra        $a0, $a0, 16
    /* C2344 800D1B44 D0EC030C */  jal        func_800FB340
    /* C2348 800D1B48 08000524 */   addiu     $a1, $zero, 0x8
    /* C234C 800D1B4C F0000324 */  addiu      $v1, $zero, 0xF0
    /* C2350 800D1B50 10000424 */  addiu      $a0, $zero, 0x10
    /* C2354 800D1B54 1380013C */  lui        $at, %hi(D_8012999C)
    /* C2358 800D1B58 9C9923A0 */  sb         $v1, %lo(D_8012999C)($at)
    /* C235C 800D1B5C 1380013C */  lui        $at, %hi(D_8012999D)
    /* C2360 800D1B60 9D9924A0 */  sb         $a0, %lo(D_8012999D)($at)
    /* C2364 800D1B64 1380013C */  lui        $at, %hi(D_8012999E)
    /* C2368 800D1B68 9E9923A0 */  sb         $v1, %lo(D_8012999E)($at)
    /* C236C 800D1B6C 1380023C */  lui        $v0, %hi(D_801299DA)
    /* C2370 800D1B70 DA994284 */  lh         $v0, %lo(D_801299DA)($v0)
    /* C2374 800D1B74 00000000 */  nop
    /* C2378 800D1B78 02004228 */  slti       $v0, $v0, 0x2
    /* C237C 800D1B7C 07004014 */  bnez       $v0, .L800D1B9C
    /* C2380 800D1B80 00000000 */   nop
    /* C2384 800D1B84 1380013C */  lui        $at, %hi(D_801299B0)
    /* C2388 800D1B88 B09923A0 */  sb         $v1, %lo(D_801299B0)($at)
    /* C238C 800D1B8C 1380013C */  lui        $at, %hi(D_801299B1)
    /* C2390 800D1B90 B19924A0 */  sb         $a0, %lo(D_801299B1)($at)
    /* C2394 800D1B94 1380013C */  lui        $at, %hi(D_801299B2)
    /* C2398 800D1B98 B29923A0 */  sb         $v1, %lo(D_801299B2)($at)
  .L800D1B9C:
    /* C239C 800D1B9C 9800A98F */  lw         $t1, 0x98($sp)
    /* C23A0 800D1BA0 00000000 */  nop
    /* C23A4 800D1BA4 003C0900 */  sll        $a3, $t1, 16
    /* C23A8 800D1BA8 00141600 */  sll        $v0, $s6, 16
    /* C23AC 800D1BAC 03140200 */  sra        $v0, $v0, 16
    /* C23B0 800D1BB0 1000A2AF */  sw         $v0, 0x10($sp)
    /* C23B4 800D1BB4 6000A427 */  addiu      $a0, $sp, 0x60
    /* C23B8 800D1BB8 1380053C */  lui        $a1, %hi(D_80129958)
    /* C23BC 800D1BBC 5899A524 */  addiu      $a1, $a1, %lo(D_80129958)
    /* C23C0 800D1BC0 9000A68F */  lw         $a2, 0x90($sp)
    /* C23C4 800D1BC4 89EE030C */  jal        func_800FBA24
    /* C23C8 800D1BC8 033C0700 */   sra       $a3, $a3, 16
    /* C23CC 800D1BCC 80000324 */  addiu      $v1, $zero, 0x80
    /* C23D0 800D1BD0 1380013C */  lui        $at, %hi(D_8012999C)
    /* C23D4 800D1BD4 9C9923A0 */  sb         $v1, %lo(D_8012999C)($at)
    /* C23D8 800D1BD8 1380013C */  lui        $at, %hi(D_8012999D)
    /* C23DC 800D1BDC 9D9923A0 */  sb         $v1, %lo(D_8012999D)($at)
    /* C23E0 800D1BE0 1380013C */  lui        $at, %hi(D_8012999E)
    /* C23E4 800D1BE4 9E9923A0 */  sb         $v1, %lo(D_8012999E)($at)
    /* C23E8 800D1BE8 1380023C */  lui        $v0, %hi(D_801299DA)
    /* C23EC 800D1BEC DA994284 */  lh         $v0, %lo(D_801299DA)($v0)
    /* C23F0 800D1BF0 00000000 */  nop
    /* C23F4 800D1BF4 02004228 */  slti       $v0, $v0, 0x2
    /* C23F8 800D1BF8 07004014 */  bnez       $v0, .L800D1C18
    /* C23FC 800D1BFC 01000424 */   addiu     $a0, $zero, 0x1
    /* C2400 800D1C00 1380013C */  lui        $at, %hi(D_801299B0)
    /* C2404 800D1C04 B09923A0 */  sb         $v1, %lo(D_801299B0)($at)
    /* C2408 800D1C08 1380013C */  lui        $at, %hi(D_801299B1)
    /* C240C 800D1C0C B19923A0 */  sb         $v1, %lo(D_801299B1)($at)
    /* C2410 800D1C10 1380013C */  lui        $at, %hi(D_801299B2)
    /* C2414 800D1C14 B29923A0 */  sb         $v1, %lo(D_801299B2)($at)
  .L800D1C18:
    /* C2418 800D1C18 D0EC030C */  jal        func_800FB340
    /* C241C 800D1C1C 01000524 */   addiu     $a1, $zero, 0x1
  .L800D1C20:
    /* C2420 800D1C20 04460308 */  j          .L800D1810
    /* C2424 800D1C24 0100F726 */   addiu     $s7, $s7, 0x1
  .L800D1C28:
    /* C2428 800D1C28 21B80000 */  addu       $s7, $zero, $zero
  .L800D1C2C:
    /* C242C 800D1C2C 1500E22A */  slti       $v0, $s7, 0x15
    /* C2430 800D1C30 B2004010 */  beqz       $v0, .L800D1EFC
    /* C2434 800D1C34 00000000 */   nop
    /* C2438 800D1C38 1680023C */  lui        $v0, %hi(D_80158864)
    /* C243C 800D1C3C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C2440 800D1C40 00000000 */  nop
    /* C2444 800D1C44 00004284 */  lh         $v0, 0x0($v0)
    /* C2448 800D1C48 1280013C */  lui        $at, %hi(D_80122FF0)
    /* C244C 800D1C4C 21083700 */  addu       $at, $at, $s7
    /* C2450 800D1C50 F02F2480 */  lb         $a0, %lo(D_80122FF0)($at)
    /* C2454 800D1C54 173B030C */  jal        func_800CEC5C
    /* C2458 800D1C58 21204400 */   addu      $a0, $v0, $a0
    /* C245C 800D1C5C 1280013C */  lui        $at, %hi(D_80123008)
    /* C2460 800D1C60 21083700 */  addu       $at, $at, $s7
    /* C2464 800D1C64 08302380 */  lb         $v1, %lo(D_80123008)($at)
    /* C2468 800D1C68 1280013C */  lui        $at, %hi(D_80122FF0)
    /* C246C 800D1C6C 21083700 */  addu       $at, $at, $s7
    /* C2470 800D1C70 F02F2280 */  lb         $v0, %lo(D_80122FF0)($at)
    /* C2474 800D1C74 10000824 */  addiu      $t0, $zero, 0x10
    /* C2478 800D1C78 18004800 */  mult       $v0, $t0
    /* C247C 800D1C7C 12400000 */  mflo       $t0
    /* C2480 800D1C80 A000A98F */  lw         $t1, 0xA0($sp)
    /* C2484 800D1C84 00000000 */  nop
    /* C2488 800D1C88 21402801 */  addu       $t0, $t1, $t0
    /* C248C 800D1C8C 9800A8AF */  sw         $t0, 0x98($sp)
    /* C2490 800D1C90 08000924 */  addiu      $t1, $zero, 0x8
    /* C2494 800D1C94 18006900 */  mult       $v1, $t1
    /* C2498 800D1C98 A800A88F */  lw         $t0, 0xA8($sp)
    /* C249C 800D1C9C 12480000 */  mflo       $t1
    /* C24A0 800D1CA0 21B00901 */  addu       $s6, $t0, $t1
    /* C24A4 800D1CA4 21800000 */  addu       $s0, $zero, $zero
    /* C24A8 800D1CA8 21200000 */  addu       $a0, $zero, $zero
    /* C24AC 800D1CAC 1280013C */  lui        $at, %hi(D_80122FF0)
    /* C24B0 800D1CB0 21083700 */  addu       $at, $at, $s7
    /* C24B4 800D1CB4 F02F2580 */  lb         $a1, %lo(D_80122FF0)($at)
  .L800D1CB8:
    /* C24B8 800D1CB8 1280013C */  lui        $at, %hi(D_8011AC3C)
    /* C24BC 800D1CBC 21082400 */  addu       $at, $at, $a0
    /* C24C0 800D1CC0 3CAC2280 */  lb         $v0, %lo(D_8011AC3C)($at)
    /* C24C4 800D1CC4 00000000 */  nop
    /* C24C8 800D1CC8 0A00A214 */  bne        $a1, $v0, .L800D1CF4
    /* C24CC 800D1CCC 00000000 */   nop
    /* C24D0 800D1CD0 1280013C */  lui        $at, %hi(D_80123008)
    /* C24D4 800D1CD4 21083700 */  addu       $at, $at, $s7
    /* C24D8 800D1CD8 08302380 */  lb         $v1, %lo(D_80123008)($at)
    /* C24DC 800D1CDC 1280013C */  lui        $at, %hi(D_8011AC6C)
    /* C24E0 800D1CE0 21082400 */  addu       $at, $at, $a0
    /* C24E4 800D1CE4 6CAC2280 */  lb         $v0, %lo(D_8011AC6C)($at)
    /* C24E8 800D1CE8 00000000 */  nop
    /* C24EC 800D1CEC 81006210 */  beq        $v1, $v0, .L800D1EF4
    /* C24F0 800D1CF0 00000000 */   nop
  .L800D1CF4:
    /* C24F4 800D1CF4 01008424 */  addiu      $a0, $a0, 0x1
    /* C24F8 800D1CF8 15008228 */  slti       $v0, $a0, 0x15
    /* C24FC 800D1CFC EEFF4014 */  bnez       $v0, .L800D1CB8
    /* C2500 800D1D00 00000000 */   nop
  .L800D1D04:
    /* C2504 800D1D04 1680043C */  lui        $a0, %hi(D_80158860)
    /* C2508 800D1D08 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* C250C 800D1D0C AB52000C */  jal        func_80014AAC
    /* C2510 800D1D10 21280002 */   addu      $a1, $s0, $zero
    /* C2514 800D1D14 75004010 */  beqz       $v0, .L800D1EEC
    /* C2518 800D1D18 00000000 */   nop
    /* C251C 800D1D1C 9000A88F */  lw         $t0, 0x90($sp)
    /* C2520 800D1D20 00000000 */  nop
    /* C2524 800D1D24 E40E048D */  lw         $a0, 0xEE4($t0)
    /* C2528 800D1D28 00000000 */  nop
    /* C252C 800D1D2C 80240400 */  sll        $a0, $a0, 18
    /* C2530 800D1D30 03240400 */  sra        $a0, $a0, 16
    /* C2534 800D1D34 D0EC030C */  jal        func_800FB340
    /* C2538 800D1D38 08000524 */   addiu     $a1, $zero, 0x8
    /* C253C 800D1D3C B000A0AF */  sw         $zero, 0xB0($sp)
    /* C2540 800D1D40 21200002 */  addu       $a0, $s0, $zero
    /* C2544 800D1D44 4E58000C */  jal        func_80016138
    /* C2548 800D1D48 21280000 */   addu      $a1, $zero, $zero
    /* C254C 800D1D4C 1180033C */  lui        $v1, %hi(D_8010BA48)
    /* C2550 800D1D50 48BA638C */  lw         $v1, %lo(D_8010BA48)($v1)
    /* C2554 800D1D54 1180023C */  lui        $v0, %hi(D_8010BA4C)
    /* C2558 800D1D58 4CBA428C */  lw         $v0, %lo(D_8010BA4C)($v0)
    /* C255C 800D1D5C 00000000 */  nop
    /* C2560 800D1D60 21A86200 */  addu       $s5, $v1, $v0
    /* C2564 800D1D64 1180023C */  lui        $v0, %hi(D_8010BA50)
    /* C2568 800D1D68 50BA428C */  lw         $v0, %lo(D_8010BA50)($v0)
    /* C256C 800D1D6C 00000000 */  nop
    /* C2570 800D1D70 21A8A202 */  addu       $s5, $s5, $v0
    /* C2574 800D1D74 0300A016 */  bnez       $s5, .L800D1D84
    /* C2578 800D1D78 01000924 */   addiu     $t1, $zero, 0x1
    /* C257C 800D1D7C 01001524 */  addiu      $s5, $zero, 0x1
    /* C2580 800D1D80 B000A9AF */  sw         $t1, 0xB0($sp)
  .L800D1D84:
    /* C2584 800D1D84 1000A0AF */  sw         $zero, 0x10($sp)
    /* C2588 800D1D88 2120A002 */  addu       $a0, $s5, $zero
    /* C258C 800D1D8C 09000524 */  addiu      $a1, $zero, 0x9
    /* C2590 800D1D90 20000824 */  addiu      $t0, $zero, 0x20
    /* C2594 800D1D94 F8FF0625 */  addiu      $a2, $t0, -0x8
    /* C2598 800D1D98 2A1A030C */  jal        func_800C68A8
    /* C259C 800D1D9C 21380000 */   addu      $a3, $zero, $zero
    /* C25A0 800D1DA0 21F04000 */  addu       $fp, $v0, $zero
    /* C25A4 800D1DA4 20000924 */  addiu      $t1, $zero, 0x20
    /* C25A8 800D1DA8 F0FF2225 */  addiu      $v0, $t1, -0x10
    /* C25AC 800D1DAC 09000824 */  addiu      $t0, $zero, 0x9
    /* C25B0 800D1DB0 1A004800 */  div        $zero, $v0, $t0
    /* C25B4 800D1DB4 02000015 */  bnez       $t0, .L800D1DC0
    /* C25B8 800D1DB8 00000000 */   nop
    /* C25BC 800D1DBC 0D000700 */  break      7
  .L800D1DC0:
    /* C25C0 800D1DC0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* C25C4 800D1DC4 04000115 */  bne        $t0, $at, .L800D1DD8
    /* C25C8 800D1DC8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* C25CC 800D1DCC 02004114 */  bne        $v0, $at, .L800D1DD8
    /* C25D0 800D1DD0 00000000 */   nop
    /* C25D4 800D1DD4 0D000600 */  break      6
  .L800D1DD8:
    /* C25D8 800D1DD8 12180000 */  mflo       $v1
    /* C25DC 800D1DDC 00000000 */  nop
    /* C25E0 800D1DE0 2A10A302 */  slt        $v0, $s5, $v1
    /* C25E4 800D1DE4 02004010 */  beqz       $v0, .L800D1DF0
    /* C25E8 800D1DE8 21800000 */   addu      $s0, $zero, $zero
    /* C25EC 800D1DEC 21A86000 */  addu       $s5, $v1, $zero
  .L800D1DF0:
    /* C25F0 800D1DF0 21880000 */  addu       $s1, $zero, $zero
    /* C25F4 800D1DF4 9800A98F */  lw         $t1, 0x98($sp)
    /* C25F8 800D1DF8 00000000 */  nop
    /* C25FC 800D1DFC 08003225 */  addiu      $s2, $t1, 0x8
    /* C2600 800D1E00 0800D426 */  addiu      $s4, $s6, 0x8
    /* C2604 800D1E04 FEFF9426 */  addiu      $s4, $s4, -0x2
  .L800D1E08:
    /* C2608 800D1E08 0300022A */  slti       $v0, $s0, 0x3
    /* C260C 800D1E0C 27004010 */  beqz       $v0, .L800D1EAC
    /* C2610 800D1E10 80101000 */   sll       $v0, $s0, 2
    /* C2614 800D1E14 1180083C */  lui        $t0, %hi(D_8010BA48)
    /* C2618 800D1E18 48BA0825 */  addiu      $t0, $t0, %lo(D_8010BA48)
    /* C261C 800D1E1C 21984800 */  addu       $s3, $v0, $t0
    /* C2620 800D1E20 C0101000 */  sll        $v0, $s0, 3
    /* C2624 800D1E24 21105000 */  addu       $v0, $v0, $s0
    /* C2628 800D1E28 80100200 */  sll        $v0, $v0, 2
    /* C262C 800D1E2C 21105000 */  addu       $v0, $v0, $s0
    /* C2630 800D1E30 C0B00200 */  sll        $s6, $v0, 3
  .L800D1E34:
    /* C2634 800D1E34 0000628E */  lw         $v0, 0x0($s3)
    /* C2638 800D1E38 00000000 */  nop
    /* C263C 800D1E3C 19004010 */  beqz       $v0, .L800D1EA4
    /* C2640 800D1E40 003C1200 */   sll       $a3, $s2, 16
    /* C2644 800D1E44 1380053C */  lui        $a1, %hi(D_8013044C)
    /* C2648 800D1E48 4C04A524 */  addiu      $a1, $a1, %lo(D_8013044C)
    /* C264C 800D1E4C 00141400 */  sll        $v0, $s4, 16
    /* C2650 800D1E50 03140200 */  sra        $v0, $v0, 16
    /* C2654 800D1E54 1000A2AF */  sw         $v0, 0x10($sp)
    /* C2658 800D1E58 6000A427 */  addiu      $a0, $sp, 0x60
    /* C265C 800D1E5C 2128C502 */  addu       $a1, $s6, $a1
    /* C2660 800D1E60 9000A68F */  lw         $a2, 0x90($sp)
    /* C2664 800D1E64 89EE030C */  jal        func_800FBA24
    /* C2668 800D1E68 033C0700 */   sra       $a3, $a3, 16
    /* C266C 800D1E6C 01003126 */  addiu      $s1, $s1, 0x1
    /* C2670 800D1E70 2A103502 */  slt        $v0, $s1, $s5
    /* C2674 800D1E74 06004014 */  bnez       $v0, .L800D1E90
    /* C2678 800D1E78 21905E02 */   addu      $s2, $s2, $fp
    /* C267C 800D1E7C 21880000 */  addu       $s1, $zero, $zero
    /* C2680 800D1E80 9800A98F */  lw         $t1, 0x98($sp)
    /* C2684 800D1E84 00000000 */  nop
    /* C2688 800D1E88 08003225 */  addiu      $s2, $t1, 0x8
    /* C268C 800D1E8C 0B009426 */  addiu      $s4, $s4, 0xB
  .L800D1E90:
    /* C2690 800D1E90 0000628E */  lw         $v0, 0x0($s3)
    /* C2694 800D1E94 00000000 */  nop
    /* C2698 800D1E98 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* C269C 800D1E9C 8D470308 */  j          .L800D1E34
    /* C26A0 800D1EA0 000062AE */   sw        $v0, 0x0($s3)
  .L800D1EA4:
    /* C26A4 800D1EA4 82470308 */  j          .L800D1E08
    /* C26A8 800D1EA8 01001026 */   addiu     $s0, $s0, 0x1
  .L800D1EAC:
    /* C26AC 800D1EAC B000A88F */  lw         $t0, 0xB0($sp)
    /* C26B0 800D1EB0 00000000 */  nop
    /* C26B4 800D1EB4 0A000011 */  beqz       $t0, .L800D1EE0
    /* C26B8 800D1EB8 003C1200 */   sll       $a3, $s2, 16
    /* C26BC 800D1EBC 00141400 */  sll        $v0, $s4, 16
    /* C26C0 800D1EC0 03140200 */  sra        $v0, $v0, 16
    /* C26C4 800D1EC4 1000A2AF */  sw         $v0, 0x10($sp)
    /* C26C8 800D1EC8 6000A427 */  addiu      $a0, $sp, 0x60
    /* C26CC 800D1ECC 1380053C */  lui        $a1, %hi(D_80130C64)
    /* C26D0 800D1ED0 640CA524 */  addiu      $a1, $a1, %lo(D_80130C64)
    /* C26D4 800D1ED4 9000A68F */  lw         $a2, 0x90($sp)
    /* C26D8 800D1ED8 89EE030C */  jal        func_800FBA24
    /* C26DC 800D1EDC 033C0700 */   sra       $a3, $a3, 16
  .L800D1EE0:
    /* C26E0 800D1EE0 01000424 */  addiu      $a0, $zero, 0x1
    /* C26E4 800D1EE4 D0EC030C */  jal        func_800FB340
    /* C26E8 800D1EE8 01000524 */   addiu     $a1, $zero, 0x1
  .L800D1EEC:
    /* C26EC 800D1EEC 0B470308 */  j          .L800D1C2C
    /* C26F0 800D1EF0 0100F726 */   addiu     $s7, $s7, 0x1
  .L800D1EF4:
    /* C26F4 800D1EF4 41470308 */  j          .L800D1D04
    /* C26F8 800D1EF8 21808000 */   addu      $s0, $a0, $zero
  .L800D1EFC:
    /* C26FC 800D1EFC 9000A98F */  lw         $t1, 0x90($sp)
    /* C2700 800D1F00 00000000 */  nop
    /* C2704 800D1F04 E40E248D */  lw         $a0, 0xEE4($t1)
    /* C2708 800D1F08 00000000 */  nop
    /* C270C 800D1F0C 80240400 */  sll        $a0, $a0, 18
    /* C2710 800D1F10 03240400 */  sra        $a0, $a0, 16
    /* C2714 800D1F14 D0EC030C */  jal        func_800FB340
    /* C2718 800D1F18 08000524 */   addiu     $a1, $zero, 0x8
    /* C271C 800D1F1C 1680023C */  lui        $v0, %hi(D_80158864)
    /* C2720 800D1F20 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C2724 800D1F24 00000000 */  nop
    /* C2728 800D1F28 09004480 */  lb         $a0, 0x9($v0)
    /* C272C 800D1F2C 1280023C */  lui        $v0, %hi(D_8011A5CA)
    /* C2730 800D1F30 CAA54290 */  lbu        $v0, %lo(D_8011A5CA)($v0)
    /* C2734 800D1F34 00000000 */  nop
    /* C2738 800D1F38 18008200 */  mult       $a0, $v0
    /* C273C 800D1F3C 12200000 */  mflo       $a0
    /* C2740 800D1F40 1680033C */  lui        $v1, %hi(D_80158524)
    /* C2744 800D1F44 2485638C */  lw         $v1, %lo(D_80158524)($v1)
    /* C2748 800D1F48 1680023C */  lui        $v0, %hi(D_80158520)
    /* C274C 800D1F4C 2085428C */  lw         $v0, %lo(D_80158520)($v0)
    /* C2750 800D1F50 00000000 */  nop
    /* C2754 800D1F54 18006200 */  mult       $v1, $v0
    /* C2758 800D1F58 12180000 */  mflo       $v1
    /* C275C 800D1F5C 21808300 */  addu       $s0, $a0, $v1
    /* C2760 800D1F60 21200002 */  addu       $a0, $s0, $zero
    /* C2764 800D1F64 1180123C */  lui        $s2, %hi(D_8010BA3C)
    /* C2768 800D1F68 3CBA528E */  lw         $s2, %lo(D_8010BA3C)($s2)
    /* C276C 800D1F6C 00000000 */  nop
    /* C2770 800D1F70 23985002 */  subu       $s3, $s2, $s0
    /* C2774 800D1F74 2A105002 */  slt        $v0, $s2, $s0
    /* C2778 800D1F78 02004010 */  beqz       $v0, .L800D1F84
    /* C277C 800D1F7C 21884002 */   addu      $s1, $s2, $zero
    /* C2780 800D1F80 21880002 */  addu       $s1, $s0, $zero
  .L800D1F84:
    /* C2784 800D1F84 E0000624 */  addiu      $a2, $zero, 0xE0
    /* C2788 800D1F88 03006106 */  bgez       $s3, .L800D1F98
    /* C278C 800D1F8C 11001424 */   addiu     $s4, $zero, 0x11
    /* C2790 800D1F90 05004016 */  bnez       $s2, .L800D1FA8
    /* C2794 800D1F94 00000000 */   nop
  .L800D1F98:
    /* C2798 800D1F98 0600601A */  blez       $s3, .L800D1FB4
    /* C279C 800D1F9C 00000000 */   nop
    /* C27A0 800D1FA0 04008010 */  beqz       $a0, .L800D1FB4
    /* C27A4 800D1FA4 00000000 */   nop
  .L800D1FA8:
    /* C27A8 800D1FA8 FCFFC624 */  addiu      $a2, $a2, -0x4
    /* C27AC 800D1FAC 2330D400 */  subu       $a2, $a2, $s4
    /* C27B0 800D1FB0 FFFF3126 */  addiu      $s1, $s1, -0x1
  .L800D1FB4:
    /* C27B4 800D1FB4 1000A0AF */  sw         $zero, 0x10($sp)
    /* C27B8 800D1FB8 21202002 */  addu       $a0, $s1, $zero
    /* C27BC 800D1FBC 21288002 */  addu       $a1, $s4, $zero
    /* C27C0 800D1FC0 2A1A030C */  jal        func_800C68A8
    /* C27C4 800D1FC4 6800A727 */   addiu     $a3, $sp, 0x68
    /* C27C8 800D1FC8 6800A28F */  lw         $v0, 0x68($sp)
    /* C27CC 800D1FCC 00000000 */  nop
    /* C27D0 800D1FD0 2A105100 */  slt        $v0, $v0, $s1
    /* C27D4 800D1FD4 11004010 */  beqz       $v0, .L800D201C
    /* C27D8 800D1FD8 10000224 */   addiu     $v0, $zero, 0x10
    /* C27DC 800D1FDC 6800A38F */  lw         $v1, 0x68($sp)
    /* C27E0 800D1FE0 2A105002 */  slt        $v0, $s2, $s0
  .L800D1FE4:
    /* C27E4 800D1FE4 03004010 */  beqz       $v0, .L800D1FF4
    /* C27E8 800D1FE8 FFFF3126 */   addiu     $s1, $s1, -0x1
    /* C27EC 800D1FEC 03480308 */  j          .L800D200C
    /* C27F0 800D1FF0 FFFF1026 */   addiu     $s0, $s0, -0x1
  .L800D1FF4:
    /* C27F4 800D1FF4 04001216 */  bne        $s0, $s2, .L800D2008
    /* C27F8 800D1FF8 00000000 */   nop
    /* C27FC 800D1FFC FFFF5226 */  addiu      $s2, $s2, -0x1
    /* C2800 800D2000 03480308 */  j          .L800D200C
    /* C2804 800D2004 FFFF1026 */   addiu     $s0, $s0, -0x1
  .L800D2008:
    /* C2808 800D2008 FFFF5226 */  addiu      $s2, $s2, -0x1
  .L800D200C:
    /* C280C 800D200C 2A107100 */  slt        $v0, $v1, $s1
    /* C2810 800D2010 F4FF4014 */  bnez       $v0, .L800D1FE4
    /* C2814 800D2014 2A105002 */   slt       $v0, $s2, $s0
    /* C2818 800D2018 10000224 */  addiu      $v0, $zero, 0x10
  .L800D201C:
    /* C281C 800D201C 9000A88F */  lw         $t0, 0x90($sp)
    /* C2820 800D2020 00000000 */  nop
    /* C2824 800D2024 D00E02AD */  sw         $v0, 0xED0($t0)
    /* C2828 800D2028 9B000224 */  addiu      $v0, $zero, 0x9B
    /* C282C 800D202C 1000A2AF */  sw         $v0, 0x10($sp)
    /* C2830 800D2030 6000A427 */  addiu      $a0, $sp, 0x60
    /* C2834 800D2034 1480053C */  lui        $a1, %hi(D_80138098)
    /* C2838 800D2038 9880A524 */  addiu      $a1, $a1, %lo(D_80138098)
    /* C283C 800D203C 9000A68F */  lw         $a2, 0x90($sp)
    /* C2840 800D2040 89EE030C */  jal        func_800FBA24
    /* C2844 800D2044 10000724 */   addiu     $a3, $zero, 0x10
    /* C2848 800D2048 1280043C */  lui        $a0, %hi(D_80121340)
    /* C284C 800D204C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2850 800D2050 CB1A030C */  jal        func_800C6B2C
    /* C2854 800D2054 00000000 */   nop
    /* C2858 800D2058 1280043C */  lui        $a0, %hi(D_80121340)
    /* C285C 800D205C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2860 800D2060 0180053C */  lui        $a1, %hi(D_80012C98)
    /* C2864 800D2064 982CA524 */  addiu      $a1, $a1, %lo(D_80012C98)
    /* C2868 800D2068 9987030C */  jal        func_800E1E64
    /* C286C 800D206C 00000000 */   nop
    /* C2870 800D2070 1680053C */  lui        $a1, %hi(D_801585A4)
    /* C2874 800D2074 A485A58C */  lw         $a1, %lo(D_801585A4)($a1)
    /* C2878 800D2078 1280043C */  lui        $a0, %hi(D_80121340)
    /* C287C 800D207C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2880 800D2080 9C1B030C */  jal        func_800C6E70
    /* C2884 800D2084 21284502 */   addu      $a1, $s2, $a1
    /* C2888 800D2088 1680033C */  lui        $v1, %hi(D_801585B4)
    /* C288C 800D208C B485638C */  lw         $v1, %lo(D_801585B4)($v1)
    /* C2890 800D2090 1680023C */  lui        $v0, %hi(D_801585A4)
    /* C2894 800D2094 A485428C */  lw         $v0, %lo(D_801585A4)($v0)
    /* C2898 800D2098 00000000 */  nop
    /* C289C 800D209C 1D006210 */  beq        $v1, $v0, .L800D2114
    /* C28A0 800D20A0 00000000 */   nop
    /* C28A4 800D20A4 1280043C */  lui        $a0, %hi(D_80121340)
    /* C28A8 800D20A8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C28AC 800D20AC CD1A030C */  jal        func_800C6B34
    /* C28B0 800D20B0 00000000 */   nop
    /* C28B4 800D20B4 1280043C */  lui        $a0, %hi(D_80121340)
    /* C28B8 800D20B8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C28BC 800D20BC 151B030C */  jal        func_800C6C54
    /* C28C0 800D20C0 00000000 */   nop
    /* C28C4 800D20C4 1680023C */  lui        $v0, %hi(D_801585B4)
    /* C28C8 800D20C8 B485428C */  lw         $v0, %lo(D_801585B4)($v0)
    /* C28CC 800D20CC 1680053C */  lui        $a1, %hi(D_801585A4)
    /* C28D0 800D20D0 A485A58C */  lw         $a1, %lo(D_801585A4)($a1)
    /* C28D4 800D20D4 1280043C */  lui        $a0, %hi(D_80121340)
    /* C28D8 800D20D8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C28DC 800D20DC 9C1B030C */  jal        func_800C6E70
    /* C28E0 800D20E0 23284500 */   subu      $a1, $v0, $a1
    /* C28E4 800D20E4 1280043C */  lui        $a0, %hi(D_80121340)
    /* C28E8 800D20E8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C28EC 800D20EC CD1A030C */  jal        func_800C6B34
    /* C28F0 800D20F0 00000000 */   nop
    /* C28F4 800D20F4 1280043C */  lui        $a0, %hi(D_80121340)
    /* C28F8 800D20F8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C28FC 800D20FC 731B030C */  jal        func_800C6DCC
    /* C2900 800D2100 A9000524 */   addiu     $a1, $zero, 0xA9
    /* C2904 800D2104 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2908 800D2108 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C290C 800D210C 1F1B030C */  jal        func_800C6C7C
    /* C2910 800D2110 00000000 */   nop
  .L800D2114:
    /* C2914 800D2114 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2918 800D2118 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C291C 800D211C 20000524 */  addiu      $a1, $zero, 0x20
    /* C2920 800D2120 BA62030C */  jal        func_800D8AE8
    /* C2924 800D2124 A0000624 */   addiu     $a2, $zero, 0xA0
    /* C2928 800D2128 1280043C */  lui        $a0, %hi(D_80121340)
    /* C292C 800D212C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2930 800D2130 CB1A030C */  jal        func_800C6B2C
    /* C2934 800D2134 00000000 */   nop
    /* C2938 800D2138 05006006 */  bltz       $s3, .L800D2150
    /* C293C 800D213C 00000000 */   nop
    /* C2940 800D2140 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2944 800D2144 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2948 800D2148 57480308 */  j          .L800D215C
    /* C294C 800D214C 41000524 */   addiu     $a1, $zero, 0x41
  .L800D2150:
    /* C2950 800D2150 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2954 800D2154 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2958 800D2158 4A000524 */  addiu      $a1, $zero, 0x4A
  .L800D215C:
    /* C295C 800D215C 731B030C */  jal        func_800C6DCC
    /* C2960 800D2160 00000000 */   nop
    /* C2964 800D2164 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2968 800D2168 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C296C 800D216C F71A030C */  jal        func_800C6BDC
    /* C2970 800D2170 00000000 */   nop
    /* C2974 800D2174 0300601E */  bgtz       $s3, .L800D2184
    /* C2978 800D2178 21286002 */   addu      $a1, $s3, $zero
    /* C297C 800D217C 27281300 */  nor        $a1, $zero, $s3
    /* C2980 800D2180 0100A524 */  addiu      $a1, $a1, 0x1
  .L800D2184:
    /* C2984 800D2184 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2988 800D2188 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C298C 800D218C 9C1B030C */  jal        func_800C6E70
    /* C2990 800D2190 00000000 */   nop
    /* C2994 800D2194 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2998 800D2198 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C299C 800D219C EA000524 */  addiu      $a1, $zero, 0xEA
    /* C29A0 800D21A0 BA62030C */  jal        func_800D8AE8
    /* C29A4 800D21A4 A0000624 */   addiu     $a2, $zero, 0xA0
    /* C29A8 800D21A8 1680113C */  lui        $s1, %hi(D_8015852C)
    /* C29AC 800D21AC 2C85318E */  lw         $s1, %lo(D_8015852C)($s1)
    /* C29B0 800D21B0 1180023C */  lui        $v0, %hi(D_8010BA40)
    /* C29B4 800D21B4 40BA428C */  lw         $v0, %lo(D_8010BA40)($v0)
    /* C29B8 800D21B8 1680033C */  lui        $v1, %hi(D_8015855C)
    /* C29BC 800D21BC 5C85638C */  lw         $v1, %lo(D_8015855C)($v1)
    /* C29C0 800D21C0 00000000 */  nop
    /* C29C4 800D21C4 21904300 */  addu       $s2, $v0, $v1
    /* C29C8 800D21C8 23985100 */  subu       $s3, $v0, $s1
    /* C29CC 800D21CC 2A105102 */  slt        $v0, $s2, $s1
    /* C29D0 800D21D0 02004010 */  beqz       $v0, .L800D21DC
    /* C29D4 800D21D4 21804002 */   addu      $s0, $s2, $zero
    /* C29D8 800D21D8 21802002 */  addu       $s0, $s1, $zero
  .L800D21DC:
    /* C29DC 800D21DC E0000624 */  addiu      $a2, $zero, 0xE0
    /* C29E0 800D21E0 03006106 */  bgez       $s3, .L800D21F0
    /* C29E4 800D21E4 11001424 */   addiu     $s4, $zero, 0x11
    /* C29E8 800D21E8 08004016 */  bnez       $s2, .L800D220C
    /* C29EC 800D21EC 00000000 */   nop
  .L800D21F0:
    /* C29F0 800D21F0 0900601A */  blez       $s3, .L800D2218
    /* C29F4 800D21F4 00000000 */   nop
    /* C29F8 800D21F8 1680023C */  lui        $v0, %hi(D_8015852C)
    /* C29FC 800D21FC 2C85428C */  lw         $v0, %lo(D_8015852C)($v0)
    /* C2A00 800D2200 00000000 */  nop
    /* C2A04 800D2204 04004010 */  beqz       $v0, .L800D2218
    /* C2A08 800D2208 00000000 */   nop
  .L800D220C:
    /* C2A0C 800D220C FCFFC624 */  addiu      $a2, $a2, -0x4
    /* C2A10 800D2210 2330D400 */  subu       $a2, $a2, $s4
    /* C2A14 800D2214 FFFF1026 */  addiu      $s0, $s0, -0x1
  .L800D2218:
    /* C2A18 800D2218 1680023C */  lui        $v0, %hi(D_8015855C)
    /* C2A1C 800D221C 5C85428C */  lw         $v0, %lo(D_8015855C)($v0)
    /* C2A20 800D2220 00000000 */  nop
    /* C2A24 800D2224 04004010 */  beqz       $v0, .L800D2238
    /* C2A28 800D2228 00000000 */   nop
    /* C2A2C 800D222C FCFFC624 */  addiu      $a2, $a2, -0x4
    /* C2A30 800D2230 2330D400 */  subu       $a2, $a2, $s4
    /* C2A34 800D2234 FFFF1026 */  addiu      $s0, $s0, -0x1
  .L800D2238:
    /* C2A38 800D2238 1000A0AF */  sw         $zero, 0x10($sp)
    /* C2A3C 800D223C 21200002 */  addu       $a0, $s0, $zero
    /* C2A40 800D2240 21288002 */  addu       $a1, $s4, $zero
    /* C2A44 800D2244 2A1A030C */  jal        func_800C68A8
    /* C2A48 800D2248 6C00A727 */   addiu     $a3, $sp, 0x6C
    /* C2A4C 800D224C 21F04000 */  addu       $fp, $v0, $zero
    /* C2A50 800D2250 6C00A28F */  lw         $v0, 0x6C($sp)
    /* C2A54 800D2254 00000000 */  nop
    /* C2A58 800D2258 2A105000 */  slt        $v0, $v0, $s0
    /* C2A5C 800D225C 15004010 */  beqz       $v0, .L800D22B4
    /* C2A60 800D2260 00000000 */   nop
    /* C2A64 800D2264 1680033C */  lui        $v1, %hi(D_8015855C)
    /* C2A68 800D2268 5C85638C */  lw         $v1, %lo(D_8015855C)($v1)
    /* C2A6C 800D226C 6C00A48F */  lw         $a0, 0x6C($sp)
    /* C2A70 800D2270 23104302 */  subu       $v0, $s2, $v1
  .L800D2274:
    /* C2A74 800D2274 2A105100 */  slt        $v0, $v0, $s1
    /* C2A78 800D2278 03004010 */  beqz       $v0, .L800D2288
    /* C2A7C 800D227C FFFF1026 */   addiu     $s0, $s0, -0x1
    /* C2A80 800D2280 AA480308 */  j          .L800D22A8
    /* C2A84 800D2284 FFFF3126 */   addiu     $s1, $s1, -0x1
  .L800D2288:
    /* C2A88 800D2288 0A004312 */  beq        $s2, $v1, .L800D22B4
    /* C2A8C 800D228C 23104302 */   subu      $v0, $s2, $v1
    /* C2A90 800D2290 04002216 */  bne        $s1, $v0, .L800D22A4
    /* C2A94 800D2294 00000000 */   nop
    /* C2A98 800D2298 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* C2A9C 800D229C AA480308 */  j          .L800D22A8
    /* C2AA0 800D22A0 FFFF3126 */   addiu     $s1, $s1, -0x1
  .L800D22A4:
    /* C2AA4 800D22A4 FFFF5226 */  addiu      $s2, $s2, -0x1
  .L800D22A8:
    /* C2AA8 800D22A8 2A109000 */  slt        $v0, $a0, $s0
    /* C2AAC 800D22AC F1FF4014 */  bnez       $v0, .L800D2274
    /* C2AB0 800D22B0 23104302 */   subu      $v0, $s2, $v1
  .L800D22B4:
    /* C2AB4 800D22B4 1680023C */  lui        $v0, %hi(D_8015855C)
    /* C2AB8 800D22B8 5C85428C */  lw         $v0, %lo(D_8015855C)($v0)
    /* C2ABC 800D22BC 00000000 */  nop
    /* C2AC0 800D22C0 0A004010 */  beqz       $v0, .L800D22EC
    /* C2AC4 800D22C4 21180000 */   addu      $v1, $zero, $zero
    /* C2AC8 800D22C8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* C2ACC 800D22CC 1800C203 */  mult       $fp, $v0
    /* C2AD0 800D22D0 12480000 */  mflo       $t1
    /* C2AD4 800D22D4 02006012 */  beqz       $s3, .L800D22E0
    /* C2AD8 800D22D8 21188902 */   addu      $v1, $s4, $t1
    /* C2ADC 800D22DC 02006324 */  addiu      $v1, $v1, 0x2
  .L800D22E0:
    /* C2AE0 800D22E0 1680023C */  lui        $v0, %hi(D_8015855C)
    /* C2AE4 800D22E4 5C85428C */  lw         $v0, %lo(D_8015855C)($v0)
    /* C2AE8 800D22E8 02006324 */  addiu      $v1, $v1, 0x2
  .L800D22EC:
    /* C2AEC 800D22EC 10000224 */  addiu      $v0, $zero, 0x10
    /* C2AF0 800D22F0 9000A88F */  lw         $t0, 0x90($sp)
    /* C2AF4 800D22F4 00000000 */  nop
    /* C2AF8 800D22F8 D00E02AD */  sw         $v0, 0xED0($t0)
    /* C2AFC 800D22FC CB000224 */  addiu      $v0, $zero, 0xCB
    /* C2B00 800D2300 1000A2AF */  sw         $v0, 0x10($sp)
    /* C2B04 800D2304 7000A427 */  addiu      $a0, $sp, 0x70
    /* C2B08 800D2308 1480053C */  lui        $a1, %hi(D_801381C0)
    /* C2B0C 800D230C C081A524 */  addiu      $a1, $a1, %lo(D_801381C0)
    /* C2B10 800D2310 9000A68F */  lw         $a2, 0x90($sp)
    /* C2B14 800D2314 89EE030C */  jal        func_800FBA24
    /* C2B18 800D2318 10000724 */   addiu     $a3, $zero, 0x10
    /* C2B1C 800D231C 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2B20 800D2320 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2B24 800D2324 CB1A030C */  jal        func_800C6B2C
    /* C2B28 800D2328 00000000 */   nop
    /* C2B2C 800D232C 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2B30 800D2330 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2B34 800D2334 0180053C */  lui        $a1, %hi(D_80012CA4)
    /* C2B38 800D2338 A42CA524 */  addiu      $a1, $a1, %lo(D_80012CA4)
    /* C2B3C 800D233C 9987030C */  jal        func_800E1E64
    /* C2B40 800D2340 00000000 */   nop
    /* C2B44 800D2344 1680023C */  lui        $v0, %hi(D_8015852C)
    /* C2B48 800D2348 2C85428C */  lw         $v0, %lo(D_8015852C)($v0)
    /* C2B4C 800D234C 00000000 */  nop
    /* C2B50 800D2350 2A184202 */  slt        $v1, $s2, $v0
    /* C2B54 800D2354 03006010 */  beqz       $v1, .L800D2364
    /* C2B58 800D2358 21106202 */   addu      $v0, $s3, $v0
    /* C2B5C 800D235C 21104002 */  addu       $v0, $s2, $zero
    /* C2B60 800D2360 21106202 */  addu       $v0, $s3, $v0
  .L800D2364:
    /* C2B64 800D2364 1680053C */  lui        $a1, %hi(D_8015855C)
    /* C2B68 800D2368 5C85A58C */  lw         $a1, %lo(D_8015855C)($a1)
    /* C2B6C 800D236C 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2B70 800D2370 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2B74 800D2374 9C1B030C */  jal        func_800C6E70
    /* C2B78 800D2378 21284500 */   addu      $a1, $v0, $a1
    /* C2B7C 800D237C 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2B80 800D2380 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2B84 800D2384 20000524 */  addiu      $a1, $zero, 0x20
    /* C2B88 800D2388 BA62030C */  jal        func_800D8AE8
    /* C2B8C 800D238C D0000624 */   addiu     $a2, $zero, 0xD0
    /* C2B90 800D2390 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2B94 800D2394 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2B98 800D2398 CB1A030C */  jal        func_800C6B2C
    /* C2B9C 800D239C 00000000 */   nop
    /* C2BA0 800D23A0 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2BA4 800D23A4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2BA8 800D23A8 731B030C */  jal        func_800C6DCC
    /* C2BAC 800D23AC CC000524 */   addiu     $a1, $zero, 0xCC
    /* C2BB0 800D23B0 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2BB4 800D23B4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2BB8 800D23B8 F71A030C */  jal        func_800C6BDC
    /* C2BBC 800D23BC 00000000 */   nop
    /* C2BC0 800D23C0 1680023C */  lui        $v0, %hi(D_8015852C)
    /* C2BC4 800D23C4 2C85428C */  lw         $v0, %lo(D_8015852C)($v0)
    /* C2BC8 800D23C8 00000000 */  nop
    /* C2BCC 800D23CC 2A184202 */  slt        $v1, $s2, $v0
    /* C2BD0 800D23D0 02006010 */  beqz       $v1, .L800D23DC
    /* C2BD4 800D23D4 00000000 */   nop
    /* C2BD8 800D23D8 21104002 */  addu       $v0, $s2, $zero
  .L800D23DC:
    /* C2BDC 800D23DC 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2BE0 800D23E0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2BE4 800D23E4 9C1B030C */  jal        func_800C6E70
    /* C2BE8 800D23E8 21284000 */   addu      $a1, $v0, $zero
    /* C2BEC 800D23EC 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2BF0 800D23F0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2BF4 800D23F4 84000524 */  addiu      $a1, $zero, 0x84
    /* C2BF8 800D23F8 BA62030C */  jal        func_800D8AE8
    /* C2BFC 800D23FC D0000624 */   addiu     $a2, $zero, 0xD0
    /* C2C00 800D2400 1680023C */  lui        $v0, %hi(D_8015855C)
    /* C2C04 800D2404 5C85428C */  lw         $v0, %lo(D_8015855C)($v0)
    /* C2C08 800D2408 00000000 */  nop
    /* C2C0C 800D240C 18004010 */  beqz       $v0, .L800D2470
    /* C2C10 800D2410 00000000 */   nop
    /* C2C14 800D2414 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2C18 800D2418 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2C1C 800D241C CB1A030C */  jal        func_800C6B2C
    /* C2C20 800D2420 00000000 */   nop
    /* C2C24 800D2424 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2C28 800D2428 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2C2C 800D242C 731B030C */  jal        func_800C6DCC
    /* C2C30 800D2430 43000524 */   addiu     $a1, $zero, 0x43
    /* C2C34 800D2434 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2C38 800D2438 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2C3C 800D243C F71A030C */  jal        func_800C6BDC
    /* C2C40 800D2440 00000000 */   nop
    /* C2C44 800D2444 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2C48 800D2448 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2C4C 800D244C 1680053C */  lui        $a1, %hi(D_8015855C)
    /* C2C50 800D2450 5C85A58C */  lw         $a1, %lo(D_8015855C)($a1)
    /* C2C54 800D2454 9C1B030C */  jal        func_800C6E70
    /* C2C58 800D2458 00000000 */   nop
    /* C2C5C 800D245C 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2C60 800D2460 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2C64 800D2464 AC000524 */  addiu      $a1, $zero, 0xAC
    /* C2C68 800D2468 BA62030C */  jal        func_800D8AE8
    /* C2C6C 800D246C D0000624 */   addiu     $a2, $zero, 0xD0
  .L800D2470:
    /* C2C70 800D2470 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2C74 800D2474 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2C78 800D2478 CB1A030C */  jal        func_800C6B2C
    /* C2C7C 800D247C 00000000 */   nop
    /* C2C80 800D2480 09006006 */  bltz       $s3, .L800D24A8
    /* C2C84 800D2484 00000000 */   nop
    /* C2C88 800D2488 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2C8C 800D248C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2C90 800D2490 1680053C */  lui        $a1, %hi(D_80159218)
    /* C2C94 800D2494 1892A524 */  addiu      $a1, $a1, %lo(D_80159218)
    /* C2C98 800D2498 9987030C */  jal        func_800E1E64
    /* C2C9C 800D249C 00000000 */   nop
    /* C2CA0 800D24A0 2E490308 */  j          .L800D24B8
    /* C2CA4 800D24A4 00000000 */   nop
  .L800D24A8:
    /* C2CA8 800D24A8 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2CAC 800D24AC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2CB0 800D24B0 731B030C */  jal        func_800C6DCC
    /* C2CB4 800D24B4 4B000524 */   addiu     $a1, $zero, 0x4B
  .L800D24B8:
    /* C2CB8 800D24B8 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2CBC 800D24BC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2CC0 800D24C0 F71A030C */  jal        func_800C6BDC
    /* C2CC4 800D24C4 00000000 */   nop
    /* C2CC8 800D24C8 0300601E */  bgtz       $s3, .L800D24D8
    /* C2CCC 800D24CC 21286002 */   addu      $a1, $s3, $zero
    /* C2CD0 800D24D0 27281300 */  nor        $a1, $zero, $s3
    /* C2CD4 800D24D4 0100A524 */  addiu      $a1, $a1, 0x1
  .L800D24D8:
    /* C2CD8 800D24D8 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2CDC 800D24DC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2CE0 800D24E0 9C1B030C */  jal        func_800C6E70
    /* C2CE4 800D24E4 11001424 */   addiu     $s4, $zero, 0x11
    /* C2CE8 800D24E8 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2CEC 800D24EC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2CF0 800D24F0 EA000524 */  addiu      $a1, $zero, 0xEA
    /* C2CF4 800D24F4 BA62030C */  jal        func_800D8AE8
    /* C2CF8 800D24F8 D0000624 */   addiu     $a2, $zero, 0xD0
    /* C2CFC 800D24FC 1180103C */  lui        $s0, %hi(D_8010BA44)
    /* C2D00 800D2500 44BA108E */  lw         $s0, %lo(D_8010BA44)($s0)
    /* C2D04 800D2504 1680023C */  lui        $v0, %hi(D_80158558)
    /* C2D08 800D2508 5885428C */  lw         $v0, %lo(D_80158558)($v0)
    /* C2D0C 800D250C 00000000 */  nop
    /* C2D10 800D2510 03004010 */  beqz       $v0, .L800D2520
    /* C2D14 800D2514 E0000624 */   addiu     $a2, $zero, 0xE0
    /* C2D18 800D2518 CB000624 */  addiu      $a2, $zero, 0xCB
    /* C2D1C 800D251C FFFF1026 */  addiu      $s0, $s0, -0x1
  .L800D2520:
    /* C2D20 800D2520 1000A0AF */  sw         $zero, 0x10($sp)
    /* C2D24 800D2524 21200002 */  addu       $a0, $s0, $zero
    /* C2D28 800D2528 21288002 */  addu       $a1, $s4, $zero
    /* C2D2C 800D252C 2A1A030C */  jal        func_800C68A8
    /* C2D30 800D2530 6C00A727 */   addiu     $a3, $sp, 0x6C
    /* C2D34 800D2534 6C00A28F */  lw         $v0, 0x6C($sp)
    /* C2D38 800D2538 00000000 */  nop
    /* C2D3C 800D253C 21184000 */  addu       $v1, $v0, $zero
    /* C2D40 800D2540 2A105000 */  slt        $v0, $v0, $s0
    /* C2D44 800D2544 06004010 */  beqz       $v0, .L800D2560
    /* C2D48 800D2548 00000000 */   nop
    /* C2D4C 800D254C FFFF1026 */  addiu      $s0, $s0, -0x1
  .L800D2550:
    /* C2D50 800D2550 2A107000 */  slt        $v0, $v1, $s0
    /* C2D54 800D2554 FEFF4014 */  bnez       $v0, .L800D2550
    /* C2D58 800D2558 FFFF1026 */   addiu     $s0, $s0, -0x1
    /* C2D5C 800D255C 01001026 */  addiu      $s0, $s0, 0x1
  .L800D2560:
    /* C2D60 800D2560 1680023C */  lui        $v0, %hi(D_80158558)
    /* C2D64 800D2564 5885428C */  lw         $v0, %lo(D_80158558)($v0)
    /* C2D68 800D2568 10000224 */  addiu      $v0, $zero, 0x10
    /* C2D6C 800D256C 9000A98F */  lw         $t1, 0x90($sp)
    /* C2D70 800D2570 00000000 */  nop
    /* C2D74 800D2574 D00E22AD */  sw         $v0, 0xED0($t1)
    /* C2D78 800D2578 AD000224 */  addiu      $v0, $zero, 0xAD
    /* C2D7C 800D257C 1000A2AF */  sw         $v0, 0x10($sp)
    /* C2D80 800D2580 7800A427 */  addiu      $a0, $sp, 0x78
    /* C2D84 800D2584 1480053C */  lui        $a1, %hi(D_801382E8)
    /* C2D88 800D2588 E882A524 */  addiu      $a1, $a1, %lo(D_801382E8)
    /* C2D8C 800D258C 9000A68F */  lw         $a2, 0x90($sp)
    /* C2D90 800D2590 89EE030C */  jal        func_800FBA24
    /* C2D94 800D2594 10000724 */   addiu     $a3, $zero, 0x10
    /* C2D98 800D2598 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2D9C 800D259C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2DA0 800D25A0 CB1A030C */  jal        func_800C6B2C
    /* C2DA4 800D25A4 00000000 */   nop
    /* C2DA8 800D25A8 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2DAC 800D25AC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2DB0 800D25B0 0180053C */  lui        $a1, %hi(D_80012CB0)
    /* C2DB4 800D25B4 B02CA524 */  addiu      $a1, $a1, %lo(D_80012CB0)
    /* C2DB8 800D25B8 9987030C */  jal        func_800E1E64
    /* C2DBC 800D25BC 00000000 */   nop
    /* C2DC0 800D25C0 1180023C */  lui        $v0, %hi(D_8010BA44)
    /* C2DC4 800D25C4 44BA428C */  lw         $v0, %lo(D_8010BA44)($v0)
    /* C2DC8 800D25C8 1680053C */  lui        $a1, %hi(D_80158558)
    /* C2DCC 800D25CC 5885A58C */  lw         $a1, %lo(D_80158558)($a1)
    /* C2DD0 800D25D0 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2DD4 800D25D4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2DD8 800D25D8 9C1B030C */  jal        func_800C6E70
    /* C2DDC 800D25DC 23284500 */   subu      $a1, $v0, $a1
    /* C2DE0 800D25E0 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2DE4 800D25E4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2DE8 800D25E8 20000524 */  addiu      $a1, $zero, 0x20
    /* C2DEC 800D25EC BA62030C */  jal        func_800D8AE8
    /* C2DF0 800D25F0 B0000624 */   addiu     $a2, $zero, 0xB0
    /* C2DF4 800D25F4 1680023C */  lui        $v0, %hi(D_80158864)
    /* C2DF8 800D25F8 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C2DFC 800D25FC 00000000 */  nop
    /* C2E00 800D2600 08004380 */  lb         $v1, 0x8($v0)
    /* C2E04 800D2604 00000000 */  nop
    /* C2E08 800D2608 40100300 */  sll        $v0, $v1, 1
    /* C2E0C 800D260C 21104300 */  addu       $v0, $v0, $v1
    /* C2E10 800D2610 80100200 */  sll        $v0, $v0, 2
    /* C2E14 800D2614 23104300 */  subu       $v0, $v0, $v1
    /* C2E18 800D2618 00110200 */  sll        $v0, $v0, 4
    /* C2E1C 800D261C 23104300 */  subu       $v0, $v0, $v1
    /* C2E20 800D2620 C0100200 */  sll        $v0, $v0, 3
    /* C2E24 800D2624 1180013C */  lui        $at, %hi(D_801176A7)
    /* C2E28 800D2628 21082200 */  addu       $at, $at, $v0
    /* C2E2C 800D262C A7762390 */  lbu        $v1, %lo(D_801176A7)($at)
    /* C2E30 800D2630 04000224 */  addiu      $v0, $zero, 0x4
    /* C2E34 800D2634 23006214 */  bne        $v1, $v0, .L800D26C4
    /* C2E38 800D2638 00000000 */   nop
    /* C2E3C 800D263C 1680023C */  lui        $v0, %hi(D_80158560)
    /* C2E40 800D2640 6085428C */  lw         $v0, %lo(D_80158560)($v0)
    /* C2E44 800D2644 00000000 */  nop
    /* C2E48 800D2648 1E004010 */  beqz       $v0, .L800D26C4
    /* C2E4C 800D264C 00000000 */   nop
    /* C2E50 800D2650 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2E54 800D2654 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2E58 800D2658 CB1A030C */  jal        func_800C6B2C
    /* C2E5C 800D265C 00000000 */   nop
    /* C2E60 800D2660 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2E64 800D2664 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2E68 800D2668 731B030C */  jal        func_800C6DCC
    /* C2E6C 800D266C 5D000524 */   addiu     $a1, $zero, 0x5D
    /* C2E70 800D2670 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2E74 800D2674 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2E78 800D2678 F71A030C */  jal        func_800C6BDC
    /* C2E7C 800D267C 00000000 */   nop
    /* C2E80 800D2680 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2E84 800D2684 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2E88 800D2688 1680053C */  lui        $a1, %hi(D_80159220)
    /* C2E8C 800D268C 2092A524 */  addiu      $a1, $a1, %lo(D_80159220)
    /* C2E90 800D2690 9987030C */  jal        func_800E1E64
    /* C2E94 800D2694 00000000 */   nop
    /* C2E98 800D2698 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2E9C 800D269C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2EA0 800D26A0 1680053C */  lui        $a1, %hi(D_80158560)
    /* C2EA4 800D26A4 6085A58C */  lw         $a1, %lo(D_80158560)($a1)
    /* C2EA8 800D26A8 9C1B030C */  jal        func_800C6E70
    /* C2EAC 800D26AC 00000000 */   nop
    /* C2EB0 800D26B0 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2EB4 800D26B4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2EB8 800D26B8 85000524 */  addiu      $a1, $zero, 0x85
    /* C2EBC 800D26BC BA62030C */  jal        func_800D8AE8
    /* C2EC0 800D26C0 B0000624 */   addiu     $a2, $zero, 0xB0
  .L800D26C4:
    /* C2EC4 800D26C4 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2EC8 800D26C8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2ECC 800D26CC CB1A030C */  jal        func_800C6B2C
    /* C2ED0 800D26D0 11001424 */   addiu     $s4, $zero, 0x11
    /* C2ED4 800D26D4 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2ED8 800D26D8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2EDC 800D26DC 731B030C */  jal        func_800C6DCC
    /* C2EE0 800D26E0 46000524 */   addiu     $a1, $zero, 0x46
    /* C2EE4 800D26E4 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2EE8 800D26E8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2EEC 800D26EC F71A030C */  jal        func_800C6BDC
    /* C2EF0 800D26F0 00000000 */   nop
    /* C2EF4 800D26F4 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2EF8 800D26F8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2EFC 800D26FC 1680053C */  lui        $a1, %hi(D_80158558)
    /* C2F00 800D2700 5885A58C */  lw         $a1, %lo(D_80158558)($a1)
    /* C2F04 800D2704 9C1B030C */  jal        func_800C6E70
    /* C2F08 800D2708 00000000 */   nop
    /* C2F0C 800D270C 1280043C */  lui        $a0, %hi(D_80121340)
    /* C2F10 800D2710 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C2F14 800D2714 BE000524 */  addiu      $a1, $zero, 0xBE
    /* C2F18 800D2718 BA62030C */  jal        func_800D8AE8
    /* C2F1C 800D271C B0000624 */   addiu     $a2, $zero, 0xB0
    /* C2F20 800D2720 1680113C */  lui        $s1, %hi(D_8015854C)
    /* C2F24 800D2724 4C85318E */  lw         $s1, %lo(D_8015854C)($s1)
    /* C2F28 800D2728 1680123C */  lui        $s2, %hi(D_80158550)
    /* C2F2C 800D272C 5085528E */  lw         $s2, %lo(D_80158550)($s2)
    /* C2F30 800D2730 1680133C */  lui        $s3, %hi(D_80158554)
    /* C2F34 800D2734 5485738E */  lw         $s3, %lo(D_80158554)($s3)
    /* C2F38 800D2738 21803202 */  addu       $s0, $s1, $s2
    /* C2F3C 800D273C 21801302 */  addu       $s0, $s0, $s3
    /* C2F40 800D2740 2A181100 */  slt        $v1, $zero, $s1
    /* C2F44 800D2744 2A101200 */  slt        $v0, $zero, $s2
    /* C2F48 800D2748 21104300 */  addu       $v0, $v0, $v1
    /* C2F4C 800D274C 2A181300 */  slt        $v1, $zero, $s3
    /* C2F50 800D2750 21186200 */  addu       $v1, $v1, $v0
    /* C2F54 800D2754 E0000624 */  addiu      $a2, $zero, 0xE0
    /* C2F58 800D2758 04008426 */  addiu      $a0, $s4, 0x4
  .L800D275C:
    /* C2F5C 800D275C 02006228 */  slti       $v0, $v1, 0x2
    /* C2F60 800D2760 04004014 */  bnez       $v0, .L800D2774
    /* C2F64 800D2764 FFFF6324 */   addiu     $v1, $v1, -0x1
    /* C2F68 800D2768 2330C400 */  subu       $a2, $a2, $a0
    /* C2F6C 800D276C D7490308 */  j          .L800D275C
    /* C2F70 800D2770 FFFF1026 */   addiu     $s0, $s0, -0x1
  .L800D2774:
    /* C2F74 800D2774 1000A0AF */  sw         $zero, 0x10($sp)
    /* C2F78 800D2778 21200002 */  addu       $a0, $s0, $zero
    /* C2F7C 800D277C 21288002 */  addu       $a1, $s4, $zero
    /* C2F80 800D2780 2A1A030C */  jal        func_800C68A8
    /* C2F84 800D2784 6C00A727 */   addiu     $a3, $sp, 0x6C
    /* C2F88 800D2788 6C00A28F */  lw         $v0, 0x6C($sp)
    /* C2F8C 800D278C 00000000 */  nop
    /* C2F90 800D2790 2A105000 */  slt        $v0, $v0, $s0
    /* C2F94 800D2794 16004010 */  beqz       $v0, .L800D27F0
    /* C2F98 800D2798 10000224 */   addiu     $v0, $zero, 0x10
    /* C2F9C 800D279C 2A105102 */  slt        $v0, $s2, $s1
  .L800D27A0:
    /* C2FA0 800D27A0 05004010 */  beqz       $v0, .L800D27B8
    /* C2FA4 800D27A4 2A107102 */   slt       $v0, $s3, $s1
    /* C2FA8 800D27A8 04004010 */  beqz       $v0, .L800D27BC
    /* C2FAC 800D27AC 2A105302 */   slt       $v0, $s2, $s3
    /* C2FB0 800D27B0 F4490308 */  j          .L800D27D0
    /* C2FB4 800D27B4 FFFF3126 */   addiu     $s1, $s1, -0x1
  .L800D27B8:
    /* C2FB8 800D27B8 2A105302 */  slt        $v0, $s2, $s3
  .L800D27BC:
    /* C2FBC 800D27BC 03004010 */  beqz       $v0, .L800D27CC
    /* C2FC0 800D27C0 00000000 */   nop
    /* C2FC4 800D27C4 F4490308 */  j          .L800D27D0
    /* C2FC8 800D27C8 FFFF7326 */   addiu     $s3, $s3, -0x1
  .L800D27CC:
    /* C2FCC 800D27CC FFFF5226 */  addiu      $s2, $s2, -0x1
  .L800D27D0:
    /* C2FD0 800D27D0 6C00A28F */  lw         $v0, 0x6C($sp)
    /* C2FD4 800D27D4 00000000 */  nop
    /* C2FD8 800D27D8 01004224 */  addiu      $v0, $v0, 0x1
    /* C2FDC 800D27DC 6C00A2AF */  sw         $v0, 0x6C($sp)
    /* C2FE0 800D27E0 2A105000 */  slt        $v0, $v0, $s0
    /* C2FE4 800D27E4 EEFF4014 */  bnez       $v0, .L800D27A0
    /* C2FE8 800D27E8 2A105102 */   slt       $v0, $s2, $s1
    /* C2FEC 800D27EC 10000224 */  addiu      $v0, $zero, 0x10
  .L800D27F0:
    /* C2FF0 800D27F0 9000A88F */  lw         $t0, 0x90($sp)
    /* C2FF4 800D27F4 00000000 */  nop
    /* C2FF8 800D27F8 D00E02AD */  sw         $v0, 0xED0($t0)
    /* C2FFC 800D27FC 1680023C */  lui        $v0, %hi(D_80158864)
    /* C3000 800D2800 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* C3004 800D2804 00000000 */  nop
    /* C3008 800D2808 08005180 */  lb         $s1, 0x8($v0)
    /* C300C 800D280C 1280043C */  lui        $a0, %hi(D_80121340)
    /* C3010 800D2810 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C3014 800D2814 CB1A030C */  jal        func_800C6B2C
    /* C3018 800D2818 40801100 */   sll       $s0, $s1, 1
    /* C301C 800D281C 1280043C */  lui        $a0, %hi(D_80121340)
    /* C3020 800D2820 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C3024 800D2824 0180053C */  lui        $a1, %hi(D_80012CC0)
    /* C3028 800D2828 C02CA524 */  addiu      $a1, $a1, %lo(D_80012CC0)
    /* C302C 800D282C 9987030C */  jal        func_800E1E64
    /* C3030 800D2830 21801102 */   addu      $s0, $s0, $s1
    /* C3034 800D2834 80801000 */  sll        $s0, $s0, 2
    /* C3038 800D2838 23801102 */  subu       $s0, $s0, $s1
    /* C303C 800D283C 00811000 */  sll        $s0, $s0, 4
    /* C3040 800D2840 23801102 */  subu       $s0, $s0, $s1
    /* C3044 800D2844 C0801000 */  sll        $s0, $s0, 3
    /* C3048 800D2848 1180013C */  lui        $at, %hi(D_801176A6)
    /* C304C 800D284C 21083000 */  addu       $at, $at, $s0
    /* C3050 800D2850 A6762290 */  lbu        $v0, %lo(D_801176A6)($at)
    /* C3054 800D2854 00000000 */  nop
    /* C3058 800D2858 80280200 */  sll        $a1, $v0, 2
    /* C305C 800D285C 2128A200 */  addu       $a1, $a1, $v0
    /* C3060 800D2860 1280043C */  lui        $a0, %hi(D_80121340)
    /* C3064 800D2864 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C3068 800D2868 9C1B030C */  jal        func_800C6E70
    /* C306C 800D286C 40280500 */   sll       $a1, $a1, 1
    /* C3070 800D2870 1280043C */  lui        $a0, %hi(D_80121340)
    /* C3074 800D2874 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C3078 800D2878 0B1B030C */  jal        func_800C6C2C
    /* C307C 800D287C 08001124 */   addiu     $s1, $zero, 0x8
    /* C3080 800D2880 1280043C */  lui        $a0, %hi(D_80121340)
    /* C3084 800D2884 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C3088 800D2888 F71A030C */  jal        func_800C6BDC
    /* C308C 800D288C 00000000 */   nop
    /* C3090 800D2890 1280043C */  lui        $a0, %hi(D_80121340)
    /* C3094 800D2894 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C3098 800D2898 1680053C */  lui        $a1, %hi(D_8015854C)
    /* C309C 800D289C 4C85A58C */  lw         $a1, %lo(D_8015854C)($a1)
    /* C30A0 800D28A0 9C1B030C */  jal        func_800C6E70
    /* C30A4 800D28A4 00000000 */   nop
    /* C30A8 800D28A8 1280043C */  lui        $a0, %hi(D_80121340)
    /* C30AC 800D28AC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C30B0 800D28B0 20000524 */  addiu      $a1, $zero, 0x20
    /* C30B4 800D28B4 BA62030C */  jal        func_800D8AE8
    /* C30B8 800D28B8 C0000624 */   addiu     $a2, $zero, 0xC0
    /* C30BC 800D28BC 1280043C */  lui        $a0, %hi(D_80121340)
    /* C30C0 800D28C0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C30C4 800D28C4 CB1A030C */  jal        func_800C6B2C
    /* C30C8 800D28C8 00000000 */   nop
    /* C30CC 800D28CC 1280043C */  lui        $a0, %hi(D_80121340)
    /* C30D0 800D28D0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C30D4 800D28D4 1680053C */  lui        $a1, %hi(D_80159224)
    /* C30D8 800D28D8 2492A524 */  addiu      $a1, $a1, %lo(D_80159224)
    /* C30DC 800D28DC 9987030C */  jal        func_800E1E64
    /* C30E0 800D28E0 00000000 */   nop
    /* C30E4 800D28E4 1180013C */  lui        $at, %hi(D_801176A6)
    /* C30E8 800D28E8 21083000 */  addu       $at, $at, $s0
    /* C30EC 800D28EC A6762390 */  lbu        $v1, %lo(D_801176A6)($at)
    /* C30F0 800D28F0 1180013C */  lui        $at, %hi(D_801176A5)
    /* C30F4 800D28F4 21083000 */  addu       $at, $at, $s0
    /* C30F8 800D28F8 A5762290 */  lbu        $v0, %lo(D_801176A5)($at)
    /* C30FC 800D28FC 00000000 */  nop
    /* C3100 800D2900 21186200 */  addu       $v1, $v1, $v0
    /* C3104 800D2904 0A000224 */  addiu      $v0, $zero, 0xA
    /* C3108 800D2908 23104300 */  subu       $v0, $v0, $v1
    /* C310C 800D290C 80280200 */  sll        $a1, $v0, 2
    /* C3110 800D2910 2128A200 */  addu       $a1, $a1, $v0
    /* C3114 800D2914 1280043C */  lui        $a0, %hi(D_80121340)
    /* C3118 800D2918 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C311C 800D291C 9C1B030C */  jal        func_800C6E70
    /* C3120 800D2920 40280500 */   sll       $a1, $a1, 1
    /* C3124 800D2924 1280043C */  lui        $a0, %hi(D_80121340)
    /* C3128 800D2928 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C312C 800D292C 0B1B030C */  jal        func_800C6C2C
    /* C3130 800D2930 00000000 */   nop
    /* C3134 800D2934 1280043C */  lui        $a0, %hi(D_80121340)
    /* C3138 800D2938 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C313C 800D293C F71A030C */  jal        func_800C6BDC
    /* C3140 800D2940 00000000 */   nop
    /* C3144 800D2944 1280043C */  lui        $a0, %hi(D_80121340)
    /* C3148 800D2948 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C314C 800D294C 1680053C */  lui        $a1, %hi(D_80158550)
    /* C3150 800D2950 5085A58C */  lw         $a1, %lo(D_80158550)($a1)
    /* C3154 800D2954 9C1B030C */  jal        func_800C6E70
    /* C3158 800D2958 00000000 */   nop
    /* C315C 800D295C 1280043C */  lui        $a0, %hi(D_80121340)
    /* C3160 800D2960 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C3164 800D2964 85000524 */  addiu      $a1, $zero, 0x85
    /* C3168 800D2968 BA62030C */  jal        func_800D8AE8
    /* C316C 800D296C C0000624 */   addiu     $a2, $zero, 0xC0
    /* C3170 800D2970 1280043C */  lui        $a0, %hi(D_80121340)
    /* C3174 800D2974 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C3178 800D2978 CB1A030C */  jal        func_800C6B2C
    /* C317C 800D297C 00000000 */   nop
    /* C3180 800D2980 1280043C */  lui        $a0, %hi(D_80121340)
    /* C3184 800D2984 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C3188 800D2988 1680053C */  lui        $a1, %hi(D_8015922C)
    /* C318C 800D298C 2C92A524 */  addiu      $a1, $a1, %lo(D_8015922C)
    /* C3190 800D2990 9987030C */  jal        func_800E1E64
    /* C3194 800D2994 00000000 */   nop
    /* C3198 800D2998 1180013C */  lui        $at, %hi(D_801176A5)
    /* C319C 800D299C 21083000 */  addu       $at, $at, $s0
    /* C31A0 800D29A0 A5762290 */  lbu        $v0, %lo(D_801176A5)($at)
    /* C31A4 800D29A4 00000000 */  nop
    /* C31A8 800D29A8 80280200 */  sll        $a1, $v0, 2
    /* C31AC 800D29AC 2128A200 */  addu       $a1, $a1, $v0
    /* C31B0 800D29B0 1280043C */  lui        $a0, %hi(D_80121340)
    /* C31B4 800D29B4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C31B8 800D29B8 9C1B030C */  jal        func_800C6E70
    /* C31BC 800D29BC 40280500 */   sll       $a1, $a1, 1
    /* C31C0 800D29C0 1280043C */  lui        $a0, %hi(D_80121340)
    /* C31C4 800D29C4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C31C8 800D29C8 0B1B030C */  jal        func_800C6C2C
    /* C31CC 800D29CC 36011024 */   addiu     $s0, $zero, 0x136
    /* C31D0 800D29D0 1280043C */  lui        $a0, %hi(D_80121340)
    /* C31D4 800D29D4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C31D8 800D29D8 F71A030C */  jal        func_800C6BDC
    /* C31DC 800D29DC 00000000 */   nop
    /* C31E0 800D29E0 1280043C */  lui        $a0, %hi(D_80121340)
    /* C31E4 800D29E4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C31E8 800D29E8 1680053C */  lui        $a1, %hi(D_80158554)
    /* C31EC 800D29EC 5485A58C */  lw         $a1, %lo(D_80158554)($a1)
    /* C31F0 800D29F0 9C1B030C */  jal        func_800C6E70
    /* C31F4 800D29F4 00000000 */   nop
    /* C31F8 800D29F8 1280043C */  lui        $a0, %hi(D_80121340)
    /* C31FC 800D29FC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* C3200 800D2A00 D6000524 */  addiu      $a1, $zero, 0xD6
    /* C3204 800D2A04 BA62030C */  jal        func_800D8AE8
    /* C3208 800D2A08 C0000624 */   addiu     $a2, $zero, 0xC0
    /* C320C 800D2A0C 8000B227 */  addiu      $s2, $sp, 0x80
    /* C3210 800D2A10 C59E030C */  jal        SetLineF2
    /* C3214 800D2A14 21204002 */   addu      $a0, $s2, $zero
    /* C3218 800D2A18 8400A0A3 */  sb         $zero, 0x84($sp)
    /* C321C 800D2A1C 8500A0A3 */  sb         $zero, 0x85($sp)
    /* C3220 800D2A20 8600A0A3 */  sb         $zero, 0x86($sp)
    /* C3224 800D2A24 8800B1A7 */  sh         $s1, 0x88($sp)
    /* C3228 800D2A28 99000224 */  addiu      $v0, $zero, 0x99
    /* C322C 800D2A2C 8A00A2A7 */  sh         $v0, 0x8A($sp)
    /* C3230 800D2A30 8C00B0A7 */  sh         $s0, 0x8C($sp)
    /* C3234 800D2A34 8E00A2A7 */  sh         $v0, 0x8E($sp)
    /* C3238 800D2A38 928E030C */  jal        DrawPrim
    /* C323C 800D2A3C 21204002 */   addu      $a0, $s2, $zero
    /* C3240 800D2A40 2C8D030C */  jal        DrawSync
    /* C3244 800D2A44 21200000 */   addu      $a0, $zero, $zero
    /* C3248 800D2A48 8800B1A7 */  sh         $s1, 0x88($sp)
    /* C324C 800D2A4C AA000224 */  addiu      $v0, $zero, 0xAA
    /* C3250 800D2A50 8A00A2A7 */  sh         $v0, 0x8A($sp)
    /* C3254 800D2A54 8C00B0A7 */  sh         $s0, 0x8C($sp)
    /* C3258 800D2A58 8E00A2A7 */  sh         $v0, 0x8E($sp)
    /* C325C 800D2A5C 928E030C */  jal        DrawPrim
    /* C3260 800D2A60 21204002 */   addu      $a0, $s2, $zero
    /* C3264 800D2A64 2C8D030C */  jal        DrawSync
    /* C3268 800D2A68 21200000 */   addu      $a0, $zero, $zero
    /* C326C 800D2A6C 8800B1A7 */  sh         $s1, 0x88($sp)
    /* C3270 800D2A70 C9000224 */  addiu      $v0, $zero, 0xC9
    /* C3274 800D2A74 8A00A2A7 */  sh         $v0, 0x8A($sp)
    /* C3278 800D2A78 8C00B0A7 */  sh         $s0, 0x8C($sp)
    /* C327C 800D2A7C 8E00A2A7 */  sh         $v0, 0x8E($sp)
    /* C3280 800D2A80 928E030C */  jal        DrawPrim
    /* C3284 800D2A84 21204002 */   addu      $a0, $s2, $zero
    /* C3288 800D2A88 2C8D030C */  jal        DrawSync
    /* C328C 800D2A8C 21200000 */   addu      $a0, $zero, $zero
    /* C3290 800D2A90 01000424 */  addiu      $a0, $zero, 0x1
    /* C3294 800D2A94 D0EC030C */  jal        func_800FB340
    /* C3298 800D2A98 01000524 */   addiu     $a1, $zero, 0x1
    /* C329C 800D2A9C DC00BF8F */  lw         $ra, 0xDC($sp)
    /* C32A0 800D2AA0 D800BE8F */  lw         $fp, 0xD8($sp)
    /* C32A4 800D2AA4 D400B78F */  lw         $s7, 0xD4($sp)
    /* C32A8 800D2AA8 D000B68F */  lw         $s6, 0xD0($sp)
    /* C32AC 800D2AAC CC00B58F */  lw         $s5, 0xCC($sp)
    /* C32B0 800D2AB0 C800B48F */  lw         $s4, 0xC8($sp)
    /* C32B4 800D2AB4 C400B38F */  lw         $s3, 0xC4($sp)
    /* C32B8 800D2AB8 C000B28F */  lw         $s2, 0xC0($sp)
    /* C32BC 800D2ABC BC00B18F */  lw         $s1, 0xBC($sp)
    /* C32C0 800D2AC0 B800B08F */  lw         $s0, 0xB8($sp)
    /* C32C4 800D2AC4 E000BD27 */  addiu      $sp, $sp, 0xE0
    /* C32C8 800D2AC8 0800E003 */  jr         $ra
    /* C32CC 800D2ACC 00000000 */   nop
endlabel func_800D1598
