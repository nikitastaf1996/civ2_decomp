.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A87A0, 0x68

glabel func_800A87A0
    /* 98FA0 800A87A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 98FA4 800A87A4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 98FA8 800A87A8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 98FAC 800A87AC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 98FB0 800A87B0 2188C000 */  addu       $s1, $a2, $zero
    /* 98FB4 800A87B4 FCA0020C */  jal        func_800A83F0
    /* 98FB8 800A87B8 01001024 */   addiu     $s0, $zero, 0x1
    /* 98FBC 800A87BC 09004014 */  bnez       $v0, .L800A87E4
    /* 98FC0 800A87C0 00000000 */   nop
    /* 98FC4 800A87C4 06002006 */  bltz       $s1, .L800A87E0
    /* 98FC8 800A87C8 21800000 */   addu      $s0, $zero, $zero
  .L800A87CC:
    /* 98FCC 800A87CC 58A1020C */  jal        func_800A8560
    /* 98FD0 800A87D0 01001026 */   addiu     $s0, $s0, 0x1
    /* 98FD4 800A87D4 2A103002 */  slt        $v0, $s1, $s0
    /* 98FD8 800A87D8 FCFF4010 */  beqz       $v0, .L800A87CC
    /* 98FDC 800A87DC 00000000 */   nop
  .L800A87E0:
    /* 98FE0 800A87E0 21800000 */  addu       $s0, $zero, $zero
  .L800A87E4:
    /* 98FE4 800A87E4 E9A0020C */  jal        func_800A83A4
    /* 98FE8 800A87E8 00000000 */   nop
    /* 98FEC 800A87EC 21100002 */  addu       $v0, $s0, $zero
    /* 98FF0 800A87F0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 98FF4 800A87F4 1400B18F */  lw         $s1, 0x14($sp)
    /* 98FF8 800A87F8 1000B08F */  lw         $s0, 0x10($sp)
    /* 98FFC 800A87FC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 99000 800A8800 0800E003 */  jr         $ra
    /* 99004 800A8804 00000000 */   nop
endlabel func_800A87A0
