.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098324, 0x30

glabel func_80098324
    /* 88B24 80098324 80300600 */  sll        $a2, $a2, 2
    /* 88B28 80098328 43200400 */  sra        $a0, $a0, 1
    /* 88B2C 8009832C F004828F */  lw         $v0, %gp_rel(D_801589C8)($gp)
    /* 88B30 80098330 00000000 */  nop
    /* 88B34 80098334 1800A200 */  mult       $a1, $v0
    /* 88B38 80098338 12180000 */  mflo       $v1
    /* 88B3C 8009833C 21208300 */  addu       $a0, $a0, $v1
    /* 88B40 80098340 1280013C */  lui        $at, %hi(D_8011C2E8)
    /* 88B44 80098344 21082600 */  addu       $at, $at, $a2
    /* 88B48 80098348 E8C2228C */  lw         $v0, %lo(D_8011C2E8)($at)
    /* 88B4C 8009834C 0800E003 */  jr         $ra
    /* 88B50 80098350 21108200 */   addu      $v0, $a0, $v0
endlabel func_80098324
