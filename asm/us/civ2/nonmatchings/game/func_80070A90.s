.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80070A90, 0x4C

glabel func_80070A90
    /* 61290 80070A90 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 61294 80070A94 1800BFAF */  sw         $ra, 0x18($sp)
    /* 61298 80070A98 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6129C 80070A9C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 612A0 80070AA0 21808000 */  addu       $s0, $a0, $zero
    /* 612A4 80070AA4 58A1020C */  jal        func_800A8560
    /* 612A8 80070AA8 2188A000 */   addu      $s1, $a1, $zero
    /* 612AC 80070AAC A4A1020C */  jal        func_800A8690
    /* 612B0 80070AB0 00000000 */   nop
    /* 612B4 80070AB4 21204000 */  addu       $a0, $v0, $zero
    /* 612B8 80070AB8 21280002 */  addu       $a1, $s0, $zero
    /* 612BC 80070ABC F53A030C */  jal        func_800CEBD4
    /* 612C0 80070AC0 21302002 */   addu      $a2, $s1, $zero
    /* 612C4 80070AC4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 612C8 80070AC8 1400B18F */  lw         $s1, 0x14($sp)
    /* 612CC 80070ACC 1000B08F */  lw         $s0, 0x10($sp)
    /* 612D0 80070AD0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 612D4 80070AD4 0800E003 */  jr         $ra
    /* 612D8 80070AD8 00000000 */   nop
endlabel func_80070A90
