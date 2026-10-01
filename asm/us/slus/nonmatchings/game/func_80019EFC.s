.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80019EFC, 0x108

glabel func_80019EFC
    /* A6FC 80019EFC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* A700 80019F00 3400BFAF */  sw         $ra, 0x34($sp)
    /* A704 80019F04 3000B6AF */  sw         $s6, 0x30($sp)
    /* A708 80019F08 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* A70C 80019F0C 2800B4AF */  sw         $s4, 0x28($sp)
    /* A710 80019F10 2400B3AF */  sw         $s3, 0x24($sp)
    /* A714 80019F14 2000B2AF */  sw         $s2, 0x20($sp)
    /* A718 80019F18 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A71C 80019F1C 1800B0AF */  sw         $s0, 0x18($sp)
    /* A720 80019F20 21908000 */  addu       $s2, $a0, $zero
    /* A724 80019F24 21A8A000 */  addu       $s5, $a1, $zero
    /* A728 80019F28 21A0C000 */  addu       $s4, $a2, $zero
    /* A72C 80019F2C 2198E000 */  addu       $s3, $a3, $zero
    /* A730 80019F30 80001624 */  addiu      $s6, $zero, 0x80
    /* A734 80019F34 21880000 */  addu       $s1, $zero, $zero
    /* A738 80019F38 2180A002 */  addu       $s0, $s5, $zero
  .L80019F3C:
    /* A73C 80019F3C 2500022A */  slti       $v0, $s0, 0x25
    /* A740 80019F40 04004014 */  bnez       $v0, .L80019F54
    /* A744 80019F44 DCFF0226 */   addiu     $v0, $s0, -0x24
    /* A748 80019F48 0580013C */  lui        $at, %hi(D_800564FC)
    /* A74C 80019F4C FC6422AC */  sw         $v0, %lo(D_800564FC)($at)
    /* A750 80019F50 24001024 */  addiu      $s0, $zero, 0x24
  .L80019F54:
    /* A754 80019F54 0580013C */  lui        $at, %hi(D_80056500)
    /* A758 80019F58 006530AC */  sw         $s0, %lo(D_80056500)($at)
    /* A75C 80019F5C 21204002 */  addu       $a0, $s2, $zero
    /* A760 80019F60 0EBB000C */  jal        CdIntToPos
    /* A764 80019F64 1000A527 */   addiu     $a1, $sp, 0x10
    /* A768 80019F68 02000424 */  addiu      $a0, $zero, 0x2
  .L80019F6C:
    /* A76C 80019F6C 1000A527 */  addiu      $a1, $sp, 0x10
    /* A770 80019F70 F6B9000C */  jal        CdControl
    /* A774 80019F74 21300000 */   addu      $a2, $zero, $zero
    /* A778 80019F78 FCFF4010 */  beqz       $v0, .L80019F6C
    /* A77C 80019F7C 02000424 */   addiu     $a0, $zero, 0x2
    /* A780 80019F80 21200002 */  addu       $a0, $s0, $zero
    /* A784 80019F84 21286002 */  addu       $a1, $s3, $zero
    /* A788 80019F88 1BC5000C */  jal        CdRead
    /* A78C 80019F8C 2130C002 */   addu      $a2, $s6, $zero
    /* A790 80019F90 05008012 */  beqz       $s4, .L80019FA8
    /* A794 80019F94 21200000 */   addu      $a0, $zero, $zero
    /* A798 80019F98 5BC5000C */  jal        CdReadSync
    /* A79C 80019F9C 21280000 */   addu      $a1, $zero, $zero
    /* A7A0 80019FA0 03004004 */  bltz       $v0, .L80019FB0
    /* A7A4 80019FA4 01002226 */   addiu     $v0, $s1, 0x1
  .L80019FA8:
    /* A7A8 80019FA8 F6670008 */  j          .L80019FD8
    /* A7AC 80019FAC 01000224 */   addiu     $v0, $zero, 0x1
  .L80019FB0:
    /* A7B0 80019FB0 21884000 */  addu       $s1, $v0, $zero
    /* A7B4 80019FB4 00140200 */  sll        $v0, $v0, 16
    /* A7B8 80019FB8 03140200 */  sra        $v0, $v0, 16
    /* A7BC 80019FBC 0A004228 */  slti       $v0, $v0, 0xA
    /* A7C0 80019FC0 DEFF4014 */  bnez       $v0, .L80019F3C
    /* A7C4 80019FC4 2180A002 */   addu      $s0, $s5, $zero
    /* A7C8 80019FC8 02000424 */  addiu      $a0, $zero, 0x2
    /* A7CC 80019FCC 8966000C */  jal        func_80019A24
    /* A7D0 80019FD0 21284002 */   addu      $a1, $s2, $zero
    /* A7D4 80019FD4 21100000 */  addu       $v0, $zero, $zero
  .L80019FD8:
    /* A7D8 80019FD8 3400BF8F */  lw         $ra, 0x34($sp)
    /* A7DC 80019FDC 3000B68F */  lw         $s6, 0x30($sp)
    /* A7E0 80019FE0 2C00B58F */  lw         $s5, 0x2C($sp)
    /* A7E4 80019FE4 2800B48F */  lw         $s4, 0x28($sp)
    /* A7E8 80019FE8 2400B38F */  lw         $s3, 0x24($sp)
    /* A7EC 80019FEC 2000B28F */  lw         $s2, 0x20($sp)
    /* A7F0 80019FF0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A7F4 80019FF4 1800B08F */  lw         $s0, 0x18($sp)
    /* A7F8 80019FF8 3800BD27 */  addiu      $sp, $sp, 0x38
    /* A7FC 80019FFC 0800E003 */  jr         $ra
    /* A800 8001A000 00000000 */   nop
endlabel func_80019EFC
