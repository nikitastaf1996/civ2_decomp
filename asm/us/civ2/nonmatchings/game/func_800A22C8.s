.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A22C8, 0x48

glabel func_800A22C8
    /* 92AC8 800A22C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 92ACC 800A22CC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 92AD0 800A22D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 92AD4 800A22D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 92AD8 800A22D8 21808000 */  addu       $s0, $a0, $zero
    /* 92ADC 800A22DC C452020C */  jal        func_80094B10
    /* 92AE0 800A22E0 2188A000 */   addu      $s1, $a1, $zero
    /* 92AE4 800A22E4 AF88020C */  jal        func_800A22BC
    /* 92AE8 800A22E8 21200002 */   addu      $a0, $s0, $zero
    /* 92AEC 800A22EC 21200002 */  addu       $a0, $s0, $zero
    /* 92AF0 800A22F0 9E88020C */  jal        func_800A2278
    /* 92AF4 800A22F4 21282002 */   addu      $a1, $s1, $zero
    /* 92AF8 800A22F8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 92AFC 800A22FC 1400B18F */  lw         $s1, 0x14($sp)
    /* 92B00 800A2300 1000B08F */  lw         $s0, 0x10($sp)
    /* 92B04 800A2304 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 92B08 800A2308 0800E003 */  jr         $ra
    /* 92B0C 800A230C 00000000 */   nop
endlabel func_800A22C8
