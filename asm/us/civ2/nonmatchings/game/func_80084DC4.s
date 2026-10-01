.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80084DC4, 0xC

glabel func_80084DC4
    /* 755C4 80084DC4 200384AF */  sw         $a0, %gp_rel(D_801587F8)($gp)
    /* 755C8 80084DC8 0800E003 */  jr         $ra
    /* 755CC 80084DCC 00000000 */   nop
endlabel func_80084DC4
