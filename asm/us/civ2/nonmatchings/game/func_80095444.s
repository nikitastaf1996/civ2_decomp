.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80095444, 0x54

glabel func_80095444
    /* 85C44 80095444 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 85C48 80095448 1800BFAF */  sw         $ra, 0x18($sp)
    /* 85C4C 8009544C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 85C50 80095450 1000B0AF */  sw         $s0, 0x10($sp)
    /* 85C54 80095454 21808000 */  addu       $s0, $a0, $zero
    /* 85C58 80095458 2188A000 */  addu       $s1, $a1, $zero
    /* 85C5C 8009545C 10060426 */  addiu      $a0, $s0, 0x610
    /* 85C60 80095460 4CE1030C */  jal        func_800F8530
    /* 85C64 80095464 02000524 */   addiu     $a1, $zero, 0x2
    /* 85C68 80095468 84000426 */  addiu      $a0, $s0, 0x84
    /* 85C6C 8009546C 9BD7030C */  jal        func_800F5E6C
    /* 85C70 80095470 02000524 */   addiu     $a1, $zero, 0x2
    /* 85C74 80095474 21200002 */  addu       $a0, $s0, $zero
    /* 85C78 80095478 F5E9030C */  jal        func_800FA7D4
    /* 85C7C 8009547C 21282002 */   addu      $a1, $s1, $zero
    /* 85C80 80095480 1800BF8F */  lw         $ra, 0x18($sp)
    /* 85C84 80095484 1400B18F */  lw         $s1, 0x14($sp)
    /* 85C88 80095488 1000B08F */  lw         $s0, 0x10($sp)
    /* 85C8C 8009548C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 85C90 80095490 0800E003 */  jr         $ra
    /* 85C94 80095494 00000000 */   nop
endlabel func_80095444
