.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80018F24, 0x104

glabel func_80018F24
    /* 9724 80018F24 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9728 80018F28 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 972C 80018F2C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9730 80018F30 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9734 80018F34 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9738 80018F38 2188A000 */  addu       $s1, $a1, $zero
    /* 973C 80018F3C 2190C000 */  addu       $s2, $a2, $zero
    /* 9740 80018F40 BD63000C */  jal        func_80018EF4
    /* 9744 80018F44 2180E000 */   addu      $s0, $a3, $zero
    /* 9748 80018F48 21384000 */  addu       $a3, $v0, $zero
    /* 974C 80018F4C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 9750 80018F50 2800E210 */  beq        $a3, $v0, .L80018FF4
    /* 9754 80018F54 21200000 */   addu      $a0, $zero, $zero
    /* 9758 80018F58 21282002 */  addu       $a1, $s1, $zero
  .L80018F5C:
    /* 975C 80018F5C 07000324 */  addiu      $v1, $zero, 0x7
    /* 9760 80018F60 21404402 */  addu       $t0, $s2, $a0
  .L80018F64:
    /* 9764 80018F64 2130A000 */  addu       $a2, $a1, $zero
    /* 9768 80018F68 0000E294 */  lhu        $v0, 0x0($a3)
    /* 976C 80018F6C 00000000 */  nop
    /* 9770 80018F70 07106200 */  srav       $v0, $v0, $v1
    /* 9774 80018F74 01004230 */  andi       $v0, $v0, 0x1
    /* 9778 80018F78 03004010 */  beqz       $v0, .L80018F88
    /* 977C 80018F7C 0100A524 */   addiu     $a1, $a1, 0x1
    /* 9780 80018F80 E3630008 */  j          .L80018F8C
    /* 9784 80018F84 21100001 */   addu      $v0, $t0, $zero
  .L80018F88:
    /* 9788 80018F88 21100002 */  addu       $v0, $s0, $zero
  .L80018F8C:
    /* 978C 80018F8C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 9790 80018F90 F4FF6104 */  bgez       $v1, .L80018F64
    /* 9794 80018F94 0000C2A0 */   sb        $v0, 0x0($a2)
    /* 9798 80018F98 0F000324 */  addiu      $v1, $zero, 0xF
    /* 979C 80018F9C 21404402 */  addu       $t0, $s2, $a0
  .L80018FA0:
    /* 97A0 80018FA0 2130A000 */  addu       $a2, $a1, $zero
    /* 97A4 80018FA4 0000E294 */  lhu        $v0, 0x0($a3)
    /* 97A8 80018FA8 00000000 */  nop
    /* 97AC 80018FAC 07106200 */  srav       $v0, $v0, $v1
    /* 97B0 80018FB0 01004230 */  andi       $v0, $v0, 0x1
    /* 97B4 80018FB4 03004010 */  beqz       $v0, .L80018FC4
    /* 97B8 80018FB8 0100A524 */   addiu     $a1, $a1, 0x1
    /* 97BC 80018FBC F2630008 */  j          .L80018FC8
    /* 97C0 80018FC0 21100001 */   addu      $v0, $t0, $zero
  .L80018FC4:
    /* 97C4 80018FC4 21100002 */  addu       $v0, $s0, $zero
  .L80018FC8:
    /* 97C8 80018FC8 0000C2A0 */  sb         $v0, 0x0($a2)
    /* 97CC 80018FCC FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 97D0 80018FD0 08006228 */  slti       $v0, $v1, 0x8
    /* 97D4 80018FD4 F2FF4010 */  beqz       $v0, .L80018FA0
    /* 97D8 80018FD8 00000000 */   nop
    /* 97DC 80018FDC 01008424 */  addiu      $a0, $a0, 0x1
    /* 97E0 80018FE0 0F008228 */  slti       $v0, $a0, 0xF
    /* 97E4 80018FE4 DDFF4014 */  bnez       $v0, .L80018F5C
    /* 97E8 80018FE8 0200E724 */   addiu     $a3, $a3, 0x2
    /* 97EC 80018FEC 03640008 */  j          .L8001900C
    /* 97F0 80018FF0 00000000 */   nop
  .L80018FF4:
    /* 97F4 80018FF4 21282002 */  addu       $a1, $s1, $zero
  .L80018FF8:
    /* 97F8 80018FF8 0000B0A0 */  sb         $s0, 0x0($a1)
    /* 97FC 80018FFC 01008424 */  addiu      $a0, $a0, 0x1
    /* 9800 80019000 00018228 */  slti       $v0, $a0, 0x100
    /* 9804 80019004 FCFF4014 */  bnez       $v0, .L80018FF8
    /* 9808 80019008 0100A524 */   addiu     $a1, $a1, 0x1
  .L8001900C:
    /* 980C 8001900C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 9810 80019010 1800B28F */  lw         $s2, 0x18($sp)
    /* 9814 80019014 1400B18F */  lw         $s1, 0x14($sp)
    /* 9818 80019018 1000B08F */  lw         $s0, 0x10($sp)
    /* 981C 8001901C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 9820 80019020 0800E003 */  jr         $ra
    /* 9824 80019024 00000000 */   nop
endlabel func_80018F24
