.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2070, 0x74

glabel func_800B2070
    /* A2870 800B2070 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A2874 800B2074 1800BFAF */  sw         $ra, 0x18($sp)
    /* A2878 800B2078 1400B1AF */  sw         $s1, 0x14($sp)
    /* A287C 800B207C 1000B0AF */  sw         $s0, 0x10($sp)
    /* A2880 800B2080 21888000 */  addu       $s1, $a0, $zero
    /* A2884 800B2084 2180A000 */  addu       $s0, $a1, $zero
    /* A2888 800B2088 AD87030C */  jal        func_800E1EB4
    /* A288C 800B208C 21200002 */   addu      $a0, $s0, $zero
    /* A2890 800B2090 01804224 */  addiu      $v0, $v0, -0x7FFF
    /* A2894 800B2094 98012426 */  addiu      $a0, $s1, 0x198
    /* A2898 800B2098 F552020C */  jal        func_80094BD4
    /* A289C 800B209C FFFF4530 */   andi      $a1, $v0, 0xFFFF
    /* A28A0 800B20A0 180122AE */  sw         $v0, 0x118($s1)
    /* A28A4 800B20A4 21204000 */  addu       $a0, $v0, $zero
    /* A28A8 800B20A8 A587030C */  jal        func_800E1E94
    /* A28AC 800B20AC 21280002 */   addu      $a1, $s0, $zero
    /* A28B0 800B20B0 0002248E */  lw         $a0, 0x200($s1)
    /* A28B4 800B20B4 00000000 */  nop
    /* A28B8 800B20B8 04008010 */  beqz       $a0, .L800B20CC
    /* A28BC 800B20BC 00000000 */   nop
    /* A28C0 800B20C0 E511040C */  jal        func_80104794
    /* A28C4 800B20C4 00000000 */   nop
    /* A28C8 800B20C8 000220AE */  sw         $zero, 0x200($s1)
  .L800B20CC:
    /* A28CC 800B20CC 1800BF8F */  lw         $ra, 0x18($sp)
    /* A28D0 800B20D0 1400B18F */  lw         $s1, 0x14($sp)
    /* A28D4 800B20D4 1000B08F */  lw         $s0, 0x10($sp)
    /* A28D8 800B20D8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A28DC 800B20DC 0800E003 */  jr         $ra
    /* A28E0 800B20E0 00000000 */   nop
endlabel func_800B2070
