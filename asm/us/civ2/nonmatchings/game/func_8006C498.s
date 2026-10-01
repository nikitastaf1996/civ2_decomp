.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006C498, 0x30

glabel func_8006C498
    /* 5CC98 8006C498 1680053C */  lui        $a1, %hi(D_801586A8)
    /* 5CC9C 8006C49C A886A524 */  addiu      $a1, $a1, %lo(D_801586A8)
    /* 5CCA0 8006C4A0 1180043C */  lui        $a0, %hi(D_8010BEA4)
    /* 5CCA4 8006C4A4 A4BE8424 */  addiu      $a0, $a0, %lo(D_8010BEA4)
    /* 5CCA8 8006C4A8 0300A288 */  lwl        $v0, 0x3($a1)
    /* 5CCAC 8006C4AC 0000A298 */  lwr        $v0, 0x0($a1)
    /* 5CCB0 8006C4B0 0400A380 */  lb         $v1, 0x4($a1)
    /* 5CCB4 8006C4B4 030082A8 */  swl        $v0, 0x3($a0)
    /* 5CCB8 8006C4B8 000082B8 */  swr        $v0, 0x0($a0)
    /* 5CCBC 8006C4BC 040083A0 */  sb         $v1, 0x4($a0)
    /* 5CCC0 8006C4C0 0800E003 */  jr         $ra
    /* 5CCC4 8006C4C4 00000000 */   nop
endlabel func_8006C498
