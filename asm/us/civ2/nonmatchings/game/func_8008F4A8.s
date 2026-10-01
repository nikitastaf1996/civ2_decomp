.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008F4A8, 0x124

glabel func_8008F4A8
    /* 7FCA8 8008F4A8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 7FCAC 8008F4AC 2400BFAF */  sw         $ra, 0x24($sp)
    /* 7FCB0 8008F4B0 2000B4AF */  sw         $s4, 0x20($sp)
    /* 7FCB4 8008F4B4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 7FCB8 8008F4B8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 7FCBC 8008F4BC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7FCC0 8008F4C0 21A0A000 */  addu       $s4, $a1, $zero
    /* 7FCC4 8008F4C4 3F00822A */  slti       $v0, $s4, 0x3F
    /* 7FCC8 8008F4C8 03004014 */  bnez       $v0, .L8008F4D8
    /* 7FCCC 8008F4CC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 7FCD0 8008F4D0 6A3D0208 */  j          .L8008F5A8
    /* 7FCD4 8008F4D4 21100000 */   addu      $v0, $zero, $zero
  .L8008F4D8:
    /* 7FCD8 8008F4D8 21900000 */  addu       $s2, $zero, $zero
    /* 7FCDC 8008F4DC 40100400 */  sll        $v0, $a0, 1
    /* 7FCE0 8008F4E0 21104400 */  addu       $v0, $v0, $a0
    /* 7FCE4 8008F4E4 80100200 */  sll        $v0, $v0, 2
    /* 7FCE8 8008F4E8 23104400 */  subu       $v0, $v0, $a0
    /* 7FCEC 8008F4EC C0980200 */  sll        $s3, $v0, 3
  .L8008F4F0:
    /* 7FCF0 8008F4F0 0800422A */  slti       $v0, $s2, 0x8
    /* 7FCF4 8008F4F4 2C004010 */  beqz       $v0, .L8008F5A8
    /* 7FCF8 8008F4F8 21100000 */   addu      $v0, $zero, $zero
    /* 7FCFC 8008F4FC 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 7FD00 8008F500 21083300 */  addu       $at, $at, $s3
    /* 7FD04 8008F504 D03E2284 */  lh         $v0, %lo(D_80113ED0)($at)
    /* 7FD08 8008F508 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 7FD0C 8008F50C 21083200 */  addu       $at, $at, $s2
    /* 7FD10 8008F510 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* 7FD14 8008F514 173B030C */  jal        func_800CEC5C
    /* 7FD18 8008F518 21204400 */   addu      $a0, $v0, $a0
    /* 7FD1C 8008F51C 21884000 */  addu       $s1, $v0, $zero
    /* 7FD20 8008F520 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 7FD24 8008F524 21083300 */  addu       $at, $at, $s3
    /* 7FD28 8008F528 D23E2384 */  lh         $v1, %lo(D_80113ED2)($at)
    /* 7FD2C 8008F52C 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 7FD30 8008F530 21083200 */  addu       $at, $at, $s2
    /* 7FD34 8008F534 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 7FD38 8008F538 00000000 */  nop
    /* 7FD3C 8008F53C 21806200 */  addu       $s0, $v1, $v0
    /* 7FD40 8008F540 0D000006 */  bltz       $s0, .L8008F578
    /* 7FD44 8008F544 21180000 */   addu      $v1, $zero, $zero
    /* 7FD48 8008F548 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 7FD4C 8008F54C 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 7FD50 8008F550 00000000 */  nop
    /* 7FD54 8008F554 2A100202 */  slt        $v0, $s0, $v0
    /* 7FD58 8008F558 07004010 */  beqz       $v0, .L8008F578
    /* 7FD5C 8008F55C 00000000 */   nop
    /* 7FD60 8008F560 05002006 */  bltz       $s1, .L8008F578
    /* 7FD64 8008F564 00000000 */   nop
    /* 7FD68 8008F568 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 7FD6C 8008F56C 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 7FD70 8008F570 00000000 */  nop
    /* 7FD74 8008F574 2A182202 */  slt        $v1, $s1, $v0
  .L8008F578:
    /* 7FD78 8008F578 09006010 */  beqz       $v1, .L8008F5A0
    /* 7FD7C 8008F57C 21202002 */   addu      $a0, $s1, $zero
    /* 7FD80 8008F580 F760020C */  jal        func_800983DC
    /* 7FD84 8008F584 21280002 */   addu      $a1, $s0, $zero
    /* 7FD88 8008F588 05004010 */  beqz       $v0, .L8008F5A0
    /* 7FD8C 8008F58C 21202002 */   addu      $a0, $s1, $zero
    /* 7FD90 8008F590 2561020C */  jal        func_80098494
    /* 7FD94 8008F594 21280002 */   addu      $a1, $s0, $zero
    /* 7FD98 8008F598 03005410 */  beq        $v0, $s4, .L8008F5A8
    /* 7FD9C 8008F59C 01000224 */   addiu     $v0, $zero, 0x1
  .L8008F5A0:
    /* 7FDA0 8008F5A0 3C3D0208 */  j          .L8008F4F0
    /* 7FDA4 8008F5A4 01005226 */   addiu     $s2, $s2, 0x1
  .L8008F5A8:
    /* 7FDA8 8008F5A8 2400BF8F */  lw         $ra, 0x24($sp)
    /* 7FDAC 8008F5AC 2000B48F */  lw         $s4, 0x20($sp)
    /* 7FDB0 8008F5B0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 7FDB4 8008F5B4 1800B28F */  lw         $s2, 0x18($sp)
    /* 7FDB8 8008F5B8 1400B18F */  lw         $s1, 0x14($sp)
    /* 7FDBC 8008F5BC 1000B08F */  lw         $s0, 0x10($sp)
    /* 7FDC0 8008F5C0 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 7FDC4 8008F5C4 0800E003 */  jr         $ra
    /* 7FDC8 8008F5C8 00000000 */   nop
endlabel func_8008F4A8
