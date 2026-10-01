.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B200, 0x8

glabel func_8002B200
    /* 1BA00 8002B200 0800E003 */  jr         $ra
    /* 1BA04 8002B204 00000000 */   nop
endlabel func_8002B200
