.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007D464, 0x150

glabel func_8007D464
    /* 6DC64 8007D464 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 6DC68 8007D468 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 6DC6C 8007D46C 2800B6AF */  sw         $s6, 0x28($sp)
    /* 6DC70 8007D470 2400B5AF */  sw         $s5, 0x24($sp)
    /* 6DC74 8007D474 2000B4AF */  sw         $s4, 0x20($sp)
    /* 6DC78 8007D478 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6DC7C 8007D47C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6DC80 8007D480 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6DC84 8007D484 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6DC88 8007D488 21B08000 */  addu       $s6, $a0, $zero
    /* 6DC8C 8007D48C 21A8A000 */  addu       $s5, $a1, $zero
    /* 6DC90 8007D490 21A0C000 */  addu       $s4, $a2, $zero
    /* 6DC94 8007D494 21980000 */  addu       $s3, $zero, $zero
    /* 6DC98 8007D498 0D00A006 */  bltz       $s5, .L8007D4D0
    /* 6DC9C 8007D49C 21180000 */   addu      $v1, $zero, $zero
    /* 6DCA0 8007D4A0 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6DCA4 8007D4A4 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6DCA8 8007D4A8 00000000 */  nop
    /* 6DCAC 8007D4AC 2A10A202 */  slt        $v0, $s5, $v0
    /* 6DCB0 8007D4B0 07004010 */  beqz       $v0, .L8007D4D0
    /* 6DCB4 8007D4B4 00000000 */   nop
    /* 6DCB8 8007D4B8 0500C006 */  bltz       $s6, .L8007D4D0
    /* 6DCBC 8007D4BC 00000000 */   nop
    /* 6DCC0 8007D4C0 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6DCC4 8007D4C4 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6DCC8 8007D4C8 00000000 */  nop
    /* 6DCCC 8007D4CC 2A18C202 */  slt        $v1, $s6, $v0
  .L8007D4D0:
    /* 6DCD0 8007D4D0 2C006010 */  beqz       $v1, .L8007D584
    /* 6DCD4 8007D4D4 21900000 */   addu      $s2, $zero, $zero
  .L8007D4D8:
    /* 6DCD8 8007D4D8 2A006016 */  bnez       $s3, .L8007D584
    /* 6DCDC 8007D4DC 0800422A */   slti      $v0, $s2, 0x8
    /* 6DCE0 8007D4E0 29004010 */  beqz       $v0, .L8007D588
    /* 6DCE4 8007D4E4 21106002 */   addu      $v0, $s3, $zero
    /* 6DCE8 8007D4E8 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 6DCEC 8007D4EC 21083200 */  addu       $at, $at, $s2
    /* 6DCF0 8007D4F0 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* 6DCF4 8007D4F4 173B030C */  jal        func_800CEC5C
    /* 6DCF8 8007D4F8 2120C402 */   addu      $a0, $s6, $a0
    /* 6DCFC 8007D4FC 21884000 */  addu       $s1, $v0, $zero
    /* 6DD00 8007D500 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 6DD04 8007D504 21083200 */  addu       $at, $at, $s2
    /* 6DD08 8007D508 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 6DD0C 8007D50C 00000000 */  nop
    /* 6DD10 8007D510 2180A202 */  addu       $s0, $s5, $v0
    /* 6DD14 8007D514 0D000006 */  bltz       $s0, .L8007D54C
    /* 6DD18 8007D518 21180000 */   addu      $v1, $zero, $zero
    /* 6DD1C 8007D51C 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6DD20 8007D520 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6DD24 8007D524 00000000 */  nop
    /* 6DD28 8007D528 2A100202 */  slt        $v0, $s0, $v0
    /* 6DD2C 8007D52C 07004010 */  beqz       $v0, .L8007D54C
    /* 6DD30 8007D530 00000000 */   nop
    /* 6DD34 8007D534 05002006 */  bltz       $s1, .L8007D54C
    /* 6DD38 8007D538 00000000 */   nop
    /* 6DD3C 8007D53C 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6DD40 8007D540 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6DD44 8007D544 00000000 */  nop
    /* 6DD48 8007D548 2A182202 */  slt        $v1, $s1, $v0
  .L8007D54C:
    /* 6DD4C 8007D54C 0B006010 */  beqz       $v1, .L8007D57C
    /* 6DD50 8007D550 21202002 */   addu      $a0, $s1, $zero
    /* 6DD54 8007D554 3A62020C */  jal        func_800988E8
    /* 6DD58 8007D558 21280002 */   addu      $a1, $s0, $zero
    /* 6DD5C 8007D55C 26105400 */  xor        $v0, $v0, $s4
    /* 6DD60 8007D560 0100532C */  sltiu      $s3, $v0, 0x1
    /* 6DD64 8007D564 21202002 */  addu       $a0, $s1, $zero
    /* 6DD68 8007D568 1262020C */  jal        func_80098848
    /* 6DD6C 8007D56C 21280002 */   addu      $a1, $s0, $zero
    /* 6DD70 8007D570 02005414 */  bne        $v0, $s4, .L8007D57C
    /* 6DD74 8007D574 00000000 */   nop
    /* 6DD78 8007D578 01007336 */  ori        $s3, $s3, 0x1
  .L8007D57C:
    /* 6DD7C 8007D57C 36F50108 */  j          .L8007D4D8
    /* 6DD80 8007D580 01005226 */   addiu     $s2, $s2, 0x1
  .L8007D584:
    /* 6DD84 8007D584 21106002 */  addu       $v0, $s3, $zero
  .L8007D588:
    /* 6DD88 8007D588 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 6DD8C 8007D58C 2800B68F */  lw         $s6, 0x28($sp)
    /* 6DD90 8007D590 2400B58F */  lw         $s5, 0x24($sp)
    /* 6DD94 8007D594 2000B48F */  lw         $s4, 0x20($sp)
    /* 6DD98 8007D598 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6DD9C 8007D59C 1800B28F */  lw         $s2, 0x18($sp)
    /* 6DDA0 8007D5A0 1400B18F */  lw         $s1, 0x14($sp)
    /* 6DDA4 8007D5A4 1000B08F */  lw         $s0, 0x10($sp)
    /* 6DDA8 8007D5A8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 6DDAC 8007D5AC 0800E003 */  jr         $ra
    /* 6DDB0 8007D5B0 00000000 */   nop
endlabel func_8007D464
