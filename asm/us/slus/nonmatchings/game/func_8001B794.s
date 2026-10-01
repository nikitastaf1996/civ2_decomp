.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B794, 0x5C

glabel func_8001B794
    /* BF94 8001B794 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BF98 8001B798 1000BFAF */  sw         $ra, 0x10($sp)
    /* BF9C 8001B79C 40100400 */  sll        $v0, $a0, 1
    /* BFA0 8001B7A0 21104400 */  addu       $v0, $v0, $a0
    /* BFA4 8001B7A4 80100200 */  sll        $v0, $v0, 2
    /* BFA8 8001B7A8 0180013C */  lui        $at, %hi(D_80016BB4)
    /* BFAC 8001B7AC 21082200 */  addu       $at, $at, $v0
    /* BFB0 8001B7B0 B46B248C */  lw         $a0, %lo(D_80016BB4)($at)
    /* BFB4 8001B7B4 0180013C */  lui        $at, %hi(D_80016BB8)
    /* BFB8 8001B7B8 21082200 */  addu       $at, $at, $v0
    /* BFBC 8001B7BC B86B258C */  lw         $a1, %lo(D_80016BB8)($at)
    /* BFC0 8001B7C0 0180013C */  lui        $at, %hi(D_80016BBC)
    /* BFC4 8001B7C4 21082200 */  addu       $at, $at, $v0
    /* BFC8 8001B7C8 BC6B2694 */  lhu        $a2, %lo(D_80016BBC)($at)
    /* BFCC 8001B7CC 0180013C */  lui        $at, %hi(D_80016BBE)
    /* BFD0 8001B7D0 21082200 */  addu       $at, $at, $v0
    /* BFD4 8001B7D4 BE6B2794 */  lhu        $a3, %lo(D_80016BBE)($at)
    /* BFD8 8001B7D8 B06D000C */  jal        func_8001B6C0
    /* BFDC 8001B7DC 00000000 */   nop
    /* BFE0 8001B7E0 1000BF8F */  lw         $ra, 0x10($sp)
    /* BFE4 8001B7E4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BFE8 8001B7E8 0800E003 */  jr         $ra
    /* BFEC 8001B7EC 00000000 */   nop
endlabel func_8001B794
