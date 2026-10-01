.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C1748, 0x518

glabel func_800C1748
    /* B1F48 800C1748 A8FCBD27 */  addiu      $sp, $sp, -0x358
    /* B1F4C 800C174C 9800A427 */  addiu      $a0, $sp, 0x98
    /* B1F50 800C1750 00200524 */  addiu      $a1, $zero, 0x2000
    /* B1F54 800C1754 5003BFAF */  sw         $ra, 0x350($sp)
    /* B1F58 800C1758 4C03B5AF */  sw         $s5, 0x34C($sp)
    /* B1F5C 800C175C 4803B4AF */  sw         $s4, 0x348($sp)
    /* B1F60 800C1760 4403B3AF */  sw         $s3, 0x344($sp)
    /* B1F64 800C1764 4003B2AF */  sw         $s2, 0x340($sp)
    /* B1F68 800C1768 3C03B1AF */  sw         $s1, 0x33C($sp)
    /* B1F6C 800C176C ADC5020C */  jal        func_800B16B4
    /* B1F70 800C1770 3803B0AF */   sw        $s0, 0x338($sp)
    /* B1F74 800C1774 0100053C */  lui        $a1, (0x10263 >> 16)
    /* B1F78 800C1778 1680043C */  lui        $a0, %hi(D_80158840)
    /* B1F7C 800C177C 4088848C */  lw         $a0, %lo(D_80158840)($a0)
    /* B1F80 800C1780 FCA0020C */  jal        func_800A83F0
    /* B1F84 800C1784 6302A534 */   ori       $a1, $a1, (0x10263 & 0xFFFF)
    /* B1F88 800C1788 29014014 */  bnez       $v0, .L800C1C30
    /* B1F8C 800C178C 9800A427 */   addiu     $a0, $sp, 0x98
    /* B1F90 800C1790 58A1020C */  jal        func_800A8560
    /* B1F94 800C1794 00000000 */   nop
    /* B1F98 800C1798 1280043C */  lui        $a0, %hi(D_80121340)
    /* B1F9C 800C179C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B1FA0 800C17A0 8D87030C */  jal        func_800E1E34
    /* B1FA4 800C17A4 00000000 */   nop
    /* B1FA8 800C17A8 21804000 */  addu       $s0, $v0, $zero
    /* B1FAC 800C17AC 1F010012 */  beqz       $s0, .L800C1C2C
    /* B1FB0 800C17B0 21200000 */   addu      $a0, $zero, $zero
    /* B1FB4 800C17B4 FFFF0526 */  addiu      $a1, $s0, -0x1
    /* B1FB8 800C17B8 002C0500 */  sll        $a1, $a1, 16
    /* B1FBC 800C17BC 7253020C */  jal        func_80094DC8
    /* B1FC0 800C17C0 032C0500 */   sra       $a1, $a1, 16
    /* B1FC4 800C17C4 00140200 */  sll        $v0, $v0, 16
    /* B1FC8 800C17C8 038C0200 */  sra        $s1, $v0, 16
    /* B1FCC 800C17CC 06002006 */  bltz       $s1, .L800C17E8
    /* B1FD0 800C17D0 21800000 */   addu      $s0, $zero, $zero
  .L800C17D4:
    /* B1FD4 800C17D4 58A1020C */  jal        func_800A8560
    /* B1FD8 800C17D8 01001026 */   addiu     $s0, $s0, 0x1
    /* B1FDC 800C17DC 2A103002 */  slt        $v0, $s1, $s0
    /* B1FE0 800C17E0 FCFF4010 */  beqz       $v0, .L800C17D4
    /* B1FE4 800C17E4 00000000 */   nop
  .L800C17E8:
    /* B1FE8 800C17E8 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* B1FEC 800C17EC 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* B1FF0 800C17F0 1280053C */  lui        $a1, %hi(D_80121340)
    /* B1FF4 800C17F4 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B1FF8 800C17F8 A587030C */  jal        func_800E1E94
    /* B1FFC 800C17FC 07001224 */   addiu     $s2, $zero, 0x7
    /* B2000 800C1800 21200000 */  addu       $a0, $zero, $zero
    /* B2004 800C1804 7253020C */  jal        func_80094DC8
    /* B2008 800C1808 04000524 */   addiu     $a1, $zero, 0x4
    /* B200C 800C180C 0100053C */  lui        $a1, (0x102E4 >> 16)
    /* B2010 800C1810 E402A534 */  ori        $a1, $a1, (0x102E4 & 0xFFFF)
    /* B2014 800C1814 00140200 */  sll        $v0, $v0, 16
    /* B2018 800C1818 03AC0200 */  sra        $s5, $v0, 16
    /* B201C 800C181C 1680043C */  lui        $a0, %hi(D_80158840)
    /* B2020 800C1820 4088848C */  lw         $a0, %lo(D_80158840)($a0)
    /* B2024 800C1824 E8A1020C */  jal        func_800A87A0
    /* B2028 800C1828 2130A002 */   addu      $a2, $s5, $zero
    /* B202C 800C182C 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* B2030 800C1830 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* B2034 800C1834 1280053C */  lui        $a1, %hi(D_80121340)
    /* B2038 800C1838 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B203C 800C183C A587030C */  jal        func_800E1E94
    /* B2040 800C1840 00000000 */   nop
    /* B2044 800C1844 9800A427 */  addiu      $a0, $sp, 0x98
    /* B2048 800C1848 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* B204C 800C184C F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* B2050 800C1850 0100063C */  lui        $a2, (0x101D9 >> 16)
    /* B2054 800C1854 D901C634 */  ori        $a2, $a2, (0x101D9 & 0xFFFF)
    /* B2058 800C1858 0400023C */  lui        $v0, (0x40000 >> 16)
    /* B205C 800C185C 21380000 */  addu       $a3, $zero, $zero
    /* B2060 800C1860 1000A0AF */  sw         $zero, 0x10($sp)
    /* B2064 800C1864 1400A0AF */  sw         $zero, 0x14($sp)
    /* B2068 800C1868 1800A0AF */  sw         $zero, 0x18($sp)
    /* B206C 800C186C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* B2070 800C1870 2CE0020C */  jal        func_800B80B0
    /* B2074 800C1874 2000A2AF */   sw        $v0, 0x20($sp)
    /* B2078 800C1878 1680053C */  lui        $a1, %hi(D_80159020)
    /* B207C 800C187C 2090A524 */  addiu      $a1, $a1, %lo(D_80159020)
    /* B2080 800C1880 69C7020C */  jal        func_800B1DA4
    /* B2084 800C1884 9800A427 */   addiu     $a0, $sp, 0x98
    /* B2088 800C1888 4400A227 */  addiu      $v0, $sp, 0x44
  .L800C188C:
    /* B208C 800C188C 000040AC */  sw         $zero, 0x0($v0)
    /* B2090 800C1890 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* B2094 800C1894 FDFF4106 */  bgez       $s2, .L800C188C
    /* B2098 800C1898 FCFF4224 */   addiu     $v0, $v0, -0x4
    /* B209C 800C189C 21980000 */  addu       $s3, $zero, $zero
    /* B20A0 800C18A0 2800B427 */  addiu      $s4, $sp, 0x28
    /* B20A4 800C18A4 1180103C */  lui        $s0, %hi(D_80113ED9)
    /* B20A8 800C18A8 D93E1026 */  addiu      $s0, $s0, %lo(D_80113ED9)
    /* B20AC 800C18AC FFFF1226 */  addiu      $s2, $s0, -0x1
    /* B20B0 800C18B0 21880000 */  addu       $s1, $zero, $zero
  .L800C18B4:
    /* B20B4 800C18B4 1280023C */  lui        $v0, %hi(D_8011A282)
    /* B20B8 800C18B8 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* B20BC 800C18BC 00000000 */  nop
    /* B20C0 800C18C0 2A106202 */  slt        $v0, $s3, $v0
    /* B20C4 800C18C4 26004010 */  beqz       $v0, .L800C1960
    /* B20C8 800C18C8 03000224 */   addiu     $v0, $zero, 0x3
    /* B20CC 800C18CC 0500A212 */  beq        $s5, $v0, .L800C18E4
    /* B20D0 800C18D0 04000224 */   addiu     $v0, $zero, 0x4
    /* B20D4 800C18D4 1500A212 */  beq        $s5, $v0, .L800C192C
    /* B20D8 800C18D8 00000000 */   nop
    /* B20DC 800C18DC 54060308 */  j          .L800C1950
    /* B20E0 800C18E0 58001026 */   addiu     $s0, $s0, 0x58
  .L800C18E4:
    /* B20E4 800C18E4 0C25020C */  jal        func_80089430
    /* B20E8 800C18E8 21206002 */   addu      $a0, $s3, $zero
    /* B20EC 800C18EC 00004482 */  lb         $a0, 0x0($s2)
    /* B20F0 800C18F0 00000382 */  lb         $v1, 0x0($s0)
    /* B20F4 800C18F4 1180013C */  lui        $at, %hi(D_80113F26)
    /* B20F8 800C18F8 21083100 */  addu       $at, $at, $s1
    /* B20FC 800C18FC 263F2280 */  lb         $v0, %lo(D_80113F26)($at)
    /* B2100 800C1900 1180013C */  lui        $at, %hi(D_80113F27)
    /* B2104 800C1904 21083100 */  addu       $at, $at, $s1
    /* B2108 800C1908 273F2580 */  lb         $a1, %lo(D_80113F27)($at)
    /* B210C 800C190C 80200400 */  sll        $a0, $a0, 2
    /* B2110 800C1910 21209400 */  addu       $a0, $a0, $s4
    /* B2114 800C1914 21186200 */  addu       $v1, $v1, $v0
    /* B2118 800C1918 0000828C */  lw         $v0, 0x0($a0)
    /* B211C 800C191C 23186500 */  subu       $v1, $v1, $a1
    /* B2120 800C1920 21104300 */  addu       $v0, $v0, $v1
    /* B2124 800C1924 53060308 */  j          .L800C194C
    /* B2128 800C1928 000082AC */   sw        $v0, 0x0($a0)
  .L800C192C:
    /* B212C 800C192C 00004282 */  lb         $v0, 0x0($s2)
    /* B2130 800C1930 00000482 */  lb         $a0, 0x0($s0)
    /* B2134 800C1934 80100200 */  sll        $v0, $v0, 2
    /* B2138 800C1938 21105400 */  addu       $v0, $v0, $s4
    /* B213C 800C193C 0000438C */  lw         $v1, 0x0($v0)
    /* B2140 800C1940 00000000 */  nop
    /* B2144 800C1944 21186400 */  addu       $v1, $v1, $a0
    /* B2148 800C1948 000043AC */  sw         $v1, 0x0($v0)
  .L800C194C:
    /* B214C 800C194C 58001026 */  addiu      $s0, $s0, 0x58
  .L800C1950:
    /* B2150 800C1950 58005226 */  addiu      $s2, $s2, 0x58
    /* B2154 800C1954 58003126 */  addiu      $s1, $s1, 0x58
    /* B2158 800C1958 2D060308 */  j          .L800C18B4
    /* B215C 800C195C 01007326 */   addiu     $s3, $s3, 0x1
  .L800C1960:
    /* B2160 800C1960 21900000 */  addu       $s2, $zero, $zero
    /* B2164 800C1964 2800B327 */  addiu      $s3, $sp, 0x28
    /* B2168 800C1968 21A00000 */  addu       $s4, $zero, $zero
  .L800C196C:
    /* B216C 800C196C 0800422A */  slti       $v0, $s2, 0x8
    /* B2170 800C1970 2E004010 */  beqz       $v0, .L800C1A2C
    /* B2174 800C1974 01000224 */   addiu     $v0, $zero, 0x1
    /* B2178 800C1978 1200A212 */  beq        $s5, $v0, .L800C19C4
    /* B217C 800C197C 0200A22A */   slti      $v0, $s5, 0x2
    /* B2180 800C1980 05004010 */  beqz       $v0, .L800C1998
    /* B2184 800C1984 00000000 */   nop
    /* B2188 800C1988 0800A012 */  beqz       $s5, .L800C19AC
    /* B218C 800C198C 00000000 */   nop
    /* B2190 800C1990 88060308 */  j          .L800C1A20
    /* B2194 800C1994 04007326 */   addiu     $s3, $s3, 0x4
  .L800C1998:
    /* B2198 800C1998 02000224 */  addiu      $v0, $zero, 0x2
    /* B219C 800C199C 1100A212 */  beq        $s5, $v0, .L800C19E4
    /* B21A0 800C19A0 21800000 */   addu      $s0, $zero, $zero
    /* B21A4 800C19A4 88060308 */  j          .L800C1A20
    /* B21A8 800C19A8 04007326 */   addiu     $s3, $s3, 0x4
  .L800C19AC:
    /* B21AC 800C19AC 0000628E */  lw         $v0, 0x0($s3)
    /* B21B0 800C19B0 1180013C */  lui        $at, %hi(D_80117694)
    /* B21B4 800C19B4 21083400 */  addu       $at, $at, $s4
    /* B21B8 800C19B8 9476238C */  lw         $v1, %lo(D_80117694)($at)
    /* B21BC 800C19BC 77060308 */  j          .L800C19DC
    /* B21C0 800C19C0 21104300 */   addu      $v0, $v0, $v1
  .L800C19C4:
    /* B21C4 800C19C4 1180013C */  lui        $at, %hi(D_80117700)
    /* B21C8 800C19C8 21083400 */  addu       $at, $at, $s4
    /* B21CC 800C19CC 00772394 */  lhu        $v1, %lo(D_80117700)($at)
    /* B21D0 800C19D0 0000628E */  lw         $v0, 0x0($s3)
    /* B21D4 800C19D4 00000000 */  nop
    /* B21D8 800C19D8 21104300 */  addu       $v0, $v0, $v1
  .L800C19DC:
    /* B21DC 800C19DC 87060308 */  j          .L800C1A1C
    /* B21E0 800C19E0 000062AE */   sw        $v0, 0x0($s3)
  .L800C19E4:
    /* B21E4 800C19E4 21886002 */  addu       $s1, $s3, $zero
    /* B21E8 800C19E8 21204002 */  addu       $a0, $s2, $zero
  .L800C19EC:
    /* B21EC 800C19EC 8ACA010C */  jal        func_80072A28
    /* B21F0 800C19F0 21280002 */   addu      $a1, $s0, $zero
    /* B21F4 800C19F4 05004010 */  beqz       $v0, .L800C1A0C
    /* B21F8 800C19F8 00000000 */   nop
    /* B21FC 800C19FC 0000228E */  lw         $v0, 0x0($s1)
    /* B2200 800C1A00 00000000 */  nop
    /* B2204 800C1A04 01004224 */  addiu      $v0, $v0, 0x1
    /* B2208 800C1A08 000022AE */  sw         $v0, 0x0($s1)
  .L800C1A0C:
    /* B220C 800C1A0C 01001026 */  addiu      $s0, $s0, 0x1
    /* B2210 800C1A10 5D00022A */  slti       $v0, $s0, 0x5D
    /* B2214 800C1A14 F5FF4014 */  bnez       $v0, .L800C19EC
    /* B2218 800C1A18 21204002 */   addu      $a0, $s2, $zero
  .L800C1A1C:
    /* B221C 800C1A1C 04007326 */  addiu      $s3, $s3, 0x4
  .L800C1A20:
    /* B2220 800C1A20 78059426 */  addiu      $s4, $s4, 0x578
    /* B2224 800C1A24 5B060308 */  j          .L800C196C
    /* B2228 800C1A28 01005226 */   addiu     $s2, $s2, 0x1
  .L800C1A2C:
    /* B222C 800C1A2C 1680043C */  lui        $a0, %hi(D_80158840)
    /* B2230 800C1A30 4088848C */  lw         $a0, %lo(D_80158840)($a0)
    /* B2234 800C1A34 0100053C */  lui        $a1, (0x10331 >> 16)
    /* B2238 800C1A38 FCA0020C */  jal        func_800A83F0
    /* B223C 800C1A3C 3103A534 */   ori       $a1, $a1, (0x10331 & 0xFFFF)
    /* B2240 800C1A40 7B004014 */  bnez       $v0, .L800C1C30
    /* B2244 800C1A44 9800A427 */   addiu     $a0, $sp, 0x98
    /* B2248 800C1A48 01001124 */  addiu      $s1, $zero, 0x1
    /* B224C 800C1A4C 2800B327 */  addiu      $s3, $sp, 0x28
    /* B2250 800C1A50 1280143C */  lui        $s4, %hi(D_8011A274)
    /* B2254 800C1A54 74A29426 */  addiu      $s4, $s4, %lo(D_8011A274)
  .L800C1A58:
    /* B2258 800C1A58 0800222A */  slti       $v0, $s1, 0x8
    /* B225C 800C1A5C 71004010 */  beqz       $v0, .L800C1C24
    /* B2260 800C1A60 9800A427 */   addiu     $a0, $sp, 0x98
    /* B2264 800C1A64 58A1020C */  jal        func_800A8560
    /* B2268 800C1A68 FFFF1024 */   addiu     $s0, $zero, -0x1
    /* B226C 800C1A6C 1280053C */  lui        $a1, %hi(D_80121340)
    /* B2270 800C1A70 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B2274 800C1A74 A587030C */  jal        func_800E1E94
    /* B2278 800C1A78 4800A427 */   addiu     $a0, $sp, 0x48
    /* B227C 800C1A7C 21280000 */  addu       $a1, $zero, $zero
    /* B2280 800C1A80 01001224 */  addiu      $s2, $zero, 0x1
    /* B2284 800C1A84 04006426 */  addiu      $a0, $s3, 0x4
  .L800C1A88:
    /* B2288 800C1A88 0000838C */  lw         $v1, 0x0($a0)
    /* B228C 800C1A8C 00000000 */  nop
    /* B2290 800C1A90 2A106500 */  slt        $v0, $v1, $a1
    /* B2294 800C1A94 09004014 */  bnez       $v0, .L800C1ABC
    /* B2298 800C1A98 00000000 */   nop
    /* B229C 800C1A9C 00008292 */  lbu        $v0, 0x0($s4)
    /* B22A0 800C1AA0 00000000 */  nop
    /* B22A4 800C1AA4 07104202 */  srav       $v0, $v0, $s2
    /* B22A8 800C1AA8 01004230 */  andi       $v0, $v0, 0x1
    /* B22AC 800C1AAC 03004010 */  beqz       $v0, .L800C1ABC
    /* B22B0 800C1AB0 00000000 */   nop
    /* B22B4 800C1AB4 21286000 */  addu       $a1, $v1, $zero
    /* B22B8 800C1AB8 21804002 */  addu       $s0, $s2, $zero
  .L800C1ABC:
    /* B22BC 800C1ABC 01005226 */  addiu      $s2, $s2, 0x1
    /* B22C0 800C1AC0 0800422A */  slti       $v0, $s2, 0x8
    /* B22C4 800C1AC4 F0FF4014 */  bnez       $v0, .L800C1A88
    /* B22C8 800C1AC8 04008424 */   addiu     $a0, $a0, 0x4
    /* B22CC 800C1ACC 54000006 */  bltz       $s0, .L800C1C20
    /* B22D0 800C1AD0 80901000 */   sll       $s2, $s0, 2
    /* B22D4 800C1AD4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B22D8 800C1AD8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B22DC 800C1ADC 21185302 */  addu       $v1, $s2, $s3
    /* B22E0 800C1AE0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* B22E4 800C1AE4 CB1A030C */  jal        func_800C6B2C
    /* B22E8 800C1AE8 000062AC */   sw        $v0, 0x0($v1)
    /* B22EC 800C1AEC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B22F0 800C1AF0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B22F4 800C1AF4 1680053C */  lui        $a1, %hi(D_80159020)
    /* B22F8 800C1AF8 2090A524 */  addiu      $a1, $a1, %lo(D_80159020)
    /* B22FC 800C1AFC 9987030C */  jal        func_800E1E64
    /* B2300 800C1B00 00000000 */   nop
    /* B2304 800C1B04 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2308 800C1B08 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B230C 800C1B0C 9C1B030C */  jal        func_800C6E70
    /* B2310 800C1B10 21282002 */   addu      $a1, $s1, $zero
    /* B2314 800C1B14 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2318 800C1B18 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B231C 800C1B1C 011B030C */  jal        func_800C6C04
    /* B2320 800C1B20 00000000 */   nop
    /* B2324 800C1B24 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2328 800C1B28 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B232C 800C1B2C 731B030C */  jal        func_800C6DCC
    /* B2330 800C1B30 74010524 */   addiu     $a1, $zero, 0x174
    /* B2334 800C1B34 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2338 800C1B38 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B233C 800C1B3C CD1A030C */  jal        func_800C6B34
    /* B2340 800C1B40 00000000 */   nop
    /* B2344 800C1B44 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2348 800C1B48 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B234C 800C1B4C 9987030C */  jal        func_800E1E64
    /* B2350 800C1B50 4800A527 */   addiu     $a1, $sp, 0x48
    /* B2354 800C1B54 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2358 800C1B58 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B235C 800C1B5C CD1A030C */  jal        func_800C6B34
    /* B2360 800C1B60 00000000 */   nop
    /* B2364 800C1B64 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2368 800C1B68 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B236C 800C1B6C 0180053C */  lui        $a1, %hi(D_800124D8)
    /* B2370 800C1B70 D824A524 */  addiu      $a1, $a1, %lo(D_800124D8)
    /* B2374 800C1B74 9987030C */  jal        func_800E1E64
    /* B2378 800C1B78 00000000 */   nop
    /* B237C 800C1B7C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2380 800C1B80 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B2384 800C1B84 CD1A030C */  jal        func_800C6B34
    /* B2388 800C1B88 00000000 */   nop
    /* B238C 800C1B8C 5D54020C */  jal        func_80095174
    /* B2390 800C1B90 21200002 */   addu      $a0, $s0, $zero
    /* B2394 800C1B94 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2398 800C1B98 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B239C 800C1B9C 9987030C */  jal        func_800E1E64
    /* B23A0 800C1BA0 21284000 */   addu      $a1, $v0, $zero
    /* B23A4 800C1BA4 1280033C */  lui        $v1, %hi(D_8011ACB4)
    /* B23A8 800C1BA8 B4AC638C */  lw         $v1, %lo(D_8011ACB4)($v1)
    /* B23AC 800C1BAC 00000000 */  nop
    /* B23B0 800C1BB0 15000312 */  beq        $s0, $v1, .L800C1C08
    /* B23B4 800C1BB4 40100300 */   sll       $v0, $v1, 1
    /* B23B8 800C1BB8 21104300 */  addu       $v0, $v0, $v1
    /* B23BC 800C1BBC 80100200 */  sll        $v0, $v0, 2
    /* B23C0 800C1BC0 23104300 */  subu       $v0, $v0, $v1
    /* B23C4 800C1BC4 00110200 */  sll        $v0, $v0, 4
    /* B23C8 800C1BC8 23104300 */  subu       $v0, $v0, $v1
    /* B23CC 800C1BCC C0100200 */  sll        $v0, $v0, 3
    /* B23D0 800C1BD0 1180033C */  lui        $v1, %hi(D_801176B4)
    /* B23D4 800C1BD4 B4766324 */  addiu      $v1, $v1, %lo(D_801176B4)
    /* B23D8 800C1BD8 21104300 */  addu       $v0, $v0, $v1
    /* B23DC 800C1BDC 21104202 */  addu       $v0, $s2, $v0
    /* B23E0 800C1BE0 0000428C */  lw         $v0, 0x0($v0)
    /* B23E4 800C1BE4 00000000 */  nop
    /* B23E8 800C1BE8 01004230 */  andi       $v0, $v0, 0x1
    /* B23EC 800C1BEC 06004014 */  bnez       $v0, .L800C1C08
    /* B23F0 800C1BF0 00000000 */   nop
    /* B23F4 800C1BF4 1280023C */  lui        $v0, %hi(D_8011A272)
    /* B23F8 800C1BF8 72A24290 */  lbu        $v0, %lo(D_8011A272)($v0)
    /* B23FC 800C1BFC 00000000 */  nop
    /* B2400 800C1C00 05004014 */  bnez       $v0, .L800C1C18
    /* B2404 800C1C04 00000000 */   nop
  .L800C1C08:
    /* B2408 800C1C08 1280053C */  lui        $a1, %hi(D_80121340)
    /* B240C 800C1C0C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B2410 800C1C10 69C7020C */  jal        func_800B1DA4
    /* B2414 800C1C14 9800A427 */   addiu     $a0, $sp, 0x98
  .L800C1C18:
    /* B2418 800C1C18 96060308 */  j          .L800C1A58
    /* B241C 800C1C1C 01003126 */   addiu     $s1, $s1, 0x1
  .L800C1C20:
    /* B2420 800C1C20 9800A427 */  addiu      $a0, $sp, 0x98
  .L800C1C24:
    /* B2424 800C1C24 52DF020C */  jal        func_800B7D48
    /* B2428 800C1C28 21280000 */   addu      $a1, $zero, $zero
  .L800C1C2C:
    /* B242C 800C1C2C 9800A427 */  addiu      $a0, $sp, 0x98
  .L800C1C30:
    /* B2430 800C1C30 0AC7020C */  jal        func_800B1C28
    /* B2434 800C1C34 02000524 */   addiu     $a1, $zero, 0x2
    /* B2438 800C1C38 5003BF8F */  lw         $ra, 0x350($sp)
    /* B243C 800C1C3C 4C03B58F */  lw         $s5, 0x34C($sp)
    /* B2440 800C1C40 4803B48F */  lw         $s4, 0x348($sp)
    /* B2444 800C1C44 4403B38F */  lw         $s3, 0x344($sp)
    /* B2448 800C1C48 4003B28F */  lw         $s2, 0x340($sp)
    /* B244C 800C1C4C 3C03B18F */  lw         $s1, 0x33C($sp)
    /* B2450 800C1C50 3803B08F */  lw         $s0, 0x338($sp)
    /* B2454 800C1C54 5803BD27 */  addiu      $sp, $sp, 0x358
    /* B2458 800C1C58 0800E003 */  jr         $ra
    /* B245C 800C1C5C 00000000 */   nop
endlabel func_800C1748
