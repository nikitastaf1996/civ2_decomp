.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A0508, 0xCC

glabel func_800A0508
    /* 90D08 800A0508 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 90D0C 800A050C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 90D10 800A0510 1400B1AF */  sw         $s1, 0x14($sp)
    /* 90D14 800A0514 1000B0AF */  sw         $s0, 0x10($sp)
    /* 90D18 800A0518 1680023C */  lui        $v0, %hi(D_80158500)
    /* 90D1C 800A051C 0085428C */  lw         $v0, %lo(D_80158500)($v0)
    /* 90D20 800A0520 00000000 */  nop
    /* 90D24 800A0524 0D004010 */  beqz       $v0, .L800A055C
    /* 90D28 800A0528 21808000 */   addu      $s0, $a0, $zero
    /* 90D2C 800A052C FF000432 */  andi       $a0, $s0, 0xFF
    /* 90D30 800A0530 0D000224 */  addiu      $v0, $zero, 0xD
    /* 90D34 800A0534 21008210 */  beq        $a0, $v0, .L800A05BC
    /* 90D38 800A0538 1B000224 */   addiu     $v0, $zero, 0x1B
    /* 90D3C 800A053C 1F008210 */  beq        $a0, $v0, .L800A05BC
    /* 90D40 800A0540 0A000224 */   addiu     $v0, $zero, 0xA
    /* 90D44 800A0544 1D008210 */  beq        $a0, $v0, .L800A05BC
    /* 90D48 800A0548 00000000 */   nop
    /* 90D4C 800A054C E641030C */  jal        func_800D0798
    /* 90D50 800A0550 00000000 */   nop
    /* 90D54 800A0554 6F810208 */  j          .L800A05BC
    /* 90D58 800A0558 00000000 */   nop
  .L800A055C:
    /* 90D5C 800A055C 637D020C */  jal        func_8009F58C
    /* 90D60 800A0560 21880002 */   addu      $s1, $s0, $zero
    /* 90D64 800A0564 FF002432 */  andi       $a0, $s1, 0xFF
    /* 90D68 800A0568 1480013C */  lui        $at, %hi(D_8013DAB9)
    /* 90D6C 800A056C 21082400 */  addu       $at, $at, $a0
    /* 90D70 800A0570 B9DA2290 */  lbu        $v0, %lo(D_8013DAB9)($at)
    /* 90D74 800A0574 00000000 */  nop
    /* 90D78 800A0578 03004230 */  andi       $v0, $v0, 0x3
    /* 90D7C 800A057C 04004010 */  beqz       $v0, .L800A0590
    /* 90D80 800A0580 00000000 */   nop
    /* 90D84 800A0584 BD87030C */  jal        func_800E1EF4
    /* 90D88 800A0588 00000000 */   nop
    /* 90D8C 800A058C 21804000 */  addu       $s0, $v0, $zero
  .L800A0590:
    /* 90D90 800A0590 1280023C */  lui        $v0, %hi(D_8011ACBC)
    /* 90D94 800A0594 BCAC428C */  lw         $v0, %lo(D_8011ACBC)($v0)
    /* 90D98 800A0598 00000000 */  nop
    /* 90D9C 800A059C 05004014 */  bnez       $v0, .L800A05B4
    /* 90DA0 800A05A0 FF000432 */   andi      $a0, $s0, 0xFF
    /* 90DA4 800A05A4 8A80020C */  jal        func_800A0228
    /* 90DA8 800A05A8 FF002532 */   andi      $a1, $s1, 0xFF
    /* 90DAC 800A05AC 6F810208 */  j          .L800A05BC
    /* 90DB0 800A05B0 00000000 */   nop
  .L800A05B4:
    /* 90DB4 800A05B4 F380020C */  jal        func_800A03CC
    /* 90DB8 800A05B8 FF002532 */   andi      $a1, $s1, 0xFF
  .L800A05BC:
    /* 90DBC 800A05BC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 90DC0 800A05C0 1400B18F */  lw         $s1, 0x14($sp)
    /* 90DC4 800A05C4 1000B08F */  lw         $s0, 0x10($sp)
    /* 90DC8 800A05C8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 90DCC 800A05CC 0800E003 */  jr         $ra
    /* 90DD0 800A05D0 00000000 */   nop
endlabel func_800A0508
