.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2014, 0x14

glabel func_800B2014
    /* A2814 800B2014 9C00828C */  lw         $v0, 0x9C($a0)
    /* A2818 800B2018 00000000 */  nop
    /* A281C 800B201C 40100200 */  sll        $v0, $v0, 1
    /* A2820 800B2020 0800E003 */  jr         $ra
    /* A2824 800B2024 10004224 */   addiu     $v0, $v0, 0x10
endlabel func_800B2014
