.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007049C, 0xA8

glabel func_8007049C
    /* 60C9C 8007049C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 60CA0 800704A0 2400BFAF */  sw         $ra, 0x24($sp)
    /* 60CA4 800704A4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 60CA8 800704A8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 60CAC 800704AC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 60CB0 800704B0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 60CB4 800704B4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 60CB8 800704B8 21908000 */  addu       $s2, $a0, $zero
    /* 60CBC 800704BC 21A0A000 */  addu       $s4, $a1, $zero
    /* 60CC0 800704C0 21880000 */  addu       $s1, $zero, $zero
    /* 60CC4 800704C4 FFFF1324 */  addiu      $s3, $zero, -0x1
    /* 60CC8 800704C8 21204002 */  addu       $a0, $s2, $zero
  .L800704CC:
    /* 60CCC 800704CC 5D8A030C */  jal        func_800E2974
    /* 60CD0 800704D0 01000524 */   addiu     $a1, $zero, 0x1
    /* 60CD4 800704D4 21804000 */  addu       $s0, $v0, $zero
    /* 60CD8 800704D8 07001316 */  bne        $s0, $s3, .L800704F8
    /* 60CDC 800704DC 01003126 */   addiu     $s1, $s1, 0x1
    /* 60CE0 800704E0 1400222A */  slti       $v0, $s1, 0x14
    /* 60CE4 800704E4 F9FF4014 */  bnez       $v0, .L800704CC
    /* 60CE8 800704E8 21204002 */   addu      $a0, $s2, $zero
    /* 60CEC 800704EC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 60CF0 800704F0 0B000212 */  beq        $s0, $v0, .L80070520
    /* 60CF4 800704F4 00000000 */   nop
  .L800704F8:
    /* 60CF8 800704F8 FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 60CFC 800704FC 21200002 */  addu       $a0, $s0, $zero
  .L80070500:
    /* 60D00 80070500 21288002 */  addu       $a1, $s4, $zero
    /* 60D04 80070504 658A030C */  jal        func_800E2994
    /* 60D08 80070508 00020624 */   addiu     $a2, $zero, 0x200
    /* 60D0C 8007050C FCFF5110 */  beq        $v0, $s1, .L80070500
    /* 60D10 80070510 21200002 */   addu      $a0, $s0, $zero
    /* 60D14 80070514 6D8A030C */  jal        func_800E29B4
    /* 60D18 80070518 21200002 */   addu      $a0, $s0, $zero
    /* 60D1C 8007051C 21100000 */  addu       $v0, $zero, $zero
  .L80070520:
    /* 60D20 80070520 2400BF8F */  lw         $ra, 0x24($sp)
    /* 60D24 80070524 2000B48F */  lw         $s4, 0x20($sp)
    /* 60D28 80070528 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 60D2C 8007052C 1800B28F */  lw         $s2, 0x18($sp)
    /* 60D30 80070530 1400B18F */  lw         $s1, 0x14($sp)
    /* 60D34 80070534 1000B08F */  lw         $s0, 0x10($sp)
    /* 60D38 80070538 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 60D3C 8007053C 0800E003 */  jr         $ra
    /* 60D40 80070540 00000000 */   nop
endlabel func_8007049C
