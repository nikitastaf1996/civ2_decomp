.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001452C, 0x18

glabel func_8001452C
    /* 4D2C 8001452C 0000A4AF */  sw         $a0, 0x0($sp)
    /* 4D30 80014530 0400A5AF */  sw         $a1, 0x4($sp)
    /* 4D34 80014534 0800A6AF */  sw         $a2, 0x8($sp)
    /* 4D38 80014538 0C00A7AF */  sw         $a3, 0xC($sp)
    /* 4D3C 8001453C 0800E003 */  jr         $ra
    /* 4D40 80014540 00000000 */   nop
endlabel func_8001452C
