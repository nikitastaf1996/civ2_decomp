.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEA0C, 0x28

glabel func_800CEA0C
    /* BF20C 800CEA0C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BF210 800CEA10 1000BFAF */  sw         $ra, 0x10($sp)
    /* BF214 800CEA14 1280043C */  lui        $a0, %hi(D_80121BE4)
    /* BF218 800CEA18 E41B8424 */  addiu      $a0, $a0, %lo(D_80121BE4)
    /* BF21C 800CEA1C DC52020C */  jal        func_80094B70
    /* BF220 800CEA20 00000000 */   nop
    /* BF224 800CEA24 1000BF8F */  lw         $ra, 0x10($sp)
    /* BF228 800CEA28 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BF22C 800CEA2C 0800E003 */  jr         $ra
    /* BF230 800CEA30 00000000 */   nop
endlabel func_800CEA0C
