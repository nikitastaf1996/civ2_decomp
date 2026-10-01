.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B24DC, 0x8

glabel func_800B24DC
    /* A2CDC 800B24DC 0800E003 */  jr         $ra
    /* A2CE0 800B24E0 900185AC */   sw        $a1, 0x190($a0)
endlabel func_800B24DC
