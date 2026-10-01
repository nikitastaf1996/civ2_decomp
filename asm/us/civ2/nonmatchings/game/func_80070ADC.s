.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80070ADC, 0x44

glabel func_80070ADC
    /* 612DC 80070ADC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 612E0 80070AE0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 612E4 80070AE4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 612E8 80070AE8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 612EC 80070AEC 21808000 */  addu       $s0, $a0, $zero
    /* 612F0 80070AF0 A4A1020C */  jal        func_800A8690
    /* 612F4 80070AF4 2188A000 */   addu      $s1, $a1, $zero
    /* 612F8 80070AF8 21204000 */  addu       $a0, $v0, $zero
    /* 612FC 80070AFC 21280002 */  addu       $a1, $s0, $zero
    /* 61300 80070B00 F53A030C */  jal        func_800CEBD4
    /* 61304 80070B04 21302002 */   addu      $a2, $s1, $zero
    /* 61308 80070B08 1800BF8F */  lw         $ra, 0x18($sp)
    /* 6130C 80070B0C 1400B18F */  lw         $s1, 0x14($sp)
    /* 61310 80070B10 1000B08F */  lw         $s0, 0x10($sp)
    /* 61314 80070B14 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 61318 80070B18 0800E003 */  jr         $ra
    /* 6131C 80070B1C 00000000 */   nop
endlabel func_80070ADC
