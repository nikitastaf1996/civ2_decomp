.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B124, 0x12C

glabel func_8001B124
    /* B924 8001B124 21408000 */  addu       $t0, $a0, $zero
    /* B928 8001B128 00110800 */  sll        $v0, $t0, 4
    /* B92C 8001B12C 21104800 */  addu       $v0, $v0, $t0
    /* B930 8001B130 40100200 */  sll        $v0, $v0, 1
    /* B934 8001B134 0C80013C */  lui        $at, %hi(D_800C5598)
    /* B938 8001B138 21082200 */  addu       $at, $at, $v0
    /* B93C 8001B13C 98552390 */  lbu        $v1, %lo(D_800C5598)($at)
    /* B940 8001B140 FF000224 */  addiu      $v0, $zero, 0xFF
    /* B944 8001B144 03006214 */  bne        $v1, $v0, .L8001B154
    /* B948 8001B148 00110800 */   sll       $v0, $t0, 4
    /* B94C 8001B14C 926C0008 */  j          .L8001B248
    /* B950 8001B150 21100000 */   addu      $v0, $zero, $zero
  .L8001B154:
    /* B954 8001B154 0C80043C */  lui        $a0, %hi(D_800C55DC)
    /* B958 8001B158 DC558424 */  addiu      $a0, $a0, %lo(D_800C55DC)
    /* B95C 8001B15C 21104800 */  addu       $v0, $v0, $t0
    /* B960 8001B160 40100200 */  sll        $v0, $v0, 1
    /* B964 8001B164 BCFF8324 */  addiu      $v1, $a0, -0x44
    /* B968 8001B168 21384400 */  addu       $a3, $v0, $a0
    /* B96C 8001B16C 21304300 */  addu       $a2, $v0, $v1
    /* B970 8001B170 2510C700 */  or         $v0, $a2, $a3
    /* B974 8001B174 03004230 */  andi       $v0, $v0, 0x3
    /* B978 8001B178 16004010 */  beqz       $v0, .L8001B1D4
    /* B97C 8001B17C 2000C924 */   addiu     $t1, $a2, 0x20
  .L8001B180:
    /* B980 8001B180 0300C288 */  lwl        $v0, 0x3($a2)
    /* B984 8001B184 0000C298 */  lwr        $v0, 0x0($a2)
    /* B988 8001B188 0700C388 */  lwl        $v1, 0x7($a2)
    /* B98C 8001B18C 0400C398 */  lwr        $v1, 0x4($a2)
    /* B990 8001B190 0B00C488 */  lwl        $a0, 0xB($a2)
    /* B994 8001B194 0800C498 */  lwr        $a0, 0x8($a2)
    /* B998 8001B198 0F00C588 */  lwl        $a1, 0xF($a2)
    /* B99C 8001B19C 0C00C598 */  lwr        $a1, 0xC($a2)
    /* B9A0 8001B1A0 0300E2A8 */  swl        $v0, 0x3($a3)
    /* B9A4 8001B1A4 0000E2B8 */  swr        $v0, 0x0($a3)
    /* B9A8 8001B1A8 0700E3A8 */  swl        $v1, 0x7($a3)
    /* B9AC 8001B1AC 0400E3B8 */  swr        $v1, 0x4($a3)
    /* B9B0 8001B1B0 0B00E4A8 */  swl        $a0, 0xB($a3)
    /* B9B4 8001B1B4 0800E4B8 */  swr        $a0, 0x8($a3)
    /* B9B8 8001B1B8 0F00E5A8 */  swl        $a1, 0xF($a3)
    /* B9BC 8001B1BC 0C00E5B8 */  swr        $a1, 0xC($a3)
    /* B9C0 8001B1C0 1000C624 */  addiu      $a2, $a2, 0x10
    /* B9C4 8001B1C4 EEFFC914 */  bne        $a2, $t1, .L8001B180
    /* B9C8 8001B1C8 1000E724 */   addiu     $a3, $a3, 0x10
    /* B9CC 8001B1CC 806C0008 */  j          .L8001B200
    /* B9D0 8001B1D0 00000000 */   nop
  .L8001B1D4:
    /* B9D4 8001B1D4 0000C28C */  lw         $v0, 0x0($a2)
    /* B9D8 8001B1D8 0400C38C */  lw         $v1, 0x4($a2)
    /* B9DC 8001B1DC 0800C48C */  lw         $a0, 0x8($a2)
    /* B9E0 8001B1E0 0C00C58C */  lw         $a1, 0xC($a2)
    /* B9E4 8001B1E4 0000E2AC */  sw         $v0, 0x0($a3)
    /* B9E8 8001B1E8 0400E3AC */  sw         $v1, 0x4($a3)
    /* B9EC 8001B1EC 0800E4AC */  sw         $a0, 0x8($a3)
    /* B9F0 8001B1F0 0C00E5AC */  sw         $a1, 0xC($a3)
    /* B9F4 8001B1F4 1000C624 */  addiu      $a2, $a2, 0x10
    /* B9F8 8001B1F8 F6FFC914 */  bne        $a2, $t1, .L8001B1D4
    /* B9FC 8001B1FC 1000E724 */   addiu     $a3, $a3, 0x10
  .L8001B200:
    /* BA00 8001B200 0000C280 */  lb         $v0, 0x0($a2)
    /* BA04 8001B204 0100C380 */  lb         $v1, 0x1($a2)
    /* BA08 8001B208 0000E2A0 */  sb         $v0, 0x0($a3)
    /* BA0C 8001B20C 0100E3A0 */  sb         $v1, 0x1($a3)
    /* BA10 8001B210 00190800 */  sll        $v1, $t0, 4
    /* BA14 8001B214 21186800 */  addu       $v1, $v1, $t0
    /* BA18 8001B218 40180300 */  sll        $v1, $v1, 1
    /* BA1C 8001B21C 0C80013C */  lui        $at, %hi(D_800C559A)
    /* BA20 8001B220 21082300 */  addu       $at, $at, $v1
    /* BA24 8001B224 9A552290 */  lbu        $v0, %lo(D_800C559A)($at)
    /* BA28 8001B228 00000000 */  nop
    /* BA2C 8001B22C 00120200 */  sll        $v0, $v0, 8
    /* BA30 8001B230 0C80013C */  lui        $at, %hi(D_800C559B)
    /* BA34 8001B234 21082300 */  addu       $at, $at, $v1
    /* BA38 8001B238 9B552390 */  lbu        $v1, %lo(D_800C559B)($at)
    /* BA3C 8001B23C 00000000 */  nop
    /* BA40 8001B240 25104300 */  or         $v0, $v0, $v1
    /* BA44 8001B244 FFFF4238 */  xori       $v0, $v0, 0xFFFF
  .L8001B248:
    /* BA48 8001B248 0800E003 */  jr         $ra
    /* BA4C 8001B24C 00000000 */   nop
endlabel func_8001B124
