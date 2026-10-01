.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094CF8, 0xD0

glabel func_80094CF8
    /* 854F8 80094CF8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 854FC 80094CFC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 85500 80094D00 1400B1AF */  sw         $s1, 0x14($sp)
    /* 85504 80094D04 1000B0AF */  sw         $s0, 0x10($sp)
    /* 85508 80094D08 1900033C */  lui        $v1, (0x19660D >> 16)
    /* 8550C 80094D0C 0D666334 */  ori        $v1, $v1, (0x19660D & 0xFFFF)
    /* 85510 80094D10 6E3C043C */  lui        $a0, (0x3C6EF35F >> 16)
    /* 85514 80094D14 5FF38434 */  ori        $a0, $a0, (0x3C6EF35F & 0xFFFF)
    /* 85518 80094D18 6C04828F */  lw         $v0, %gp_rel(D_80158944)($gp)
    /* 8551C 80094D1C 00000000 */  nop
    /* 85520 80094D20 18004300 */  mult       $v0, $v1
    /* 85524 80094D24 12300000 */  mflo       $a2
    /* 85528 80094D28 2120C400 */  addu       $a0, $a2, $a0
    /* 8552C 80094D2C 6C0484AF */  sw         $a0, %gp_rel(D_80158944)($gp)
    /* 85530 80094D30 05008004 */  bltz       $a0, .L80094D48
    /* 85534 80094D34 FFFF1124 */   addiu     $s1, $zero, -0x1
    /* 85538 80094D38 D9A1030C */  jal        __floatsisf
    /* 8553C 80094D3C 00000000 */   nop
    /* 85540 80094D40 5C530208 */  j          .L80094D70
    /* 85544 80094D44 00000000 */   nop
  .L80094D48:
    /* 85548 80094D48 6C04828F */  lw         $v0, %gp_rel(D_80158944)($gp)
    /* 8554C 80094D4C 00000000 */  nop
    /* 85550 80094D50 01004430 */  andi       $a0, $v0, 0x1
    /* 85554 80094D54 42100200 */  srl        $v0, $v0, 1
    /* 85558 80094D58 D9A1030C */  jal        __floatsisf
    /* 8555C 80094D5C 25208200 */   or        $a0, $a0, $v0
    /* 85560 80094D60 21804000 */  addu       $s0, $v0, $zero
    /* 85564 80094D64 21200002 */  addu       $a0, $s0, $zero
    /* 85568 80094D68 E19F030C */  jal        __addsf3
    /* 8556C 80094D6C 21280002 */   addu      $a1, $s0, $zero
  .L80094D70:
    /* 85570 80094D70 05002006 */  bltz       $s1, .L80094D88
    /* 85574 80094D74 21804000 */   addu      $s0, $v0, $zero
    /* 85578 80094D78 D9A1030C */  jal        __floatsisf
    /* 8557C 80094D7C 21202002 */   addu      $a0, $s1, $zero
    /* 85580 80094D80 6A530208 */  j          .L80094DA8
    /* 85584 80094D84 21200002 */   addu      $a0, $s0, $zero
  .L80094D88:
    /* 85588 80094D88 01002432 */  andi       $a0, $s1, 0x1
    /* 8558C 80094D8C 42101100 */  srl        $v0, $s1, 1
    /* 85590 80094D90 D9A1030C */  jal        __floatsisf
    /* 85594 80094D94 25208200 */   or        $a0, $a0, $v0
    /* 85598 80094D98 21204000 */  addu       $a0, $v0, $zero
    /* 8559C 80094D9C E19F030C */  jal        __addsf3
    /* 855A0 80094DA0 21284000 */   addu      $a1, $v0, $zero
    /* 855A4 80094DA4 21200002 */  addu       $a0, $s0, $zero
  .L80094DA8:
    /* 855A8 80094DA8 7DA0030C */  jal        __divsf3
    /* 855AC 80094DAC 21284000 */   addu      $a1, $v0, $zero
    /* 855B0 80094DB0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 855B4 80094DB4 1400B18F */  lw         $s1, 0x14($sp)
    /* 855B8 80094DB8 1000B08F */  lw         $s0, 0x10($sp)
    /* 855BC 80094DBC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 855C0 80094DC0 0800E003 */  jr         $ra
    /* 855C4 80094DC4 00000000 */   nop
endlabel func_80094CF8
