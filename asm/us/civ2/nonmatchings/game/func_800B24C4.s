.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B24C4, 0x8

glabel func_800B24C4
    /* A2CC4 800B24C4 0800E003 */  jr         $ra
    /* A2CC8 800B24C8 840185AC */   sw        $a1, 0x184($a0)
endlabel func_800B24C4
