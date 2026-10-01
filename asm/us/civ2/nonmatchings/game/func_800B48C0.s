.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B48C0, 0x8

glabel func_800B48C0
    /* A50C0 800B48C0 0800E003 */  jr         $ra
    /* A50C4 800B48C4 00000000 */   nop
endlabel func_800B48C0
