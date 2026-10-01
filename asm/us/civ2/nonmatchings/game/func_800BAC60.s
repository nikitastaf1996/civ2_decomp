.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BAC60, 0xF8

glabel func_800BAC60
    /* AB460 800BAC60 28FDBD27 */  addiu      $sp, $sp, -0x2D8
    /* AB464 800BAC64 D002B2AF */  sw         $s2, 0x2D0($sp)
    /* AB468 800BAC68 21908000 */  addu       $s2, $a0, $zero
    /* AB46C 800BAC6C 2800A427 */  addiu      $a0, $sp, 0x28
    /* AB470 800BAC70 00200524 */  addiu      $a1, $zero, 0x2000
    /* AB474 800BAC74 D402BFAF */  sw         $ra, 0x2D4($sp)
    /* AB478 800BAC78 CC02B1AF */  sw         $s1, 0x2CC($sp)
    /* AB47C 800BAC7C ADC5020C */  jal        func_800B16B4
    /* AB480 800BAC80 C802B0AF */   sw        $s0, 0x2C8($sp)
    /* AB484 800BAC84 21204002 */  addu       $a0, $s2, $zero
    /* AB488 800BAC88 8ACA010C */  jal        func_80072A28
    /* AB48C 800BAC8C 54000524 */   addiu     $a1, $zero, 0x54
    /* AB490 800BAC90 03004014 */  bnez       $v0, .L800BACA0
    /* AB494 800BAC94 0400023C */   lui       $v0, (0x40001 >> 16)
    /* AB498 800BAC98 4DEB0208 */  j          .L800BAD34
    /* AB49C 800BAC9C 2800A427 */   addiu     $a0, $sp, 0x28
  .L800BACA0:
    /* AB4A0 800BACA0 01004234 */  ori        $v0, $v0, (0x40001 & 0xFFFF)
    /* AB4A4 800BACA4 2800A427 */  addiu      $a0, $sp, 0x28
    /* AB4A8 800BACA8 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* AB4AC 800BACAC F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* AB4B0 800BACB0 ABDA0634 */  ori        $a2, $zero, 0xDAAB
    /* AB4B4 800BACB4 21380000 */  addu       $a3, $zero, $zero
    /* AB4B8 800BACB8 1000A0AF */  sw         $zero, 0x10($sp)
    /* AB4BC 800BACBC 1400A0AF */  sw         $zero, 0x14($sp)
    /* AB4C0 800BACC0 1800A0AF */  sw         $zero, 0x18($sp)
    /* AB4C4 800BACC4 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* AB4C8 800BACC8 2CE0020C */  jal        func_800B80B0
    /* AB4CC 800BACCC 2000A2AF */   sw        $v0, 0x20($sp)
    /* AB4D0 800BACD0 21800000 */  addu       $s0, $zero, $zero
    /* AB4D4 800BACD4 1280113C */  lui        $s1, %hi(D_8011A6B0)
    /* AB4D8 800BACD8 B0A63126 */  addiu      $s1, $s1, %lo(D_8011A6B0)
  .L800BACDC:
    /* AB4DC 800BACDC 0000248E */  lw         $a0, 0x0($s1)
    /* AB4E0 800BACE0 A63A030C */  jal        func_800CEA98
    /* AB4E4 800BACE4 04003126 */   addiu     $s1, $s1, 0x4
    /* AB4E8 800BACE8 2800A427 */  addiu      $a0, $sp, 0x28
    /* AB4EC 800BACEC 21284000 */  addu       $a1, $v0, $zero
    /* AB4F0 800BACF0 A8C9020C */  jal        func_800B26A0
    /* AB4F4 800BACF4 21300002 */   addu      $a2, $s0, $zero
    /* AB4F8 800BACF8 01001026 */  addiu      $s0, $s0, 0x1
    /* AB4FC 800BACFC 1000022A */  slti       $v0, $s0, 0x10
    /* AB500 800BAD00 F6FF4014 */  bnez       $v0, .L800BACDC
    /* AB504 800BAD04 00000000 */   nop
    /* AB508 800BAD08 2800B027 */  addiu      $s0, $sp, 0x28
    /* AB50C 800BAD0C 21200002 */  addu       $a0, $s0, $zero
    /* AB510 800BAD10 52DF020C */  jal        func_800B7D48
    /* AB514 800BAD14 21280000 */   addu      $a1, $zero, $zero
    /* AB518 800BAD18 05004004 */  bltz       $v0, .L800BAD30
    /* AB51C 800BAD1C 21204002 */   addu      $a0, $s2, $zero
    /* AB520 800BAD20 2BEA020C */  jal        func_800BA8AC
    /* AB524 800BAD24 21284000 */   addu      $a1, $v0, $zero
    /* AB528 800BAD28 DDFF4104 */  bgez       $v0, .L800BACA0
    /* AB52C 800BAD2C 0400023C */   lui       $v0, (0x40001 >> 16)
  .L800BAD30:
    /* AB530 800BAD30 21200002 */  addu       $a0, $s0, $zero
  .L800BAD34:
    /* AB534 800BAD34 0AC7020C */  jal        func_800B1C28
    /* AB538 800BAD38 02000524 */   addiu     $a1, $zero, 0x2
    /* AB53C 800BAD3C D402BF8F */  lw         $ra, 0x2D4($sp)
    /* AB540 800BAD40 D002B28F */  lw         $s2, 0x2D0($sp)
    /* AB544 800BAD44 CC02B18F */  lw         $s1, 0x2CC($sp)
    /* AB548 800BAD48 C802B08F */  lw         $s0, 0x2C8($sp)
    /* AB54C 800BAD4C D802BD27 */  addiu      $sp, $sp, 0x2D8
    /* AB550 800BAD50 0800E003 */  jr         $ra
    /* AB554 800BAD54 00000000 */   nop
endlabel func_800BAC60
