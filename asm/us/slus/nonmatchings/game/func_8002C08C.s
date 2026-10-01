.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002C08C, 0xC0

glabel func_8002C08C
    /* 1C88C 8002C08C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1C890 8002C090 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1C894 8002C094 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1C898 8002C098 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1C89C 8002C09C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1C8A0 8002C0A0 2188A000 */  addu       $s1, $a1, $zero
    /* 1C8A4 8002C0A4 2190C000 */  addu       $s2, $a2, $zero
    /* 1C8A8 8002C0A8 00008490 */  lbu        $a0, 0x0($a0)
    /* 1C8AC 8002C0AC 62AF000C */  jal        func_8002BD88
    /* 1C8B0 8002C0B0 2180E000 */   addu      $s0, $a3, $zero
    /* 1C8B4 8002C0B4 21384000 */  addu       $a3, $v0, $zero
    /* 1C8B8 8002C0B8 1700E010 */  beqz       $a3, .L8002C118
    /* 1C8BC 8002C0BC 21200000 */   addu      $a0, $zero, $zero
    /* 1C8C0 8002C0C0 21282002 */  addu       $a1, $s1, $zero
  .L8002C0C4:
    /* 1C8C4 8002C0C4 07000324 */  addiu      $v1, $zero, 0x7
    /* 1C8C8 8002C0C8 21404402 */  addu       $t0, $s2, $a0
  .L8002C0CC:
    /* 1C8CC 8002C0CC 2130A000 */  addu       $a2, $a1, $zero
    /* 1C8D0 8002C0D0 0000E290 */  lbu        $v0, 0x0($a3)
    /* 1C8D4 8002C0D4 00000000 */  nop
    /* 1C8D8 8002C0D8 07106200 */  srav       $v0, $v0, $v1
    /* 1C8DC 8002C0DC 01004230 */  andi       $v0, $v0, 0x1
    /* 1C8E0 8002C0E0 03004010 */  beqz       $v0, .L8002C0F0
    /* 1C8E4 8002C0E4 0100A524 */   addiu     $a1, $a1, 0x1
    /* 1C8E8 8002C0E8 3DB00008 */  j          .L8002C0F4
    /* 1C8EC 8002C0EC 21100001 */   addu      $v0, $t0, $zero
  .L8002C0F0:
    /* 1C8F0 8002C0F0 21100002 */  addu       $v0, $s0, $zero
  .L8002C0F4:
    /* 1C8F4 8002C0F4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 1C8F8 8002C0F8 F4FF6104 */  bgez       $v1, .L8002C0CC
    /* 1C8FC 8002C0FC 0000C2A0 */   sb        $v0, 0x0($a2)
    /* 1C900 8002C100 01008424 */  addiu      $a0, $a0, 0x1
    /* 1C904 8002C104 0F008228 */  slti       $v0, $a0, 0xF
    /* 1C908 8002C108 EEFF4014 */  bnez       $v0, .L8002C0C4
    /* 1C90C 8002C10C 0100E724 */   addiu     $a3, $a3, 0x1
    /* 1C910 8002C110 4CB00008 */  j          .L8002C130
    /* 1C914 8002C114 00000000 */   nop
  .L8002C118:
    /* 1C918 8002C118 21282002 */  addu       $a1, $s1, $zero
  .L8002C11C:
    /* 1C91C 8002C11C 0000B0A0 */  sb         $s0, 0x0($a1)
    /* 1C920 8002C120 01008424 */  addiu      $a0, $a0, 0x1
    /* 1C924 8002C124 00018228 */  slti       $v0, $a0, 0x100
    /* 1C928 8002C128 FCFF4014 */  bnez       $v0, .L8002C11C
    /* 1C92C 8002C12C 0100A524 */   addiu     $a1, $a1, 0x1
  .L8002C130:
    /* 1C930 8002C130 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1C934 8002C134 1800B28F */  lw         $s2, 0x18($sp)
    /* 1C938 8002C138 1400B18F */  lw         $s1, 0x14($sp)
    /* 1C93C 8002C13C 1000B08F */  lw         $s0, 0x10($sp)
    /* 1C940 8002C140 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1C944 8002C144 0800E003 */  jr         $ra
    /* 1C948 8002C148 00000000 */   nop
endlabel func_8002C08C
