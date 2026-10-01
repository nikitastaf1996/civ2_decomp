.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B560, 0x8

glabel func_8002B560
    /* 1BD60 8002B560 0800E003 */  jr         $ra
    /* 1BD64 8002B564 00000000 */   nop
endlabel func_8002B560
