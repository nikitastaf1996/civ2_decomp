.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B24D4, 0x8

glabel func_800B24D4
    /* A2CD4 800B24D4 0800E003 */  jr         $ra
    /* A2CD8 800B24D8 8C0185AC */   sw        $a1, 0x18C($a0)
endlabel func_800B24D4
