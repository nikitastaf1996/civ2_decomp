.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B570, 0x18

glabel func_8002B570
    /* 1BD70 8002B570 0000A4AF */  sw         $a0, 0x0($sp)
    /* 1BD74 8002B574 0400A5AF */  sw         $a1, 0x4($sp)
    /* 1BD78 8002B578 0800A6AF */  sw         $a2, 0x8($sp)
    /* 1BD7C 8002B57C 0C00A7AF */  sw         $a3, 0xC($sp)
    /* 1BD80 8002B580 0800E003 */  jr         $ra
    /* 1BD84 8002B584 00000000 */   nop
endlabel func_8002B570
