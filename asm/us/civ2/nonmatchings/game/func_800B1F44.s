.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1F44, 0x8

glabel func_800B1F44
    /* A2744 800B1F44 0800E003 */  jr         $ra
    /* A2748 800B1F48 16000224 */   addiu     $v0, $zero, 0x16
endlabel func_800B1F44
