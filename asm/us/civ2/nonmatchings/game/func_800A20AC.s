.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A20AC, 0x17C

glabel func_800A20AC
    /* 928AC 800A20AC C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 928B0 800A20B0 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 928B4 800A20B4 3800B2AF */  sw         $s2, 0x38($sp)
    /* 928B8 800A20B8 3400B1AF */  sw         $s1, 0x34($sp)
    /* 928BC 800A20BC 3000B0AF */  sw         $s0, 0x30($sp)
    /* 928C0 800A20C0 68000424 */  addiu      $a0, $zero, 0x68
    /* 928C4 800A20C4 21280000 */  addu       $a1, $zero, $zero
    /* 928C8 800A20C8 21300000 */  addu       $a2, $zero, $zero
    /* 928CC 800A20CC 2B9D020C */  jal        func_800A74AC
    /* 928D0 800A20D0 21380000 */   addu      $a3, $zero, $zero
    /* 928D4 800A20D4 D87F030C */  jal        func_800DFF60
    /* 928D8 800A20D8 00000000 */   nop
    /* 928DC 800A20DC 1680043C */  lui        $a0, %hi(D_80158886)
    /* 928E0 800A20E0 86888484 */  lh         $a0, %lo(D_80158886)($a0)
    /* 928E4 800A20E4 1680053C */  lui        $a1, %hi(D_80158888)
    /* 928E8 800A20E8 8888A584 */  lh         $a1, %lo(D_80158888)($a1)
    /* 928EC 800A20EC 2800A627 */  addiu      $a2, $sp, 0x28
    /* 928F0 800A20F0 EE7D030C */  jal        func_800DF7B8
    /* 928F4 800A20F4 2C00A727 */   addiu     $a3, $sp, 0x2C
    /* 928F8 800A20F8 1480043C */  lui        $a0, %hi(D_801388EC)
    /* 928FC 800A20FC EC88848C */  lw         $a0, %lo(D_801388EC)($a0)
    /* 92900 800A2100 00000000 */  nop
    /* 92904 800A2104 0C008294 */  lhu        $v0, 0xC($a0)
    /* 92908 800A2108 2800A397 */  lhu        $v1, 0x28($sp)
    /* 9290C 800A210C 00000000 */  nop
    /* 92910 800A2110 21104300 */  addu       $v0, $v0, $v1
    /* 92914 800A2114 2000A2A7 */  sh         $v0, 0x20($sp)
    /* 92918 800A2118 0E008294 */  lhu        $v0, 0xE($a0)
    /* 9291C 800A211C 2C00A397 */  lhu        $v1, 0x2C($sp)
    /* 92920 800A2120 00000000 */  nop
    /* 92924 800A2124 21104300 */  addu       $v0, $v0, $v1
    /* 92928 800A2128 2200A2A7 */  sh         $v0, 0x22($sp)
    /* 9292C 800A212C 01000224 */  addiu      $v0, $zero, 0x1
    /* 92930 800A2130 2400A2A7 */  sh         $v0, 0x24($sp)
    /* 92934 800A2134 2600A2A7 */  sh         $v0, 0x26($sp)
    /* 92938 800A2138 1280053C */  lui        $a1, %hi(D_8011EABC)
    /* 9293C 800A213C BCEAA524 */  addiu      $a1, $a1, %lo(D_8011EABC)
    /* 92940 800A2140 EF8D030C */  jal        StoreImage
    /* 92944 800A2144 2000A427 */   addiu     $a0, $sp, 0x20
    /* 92948 800A2148 1280053C */  lui        $a1, %hi(D_8011EAC0)
    /* 9294C 800A214C C0EAA524 */  addiu      $a1, $a1, %lo(D_8011EAC0)
    /* 92950 800A2150 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* 92954 800A2154 0000A2AC */  sw         $v0, 0x0($a1)
    /* 92958 800A2158 D78D030C */  jal        LoadImage
    /* 9295C 800A215C 2000A427 */   addiu     $a0, $sp, 0x20
    /* 92960 800A2160 A0000224 */  addiu      $v0, $zero, 0xA0
    /* 92964 800A2164 1000A2AF */  sw         $v0, 0x10($sp)
    /* 92968 800A2168 78000224 */  addiu      $v0, $zero, 0x78
    /* 9296C 800A216C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 92970 800A2170 1800A0AF */  sw         $zero, 0x18($sp)
    /* 92974 800A2174 1680043C */  lui        $a0, %hi(D_80158A60)
    /* 92978 800A2178 608A8424 */  addiu      $a0, $a0, %lo(D_80158A60)
    /* 9297C 800A217C 21280000 */  addu       $a1, $zero, $zero
    /* 92980 800A2180 21300000 */  addu       $a2, $zero, $zero
    /* 92984 800A2184 A019040C */  jal        func_80106680
    /* 92988 800A2188 21380000 */   addu      $a3, $zero, $zero
    /* 9298C 800A218C 21804000 */  addu       $s0, $v0, $zero
    /* 92990 800A2190 1C000012 */  beqz       $s0, .L800A2204
    /* 92994 800A2194 00000000 */   nop
    /* 92998 800A2198 0400048E */  lw         $a0, 0x4($s0)
    /* 9299C 800A219C 0A80063C */  lui        $a2, %hi(func_800A1B74)
    /* 929A0 800A21A0 741BC624 */  addiu      $a2, $a2, %lo(func_800A1B74)
    /* 929A4 800A21A4 161C040C */  jal        func_80107058
    /* 929A8 800A21A8 FCFF0524 */   addiu     $a1, $zero, -0x4
    /* 929AC 800A21AC 01000224 */  addiu      $v0, $zero, 0x1
    /* 929B0 800A21B0 940582AF */  sw         $v0, %gp_rel(D_80158A6C)($gp)
    /* 929B4 800A21B4 02001224 */  addiu      $s2, $zero, 0x2
    /* 929B8 800A21B8 0A001124 */  addiu      $s1, $zero, 0xA
  .L800A21BC:
    /* 929BC 800A21BC 9405828F */  lw         $v0, %gp_rel(D_80158A6C)($gp)
    /* 929C0 800A21C0 00000000 */  nop
    /* 929C4 800A21C4 0D004010 */  beqz       $v0, .L800A21FC
    /* 929C8 800A21C8 00000000 */   nop
    /* 929CC 800A21CC 1680013C */  lui        $at, %hi(D_801584EC)
    /* 929D0 800A21D0 EC8432AC */  sw         $s2, %lo(D_801584EC)($at)
    /* 929D4 800A21D4 05005110 */  beq        $v0, $s1, .L800A21EC
    /* 929D8 800A21D8 00000000 */   nop
    /* 929DC 800A21DC 8E12040C */  jal        func_80104A38
    /* 929E0 800A21E0 00000000 */   nop
    /* 929E4 800A21E4 6F880208 */  j          .L800A21BC
    /* 929E8 800A21E8 00000000 */   nop
  .L800A21EC:
    /* 929EC 800A21EC 1E12040C */  jal        func_80104878
    /* 929F0 800A21F0 00000000 */   nop
    /* 929F4 800A21F4 6F880208 */  j          .L800A21BC
    /* 929F8 800A21F8 00000000 */   nop
  .L800A21FC:
    /* 929FC 800A21FC 101A040C */  jal        func_80106840
    /* 92A00 800A2200 21200002 */   addu      $a0, $s0, $zero
  .L800A2204:
    /* 92A04 800A2204 E87F030C */  jal        func_800DFFA0
    /* 92A08 800A2208 00000000 */   nop
    /* 92A0C 800A220C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 92A10 800A2210 3800B28F */  lw         $s2, 0x38($sp)
    /* 92A14 800A2214 3400B18F */  lw         $s1, 0x34($sp)
    /* 92A18 800A2218 3000B08F */  lw         $s0, 0x30($sp)
    /* 92A1C 800A221C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 92A20 800A2220 0800E003 */  jr         $ra
    /* 92A24 800A2224 00000000 */   nop
endlabel func_800A20AC
