.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009473C, 0x68

glabel func_8009473C
    /* 84F3C 8009473C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 84F40 80094740 1800BFAF */  sw         $ra, 0x18($sp)
    /* 84F44 80094744 1400B1AF */  sw         $s1, 0x14($sp)
    /* 84F48 80094748 1000B0AF */  sw         $s0, 0x10($sp)
    /* 84F4C 8009474C 21808000 */  addu       $s0, $a0, $zero
    /* 84F50 80094750 2188C000 */  addu       $s1, $a2, $zero
    /* 84F54 80094754 B587030C */  jal        func_800E1ED4
    /* 84F58 80094758 2E000524 */   addiu     $a1, $zero, 0x2E
    /* 84F5C 8009475C 02004010 */  beqz       $v0, .L80094768
    /* 84F60 80094760 00000000 */   nop
    /* 84F64 80094764 000040A0 */  sb         $zero, 0x0($v0)
  .L80094768:
    /* 84F68 80094768 1680053C */  lui        $a1, %hi(D_80158930)
    /* 84F6C 8009476C 3089A524 */  addiu      $a1, $a1, %lo(D_80158930)
    /* 84F70 80094770 9987030C */  jal        func_800E1E64
    /* 84F74 80094774 21200002 */   addu      $a0, $s0, $zero
    /* 84F78 80094778 21200002 */  addu       $a0, $s0, $zero
    /* 84F7C 8009477C 9987030C */  jal        func_800E1E64
    /* 84F80 80094780 21282002 */   addu      $a1, $s1, $zero
    /* 84F84 80094784 B30A040C */  jal        func_80102ACC
    /* 84F88 80094788 21200002 */   addu      $a0, $s0, $zero
    /* 84F8C 8009478C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 84F90 80094790 1400B18F */  lw         $s1, 0x14($sp)
    /* 84F94 80094794 1000B08F */  lw         $s0, 0x10($sp)
    /* 84F98 80094798 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 84F9C 8009479C 0800E003 */  jr         $ra
    /* 84FA0 800947A0 00000000 */   nop
endlabel func_8009473C
