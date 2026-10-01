.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B200C, 0x8

glabel func_800B200C
    /* A280C 800B200C 0800E003 */  jr         $ra
    /* A2810 800B2010 AC0085AC */   sw        $a1, 0xAC($a0)
endlabel func_800B200C
