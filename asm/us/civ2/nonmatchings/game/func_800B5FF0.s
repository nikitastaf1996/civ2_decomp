.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B5FF0, 0x8

glabel func_800B5FF0
    /* A67F0 800B5FF0 0800E003 */  jr         $ra
    /* A67F4 800B5FF4 00000000 */   nop
endlabel func_800B5FF0
