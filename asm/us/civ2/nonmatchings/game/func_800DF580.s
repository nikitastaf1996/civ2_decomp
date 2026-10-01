.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DF580, 0x8

glabel func_800DF580
    /* CFD80 800DF580 0800E003 */  jr         $ra
    /* CFD84 800DF584 00000000 */   nop
endlabel func_800DF580
