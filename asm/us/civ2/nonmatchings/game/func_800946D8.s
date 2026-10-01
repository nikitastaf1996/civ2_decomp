.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800946D8, 0x64

glabel func_800946D8
    /* 84ED8 800946D8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 84EDC 800946DC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 84EE0 800946E0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 84EE4 800946E4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 84EE8 800946E8 21808000 */  addu       $s0, $a0, $zero
    /* 84EEC 800946EC 2188A000 */  addu       $s1, $a1, $zero
    /* 84EF0 800946F0 B587030C */  jal        func_800E1ED4
    /* 84EF4 800946F4 2E000524 */   addiu     $a1, $zero, 0x2E
    /* 84EF8 800946F8 08004014 */  bnez       $v0, .L8009471C
    /* 84EFC 800946FC 00000000 */   nop
    /* 84F00 80094700 1680053C */  lui        $a1, %hi(D_80158930)
    /* 84F04 80094704 3089A524 */  addiu      $a1, $a1, %lo(D_80158930)
    /* 84F08 80094708 9987030C */  jal        func_800E1E64
    /* 84F0C 8009470C 21200002 */   addu      $a0, $s0, $zero
    /* 84F10 80094710 21200002 */  addu       $a0, $s0, $zero
    /* 84F14 80094714 9987030C */  jal        func_800E1E64
    /* 84F18 80094718 21282002 */   addu      $a1, $s1, $zero
  .L8009471C:
    /* 84F1C 8009471C B30A040C */  jal        func_80102ACC
    /* 84F20 80094720 21200002 */   addu      $a0, $s0, $zero
    /* 84F24 80094724 1800BF8F */  lw         $ra, 0x18($sp)
    /* 84F28 80094728 1400B18F */  lw         $s1, 0x14($sp)
    /* 84F2C 8009472C 1000B08F */  lw         $s0, 0x10($sp)
    /* 84F30 80094730 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 84F34 80094734 0800E003 */  jr         $ra
    /* 84F38 80094738 00000000 */   nop
endlabel func_800946D8
