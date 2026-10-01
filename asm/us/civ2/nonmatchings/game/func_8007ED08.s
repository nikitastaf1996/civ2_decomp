.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007ED08, 0x18C

glabel func_8007ED08
    /* 6F508 8007ED08 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 6F50C 8007ED0C 3400BFAF */  sw         $ra, 0x34($sp)
    /* 6F510 8007ED10 3000BEAF */  sw         $fp, 0x30($sp)
    /* 6F514 8007ED14 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 6F518 8007ED18 2800B6AF */  sw         $s6, 0x28($sp)
    /* 6F51C 8007ED1C 2400B5AF */  sw         $s5, 0x24($sp)
    /* 6F520 8007ED20 2000B4AF */  sw         $s4, 0x20($sp)
    /* 6F524 8007ED24 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6F528 8007ED28 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6F52C 8007ED2C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6F530 8007ED30 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6F534 8007ED34 21908000 */  addu       $s2, $a0, $zero
    /* 6F538 8007ED38 21A8A000 */  addu       $s5, $a1, $zero
    /* 6F53C 8007ED3C 21A0C000 */  addu       $s4, $a2, $zero
    /* 6F540 8007ED40 2120A002 */  addu       $a0, $s5, $zero
    /* 6F544 8007ED44 1262020C */  jal        func_80098848
    /* 6F548 8007ED48 21288002 */   addu      $a1, $s4, $zero
    /* 6F54C 8007ED4C 44004104 */  bgez       $v0, .L8007EE60
    /* 6F550 8007ED50 21100000 */   addu      $v0, $zero, $zero
    /* 6F554 8007ED54 2120A002 */  addu       $a0, $s5, $zero
    /* 6F558 8007ED58 6961020C */  jal        func_800985A4
    /* 6F55C 8007ED5C 21288002 */   addu      $a1, $s4, $zero
    /* 6F560 8007ED60 21B04000 */  addu       $s6, $v0, $zero
    /* 6F564 8007ED64 0800C232 */  andi       $v0, $s6, 0x8
    /* 6F568 8007ED68 3D004014 */  bnez       $v0, .L8007EE60
    /* 6F56C 8007ED6C 21100000 */   addu      $v0, $zero, $zero
    /* 6F570 8007ED70 0400C232 */  andi       $v0, $s6, 0x4
    /* 6F574 8007ED74 07004010 */  beqz       $v0, .L8007ED94
    /* 6F578 8007ED78 21204002 */   addu      $a0, $s2, $zero
    /* 6F57C 8007ED7C 8ACA010C */  jal        func_80072A28
    /* 6F580 8007ED80 46000524 */   addiu     $a1, $zero, 0x46
    /* 6F584 8007ED84 04004014 */  bnez       $v0, .L8007ED98
    /* 6F588 8007ED88 2120A002 */   addu      $a0, $s5, $zero
    /* 6F58C 8007ED8C 98FB0108 */  j          .L8007EE60
    /* 6F590 8007ED90 21100000 */   addu      $v0, $zero, $zero
  .L8007ED94:
    /* 6F594 8007ED94 2120A002 */  addu       $a0, $s5, $zero
  .L8007ED98:
    /* 6F598 8007ED98 D560020C */  jal        func_80098354
    /* 6F59C 8007ED9C 21288002 */   addu      $a1, $s4, $zero
    /* 6F5A0 8007EDA0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 6F5A4 8007EDA4 21800000 */  addu       $s0, $zero, $zero
    /* 6F5A8 8007EDA8 80180200 */  sll        $v1, $v0, 2
    /* 6F5AC 8007EDAC 21186200 */  addu       $v1, $v1, $v0
    /* 6F5B0 8007EDB0 80980300 */  sll        $s3, $v1, 2
    /* 6F5B4 8007EDB4 11801E3C */  lui        $fp, %hi(D_8010C878)
    /* 6F5B8 8007EDB8 78C8DE27 */  addiu      $fp, $fp, %lo(D_8010C878)
    /* 6F5BC 8007EDBC 1180023C */  lui        $v0, %hi(D_8010C87E)
    /* 6F5C0 8007EDC0 7EC84224 */  addiu      $v0, $v0, %lo(D_8010C87E)
    /* 6F5C4 8007EDC4 21B86202 */  addu       $s7, $s3, $v0
    /* 6F5C8 8007EDC8 40101200 */  sll        $v0, $s2, 1
    /* 6F5CC 8007EDCC 21105200 */  addu       $v0, $v0, $s2
    /* 6F5D0 8007EDD0 80100200 */  sll        $v0, $v0, 2
    /* 6F5D4 8007EDD4 23105200 */  subu       $v0, $v0, $s2
    /* 6F5D8 8007EDD8 00890200 */  sll        $s1, $v0, 4
    /* 6F5DC 8007EDDC 23883202 */  subu       $s1, $s1, $s2
  .L8007EDE0:
    /* 6F5E0 8007EDE0 08000016 */  bnez       $s0, .L8007EE04
    /* 6F5E4 8007EDE4 0400C232 */   andi      $v0, $s6, 0x4
    /* 6F5E8 8007EDE8 2120A002 */  addu       $a0, $s5, $zero
    /* 6F5EC 8007EDEC 271F010C */  jal        func_80047C9C
    /* 6F5F0 8007EDF0 21288002 */   addu      $a1, $s4, $zero
    /* 6F5F4 8007EDF4 05004014 */  bnez       $v0, .L8007EE0C
    /* 6F5F8 8007EDF8 21107E02 */   addu      $v0, $s3, $fp
    /* 6F5FC 8007EDFC 98FB0108 */  j          .L8007EE60
    /* 6F600 8007EE00 21100000 */   addu      $v0, $zero, $zero
  .L8007EE04:
    /* 6F604 8007EE04 15004014 */  bnez       $v0, .L8007EE5C
    /* 6F608 8007EE08 21107E02 */   addu      $v0, $s3, $fp
  .L8007EE0C:
    /* 6F60C 8007EE0C 21105000 */  addu       $v0, $v0, $s0
    /* 6F610 8007EE10 00004380 */  lb         $v1, 0x0($v0)
    /* 6F614 8007EE14 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6F618 8007EE18 0C006210 */  beq        $v1, $v0, .L8007EE4C
    /* 6F61C 8007EE1C 2110F002 */   addu      $v0, $s7, $s0
    /* 6F620 8007EE20 00004380 */  lb         $v1, 0x0($v0)
    /* 6F624 8007EE24 00000000 */  nop
    /* 6F628 8007EE28 08006010 */  beqz       $v1, .L8007EE4C
    /* 6F62C 8007EE2C C0101100 */   sll       $v0, $s1, 3
    /* 6F630 8007EE30 1180013C */  lui        $at, %hi(D_801176A7)
    /* 6F634 8007EE34 21082200 */  addu       $at, $at, $v0
    /* 6F638 8007EE38 A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* 6F63C 8007EE3C 00000000 */  nop
    /* 6F640 8007EE40 2A104300 */  slt        $v0, $v0, $v1
    /* 6F644 8007EE44 06004010 */  beqz       $v0, .L8007EE60
    /* 6F648 8007EE48 01000226 */   addiu     $v0, $s0, 0x1
  .L8007EE4C:
    /* 6F64C 8007EE4C 01001026 */  addiu      $s0, $s0, 0x1
    /* 6F650 8007EE50 0200022A */  slti       $v0, $s0, 0x2
    /* 6F654 8007EE54 E2FF4014 */  bnez       $v0, .L8007EDE0
    /* 6F658 8007EE58 00000000 */   nop
  .L8007EE5C:
    /* 6F65C 8007EE5C 21100000 */  addu       $v0, $zero, $zero
  .L8007EE60:
    /* 6F660 8007EE60 3400BF8F */  lw         $ra, 0x34($sp)
    /* 6F664 8007EE64 3000BE8F */  lw         $fp, 0x30($sp)
    /* 6F668 8007EE68 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 6F66C 8007EE6C 2800B68F */  lw         $s6, 0x28($sp)
    /* 6F670 8007EE70 2400B58F */  lw         $s5, 0x24($sp)
    /* 6F674 8007EE74 2000B48F */  lw         $s4, 0x20($sp)
    /* 6F678 8007EE78 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6F67C 8007EE7C 1800B28F */  lw         $s2, 0x18($sp)
    /* 6F680 8007EE80 1400B18F */  lw         $s1, 0x14($sp)
    /* 6F684 8007EE84 1000B08F */  lw         $s0, 0x10($sp)
    /* 6F688 8007EE88 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 6F68C 8007EE8C 0800E003 */  jr         $ra
    /* 6F690 8007EE90 00000000 */   nop
endlabel func_8007ED08
