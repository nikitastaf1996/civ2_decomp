.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002FAF8, 0x8

glabel func_8002FAF8
    /* 202F8 8002FAF8 0800E003 */  jr         $ra
    /* 202FC 8002FAFC 00000000 */   nop
endlabel func_8002FAF8
