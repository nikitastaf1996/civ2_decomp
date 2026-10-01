.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1294, 0xC

glabel func_800B1294
    /* A1A94 800B1294 0C0A84AF */  sw         $a0, %gp_rel(D_80158EE4)($gp)
    /* A1A98 800B1298 0800E003 */  jr         $ra
    /* A1A9C 800B129C 00000000 */   nop
endlabel func_800B1294
