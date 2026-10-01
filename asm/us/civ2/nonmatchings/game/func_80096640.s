.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80096640, 0x8

glabel func_80096640
    /* 86E40 80096640 0800E003 */  jr         $ra
    /* 86E44 80096644 00000000 */   nop
endlabel func_80096640
