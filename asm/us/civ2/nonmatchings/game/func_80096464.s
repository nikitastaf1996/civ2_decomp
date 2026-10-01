.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80096464, 0x8

glabel func_80096464
    /* 86C64 80096464 0800E003 */  jr         $ra
    /* 86C68 80096468 00000000 */   nop
endlabel func_80096464
