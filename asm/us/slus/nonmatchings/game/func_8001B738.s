.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B738, 0x5C

glabel func_8001B738
    /* BF38 8001B738 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BF3C 8001B73C 1000BFAF */  sw         $ra, 0x10($sp)
    /* BF40 8001B740 40100400 */  sll        $v0, $a0, 1
    /* BF44 8001B744 21104400 */  addu       $v0, $v0, $a0
    /* BF48 8001B748 80100200 */  sll        $v0, $v0, 2
    /* BF4C 8001B74C 0180013C */  lui        $at, %hi(D_80016B18)
    /* BF50 8001B750 21082200 */  addu       $at, $at, $v0
    /* BF54 8001B754 186B248C */  lw         $a0, %lo(D_80016B18)($at)
    /* BF58 8001B758 0180013C */  lui        $at, %hi(D_80016B1C)
    /* BF5C 8001B75C 21082200 */  addu       $at, $at, $v0
    /* BF60 8001B760 1C6B258C */  lw         $a1, %lo(D_80016B1C)($at)
    /* BF64 8001B764 0180013C */  lui        $at, %hi(D_80016B20)
    /* BF68 8001B768 21082200 */  addu       $at, $at, $v0
    /* BF6C 8001B76C 206B2694 */  lhu        $a2, %lo(D_80016B20)($at)
    /* BF70 8001B770 0180013C */  lui        $at, %hi(D_80016B22)
    /* BF74 8001B774 21082200 */  addu       $at, $at, $v0
    /* BF78 8001B778 226B2794 */  lhu        $a3, %lo(D_80016B22)($at)
    /* BF7C 8001B77C B06D000C */  jal        func_8001B6C0
    /* BF80 8001B780 00000000 */   nop
    /* BF84 8001B784 1000BF8F */  lw         $ra, 0x10($sp)
    /* BF88 8001B788 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BF8C 8001B78C 0800E003 */  jr         $ra
    /* BF90 8001B790 00000000 */   nop
endlabel func_8001B738
