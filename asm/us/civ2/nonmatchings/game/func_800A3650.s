.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A3650, 0x6C

glabel func_800A3650
    /* 93E50 800A3650 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 93E54 800A3654 1000BFAF */  sw         $ra, 0x10($sp)
    /* 93E58 800A3658 BC058293 */  lbu        $v0, %gp_rel(D_80158A94)($gp)
    /* 93E5C 800A365C 00000000 */  nop
    /* 93E60 800A3660 12004010 */  beqz       $v0, .L800A36AC
    /* 93E64 800A3664 00000000 */   nop
    /* 93E68 800A3668 AE9F020C */  jal        func_800A7EB8
    /* 93E6C 800A366C 00000000 */   nop
    /* 93E70 800A3670 BC0580A3 */  sb         $zero, %gp_rel(D_80158A94)($gp)
    /* 93E74 800A3674 B805848F */  lw         $a0, %gp_rel(D_80158A90)($gp)
    /* 93E78 800A3678 00000000 */  nop
    /* 93E7C 800A367C 0A008010 */  beqz       $a0, .L800A36A8
    /* 93E80 800A3680 00000000 */   nop
    /* 93E84 800A3684 C28E020C */  jal        func_800A3B08
    /* 93E88 800A3688 00000000 */   nop
    /* 93E8C 800A368C B805848F */  lw         $a0, %gp_rel(D_80158A90)($gp)
    /* 93E90 800A3690 00000000 */  nop
    /* 93E94 800A3694 03008010 */  beqz       $a0, .L800A36A4
    /* 93E98 800A3698 00000000 */   nop
    /* 93E9C 800A369C 4B8E020C */  jal        func_800A392C
    /* 93EA0 800A36A0 03000524 */   addiu     $a1, $zero, 0x3
  .L800A36A4:
    /* 93EA4 800A36A4 B80580AF */  sw         $zero, %gp_rel(D_80158A90)($gp)
  .L800A36A8:
    /* 93EA8 800A36A8 C00580AF */  sw         $zero, %gp_rel(D_80158A98)($gp)
  .L800A36AC:
    /* 93EAC 800A36AC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 93EB0 800A36B0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 93EB4 800A36B4 0800E003 */  jr         $ra
    /* 93EB8 800A36B8 00000000 */   nop
endlabel func_800A3650
