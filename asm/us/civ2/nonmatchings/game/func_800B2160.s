.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2160, 0x8

glabel func_800B2160
    /* A2960 800B2160 0800E003 */  jr         $ra
    /* A2964 800B2164 100085AC */   sw        $a1, 0x10($a0)
endlabel func_800B2160
