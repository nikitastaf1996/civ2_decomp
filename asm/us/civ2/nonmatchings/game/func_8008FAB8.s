.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008FAB8, 0x24

glabel func_8008FAB8
    /* 802B8 8008FAB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 802BC 8008FABC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 802C0 8008FAC0 5403848F */  lw         $a0, %gp_rel(D_8015882C)($gp)
    /* 802C4 8008FAC4 4C45020C */  jal        func_80091530
    /* 802C8 8008FAC8 00000000 */   nop
    /* 802CC 8008FACC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 802D0 8008FAD0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 802D4 8008FAD4 0800E003 */  jr         $ra
    /* 802D8 8008FAD8 00000000 */   nop
endlabel func_8008FAB8
