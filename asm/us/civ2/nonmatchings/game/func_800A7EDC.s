.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A7EDC, 0x7C

glabel func_800A7EDC
    /* 986DC 800A7EDC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 986E0 800A7EE0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 986E4 800A7EE4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 986E8 800A7EE8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 986EC 800A7EEC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 986F0 800A7EF0 21888000 */  addu       $s1, $a0, $zero
    /* 986F4 800A7EF4 D1D1030C */  jal        SsVabOpenHead
    /* 986F8 800A7EF8 FFFF0524 */   addiu     $a1, $zero, -0x1
    /* 986FC 800A7EFC 21804000 */  addu       $s0, $v0, $zero
    /* 98700 800A7F00 00141000 */  sll        $v0, $s0, 16
    /* 98704 800A7F04 0C004004 */  bltz       $v0, .L800A7F38
    /* 98708 800A7F08 03940200 */   sra       $s2, $v0, 16
    /* 9870C 800A7F0C 200C2426 */  addiu      $a0, $s1, 0xC20
    /* 98710 800A7F10 9DD3030C */  jal        SsVabTransBody
    /* 98714 800A7F14 21284002 */   addu      $a1, $s2, $zero
    /* 98718 800A7F18 00140200 */  sll        $v0, $v0, 16
    /* 9871C 800A7F1C 03140200 */  sra        $v0, $v0, 16
    /* 98720 800A7F20 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 98724 800A7F24 05004314 */  bne        $v0, $v1, .L800A7F3C
    /* 98728 800A7F28 21104002 */   addu      $v0, $s2, $zero
    /* 9872C 800A7F2C 00241000 */  sll        $a0, $s0, 16
    /* 98730 800A7F30 D1D0030C */  jal        SsVabClose
    /* 98734 800A7F34 03240400 */   sra       $a0, $a0, 16
  .L800A7F38:
    /* 98738 800A7F38 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L800A7F3C:
    /* 9873C 800A7F3C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 98740 800A7F40 1800B28F */  lw         $s2, 0x18($sp)
    /* 98744 800A7F44 1400B18F */  lw         $s1, 0x14($sp)
    /* 98748 800A7F48 1000B08F */  lw         $s0, 0x10($sp)
    /* 9874C 800A7F4C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 98750 800A7F50 0800E003 */  jr         $ra
    /* 98754 800A7F54 00000000 */   nop
endlabel func_800A7EDC
