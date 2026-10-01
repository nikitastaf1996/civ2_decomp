.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B24E4, 0x8

glabel func_800B24E4
    /* A2CE4 800B24E4 0800E003 */  jr         $ra
    /* A2CE8 800B24E8 940185AC */   sw        $a1, 0x194($a0)
endlabel func_800B24E4
