.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CACA4, 0x260

glabel func_800CACA4
    /* BB4A4 800CACA4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* BB4A8 800CACA8 3000BFAF */  sw         $ra, 0x30($sp)
    /* BB4AC 800CACAC 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* BB4B0 800CACB0 2800B6AF */  sw         $s6, 0x28($sp)
    /* BB4B4 800CACB4 2400B5AF */  sw         $s5, 0x24($sp)
    /* BB4B8 800CACB8 2000B4AF */  sw         $s4, 0x20($sp)
    /* BB4BC 800CACBC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* BB4C0 800CACC0 1800B2AF */  sw         $s2, 0x18($sp)
    /* BB4C4 800CACC4 1400B1AF */  sw         $s1, 0x14($sp)
    /* BB4C8 800CACC8 1000B0AF */  sw         $s0, 0x10($sp)
    /* BB4CC 800CACCC 132B030C */  jal        func_800CAC4C
    /* BB4D0 800CACD0 21A88000 */   addu      $s5, $a0, $zero
    /* BB4D4 800CACD4 7F004010 */  beqz       $v0, .L800CAED4
    /* BB4D8 800CACD8 21100000 */   addu      $v0, $zero, $zero
    /* BB4DC 800CACDC 4BDF010C */  jal        func_80077D2C
    /* BB4E0 800CACE0 2120A002 */   addu      $a0, $s5, $zero
    /* BB4E4 800CACE4 7B004014 */  bnez       $v0, .L800CAED4
    /* BB4E8 800CACE8 21100000 */   addu      $v0, $zero, $zero
    /* BB4EC 800CACEC 1280023C */  lui        $v0, %hi(D_8011A25A)
    /* BB4F0 800CACF0 5AA24294 */  lhu        $v0, %lo(D_8011A25A)($v0)
    /* BB4F4 800CACF4 00000000 */  nop
    /* BB4F8 800CACF8 02004230 */  andi       $v0, $v0, 0x2
    /* BB4FC 800CACFC 75004014 */  bnez       $v0, .L800CAED4
    /* BB500 800CAD00 21100000 */   addu      $v0, $zero, $zero
    /* BB504 800CAD04 1280023C */  lui        $v0, %hi(D_8011A272)
    /* BB508 800CAD08 72A24290 */  lbu        $v0, %lo(D_8011A272)($v0)
    /* BB50C 800CAD0C 00000000 */  nop
    /* BB510 800CAD10 70004010 */  beqz       $v0, .L800CAED4
    /* BB514 800CAD14 21100000 */   addu      $v0, $zero, $zero
    /* BB518 800CAD18 1280023C */  lui        $v0, %hi(D_8011A275)
    /* BB51C 800CAD1C 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* BB520 800CAD20 00000000 */  nop
    /* BB524 800CAD24 0710A202 */  srav       $v0, $v0, $s5
    /* BB528 800CAD28 01004230 */  andi       $v0, $v0, 0x1
    /* BB52C 800CAD2C 03004010 */  beqz       $v0, .L800CAD3C
    /* BB530 800CAD30 01001124 */   addiu     $s1, $zero, 0x1
    /* BB534 800CAD34 B52B0308 */  j          .L800CAED4
    /* BB538 800CAD38 21100000 */   addu      $v0, $zero, $zero
  .L800CAD3C:
    /* BB53C 800CAD3C 1280023C */  lui        $v0, %hi(D_8011A275)
    /* BB540 800CAD40 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* BB544 800CAD44 00000000 */  nop
    /* BB548 800CAD48 07102202 */  srav       $v0, $v0, $s1
    /* BB54C 800CAD4C 01004230 */  andi       $v0, $v0, 0x1
    /* BB550 800CAD50 05004010 */  beqz       $v0, .L800CAD68
    /* BB554 800CAD54 00000000 */   nop
    /* BB558 800CAD58 4BDF010C */  jal        func_80077D2C
    /* BB55C 800CAD5C 21202002 */   addu      $a0, $s1, $zero
    /* BB560 800CAD60 5C004014 */  bnez       $v0, .L800CAED4
    /* BB564 800CAD64 01000224 */   addiu     $v0, $zero, 0x1
  .L800CAD68:
    /* BB568 800CAD68 01003126 */  addiu      $s1, $s1, 0x1
    /* BB56C 800CAD6C 0800222A */  slti       $v0, $s1, 0x8
    /* BB570 800CAD70 F2FF4014 */  bnez       $v0, .L800CAD3C
    /* BB574 800CAD74 21B00000 */   addu      $s6, $zero, $zero
    /* BB578 800CAD78 21900000 */  addu       $s2, $zero, $zero
    /* BB57C 800CAD7C 40101500 */  sll        $v0, $s5, 1
    /* BB580 800CAD80 21105500 */  addu       $v0, $v0, $s5
    /* BB584 800CAD84 80100200 */  sll        $v0, $v0, 2
    /* BB588 800CAD88 23105500 */  subu       $v0, $v0, $s5
    /* BB58C 800CAD8C 00110200 */  sll        $v0, $v0, 4
    /* BB590 800CAD90 23105500 */  subu       $v0, $v0, $s5
    /* BB594 800CAD94 C0100200 */  sll        $v0, $v0, 3
    /* BB598 800CAD98 1180033C */  lui        $v1, %hi(D_80117A7C)
    /* BB59C 800CAD9C 7C7A6324 */  addiu      $v1, $v1, %lo(D_80117A7C)
    /* BB5A0 800CADA0 21884300 */  addu       $s1, $v0, $v1
  .L800CADA4:
    /* BB5A4 800CADA4 01005026 */  addiu      $s0, $s2, 0x1
    /* BB5A8 800CADA8 C2271000 */  srl        $a0, $s0, 31
    /* BB5AC 800CADAC 21200402 */  addu       $a0, $s0, $a0
    /* BB5B0 800CADB0 43200400 */  sra        $a0, $a0, 1
    /* BB5B4 800CADB4 21280000 */  addu       $a1, $zero, $zero
    /* BB5B8 800CADB8 F53A030C */  jal        func_800CEBD4
    /* BB5BC 800CADBC 02000624 */   addiu     $a2, $zero, 0x2
    /* BB5C0 800CADC0 40181200 */  sll        $v1, $s2, 1
    /* BB5C4 800CADC4 21187100 */  addu       $v1, $v1, $s1
    /* BB5C8 800CADC8 00006384 */  lh         $v1, 0x0($v1)
    /* BB5CC 800CADCC 23004224 */  addiu      $v0, $v0, 0x23
    /* BB5D0 800CADD0 C0100200 */  sll        $v0, $v0, 3
    /* BB5D4 800CADD4 1180013C */  lui        $at, %hi(D_8010D068)
    /* BB5D8 800CADD8 21082200 */  addu       $at, $at, $v0
    /* BB5DC 800CADDC 68D02290 */  lbu        $v0, %lo(D_8010D068)($at)
    /* BB5E0 800CADE0 00000000 */  nop
    /* BB5E4 800CADE4 18006200 */  mult       $v1, $v0
    /* BB5E8 800CADE8 12380000 */  mflo       $a3
    /* BB5EC 800CADEC 21900002 */  addu       $s2, $s0, $zero
    /* BB5F0 800CADF0 0600422A */  slti       $v0, $s2, 0x6
    /* BB5F4 800CADF4 EBFF4014 */  bnez       $v0, .L800CADA4
    /* BB5F8 800CADF8 21B0C702 */   addu      $s6, $s6, $a3
    /* BB5FC 800CADFC 01001124 */  addiu      $s1, $zero, 0x1
    /* BB600 800CAE00 1180173C */  lui        $s7, %hi(D_80117A7C)
    /* BB604 800CAE04 7C7AF726 */  addiu      $s7, $s7, %lo(D_80117A7C)
  .L800CAE08:
    /* BB608 800CAE08 1280023C */  lui        $v0, %hi(D_8011A275)
    /* BB60C 800CAE0C 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* BB610 800CAE10 00000000 */  nop
    /* BB614 800CAE14 07102202 */  srav       $v0, $v0, $s1
    /* BB618 800CAE18 01004230 */  andi       $v0, $v0, 0x1
    /* BB61C 800CAE1C 29004010 */  beqz       $v0, .L800CAEC4
    /* BB620 800CAE20 21202002 */   addu      $a0, $s1, $zero
    /* BB624 800CAE24 8ACA010C */  jal        func_80072A28
    /* BB628 800CAE28 4C000524 */   addiu     $a1, $zero, 0x4C
    /* BB62C 800CAE2C 25004010 */  beqz       $v0, .L800CAEC4
    /* BB630 800CAE30 00000000 */   nop
    /* BB634 800CAE34 23003512 */  beq        $s1, $s5, .L800CAEC4
    /* BB638 800CAE38 21980000 */   addu      $s3, $zero, $zero
    /* BB63C 800CAE3C 21900000 */  addu       $s2, $zero, $zero
    /* BB640 800CAE40 40101100 */  sll        $v0, $s1, 1
    /* BB644 800CAE44 21105100 */  addu       $v0, $v0, $s1
    /* BB648 800CAE48 80100200 */  sll        $v0, $v0, 2
    /* BB64C 800CAE4C 23105100 */  subu       $v0, $v0, $s1
    /* BB650 800CAE50 00110200 */  sll        $v0, $v0, 4
    /* BB654 800CAE54 23105100 */  subu       $v0, $v0, $s1
    /* BB658 800CAE58 C0100200 */  sll        $v0, $v0, 3
    /* BB65C 800CAE5C 21A05700 */  addu       $s4, $v0, $s7
  .L800CAE60:
    /* BB660 800CAE60 01005026 */  addiu      $s0, $s2, 0x1
    /* BB664 800CAE64 C2271000 */  srl        $a0, $s0, 31
    /* BB668 800CAE68 21200402 */  addu       $a0, $s0, $a0
    /* BB66C 800CAE6C 43200400 */  sra        $a0, $a0, 1
    /* BB670 800CAE70 21280000 */  addu       $a1, $zero, $zero
    /* BB674 800CAE74 F53A030C */  jal        func_800CEBD4
    /* BB678 800CAE78 02000624 */   addiu     $a2, $zero, 0x2
    /* BB67C 800CAE7C 40181200 */  sll        $v1, $s2, 1
    /* BB680 800CAE80 21187400 */  addu       $v1, $v1, $s4
    /* BB684 800CAE84 00006384 */  lh         $v1, 0x0($v1)
    /* BB688 800CAE88 23004224 */  addiu      $v0, $v0, 0x23
    /* BB68C 800CAE8C C0100200 */  sll        $v0, $v0, 3
    /* BB690 800CAE90 1180013C */  lui        $at, %hi(D_8010D068)
    /* BB694 800CAE94 21082200 */  addu       $at, $at, $v0
    /* BB698 800CAE98 68D02290 */  lbu        $v0, %lo(D_8010D068)($at)
    /* BB69C 800CAE9C 00000000 */  nop
    /* BB6A0 800CAEA0 18006200 */  mult       $v1, $v0
    /* BB6A4 800CAEA4 12380000 */  mflo       $a3
    /* BB6A8 800CAEA8 21900002 */  addu       $s2, $s0, $zero
    /* BB6AC 800CAEAC 0600422A */  slti       $v0, $s2, 0x6
    /* BB6B0 800CAEB0 EBFF4014 */  bnez       $v0, .L800CAE60
    /* BB6B4 800CAEB4 21986702 */   addu      $s3, $s3, $a3
    /* BB6B8 800CAEB8 2A107602 */  slt        $v0, $s3, $s6
    /* BB6BC 800CAEBC 05004010 */  beqz       $v0, .L800CAED4
    /* BB6C0 800CAEC0 01000224 */   addiu     $v0, $zero, 0x1
  .L800CAEC4:
    /* BB6C4 800CAEC4 01003126 */  addiu      $s1, $s1, 0x1
    /* BB6C8 800CAEC8 0800222A */  slti       $v0, $s1, 0x8
    /* BB6CC 800CAECC CEFF4014 */  bnez       $v0, .L800CAE08
    /* BB6D0 800CAED0 21100000 */   addu      $v0, $zero, $zero
  .L800CAED4:
    /* BB6D4 800CAED4 3000BF8F */  lw         $ra, 0x30($sp)
    /* BB6D8 800CAED8 2C00B78F */  lw         $s7, 0x2C($sp)
    /* BB6DC 800CAEDC 2800B68F */  lw         $s6, 0x28($sp)
    /* BB6E0 800CAEE0 2400B58F */  lw         $s5, 0x24($sp)
    /* BB6E4 800CAEE4 2000B48F */  lw         $s4, 0x20($sp)
    /* BB6E8 800CAEE8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* BB6EC 800CAEEC 1800B28F */  lw         $s2, 0x18($sp)
    /* BB6F0 800CAEF0 1400B18F */  lw         $s1, 0x14($sp)
    /* BB6F4 800CAEF4 1000B08F */  lw         $s0, 0x10($sp)
    /* BB6F8 800CAEF8 3800BD27 */  addiu      $sp, $sp, 0x38
    /* BB6FC 800CAEFC 0800E003 */  jr         $ra
    /* BB700 800CAF00 00000000 */   nop
endlabel func_800CACA4
