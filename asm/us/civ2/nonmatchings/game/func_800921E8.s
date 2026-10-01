.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800921E8, 0xC

glabel func_800921E8
    /* 829E8 800921E8 C40384AF */  sw         $a0, %gp_rel(D_8015889C)($gp)
    /* 829EC 800921EC 0800E003 */  jr         $ra
    /* 829F0 800921F0 00000000 */   nop
endlabel func_800921E8
