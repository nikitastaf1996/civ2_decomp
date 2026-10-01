.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEA98, 0x10

glabel func_800CEA98
    /* BF298 800CEA98 1280023C */  lui        $v0, %hi(D_80121BEC)
    /* BF29C 800CEA9C EC1B428C */  lw         $v0, %lo(D_80121BEC)($v0)
    /* BF2A0 800CEAA0 0800E003 */  jr         $ra
    /* BF2A4 800CEAA4 21108200 */   addu      $v0, $a0, $v0
endlabel func_800CEA98
