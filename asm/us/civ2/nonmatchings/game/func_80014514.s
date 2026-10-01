.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80014514, 0x18

glabel func_80014514
    /* 4D14 80014514 0000A4AF */  sw         $a0, 0x0($sp)
    /* 4D18 80014518 0400A5AF */  sw         $a1, 0x4($sp)
    /* 4D1C 8001451C 0800A6AF */  sw         $a2, 0x8($sp)
    /* 4D20 80014520 0C00A7AF */  sw         $a3, 0xC($sp)
    /* 4D24 80014524 0800E003 */  jr         $ra
    /* 4D28 80014528 00000000 */   nop
endlabel func_80014514
