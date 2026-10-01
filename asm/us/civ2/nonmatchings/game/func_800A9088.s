.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A9088, 0xB8

glabel func_800A9088
    /* 99888 800A9088 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 9988C 800A908C 2800BFAF */  sw         $ra, 0x28($sp)
    /* 99890 800A9090 2400B1AF */  sw         $s1, 0x24($sp)
    /* 99894 800A9094 2000B0AF */  sw         $s0, 0x20($sp)
    /* 99898 800A9098 21808000 */  addu       $s0, $a0, $zero
    /* 9989C 800A909C 90001126 */  addiu      $s1, $s0, 0x90
    /* 998A0 800A90A0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 998A4 800A90A4 40010224 */  addiu      $v0, $zero, 0x140
    /* 998A8 800A90A8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 998AC 800A90AC F0000224 */  addiu      $v0, $zero, 0xF0
    /* 998B0 800A90B0 1800A2AF */  sw         $v0, 0x18($sp)
    /* 998B4 800A90B4 1180023C */  lui        $v0, %hi(D_8010CBE0)
    /* 998B8 800A90B8 E0CB4224 */  addiu      $v0, $v0, %lo(D_8010CBE0)
    /* 998BC 800A90BC 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 998C0 800A90C0 21202002 */  addu       $a0, $s1, $zero
    /* 998C4 800A90C4 1680053C */  lui        $a1, %hi(D_80158D48)
    /* 998C8 800A90C8 488DA524 */  addiu      $a1, $a1, %lo(D_80158D48)
    /* 998CC 800A90CC 00880624 */  addiu      $a2, $zero, -0x7800
    /* 998D0 800A90D0 B3DE030C */  jal        func_800F7ACC
    /* 998D4 800A90D4 21380000 */   addu      $a3, $zero, $zero
    /* 998D8 800A90D8 AC00048E */  lw         $a0, 0xAC($s0)
    /* 998DC 800A90DC 00000000 */  nop
    /* 998E0 800A90E0 0C008424 */  addiu      $a0, $a0, 0xC
    /* 998E4 800A90E4 21280000 */  addu       $a1, $zero, $zero
    /* 998E8 800A90E8 21300000 */  addu       $a2, $zero, $zero
    /* 998EC 800A90EC 8D8D030C */  jal        ClearImage
    /* 998F0 800A90F0 21380000 */   addu      $a3, $zero, $zero
    /* 998F4 800A90F4 B4EB030C */  jal        func_800FAED0
    /* 998F8 800A90F8 BC000426 */   addiu     $a0, $s0, 0xBC
    /* 998FC 800A90FC 0B80023C */  lui        $v0, %hi(func_800AADB4)
    /* 99900 800A9100 B4AD4224 */  addiu      $v0, $v0, %lo(func_800AADB4)
    /* 99904 800A9104 D80002AE */  sw         $v0, 0xD8($s0)
    /* 99908 800A9108 0B80023C */  lui        $v0, %hi(func_800AAFAC)
    /* 9990C 800A910C ACAF4224 */  addiu      $v0, $v0, %lo(func_800AAFAC)
    /* 99910 800A9110 F40002AE */  sw         $v0, 0xF4($s0)
    /* 99914 800A9114 0B80053C */  lui        $a1, %hi(func_800A8AB0)
    /* 99918 800A9118 B08AA524 */  addiu      $a1, $a1, %lo(func_800A8AB0)
    /* 9991C 800A911C 82DF030C */  jal        func_800F7E08
    /* 99920 800A9120 21202002 */   addu      $a0, $s1, $zero
    /* 99924 800A9124 01000224 */  addiu      $v0, $zero, 0x1
    /* 99928 800A9128 2800BF8F */  lw         $ra, 0x28($sp)
    /* 9992C 800A912C 2400B18F */  lw         $s1, 0x24($sp)
    /* 99930 800A9130 2000B08F */  lw         $s0, 0x20($sp)
    /* 99934 800A9134 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 99938 800A9138 0800E003 */  jr         $ra
    /* 9993C 800A913C 00000000 */   nop
endlabel func_800A9088
