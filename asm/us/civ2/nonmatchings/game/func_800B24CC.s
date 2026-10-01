.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B24CC, 0x8

glabel func_800B24CC
    /* A2CCC 800B24CC 0800E003 */  jr         $ra
    /* A2CD0 800B24D0 880185AC */   sw        $a1, 0x188($a0)
endlabel func_800B24CC
