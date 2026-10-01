.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E0098, 0x10

glabel func_800E0098
    /* D0898 800E0098 2B200400 */  sltu       $a0, $zero, $a0
    /* D089C 800E009C C00D84AF */  sw         $a0, %gp_rel(D_80159298)($gp)
    /* D08A0 800E00A0 0800E003 */  jr         $ra
    /* D08A4 800E00A4 00000000 */   nop
endlabel func_800E0098
