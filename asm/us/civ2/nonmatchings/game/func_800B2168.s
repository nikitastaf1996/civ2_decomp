.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2168, 0xC

glabel func_800B2168
    /* A2968 800B2168 080085AC */  sw         $a1, 0x8($a0)
    /* A296C 800B216C 0800E003 */  jr         $ra
    /* A2970 800B2170 0C0086AC */   sw        $a2, 0xC($a0)
endlabel func_800B2168
