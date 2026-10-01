.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B520, 0x8

glabel func_8002B520
    /* 1BD20 8002B520 0800E003 */  jr         $ra
    /* 1BD24 8002B524 00000000 */   nop
endlabel func_8002B520
