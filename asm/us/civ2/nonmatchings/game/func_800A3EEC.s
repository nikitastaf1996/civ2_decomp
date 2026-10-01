.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A3EEC, 0xC4

glabel func_800A3EEC
    /* 946EC 800A3EEC C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 946F0 800A3EF0 3800BFAF */  sw         $ra, 0x38($sp)
    /* 946F4 800A3EF4 3400B5AF */  sw         $s5, 0x34($sp)
    /* 946F8 800A3EF8 3000B4AF */  sw         $s4, 0x30($sp)
    /* 946FC 800A3EFC 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 94700 800A3F00 2800B2AF */  sw         $s2, 0x28($sp)
    /* 94704 800A3F04 2400B1AF */  sw         $s1, 0x24($sp)
    /* 94708 800A3F08 2000B0AF */  sw         $s0, 0x20($sp)
    /* 9470C 800A3F0C 21988000 */  addu       $s3, $a0, $zero
    /* 94710 800A3F10 1D066292 */  lbu        $v0, 0x61D($s3)
    /* 94714 800A3F14 1280013C */  lui        $at, %hi(D_8011A37E)
    /* 94718 800A3F18 21082200 */  addu       $at, $at, $v0
    /* 9471C 800A3F1C 7EA33190 */  lbu        $s1, %lo(D_8011A37E)($at)
    /* 94720 800A3F20 00000000 */  nop
    /* 94724 800A3F24 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 94728 800A3F28 16002012 */  beqz       $s1, .L800A3F84
    /* 9472C 800A3F2C 00000000 */   nop
    /* 94730 800A3F30 16000724 */  addiu      $a3, $zero, 0x16
    /* 94734 800A3F34 41001024 */  addiu      $s0, $zero, 0x41
    /* 94738 800A3F38 0F001524 */  addiu      $s5, $zero, 0xF
    /* 9473C 800A3F3C 1100201A */  blez       $s1, .L800A3F84
    /* 94740 800A3F40 21900000 */   addu      $s2, $zero, $zero
    /* 94744 800A3F44 00A40700 */  sll        $s4, $a3, 16
  .L800A3F48:
    /* 94748 800A3F48 00141000 */  sll        $v0, $s0, 16
    /* 9474C 800A3F4C 03140200 */  sra        $v0, $v0, 16
    /* 94750 800A3F50 1000A2AF */  sw         $v0, 0x10($sp)
    /* 94754 800A3F54 1800A427 */  addiu      $a0, $sp, 0x18
    /* 94758 800A3F58 7C016526 */  addiu      $a1, $s3, 0x17C
    /* 9475C 800A3F5C 8C006626 */  addiu      $a2, $s3, 0x8C
    /* 94760 800A3F60 89EE030C */  jal        func_800FBA24
    /* 94764 800A3F64 033C1400 */   sra       $a3, $s4, 16
    /* 94768 800A3F68 01004226 */  addiu      $v0, $s2, 0x1
    /* 9476C 800A3F6C 21904000 */  addu       $s2, $v0, $zero
    /* 94770 800A3F70 00140200 */  sll        $v0, $v0, 16
    /* 94774 800A3F74 03140200 */  sra        $v0, $v0, 16
    /* 94778 800A3F78 2A105100 */  slt        $v0, $v0, $s1
    /* 9477C 800A3F7C F2FF4014 */  bnez       $v0, .L800A3F48
    /* 94780 800A3F80 21801502 */   addu      $s0, $s0, $s5
  .L800A3F84:
    /* 94784 800A3F84 01000224 */  addiu      $v0, $zero, 0x1
    /* 94788 800A3F88 3800BF8F */  lw         $ra, 0x38($sp)
    /* 9478C 800A3F8C 3400B58F */  lw         $s5, 0x34($sp)
    /* 94790 800A3F90 3000B48F */  lw         $s4, 0x30($sp)
    /* 94794 800A3F94 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 94798 800A3F98 2800B28F */  lw         $s2, 0x28($sp)
    /* 9479C 800A3F9C 2400B18F */  lw         $s1, 0x24($sp)
    /* 947A0 800A3FA0 2000B08F */  lw         $s0, 0x20($sp)
    /* 947A4 800A3FA4 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 947A8 800A3FA8 0800E003 */  jr         $ra
    /* 947AC 800A3FAC 00000000 */   nop
endlabel func_800A3EEC
