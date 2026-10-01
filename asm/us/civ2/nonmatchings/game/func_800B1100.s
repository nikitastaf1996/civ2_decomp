.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1100, 0x130

glabel func_800B1100
    /* A1900 800B1100 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A1904 800B1104 2400BFAF */  sw         $ra, 0x24($sp)
    /* A1908 800B1108 2000B2AF */  sw         $s2, 0x20($sp)
    /* A190C 800B110C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A1910 800B1110 1800B0AF */  sw         $s0, 0x18($sp)
    /* A1914 800B1114 21888000 */  addu       $s1, $a0, $zero
    /* A1918 800B1118 21800000 */  addu       $s0, $zero, $zero
    /* A191C 800B111C 40101100 */  sll        $v0, $s1, 1
    /* A1920 800B1120 21105100 */  addu       $v0, $v0, $s1
    /* A1924 800B1124 80100200 */  sll        $v0, $v0, 2
    /* A1928 800B1128 23105100 */  subu       $v0, $v0, $s1
    /* A192C 800B112C 00110200 */  sll        $v0, $v0, 4
    /* A1930 800B1130 23105100 */  subu       $v0, $v0, $s1
    /* A1934 800B1134 C0900200 */  sll        $s2, $v0, 3
    /* A1938 800B1138 40101000 */  sll        $v0, $s0, 1
  .L800B113C:
    /* A193C 800B113C 21105000 */  addu       $v0, $v0, $s0
    /* A1940 800B1140 40100200 */  sll        $v0, $v0, 1
    /* A1944 800B1144 21185200 */  addu       $v1, $v0, $s2
    /* A1948 800B1148 1180013C */  lui        $at, %hi(D_80117A8D)
    /* A194C 800B114C 21082300 */  addu       $at, $at, $v1
    /* A1950 800B1150 8D7A2280 */  lb         $v0, %lo(D_80117A8D)($at)
    /* A1954 800B1154 00000000 */  nop
    /* A1958 800B1158 05004104 */  bgez       $v0, .L800B1170
    /* A195C 800B115C 21202002 */   addu      $a0, $s1, $zero
    /* A1960 800B1160 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A1964 800B1164 1180013C */  lui        $at, %hi(D_80117A8C)
    /* A1968 800B1168 21082300 */  addu       $at, $at, $v1
    /* A196C 800B116C 8C7A22A0 */  sb         $v0, %lo(D_80117A8C)($at)
  .L800B1170:
    /* A1970 800B1170 CBC1020C */  jal        func_800B072C
    /* A1974 800B1174 21280002 */   addu      $a1, $s0, $zero
    /* A1978 800B1178 01001026 */  addiu      $s0, $s0, 0x1
    /* A197C 800B117C 3000022A */  slti       $v0, $s0, 0x30
    /* A1980 800B1180 EEFF4014 */  bnez       $v0, .L800B113C
    /* A1984 800B1184 40101000 */   sll       $v0, $s0, 1
    /* A1988 800B1188 21800000 */  addu       $s0, $zero, $zero
    /* A198C 800B118C 40101100 */  sll        $v0, $s1, 1
    /* A1990 800B1190 21105100 */  addu       $v0, $v0, $s1
    /* A1994 800B1194 80100200 */  sll        $v0, $v0, 2
    /* A1998 800B1198 23105100 */  subu       $v0, $v0, $s1
    /* A199C 800B119C 00110200 */  sll        $v0, $v0, 4
    /* A19A0 800B11A0 23105100 */  subu       $v0, $v0, $s1
    /* A19A4 800B11A4 C0900200 */  sll        $s2, $v0, 3
    /* A19A8 800B11A8 40101000 */  sll        $v0, $s0, 1
  .L800B11AC:
    /* A19AC 800B11AC 21105000 */  addu       $v0, $v0, $s0
    /* A19B0 800B11B0 40100200 */  sll        $v0, $v0, 1
    /* A19B4 800B11B4 21105200 */  addu       $v0, $v0, $s2
    /* A19B8 800B11B8 1180013C */  lui        $at, %hi(D_80117BAC)
    /* A19BC 800B11BC 21082200 */  addu       $at, $at, $v0
    /* A19C0 800B11C0 AC7B2780 */  lb         $a3, %lo(D_80117BAC)($at)
    /* A19C4 800B11C4 00000000 */  nop
    /* A19C8 800B11C8 0E00E004 */  bltz       $a3, .L800B1204
    /* A19CC 800B11CC 00000000 */   nop
    /* A19D0 800B11D0 1180013C */  lui        $at, %hi(D_80117BA8)
    /* A19D4 800B11D4 21082200 */  addu       $at, $at, $v0
    /* A19D8 800B11D8 A87B2584 */  lh         $a1, %lo(D_80117BA8)($at)
    /* A19DC 800B11DC 1180013C */  lui        $at, %hi(D_80117BAA)
    /* A19E0 800B11E0 21082200 */  addu       $at, $at, $v0
    /* A19E4 800B11E4 AA7B2684 */  lh         $a2, %lo(D_80117BAA)($at)
    /* A19E8 800B11E8 1180013C */  lui        $at, %hi(D_80117BAD)
    /* A19EC 800B11EC 21082200 */  addu       $at, $at, $v0
    /* A19F0 800B11F0 AD7B2280 */  lb         $v0, %lo(D_80117BAD)($at)
    /* A19F4 800B11F4 00000000 */  nop
    /* A19F8 800B11F8 1000A2AF */  sw         $v0, 0x10($sp)
    /* A19FC 800B11FC E5C2020C */  jal        func_800B0B94
    /* A1A00 800B1200 21202002 */   addu      $a0, $s1, $zero
  .L800B1204:
    /* A1A04 800B1204 01001026 */  addiu      $s0, $s0, 0x1
    /* A1A08 800B1208 1000022A */  slti       $v0, $s0, 0x10
    /* A1A0C 800B120C E7FF4014 */  bnez       $v0, .L800B11AC
    /* A1A10 800B1210 40101000 */   sll       $v0, $s0, 1
    /* A1A14 800B1214 2400BF8F */  lw         $ra, 0x24($sp)
    /* A1A18 800B1218 2000B28F */  lw         $s2, 0x20($sp)
    /* A1A1C 800B121C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A1A20 800B1220 1800B08F */  lw         $s0, 0x18($sp)
    /* A1A24 800B1224 2800BD27 */  addiu      $sp, $sp, 0x28
    /* A1A28 800B1228 0800E003 */  jr         $ra
    /* A1A2C 800B122C 00000000 */   nop
endlabel func_800B1100
