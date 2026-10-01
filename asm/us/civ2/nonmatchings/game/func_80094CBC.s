.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094CBC, 0x8

glabel func_80094CBC
    /* 854BC 80094CBC 0800E003 */  jr         $ra
    /* 854C0 80094CC0 00000000 */   nop
endlabel func_80094CBC
