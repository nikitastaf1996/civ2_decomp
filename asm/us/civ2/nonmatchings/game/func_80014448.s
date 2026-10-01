.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80014448, 0x44

glabel func_80014448
    /* 4C48 80014448 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 4C4C 8001444C 1680073C */  lui        $a3, %hi(D_801584F4)
    /* 4C50 80014450 F484E724 */  addiu      $a3, $a3, %lo(D_801584F4)
    /* 4C54 80014454 0300E288 */  lwl        $v0, 0x3($a3)
    /* 4C58 80014458 0000E298 */  lwr        $v0, 0x0($a3)
    /* 4C5C 8001445C 0400E380 */  lb         $v1, 0x4($a3)
    /* 4C60 80014460 0300A2AB */  swl        $v0, 0x3($sp)
    /* 4C64 80014464 0000A2BB */  swr        $v0, 0x0($sp)
    /* 4C68 80014468 0400A3A3 */  sb         $v1, 0x4($sp)
    /* 4C6C 8001446C 2128A503 */  addu       $a1, $sp, $a1
    /* 4C70 80014470 0000A290 */  lbu        $v0, 0x0($a1)
    /* 4C74 80014474 00000000 */  nop
    /* 4C78 80014478 24108200 */  and        $v0, $a0, $v0
    /* 4C7C 8001447C 0100422C */  sltiu      $v0, $v0, 0x1
    /* 4C80 80014480 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 4C84 80014484 0800E003 */  jr         $ra
    /* 4C88 80014488 00000000 */   nop
endlabel func_80014448
