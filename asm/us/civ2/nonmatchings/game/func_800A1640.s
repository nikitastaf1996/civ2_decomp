.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A1640, 0x8

glabel func_800A1640
    /* 91E40 800A1640 0800E003 */  jr         $ra
    /* 91E44 800A1644 00000000 */   nop
endlabel func_800A1640
