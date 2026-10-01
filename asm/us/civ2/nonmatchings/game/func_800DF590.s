.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DF590, 0x10

glabel func_800DF590
    /* CFD90 800DF590 01000224 */  addiu      $v0, $zero, 0x1
    /* CFD94 800DF594 A80D82A3 */  sb         $v0, %gp_rel(D_80159280)($gp)
    /* CFD98 800DF598 0800E003 */  jr         $ra
    /* CFD9C 800DF59C 00000000 */   nop
endlabel func_800DF590
