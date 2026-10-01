.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1ED8, 0x8

glabel func_800B1ED8
    /* A26D8 800B1ED8 0800E003 */  jr         $ra
    /* A26DC 800B1EDC 20000224 */   addiu     $v0, $zero, 0x20
endlabel func_800B1ED8
