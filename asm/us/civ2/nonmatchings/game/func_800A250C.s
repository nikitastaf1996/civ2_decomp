.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A250C, 0x94

glabel func_800A250C
    /* 92D0C 800A250C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 92D10 800A2510 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 92D14 800A2514 1800B2AF */  sw         $s2, 0x18($sp)
    /* 92D18 800A2518 1400B1AF */  sw         $s1, 0x14($sp)
    /* 92D1C 800A251C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 92D20 800A2520 2190C000 */  addu       $s2, $a2, $zero
    /* 92D24 800A2524 FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 92D28 800A2528 D988020C */  jal        func_800A2364
    /* 92D2C 800A252C 01001024 */   addiu     $s0, $zero, 0x1
    /* 92D30 800A2530 13004010 */  beqz       $v0, .L800A2580
    /* 92D34 800A2534 00000000 */   nop
    /* 92D38 800A2538 1800438C */  lw         $v1, 0x18($v0)
    /* 92D3C 800A253C 00000000 */  nop
    /* 92D40 800A2540 10006010 */  beqz       $v1, .L800A2584
    /* 92D44 800A2544 21102002 */   addu      $v0, $s1, $zero
  .L800A2548:
    /* 92D48 800A2548 0800628C */  lw         $v0, 0x8($v1)
    /* 92D4C 800A254C 00000000 */  nop
    /* 92D50 800A2550 02004230 */  andi       $v0, $v0, 0x2
    /* 92D54 800A2554 06004014 */  bnez       $v0, .L800A2570
    /* 92D58 800A2558 00000000 */   nop
    /* 92D5C 800A255C 04001216 */  bne        $s0, $s2, .L800A2570
    /* 92D60 800A2560 01001026 */   addiu     $s0, $s0, 0x1
    /* 92D64 800A2564 0400718C */  lw         $s1, 0x4($v1)
    /* 92D68 800A2568 61890208 */  j          .L800A2584
    /* 92D6C 800A256C 21102002 */   addu      $v0, $s1, $zero
  .L800A2570:
    /* 92D70 800A2570 1000638C */  lw         $v1, 0x10($v1)
    /* 92D74 800A2574 00000000 */  nop
    /* 92D78 800A2578 F3FF6014 */  bnez       $v1, .L800A2548
    /* 92D7C 800A257C 00000000 */   nop
  .L800A2580:
    /* 92D80 800A2580 21102002 */  addu       $v0, $s1, $zero
  .L800A2584:
    /* 92D84 800A2584 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 92D88 800A2588 1800B28F */  lw         $s2, 0x18($sp)
    /* 92D8C 800A258C 1400B18F */  lw         $s1, 0x14($sp)
    /* 92D90 800A2590 1000B08F */  lw         $s0, 0x10($sp)
    /* 92D94 800A2594 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 92D98 800A2598 0800E003 */  jr         $ra
    /* 92D9C 800A259C 00000000 */   nop
endlabel func_800A250C
