.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A28D0, 0x10

glabel func_800A28D0
    /* 930D0 800A28D0 A40584AF */  sw         $a0, %gp_rel(D_80158A7C)($gp)
    /* 930D4 800A28D4 A80585AF */  sw         $a1, %gp_rel(D_80158A80)($gp)
    /* 930D8 800A28D8 0800E003 */  jr         $ra
    /* 930DC 800A28DC 00000000 */   nop
endlabel func_800A28D0
