.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80019C94, 0x108

glabel func_80019C94
    /* A494 80019C94 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* A498 80019C98 4000BFAF */  sw         $ra, 0x40($sp)
    /* A49C 80019C9C 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* A4A0 80019CA0 3800B4AF */  sw         $s4, 0x38($sp)
    /* A4A4 80019CA4 3400B3AF */  sw         $s3, 0x34($sp)
    /* A4A8 80019CA8 3000B2AF */  sw         $s2, 0x30($sp)
    /* A4AC 80019CAC 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* A4B0 80019CB0 2800B0AF */  sw         $s0, 0x28($sp)
    /* A4B4 80019CB4 21880000 */  addu       $s1, $zero, $zero
    /* A4B8 80019CB8 0180153C */  lui        $s5, %hi(D_8001696C)
    /* A4BC 80019CBC 6C69B526 */  addiu      $s5, $s5, %lo(D_8001696C)
    /* A4C0 80019CC0 1280143C */  lui        $s4, %hi(D_80127368)
    /* A4C4 80019CC4 68739426 */  addiu      $s4, $s4, %lo(D_80127368)
    /* A4C8 80019CC8 00141100 */  sll        $v0, $s1, 16
  .L80019CCC:
    /* A4CC 80019CCC 83130200 */  sra        $v0, $v0, 14
    /* A4D0 80019CD0 21105500 */  addu       $v0, $v0, $s5
    /* A4D4 80019CD4 0000528C */  lw         $s2, 0x0($v0)
    /* A4D8 80019CD8 21800000 */  addu       $s0, $zero, $zero
    /* A4DC 80019CDC 009C1100 */  sll        $s3, $s1, 16
    /* A4E0 80019CE0 1000A427 */  addiu      $a0, $sp, 0x10
  .L80019CE4:
    /* A4E4 80019CE4 47C1000C */  jal        CdSearchFile
    /* A4E8 80019CE8 21284002 */   addu      $a1, $s2, $zero
    /* A4EC 80019CEC 0C004014 */  bnez       $v0, .L80019D20
    /* A4F0 80019CF0 01000226 */   addiu     $v0, $s0, 0x1
    /* A4F4 80019CF4 21804000 */  addu       $s0, $v0, $zero
    /* A4F8 80019CF8 00140200 */  sll        $v0, $v0, 16
    /* A4FC 80019CFC 03140200 */  sra        $v0, $v0, 16
    /* A500 80019D00 0A004228 */  slti       $v0, $v0, 0xA
    /* A504 80019D04 F7FF4014 */  bnez       $v0, .L80019CE4
    /* A508 80019D08 1000A427 */   addiu     $a0, $sp, 0x10
    /* A50C 80019D0C 01000424 */  addiu      $a0, $zero, 0x1
    /* A510 80019D10 2966000C */  jal        func_800198A4
    /* A514 80019D14 032C1300 */   sra       $a1, $s3, 16
    /* A518 80019D18 5D670008 */  j          .L80019D74
    /* A51C 80019D1C 21100000 */   addu      $v0, $zero, $zero
  .L80019D20:
    /* A520 80019D20 4FBB000C */  jal        CdPosToInt
    /* A524 80019D24 1000A427 */   addiu     $a0, $sp, 0x10
    /* A528 80019D28 00241100 */  sll        $a0, $s1, 16
    /* A52C 80019D2C 83230400 */  sra        $a0, $a0, 14
    /* A530 80019D30 21189400 */  addu       $v1, $a0, $s4
    /* A534 80019D34 000062AC */  sw         $v0, 0x0($v1)
    /* A538 80019D38 1400A28F */  lw         $v0, 0x14($sp)
    /* A53C 80019D3C 00000000 */  nop
    /* A540 80019D40 FF074224 */  addiu      $v0, $v0, 0x7FF
    /* A544 80019D44 C2120200 */  srl        $v0, $v0, 11
    /* A548 80019D48 1380013C */  lui        $at, %hi(D_80129868)
    /* A54C 80019D4C 21082400 */  addu       $at, $at, $a0
    /* A550 80019D50 689822AC */  sw         $v0, %lo(D_80129868)($at)
    /* A554 80019D54 01002226 */  addiu      $v0, $s1, 0x1
    /* A558 80019D58 21884000 */  addu       $s1, $v0, $zero
    /* A55C 80019D5C 00140200 */  sll        $v0, $v0, 16
    /* A560 80019D60 03140200 */  sra        $v0, $v0, 16
    /* A564 80019D64 18004228 */  slti       $v0, $v0, 0x18
    /* A568 80019D68 D8FF4014 */  bnez       $v0, .L80019CCC
    /* A56C 80019D6C 00141100 */   sll       $v0, $s1, 16
    /* A570 80019D70 01000224 */  addiu      $v0, $zero, 0x1
  .L80019D74:
    /* A574 80019D74 4000BF8F */  lw         $ra, 0x40($sp)
    /* A578 80019D78 3C00B58F */  lw         $s5, 0x3C($sp)
    /* A57C 80019D7C 3800B48F */  lw         $s4, 0x38($sp)
    /* A580 80019D80 3400B38F */  lw         $s3, 0x34($sp)
    /* A584 80019D84 3000B28F */  lw         $s2, 0x30($sp)
    /* A588 80019D88 2C00B18F */  lw         $s1, 0x2C($sp)
    /* A58C 80019D8C 2800B08F */  lw         $s0, 0x28($sp)
    /* A590 80019D90 4800BD27 */  addiu      $sp, $sp, 0x48
    /* A594 80019D94 0800E003 */  jr         $ra
    /* A598 80019D98 00000000 */   nop
endlabel func_80019C94
