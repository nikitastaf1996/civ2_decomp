.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094698, 0x40

glabel func_80094698
    /* 84E98 80094698 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 84E9C 8009469C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 84EA0 800946A0 1180023C */  lui        $v0, %hi(D_80113EBB)
    /* 84EA4 800946A4 BB3E4280 */  lb         $v0, %lo(D_80113EBB)($v0)
    /* 84EA8 800946A8 00000000 */  nop
    /* 84EAC 800946AC 06004004 */  bltz       $v0, .L800946C8
    /* 84EB0 800946B0 00000000 */   nop
    /* 84EB4 800946B4 04F2010C */  jal        func_8007C810
    /* 84EB8 800946B8 00040424 */   addiu     $a0, $zero, 0x400
    /* 84EBC 800946BC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 84EC0 800946C0 1180013C */  lui        $at, %hi(D_80113EBB)
    /* 84EC4 800946C4 BB3E22A0 */  sb         $v0, %lo(D_80113EBB)($at)
  .L800946C8:
    /* 84EC8 800946C8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 84ECC 800946CC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 84ED0 800946D0 0800E003 */  jr         $ra
    /* 84ED4 800946D4 00000000 */   nop
endlabel func_80094698
