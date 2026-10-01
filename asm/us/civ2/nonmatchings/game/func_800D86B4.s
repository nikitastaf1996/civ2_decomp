.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D86B4, 0x1D4

glabel func_800D86B4
    /* C8EB4 800D86B4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C8EB8 800D86B8 2000BFAF */  sw         $ra, 0x20($sp)
    /* C8EBC 800D86BC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* C8EC0 800D86C0 1800B2AF */  sw         $s2, 0x18($sp)
    /* C8EC4 800D86C4 1400B1AF */  sw         $s1, 0x14($sp)
    /* C8EC8 800D86C8 1000B0AF */  sw         $s0, 0x10($sp)
    /* C8ECC 800D86CC 21808000 */  addu       $s0, $a0, $zero
    /* C8ED0 800D86D0 2188A000 */  addu       $s1, $a1, $zero
    /* C8ED4 800D86D4 2190C000 */  addu       $s2, $a2, $zero
    /* C8ED8 800D86D8 B40E028E */  lw         $v0, 0xEB4($s0)
    /* C8EDC 800D86DC 00000000 */  nop
    /* C8EE0 800D86E0 61004014 */  bnez       $v0, .L800D8868
    /* C8EE4 800D86E4 2198E000 */   addu      $s3, $a3, $zero
    /* C8EE8 800D86E8 B00E028E */  lw         $v0, 0xEB0($s0)
    /* C8EEC 800D86EC 00000000 */  nop
    /* C8EF0 800D86F0 5D004014 */  bnez       $v0, .L800D8868
    /* C8EF4 800D86F4 00000000 */   nop
    /* C8EF8 800D86F8 B80E028E */  lw         $v0, 0xEB8($s0)
    /* C8EFC 800D86FC 00000000 */  nop
    /* C8F00 800D8700 59004014 */  bnez       $v0, .L800D8868
    /* C8F04 800D8704 00000000 */   nop
    /* C8F08 800D8708 AC0E048E */  lw         $a0, 0xEAC($s0)
    /* C8F0C 800D870C 00000000 */  nop
    /* C8F10 800D8710 55008004 */  bltz       $a0, .L800D8868
    /* C8F14 800D8714 00000000 */   nop
    /* C8F18 800D8718 0C25020C */  jal        func_80089430
    /* C8F1C 800D871C 00000000 */   nop
    /* C8F20 800D8720 16002106 */  bgez       $s1, .L800D877C
    /* C8F24 800D8724 40101100 */   sll       $v0, $s1, 1
    /* C8F28 800D8728 1680033C */  lui        $v1, %hi(D_80158864)
    /* C8F2C 800D872C 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* C8F30 800D8730 00000000 */  nop
    /* C8F34 800D8734 00006284 */  lh         $v0, 0x0($v1)
    /* C8F38 800D8738 00000000 */  nop
    /* C8F3C 800D873C 4A004216 */  bne        $s2, $v0, .L800D8868
    /* C8F40 800D8740 00000000 */   nop
    /* C8F44 800D8744 02006284 */  lh         $v0, 0x2($v1)
    /* C8F48 800D8748 00000000 */  nop
    /* C8F4C 800D874C 46006216 */  bne        $s3, $v0, .L800D8868
    /* C8F50 800D8750 00000000 */   nop
    /* C8F54 800D8754 0C63000C */  jal        func_80018C30
    /* C8F58 800D8758 21200000 */   addu      $a0, $zero, $zero
    /* C8F5C 800D875C 21200002 */  addu       $a0, $s0, $zero
    /* C8F60 800D8760 A857030C */  jal        func_800D5EA0
    /* C8F64 800D8764 01000524 */   addiu     $a1, $zero, 0x1
    /* C8F68 800D8768 21200002 */  addu       $a0, $s0, $zero
    /* C8F6C 800D876C 844B030C */  jal        func_800D2E10
    /* C8F70 800D8770 01000524 */   addiu     $a1, $zero, 0x1
    /* C8F74 800D8774 1A620308 */  j          .L800D8868
    /* C8F78 800D8778 00000000 */   nop
  .L800D877C:
    /* C8F7C 800D877C 21105100 */  addu       $v0, $v0, $s1
    /* C8F80 800D8780 80100200 */  sll        $v0, $v0, 2
    /* C8F84 800D8784 21105100 */  addu       $v0, $v0, $s1
    /* C8F88 800D8788 40200200 */  sll        $a0, $v0, 1
    /* C8F8C 800D878C 1680053C */  lui        $a1, %hi(D_80158864)
    /* C8F90 800D8790 6488A58C */  lw         $a1, %lo(D_80158864)($a1)
    /* C8F94 800D8794 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* C8F98 800D8798 21082400 */  addu       $at, $at, $a0
    /* C8F9C 800D879C B4D62384 */  lh         $v1, %lo(D_8010D6B4)($at)
    /* C8FA0 800D87A0 0000A284 */  lh         $v0, 0x0($a1)
    /* C8FA4 800D87A4 00000000 */  nop
    /* C8FA8 800D87A8 08006214 */  bne        $v1, $v0, .L800D87CC
    /* C8FAC 800D87AC 00000000 */   nop
    /* C8FB0 800D87B0 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* C8FB4 800D87B4 21082400 */  addu       $at, $at, $a0
    /* C8FB8 800D87B8 B6D62384 */  lh         $v1, %lo(D_8010D6B6)($at)
    /* C8FBC 800D87BC 0200A284 */  lh         $v0, 0x2($a1)
    /* C8FC0 800D87C0 00000000 */  nop
    /* C8FC4 800D87C4 0C006210 */  beq        $v1, $v0, .L800D87F8
    /* C8FC8 800D87C8 00000000 */   nop
  .L800D87CC:
    /* C8FCC 800D87CC 1680033C */  lui        $v1, %hi(D_80158864)
    /* C8FD0 800D87D0 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* C8FD4 800D87D4 00000000 */  nop
    /* C8FD8 800D87D8 00006284 */  lh         $v0, 0x0($v1)
    /* C8FDC 800D87DC 00000000 */  nop
    /* C8FE0 800D87E0 21004216 */  bne        $s2, $v0, .L800D8868
    /* C8FE4 800D87E4 00000000 */   nop
    /* C8FE8 800D87E8 02006284 */  lh         $v0, 0x2($v1)
    /* C8FEC 800D87EC 00000000 */  nop
    /* C8FF0 800D87F0 1D006216 */  bne        $s3, $v0, .L800D8868
    /* C8FF4 800D87F4 00000000 */   nop
  .L800D87F8:
    /* C8FF8 800D87F8 0C63000C */  jal        func_80018C30
    /* C8FFC 800D87FC 21200000 */   addu      $a0, $zero, $zero
    /* C9000 800D8800 21200002 */  addu       $a0, $s0, $zero
    /* C9004 800D8804 A857030C */  jal        func_800D5EA0
    /* C9008 800D8808 01000524 */   addiu     $a1, $zero, 0x1
    /* C900C 800D880C 21200002 */  addu       $a0, $s0, $zero
    /* C9010 800D8810 844B030C */  jal        func_800D2E10
    /* C9014 800D8814 01000524 */   addiu     $a1, $zero, 0x1
    /* C9018 800D8818 40101100 */  sll        $v0, $s1, 1
    /* C901C 800D881C 21105100 */  addu       $v0, $v0, $s1
    /* C9020 800D8820 80100200 */  sll        $v0, $v0, 2
    /* C9024 800D8824 21105100 */  addu       $v0, $v0, $s1
    /* C9028 800D8828 40100200 */  sll        $v0, $v0, 1
    /* C902C 800D882C 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* C9030 800D8830 21082200 */  addu       $at, $at, $v0
    /* C9034 800D8834 C4D62390 */  lbu        $v1, %lo(D_8010D6C4)($at)
    /* C9038 800D8838 AC0E028E */  lw         $v0, 0xEAC($s0)
    /* C903C 800D883C 00000000 */  nop
    /* C9040 800D8840 09006214 */  bne        $v1, $v0, .L800D8868
    /* C9044 800D8844 00000000 */   nop
    /* C9048 800D8848 0C63000C */  jal        func_80018C30
    /* C904C 800D884C 01000424 */   addiu     $a0, $zero, 0x1
    /* C9050 800D8850 21200002 */  addu       $a0, $s0, $zero
    /* C9054 800D8854 CF4C030C */  jal        func_800D333C
    /* C9058 800D8858 01000524 */   addiu     $a1, $zero, 0x1
    /* C905C 800D885C 21200002 */  addu       $a0, $s0, $zero
    /* C9060 800D8860 B042030C */  jal        func_800D0AC0
    /* C9064 800D8864 21280000 */   addu      $a1, $zero, $zero
  .L800D8868:
    /* C9068 800D8868 2000BF8F */  lw         $ra, 0x20($sp)
    /* C906C 800D886C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* C9070 800D8870 1800B28F */  lw         $s2, 0x18($sp)
    /* C9074 800D8874 1400B18F */  lw         $s1, 0x14($sp)
    /* C9078 800D8878 1000B08F */  lw         $s0, 0x10($sp)
    /* C907C 800D887C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* C9080 800D8880 0800E003 */  jr         $ra
    /* C9084 800D8884 00000000 */   nop
endlabel func_800D86B4
