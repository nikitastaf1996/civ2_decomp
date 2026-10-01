.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800917A4, 0x28

glabel func_800917A4
    /* 81FA4 800917A4 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 81FA8 800917A8 50038287 */  lh         $v0, %gp_rel(D_80158828)($gp)
    /* 81FAC 800917AC 00000000 */  nop
    /* 81FB0 800917B0 03004018 */  blez       $v0, .L800917C0
    /* 81FB4 800917B4 21184000 */   addu      $v1, $v0, $zero
    /* 81FB8 800917B8 FEFF6224 */  addiu      $v0, $v1, -0x2
    /* 81FBC 800917BC 500382A7 */  sh         $v0, %gp_rel(D_80158828)($gp)
  .L800917C0:
    /* 81FC0 800917C0 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 81FC4 800917C4 0800E003 */  jr         $ra
    /* 81FC8 800917C8 00000000 */   nop
endlabel func_800917A4
