.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B4F0, 0x8

glabel func_8002B4F0
    /* 1BCF0 8002B4F0 0800E003 */  jr         $ra
    /* 1BCF4 8002B4F4 00000000 */   nop
endlabel func_8002B4F0
