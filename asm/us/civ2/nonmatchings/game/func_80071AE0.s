.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80071AE0, 0x8

glabel func_80071AE0
    /* 622E0 80071AE0 0800E003 */  jr         $ra
    /* 622E4 80071AE4 00000000 */   nop
endlabel func_80071AE0
