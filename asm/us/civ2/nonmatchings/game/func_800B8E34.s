.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8E34, 0xC

glabel func_800B8E34
    /* A9634 800B8E34 FC0A80AF */  sw         $zero, %gp_rel(D_80158FD4)($gp)
    /* A9638 800B8E38 0800E003 */  jr         $ra
    /* A963C 800B8E3C 00000000 */   nop
endlabel func_800B8E34
