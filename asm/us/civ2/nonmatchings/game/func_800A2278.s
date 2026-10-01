.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A2278, 0x44

glabel func_800A2278
    /* 92A78 800A2278 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 92A7C 800A227C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 92A80 800A2280 1400B1AF */  sw         $s1, 0x14($sp)
    /* 92A84 800A2284 1000B0AF */  sw         $s0, 0x10($sp)
    /* 92A88 800A2288 21808000 */  addu       $s0, $a0, $zero
    /* 92A8C 800A228C DC52020C */  jal        func_80094B70
    /* 92A90 800A2290 2188A000 */   addu      $s1, $a1, $zero
    /* 92A94 800A2294 21200002 */  addu       $a0, $s0, $zero
    /* 92A98 800A2298 0B000524 */  addiu      $a1, $zero, 0xB
    /* 92A9C 800A229C 8B52020C */  jal        func_80094A2C
    /* 92AA0 800A22A0 FFFF2632 */   andi      $a2, $s1, 0xFFFF
    /* 92AA4 800A22A4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 92AA8 800A22A8 1400B18F */  lw         $s1, 0x14($sp)
    /* 92AAC 800A22AC 1000B08F */  lw         $s0, 0x10($sp)
    /* 92AB0 800A22B0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 92AB4 800A22B4 0800E003 */  jr         $ra
    /* 92AB8 800A22B8 00000000 */   nop
endlabel func_800A2278
