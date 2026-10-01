.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009600C, 0x8

glabel func_8009600C
    /* 8680C 8009600C 0800E003 */  jr         $ra
    /* 86810 80096010 00000000 */   nop
endlabel func_8009600C
