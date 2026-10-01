.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80096628, 0x8

glabel func_80096628
    /* 86E28 80096628 0800E003 */  jr         $ra
    /* 86E2C 8009662C 00000000 */   nop
endlabel func_80096628
