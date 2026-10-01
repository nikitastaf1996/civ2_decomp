.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C855C, 0xA0

glabel func_800C855C
    /* B8D5C 800C855C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B8D60 800C8560 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* B8D64 800C8564 1800B2AF */  sw         $s2, 0x18($sp)
    /* B8D68 800C8568 1400B1AF */  sw         $s1, 0x14($sp)
    /* B8D6C 800C856C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B8D70 800C8570 0500A014 */  bnez       $a1, .L800C8588
    /* B8D74 800C8574 21908000 */   addu      $s2, $a0, $zero
    /* B8D78 800C8578 F520030C */  jal        func_800C83D4
    /* B8D7C 800C857C 21280000 */   addu      $a1, $zero, $zero
    /* B8D80 800C8580 78210308 */  j          .L800C85E0
    /* B8D84 800C8584 00000000 */   nop
  .L800C8588:
    /* B8D88 800C8588 01000224 */  addiu      $v0, $zero, 0x1
    /* B8D8C 800C858C 0D00A210 */  beq        $a1, $v0, .L800C85C4
    /* B8D90 800C8590 21204002 */   addu      $a0, $s2, $zero
    /* B8D94 800C8594 F520030C */  jal        func_800C83D4
    /* B8D98 800C8598 03000524 */   addiu     $a1, $zero, 0x3
    /* B8D9C 800C859C 21804000 */  addu       $s0, $v0, $zero
    /* B8DA0 800C85A0 21204002 */  addu       $a0, $s2, $zero
    /* B8DA4 800C85A4 F520030C */  jal        func_800C83D4
    /* B8DA8 800C85A8 04000524 */   addiu     $a1, $zero, 0x4
    /* B8DAC 800C85AC 21884000 */  addu       $s1, $v0, $zero
    /* B8DB0 800C85B0 21204002 */  addu       $a0, $s2, $zero
    /* B8DB4 800C85B4 F520030C */  jal        func_800C83D4
    /* B8DB8 800C85B8 05000524 */   addiu     $a1, $zero, 0x5
    /* B8DBC 800C85BC 77210308 */  j          .L800C85DC
    /* B8DC0 800C85C0 21801102 */   addu      $s0, $s0, $s1
  .L800C85C4:
    /* B8DC4 800C85C4 F520030C */  jal        func_800C83D4
    /* B8DC8 800C85C8 01000524 */   addiu     $a1, $zero, 0x1
    /* B8DCC 800C85CC 21804000 */  addu       $s0, $v0, $zero
    /* B8DD0 800C85D0 21204002 */  addu       $a0, $s2, $zero
    /* B8DD4 800C85D4 F520030C */  jal        func_800C83D4
    /* B8DD8 800C85D8 02000524 */   addiu     $a1, $zero, 0x2
  .L800C85DC:
    /* B8DDC 800C85DC 21100202 */  addu       $v0, $s0, $v0
  .L800C85E0:
    /* B8DE0 800C85E0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* B8DE4 800C85E4 1800B28F */  lw         $s2, 0x18($sp)
    /* B8DE8 800C85E8 1400B18F */  lw         $s1, 0x14($sp)
    /* B8DEC 800C85EC 1000B08F */  lw         $s0, 0x10($sp)
    /* B8DF0 800C85F0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B8DF4 800C85F4 0800E003 */  jr         $ra
    /* B8DF8 800C85F8 00000000 */   nop
endlabel func_800C855C
