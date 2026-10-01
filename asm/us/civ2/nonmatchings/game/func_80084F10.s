.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80084F10, 0xBC

glabel func_80084F10
    /* 75710 80084F10 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 75714 80084F14 3000BFAF */  sw         $ra, 0x30($sp)
    /* 75718 80084F18 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 7571C 80084F1C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 75720 80084F20 2400B3AF */  sw         $s3, 0x24($sp)
    /* 75724 80084F24 2000B2AF */  sw         $s2, 0x20($sp)
    /* 75728 80084F28 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 7572C 80084F2C 1800B0AF */  sw         $s0, 0x18($sp)
    /* 75730 80084F30 21908000 */  addu       $s2, $a0, $zero
    /* 75734 80084F34 2188A000 */  addu       $s1, $a1, $zero
    /* 75738 80084F38 21A8C000 */  addu       $s5, $a2, $zero
    /* 7573C 80084F3C 2198E000 */  addu       $s3, $a3, $zero
    /* 75740 80084F40 4800B48F */  lw         $s4, 0x48($sp)
    /* 75744 80084F44 4C00B08F */  lw         $s0, 0x4C($sp)
    /* 75748 80084F48 00000000 */  nop
    /* 7574C 80084F4C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 75750 80084F50 21306002 */  addu       $a2, $s3, $zero
    /* 75754 80084F54 8413020C */  jal        func_80084E10
    /* 75758 80084F58 2138A002 */   addu      $a3, $s5, $zero
    /* 7575C 80084F5C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 75760 80084F60 21204002 */  addu       $a0, $s2, $zero
    /* 75764 80084F64 21282002 */  addu       $a1, $s1, $zero
    /* 75768 80084F68 21306002 */  addu       $a2, $s3, $zero
    /* 7576C 80084F6C 8413020C */  jal        func_80084E10
    /* 75770 80084F70 21388002 */   addu      $a3, $s4, $zero
    /* 75774 80084F74 1000B0AF */  sw         $s0, 0x10($sp)
    /* 75778 80084F78 21204002 */  addu       $a0, $s2, $zero
    /* 7577C 80084F7C 21282002 */  addu       $a1, $s1, $zero
    /* 75780 80084F80 2130A002 */  addu       $a2, $s5, $zero
    /* 75784 80084F84 A313020C */  jal        func_80084E8C
    /* 75788 80084F88 21388002 */   addu      $a3, $s4, $zero
    /* 7578C 80084F8C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 75790 80084F90 21204002 */  addu       $a0, $s2, $zero
    /* 75794 80084F94 21286002 */  addu       $a1, $s3, $zero
    /* 75798 80084F98 2130A002 */  addu       $a2, $s5, $zero
    /* 7579C 80084F9C A313020C */  jal        func_80084E8C
    /* 757A0 80084FA0 21388002 */   addu      $a3, $s4, $zero
    /* 757A4 80084FA4 3000BF8F */  lw         $ra, 0x30($sp)
    /* 757A8 80084FA8 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 757AC 80084FAC 2800B48F */  lw         $s4, 0x28($sp)
    /* 757B0 80084FB0 2400B38F */  lw         $s3, 0x24($sp)
    /* 757B4 80084FB4 2000B28F */  lw         $s2, 0x20($sp)
    /* 757B8 80084FB8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 757BC 80084FBC 1800B08F */  lw         $s0, 0x18($sp)
    /* 757C0 80084FC0 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 757C4 80084FC4 0800E003 */  jr         $ra
    /* 757C8 80084FC8 00000000 */   nop
endlabel func_80084F10
