.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006C4C8, 0x30

glabel func_8006C4C8
    /* 5CCC8 8006C4C8 1680053C */  lui        $a1, %hi(D_801586B0)
    /* 5CCCC 8006C4CC B086A524 */  addiu      $a1, $a1, %lo(D_801586B0)
    /* 5CCD0 8006C4D0 1180043C */  lui        $a0, %hi(D_8010BEA4)
    /* 5CCD4 8006C4D4 A4BE8424 */  addiu      $a0, $a0, %lo(D_8010BEA4)
    /* 5CCD8 8006C4D8 0300A288 */  lwl        $v0, 0x3($a1)
    /* 5CCDC 8006C4DC 0000A298 */  lwr        $v0, 0x0($a1)
    /* 5CCE0 8006C4E0 0400A380 */  lb         $v1, 0x4($a1)
    /* 5CCE4 8006C4E4 030082A8 */  swl        $v0, 0x3($a0)
    /* 5CCE8 8006C4E8 000082B8 */  swr        $v0, 0x0($a0)
    /* 5CCEC 8006C4EC 040083A0 */  sb         $v1, 0x4($a0)
    /* 5CCF0 8006C4F0 0800E003 */  jr         $ra
    /* 5CCF4 8006C4F4 00000000 */   nop
endlabel func_8006C4C8
