.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097544, 0x8

glabel func_80097544
    /* 87D44 80097544 0800E003 */  jr         $ra
    /* 87D48 80097548 00000000 */   nop
endlabel func_80097544
