.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1F4C, 0x8

glabel func_800B1F4C
    /* A274C 800B1F4C 0800E003 */  jr         $ra
    /* A2750 800B1F50 2C0085AC */   sw        $a1, 0x2C($a0)
endlabel func_800B1F4C
