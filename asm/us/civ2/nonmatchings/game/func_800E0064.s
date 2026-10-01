.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E0064, 0xC

glabel func_800E0064
    /* D0864 800E0064 AC0D84AF */  sw         $a0, %gp_rel(D_80159284)($gp)
    /* D0868 800E0068 0800E003 */  jr         $ra
    /* D086C 800E006C 00000000 */   nop
endlabel func_800E0064
