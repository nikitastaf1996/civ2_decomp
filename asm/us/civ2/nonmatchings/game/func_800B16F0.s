.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B16F0, 0x538

glabel func_800B16F0
    /* A1EF0 800B16F0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A1EF4 800B16F4 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* A1EF8 800B16F8 2800B2AF */  sw         $s2, 0x28($sp)
    /* A1EFC 800B16FC 2400B1AF */  sw         $s1, 0x24($sp)
    /* A1F00 800B1700 2000B0AF */  sw         $s0, 0x20($sp)
    /* A1F04 800B1704 21908000 */  addu       $s2, $a0, $zero
    /* A1F08 800B1708 AC01448E */  lw         $a0, 0x1AC($s2)
    /* A1F0C 800B170C 00000000 */  nop
    /* A1F10 800B1710 11008010 */  beqz       $a0, .L800B1758
    /* A1F14 800B1714 21808000 */   addu      $s0, $a0, $zero
    /* A1F18 800B1718 3400048E */  lw         $a0, 0x34($s0)
    /* A1F1C 800B171C 00000000 */  nop
    /* A1F20 800B1720 07008010 */  beqz       $a0, .L800B1740
    /* A1F24 800B1724 00000000 */   nop
    /* A1F28 800B1728 89D6030C */  jal        func_800F5A24
    /* A1F2C 800B172C 00000000 */   nop
    /* A1F30 800B1730 2C000486 */  lh         $a0, 0x2C($s0)
    /* A1F34 800B1734 3400058E */  lw         $a1, 0x34($s0)
    /* A1F38 800B1738 1D5B020C */  jal        func_80096C74
    /* A1F3C 800B173C 00000000 */   nop
  .L800B1740:
    /* A1F40 800B1740 21200002 */  addu       $a0, $s0, $zero
    /* A1F44 800B1744 D5D8030C */  jal        func_800F6354
    /* A1F48 800B1748 03000524 */   addiu     $a1, $zero, 0x3
    /* A1F4C 800B174C AC0140AE */  sw         $zero, 0x1AC($s2)
    /* A1F50 800B1750 1680013C */  lui        $at, %hi(D_80158970)
    /* A1F54 800B1754 708920AC */  sw         $zero, %lo(D_80158970)($at)
  .L800B1758:
    /* A1F58 800B1758 B001448E */  lw         $a0, 0x1B0($s2)
    /* A1F5C 800B175C 00000000 */  nop
    /* A1F60 800B1760 1C008010 */  beqz       $a0, .L800B17D4
    /* A1F64 800B1764 00000000 */   nop
    /* A1F68 800B1768 F8FF838C */  lw         $v1, -0x8($a0)
    /* A1F6C 800B176C 00000000 */  nop
    /* A1F70 800B1770 80100300 */  sll        $v0, $v1, 2
    /* A1F74 800B1774 21104300 */  addu       $v0, $v0, $v1
    /* A1F78 800B1778 C0100200 */  sll        $v0, $v0, 3
    /* A1F7C 800B177C 21804400 */  addu       $s0, $v0, $a0
    /* A1F80 800B1780 11009010 */  beq        $a0, $s0, .L800B17C8
    /* A1F84 800B1784 00000000 */   nop
    /* A1F88 800B1788 D8FF1026 */  addiu      $s0, $s0, -0x28
  .L800B178C:
    /* A1F8C 800B178C 1400048E */  lw         $a0, 0x14($s0)
    /* A1F90 800B1790 00000000 */  nop
    /* A1F94 800B1794 03008010 */  beqz       $a0, .L800B17A4
    /* A1F98 800B1798 00000000 */   nop
    /* A1F9C 800B179C 9059020C */  jal        func_80096640
    /* A1FA0 800B17A0 00000000 */   nop
  .L800B17A4:
    /* A1FA4 800B17A4 21200002 */  addu       $a0, $s0, $zero
    /* A1FA8 800B17A8 D5D8030C */  jal        func_800F6354
    /* A1FAC 800B17AC 02000524 */   addiu     $a1, $zero, 0x2
    /* A1FB0 800B17B0 B001428E */  lw         $v0, 0x1B0($s2)
    /* A1FB4 800B17B4 00000000 */  nop
    /* A1FB8 800B17B8 F4FF5014 */  bne        $v0, $s0, .L800B178C
    /* A1FBC 800B17BC D8FF1026 */   addiu     $s0, $s0, -0x28
    /* A1FC0 800B17C0 28001026 */  addiu      $s0, $s0, 0x28
    /* A1FC4 800B17C4 B001448E */  lw         $a0, 0x1B0($s2)
  .L800B17C8:
    /* A1FC8 800B17C8 6582030C */  jal        GsSetProjection
    /* A1FCC 800B17CC F8FF8424 */   addiu     $a0, $a0, -0x8
    /* A1FD0 800B17D0 B00140AE */  sw         $zero, 0x1B0($s2)
  .L800B17D4:
    /* A1FD4 800B17D4 B401448E */  lw         $a0, 0x1B4($s2)
    /* A1FD8 800B17D8 00000000 */  nop
    /* A1FDC 800B17DC 1C008010 */  beqz       $a0, .L800B1850
    /* A1FE0 800B17E0 00000000 */   nop
    /* A1FE4 800B17E4 F8FF838C */  lw         $v1, -0x8($a0)
    /* A1FE8 800B17E8 00000000 */  nop
    /* A1FEC 800B17EC 40100300 */  sll        $v0, $v1, 1
    /* A1FF0 800B17F0 21104300 */  addu       $v0, $v0, $v1
    /* A1FF4 800B17F4 00110200 */  sll        $v0, $v0, 4
    /* A1FF8 800B17F8 21804400 */  addu       $s0, $v0, $a0
    /* A1FFC 800B17FC 11009010 */  beq        $a0, $s0, .L800B1844
    /* A2000 800B1800 00000000 */   nop
    /* A2004 800B1804 D0FF1026 */  addiu      $s0, $s0, -0x30
  .L800B1808:
    /* A2008 800B1808 1400048E */  lw         $a0, 0x14($s0)
    /* A200C 800B180C 00000000 */  nop
    /* A2010 800B1810 03008010 */  beqz       $a0, .L800B1820
    /* A2014 800B1814 00000000 */   nop
    /* A2018 800B1818 1B5D020C */  jal        func_8009746C
    /* A201C 800B181C 00000000 */   nop
  .L800B1820:
    /* A2020 800B1820 21200002 */  addu       $a0, $s0, $zero
    /* A2024 800B1824 D5D8030C */  jal        func_800F6354
    /* A2028 800B1828 02000524 */   addiu     $a1, $zero, 0x2
    /* A202C 800B182C B401428E */  lw         $v0, 0x1B4($s2)
    /* A2030 800B1830 00000000 */  nop
    /* A2034 800B1834 F4FF5014 */  bne        $v0, $s0, .L800B1808
    /* A2038 800B1838 D0FF1026 */   addiu     $s0, $s0, -0x30
    /* A203C 800B183C 30001026 */  addiu      $s0, $s0, 0x30
    /* A2040 800B1840 B401448E */  lw         $a0, 0x1B4($s2)
  .L800B1844:
    /* A2044 800B1844 6582030C */  jal        GsSetProjection
    /* A2048 800B1848 F8FF8424 */   addiu     $a0, $a0, -0x8
    /* A204C 800B184C B40140AE */  sw         $zero, 0x1B4($s2)
  .L800B1850:
    /* A2050 800B1850 B801448E */  lw         $a0, 0x1B8($s2)
    /* A2054 800B1854 00000000 */  nop
    /* A2058 800B1858 18008010 */  beqz       $a0, .L800B18BC
    /* A205C 800B185C 00000000 */   nop
    /* A2060 800B1860 F8FF838C */  lw         $v1, -0x8($a0)
    /* A2064 800B1864 00000000 */  nop
    /* A2068 800B1868 40100300 */  sll        $v0, $v1, 1
    /* A206C 800B186C 21104300 */  addu       $v0, $v0, $v1
    /* A2070 800B1870 80100200 */  sll        $v0, $v0, 2
    /* A2074 800B1874 23104300 */  subu       $v0, $v0, $v1
    /* A2078 800B1878 80100200 */  sll        $v0, $v0, 2
    /* A207C 800B187C 21804400 */  addu       $s0, $v0, $a0
    /* A2080 800B1880 0B009010 */  beq        $a0, $s0, .L800B18B0
    /* A2084 800B1884 00000000 */   nop
    /* A2088 800B1888 D4FF1026 */  addiu      $s0, $s0, -0x2C
  .L800B188C:
    /* A208C 800B188C 21200002 */  addu       $a0, $s0, $zero
    /* A2090 800B1890 1BDA030C */  jal        func_800F686C
    /* A2094 800B1894 02000524 */   addiu     $a1, $zero, 0x2
    /* A2098 800B1898 B801428E */  lw         $v0, 0x1B8($s2)
    /* A209C 800B189C 00000000 */  nop
    /* A20A0 800B18A0 FAFF5014 */  bne        $v0, $s0, .L800B188C
    /* A20A4 800B18A4 D4FF1026 */   addiu     $s0, $s0, -0x2C
    /* A20A8 800B18A8 2C001026 */  addiu      $s0, $s0, 0x2C
    /* A20AC 800B18AC B801448E */  lw         $a0, 0x1B8($s2)
  .L800B18B0:
    /* A20B0 800B18B0 6582030C */  jal        GsSetProjection
    /* A20B4 800B18B4 F8FF8424 */   addiu     $a0, $a0, -0x8
    /* A20B8 800B18B8 B80140AE */  sw         $zero, 0x1B8($s2)
  .L800B18BC:
    /* A20BC 800B18BC BC01448E */  lw         $a0, 0x1BC($s2)
    /* A20C0 800B18C0 00000000 */  nop
    /* A20C4 800B18C4 0B008010 */  beqz       $a0, .L800B18F4
    /* A20C8 800B18C8 21808000 */   addu      $s0, $a0, $zero
    /* A20CC 800B18CC 1400048E */  lw         $a0, 0x14($s0)
    /* A20D0 800B18D0 00000000 */  nop
    /* A20D4 800B18D4 03008010 */  beqz       $a0, .L800B18E4
    /* A20D8 800B18D8 00000000 */   nop
    /* A20DC 800B18DC 055D020C */  jal        func_80097414
    /* A20E0 800B18E0 00000000 */   nop
  .L800B18E4:
    /* A20E4 800B18E4 21200002 */  addu       $a0, $s0, $zero
    /* A20E8 800B18E8 D5D8030C */  jal        func_800F6354
    /* A20EC 800B18EC 03000524 */   addiu     $a1, $zero, 0x3
    /* A20F0 800B18F0 BC0140AE */  sw         $zero, 0x1BC($s2)
  .L800B18F4:
    /* A20F4 800B18F4 C001448E */  lw         $a0, 0x1C0($s2)
    /* A20F8 800B18F8 00000000 */  nop
    /* A20FC 800B18FC 18008010 */  beqz       $a0, .L800B1960
    /* A2100 800B1900 00000000 */   nop
    /* A2104 800B1904 F8FF838C */  lw         $v1, -0x8($a0)
    /* A2108 800B1908 00000000 */  nop
    /* A210C 800B190C 40100300 */  sll        $v0, $v1, 1
    /* A2110 800B1910 21104300 */  addu       $v0, $v0, $v1
    /* A2114 800B1914 80100200 */  sll        $v0, $v0, 2
    /* A2118 800B1918 21104300 */  addu       $v0, $v0, $v1
    /* A211C 800B191C 80100200 */  sll        $v0, $v0, 2
    /* A2120 800B1920 21804400 */  addu       $s0, $v0, $a0
    /* A2124 800B1924 0B009010 */  beq        $a0, $s0, .L800B1954
    /* A2128 800B1928 00000000 */   nop
    /* A212C 800B192C CCFF1026 */  addiu      $s0, $s0, -0x34
  .L800B1930:
    /* A2130 800B1930 21200002 */  addu       $a0, $s0, $zero
    /* A2134 800B1934 99D9030C */  jal        func_800F6664
    /* A2138 800B1938 02000524 */   addiu     $a1, $zero, 0x2
    /* A213C 800B193C C001428E */  lw         $v0, 0x1C0($s2)
    /* A2140 800B1940 00000000 */  nop
    /* A2144 800B1944 FAFF5014 */  bne        $v0, $s0, .L800B1930
    /* A2148 800B1948 CCFF1026 */   addiu     $s0, $s0, -0x34
    /* A214C 800B194C 34001026 */  addiu      $s0, $s0, 0x34
    /* A2150 800B1950 C001448E */  lw         $a0, 0x1C0($s2)
  .L800B1954:
    /* A2154 800B1954 6582030C */  jal        GsSetProjection
    /* A2158 800B1958 F8FF8424 */   addiu     $a0, $a0, -0x8
    /* A215C 800B195C C00140AE */  sw         $zero, 0x1C0($s2)
  .L800B1960:
    /* A2160 800B1960 C401448E */  lw         $a0, 0x1C4($s2)
    /* A2164 800B1964 00000000 */  nop
    /* A2168 800B1968 0B008010 */  beqz       $a0, .L800B1998
    /* A216C 800B196C 21808000 */   addu      $s0, $a0, $zero
    /* A2170 800B1970 1400048E */  lw         $a0, 0x14($s0)
    /* A2174 800B1974 00000000 */  nop
    /* A2178 800B1978 03008010 */  beqz       $a0, .L800B1988
    /* A217C 800B197C 00000000 */   nop
    /* A2180 800B1980 435D020C */  jal        func_8009750C
    /* A2184 800B1984 00000000 */   nop
  .L800B1988:
    /* A2188 800B1988 21200002 */  addu       $a0, $s0, $zero
    /* A218C 800B198C D5D8030C */  jal        func_800F6354
    /* A2190 800B1990 03000524 */   addiu     $a1, $zero, 0x3
    /* A2194 800B1994 C40140AE */  sw         $zero, 0x1C4($s2)
  .L800B1998:
    /* A2198 800B1998 C801448E */  lw         $a0, 0x1C8($s2)
    /* A219C 800B199C 00000000 */  nop
    /* A21A0 800B19A0 0B008010 */  beqz       $a0, .L800B19D0
    /* A21A4 800B19A4 21808000 */   addu      $s0, $a0, $zero
    /* A21A8 800B19A8 1400048E */  lw         $a0, 0x14($s0)
    /* A21AC 800B19AC 00000000 */  nop
    /* A21B0 800B19B0 03008010 */  beqz       $a0, .L800B19C0
    /* A21B4 800B19B4 00000000 */   nop
    /* A21B8 800B19B8 435D020C */  jal        func_8009750C
    /* A21BC 800B19BC 00000000 */   nop
  .L800B19C0:
    /* A21C0 800B19C0 21200002 */  addu       $a0, $s0, $zero
    /* A21C4 800B19C4 D5D8030C */  jal        func_800F6354
    /* A21C8 800B19C8 03000524 */   addiu     $a1, $zero, 0x3
    /* A21CC 800B19CC C80140AE */  sw         $zero, 0x1C8($s2)
  .L800B19D0:
    /* A21D0 800B19D0 3000428E */  lw         $v0, 0x30($s2)
    /* A21D4 800B19D4 00000000 */  nop
    /* A21D8 800B19D8 10004230 */  andi       $v0, $v0, 0x10
    /* A21DC 800B19DC 59004014 */  bnez       $v0, .L800B1B44
    /* A21E0 800B19E0 00000000 */   nop
    /* A21E4 800B19E4 0000508E */  lw         $s0, 0x0($s2)
    /* A21E8 800B19E8 00000000 */  nop
    /* A21EC 800B19EC 55000012 */  beqz       $s0, .L800B1B44
    /* A21F0 800B19F0 00000000 */   nop
    /* A21F4 800B19F4 7CEA030C */  jal        func_800FA9F0
    /* A21F8 800B19F8 2C000426 */   addiu     $a0, $s0, 0x2C
    /* A21FC 800B19FC 21200002 */  addu       $a0, $s0, $zero
    /* A2200 800B1A00 21280000 */  addu       $a1, $zero, $zero
    /* A2204 800B1A04 A9E0030C */  jal        func_800F82A4
    /* A2208 800B1A08 21300000 */   addu      $a2, $zero, $zero
    /* A220C 800B1A0C 3000428E */  lw         $v0, 0x30($s2)
    /* A2210 800B1A10 00000000 */  nop
    /* A2214 800B1A14 00404230 */  andi       $v0, $v0, 0x4000
    /* A2218 800B1A18 39004014 */  bnez       $v0, .L800B1B00
    /* A221C 800B1A1C 1800B027 */   addiu     $s0, $sp, 0x18
    /* A2220 800B1A20 C400448E */  lw         $a0, 0xC4($s2)
    /* A2224 800B1A24 00000000 */  nop
    /* A2228 800B1A28 F8FF8424 */  addiu      $a0, $a0, -0x8
    /* A222C 800B1A2C C800458E */  lw         $a1, 0xC8($s2)
    /* A2230 800B1A30 00000000 */  nop
    /* A2234 800B1A34 F0FFA524 */  addiu      $a1, $a1, -0x10
    /* A2238 800B1A38 3400428E */  lw         $v0, 0x34($s2)
    /* A223C 800B1A3C 00000000 */  nop
    /* A2240 800B1A40 10004224 */  addiu      $v0, $v0, 0x10
    /* A2244 800B1A44 3800438E */  lw         $v1, 0x38($s2)
    /* A2248 800B1A48 00000000 */  nop
    /* A224C 800B1A4C 20006324 */  addiu      $v1, $v1, 0x20
    /* A2250 800B1A50 1800A4A7 */  sh         $a0, 0x18($sp)
    /* A2254 800B1A54 1A00A5A7 */  sh         $a1, 0x1A($sp)
    /* A2258 800B1A58 21208200 */  addu       $a0, $a0, $v0
    /* A225C 800B1A5C 1C00A4A7 */  sh         $a0, 0x1C($sp)
    /* A2260 800B1A60 2128A300 */  addu       $a1, $a1, $v1
    /* A2264 800B1A64 1E00A5A7 */  sh         $a1, 0x1E($sp)
    /* A2268 800B1A68 32024586 */  lh         $a1, 0x232($s2)
    /* A226C 800B1A6C 34024686 */  lh         $a2, 0x234($s2)
    /* A2270 800B1A70 36024786 */  lh         $a3, 0x236($s2)
    /* A2274 800B1A74 1000A0AF */  sw         $zero, 0x10($sp)
    /* A2278 800B1A78 011D040C */  jal        func_80107404
    /* A227C 800B1A7C 21200002 */   addu      $a0, $s0, $zero
    /* A2280 800B1A80 280242AE */  sw         $v0, 0x228($s2)
    /* A2284 800B1A84 8001428E */  lw         $v0, 0x180($s2)
    /* A2288 800B1A88 00000000 */  nop
    /* A228C 800B1A8C 1C004010 */  beqz       $v0, .L800B1B00
    /* A2290 800B1A90 D8000224 */   addiu     $v0, $zero, 0xD8
    /* A2294 800B1A94 1800A2A7 */  sh         $v0, 0x18($sp)
    /* A2298 800B1A98 20000224 */  addiu      $v0, $zero, 0x20
    /* A229C 800B1A9C 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* A22A0 800B1AA0 18010224 */  addiu      $v0, $zero, 0x118
    /* A22A4 800B1AA4 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* A22A8 800B1AA8 98000224 */  addiu      $v0, $zero, 0x98
    /* A22AC 800B1AAC 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* A22B0 800B1AB0 2C024586 */  lh         $a1, 0x22C($s2)
    /* A22B4 800B1AB4 2E024686 */  lh         $a2, 0x22E($s2)
    /* A22B8 800B1AB8 30024786 */  lh         $a3, 0x230($s2)
    /* A22BC 800B1ABC 1000A0AF */  sw         $zero, 0x10($sp)
    /* A22C0 800B1AC0 011D040C */  jal        func_80107404
    /* A22C4 800B1AC4 21200002 */   addu      $a0, $s0, $zero
    /* A22C8 800B1AC8 30000224 */  addiu      $v0, $zero, 0x30
    /* A22CC 800B1ACC 1800A2A7 */  sh         $v0, 0x18($sp)
    /* A22D0 800B1AD0 10000224 */  addiu      $v0, $zero, 0x10
    /* A22D4 800B1AD4 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* A22D8 800B1AD8 C8000224 */  addiu      $v0, $zero, 0xC8
    /* A22DC 800B1ADC 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* A22E0 800B1AE0 B0000224 */  addiu      $v0, $zero, 0xB0
    /* A22E4 800B1AE4 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* A22E8 800B1AE8 2C024586 */  lh         $a1, 0x22C($s2)
    /* A22EC 800B1AEC 2E024686 */  lh         $a2, 0x22E($s2)
    /* A22F0 800B1AF0 30024786 */  lh         $a3, 0x230($s2)
    /* A22F4 800B1AF4 1000A0AF */  sw         $zero, 0x10($sp)
    /* A22F8 800B1AF8 011D040C */  jal        func_80107404
    /* A22FC 800B1AFC 21200002 */   addu      $a0, $s0, $zero
  .L800B1B00:
    /* A2300 800B1B00 0000508E */  lw         $s0, 0x0($s2)
    /* A2304 800B1B04 00000000 */  nop
    /* A2308 800B1B08 09000012 */  beqz       $s0, .L800B1B30
    /* A230C 800B1B0C 2C000426 */   addiu     $a0, $s0, 0x2C
    /* A2310 800B1B10 0180023C */  lui        $v0, %hi(D_800138BC)
    /* A2314 800B1B14 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* A2318 800B1B18 280002AE */  sw         $v0, 0x28($s0)
    /* A231C 800B1B1C F5E9030C */  jal        func_800FA7D4
    /* A2320 800B1B20 21280000 */   addu      $a1, $zero, $zero
    /* A2324 800B1B24 21200002 */  addu       $a0, $s0, $zero
    /* A2328 800B1B28 4CE1030C */  jal        func_800F8530
    /* A232C 800B1B2C 03000524 */   addiu     $a1, $zero, 0x3
  .L800B1B30:
    /* A2330 800B1B30 000040AE */  sw         $zero, 0x0($s2)
    /* A2334 800B1B34 3000428E */  lw         $v0, 0x30($s2)
    /* A2338 800B1B38 00000000 */  nop
    /* A233C 800B1B3C 10004234 */  ori        $v0, $v0, 0x10
    /* A2340 800B1B40 300042AE */  sw         $v0, 0x30($s2)
  .L800B1B44:
    /* A2344 800B1B44 D001448E */  lw         $a0, 0x1D0($s2)
    /* A2348 800B1B48 00000000 */  nop
    /* A234C 800B1B4C 04008010 */  beqz       $a0, .L800B1B60
    /* A2350 800B1B50 21800000 */   addu      $s0, $zero, $zero
    /* A2354 800B1B54 E511040C */  jal        func_80104794
    /* A2358 800B1B58 00000000 */   nop
    /* A235C 800B1B5C D00140AE */  sw         $zero, 0x1D0($s2)
  .L800B1B60:
    /* A2360 800B1B60 80101000 */  sll        $v0, $s0, 2
    /* A2364 800B1B64 21885200 */  addu       $s1, $v0, $s2
    /* A2368 800B1B68 D401248E */  lw         $a0, 0x1D4($s1)
    /* A236C 800B1B6C 00000000 */  nop
    /* A2370 800B1B70 04008010 */  beqz       $a0, .L800B1B84
    /* A2374 800B1B74 00000000 */   nop
    /* A2378 800B1B78 E511040C */  jal        func_80104794
    /* A237C 800B1B7C 00000000 */   nop
    /* A2380 800B1B80 D40120AE */  sw         $zero, 0x1D4($s1)
  .L800B1B84:
    /* A2384 800B1B84 01001026 */  addiu      $s0, $s0, 0x1
    /* A2388 800B1B88 0A00022A */  slti       $v0, $s0, 0xA
    /* A238C 800B1B8C F4FF4014 */  bnez       $v0, .L800B1B60
    /* A2390 800B1B90 00000000 */   nop
    /* A2394 800B1B94 FC01448E */  lw         $a0, 0x1FC($s2)
    /* A2398 800B1B98 00000000 */  nop
    /* A239C 800B1B9C 04008010 */  beqz       $a0, .L800B1BB0
    /* A23A0 800B1BA0 00000000 */   nop
    /* A23A4 800B1BA4 E511040C */  jal        func_80104794
    /* A23A8 800B1BA8 00000000 */   nop
    /* A23AC 800B1BAC FC0140AE */  sw         $zero, 0x1FC($s2)
  .L800B1BB0:
    /* A23B0 800B1BB0 0002448E */  lw         $a0, 0x200($s2)
    /* A23B4 800B1BB4 00000000 */  nop
    /* A23B8 800B1BB8 04008010 */  beqz       $a0, .L800B1BCC
    /* A23BC 800B1BBC 00000000 */   nop
    /* A23C0 800B1BC0 E511040C */  jal        func_80104794
    /* A23C4 800B1BC4 00000000 */   nop
    /* A23C8 800B1BC8 000240AE */  sw         $zero, 0x200($s2)
  .L800B1BCC:
    /* A23CC 800B1BCC 2402448E */  lw         $a0, 0x224($s2)
    /* A23D0 800B1BD0 00000000 */  nop
    /* A23D4 800B1BD4 04008010 */  beqz       $a0, .L800B1BE8
    /* A23D8 800B1BD8 00000000 */   nop
    /* A23DC 800B1BDC E511040C */  jal        func_80104794
    /* A23E0 800B1BE0 00000000 */   nop
    /* A23E4 800B1BE4 240240AE */  sw         $zero, 0x224($s2)
  .L800B1BE8:
    /* A23E8 800B1BE8 A6015096 */  lhu        $s0, 0x1A6($s2)
    /* A23EC 800B1BEC DC52020C */  jal        func_80094B70
    /* A23F0 800B1BF0 98014426 */   addiu     $a0, $s2, 0x198
    /* A23F4 800B1BF4 A60150A6 */  sh         $s0, 0x1A6($s2)
    /* A23F8 800B1BF8 680A828F */  lw         $v0, %gp_rel(D_80158F40)($gp)
    /* A23FC 800B1BFC 00000000 */  nop
    /* A2400 800B1C00 02005214 */  bne        $v0, $s2, .L800B1C0C
    /* A2404 800B1C04 00000000 */   nop
    /* A2408 800B1C08 680A80AF */  sw         $zero, %gp_rel(D_80158F40)($gp)
  .L800B1C0C:
    /* A240C 800B1C0C 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* A2410 800B1C10 2800B28F */  lw         $s2, 0x28($sp)
    /* A2414 800B1C14 2400B18F */  lw         $s1, 0x24($sp)
    /* A2418 800B1C18 2000B08F */  lw         $s0, 0x20($sp)
    /* A241C 800B1C1C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* A2420 800B1C20 0800E003 */  jr         $ra
    /* A2424 800B1C24 00000000 */   nop
endlabel func_800B16F0
