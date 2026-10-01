.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80091778, 0x2C

glabel func_80091778
    /* 81F78 80091778 50038287 */  lh         $v0, %gp_rel(D_80158828)($gp)
    /* 81F7C 8009177C 00000000 */  nop
    /* 81F80 80091780 21184000 */  addu       $v1, $v0, $zero
    /* 81F84 80091784 40014228 */  slti       $v0, $v0, 0x140
    /* 81F88 80091788 03004010 */  beqz       $v0, .L80091798
    /* 81F8C 8009178C F8FFBD27 */   addiu     $sp, $sp, -0x8
    /* 81F90 80091790 02006224 */  addiu      $v0, $v1, 0x2
    /* 81F94 80091794 500382A7 */  sh         $v0, %gp_rel(D_80158828)($gp)
  .L80091798:
    /* 81F98 80091798 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 81F9C 8009179C 0800E003 */  jr         $ra
    /* 81FA0 800917A0 00000000 */   nop
endlabel func_80091778
