.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A3AA4, 0x64

glabel func_800A3AA4
    /* 942A4 800A3AA4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 942A8 800A3AA8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 942AC 800A3AAC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 942B0 800A3AB0 F8EA030C */  jal        func_800FABE0
    /* 942B4 800A3AB4 21808000 */   addu      $s0, $a0, $zero
    /* 942B8 800A3AB8 BF12040C */  jal        func_80104AFC
    /* 942BC 800A3ABC B8001026 */   addiu     $s0, $s0, 0xB8
    /* 942C0 800A3AC0 F8EA030C */  jal        func_800FABE0
    /* 942C4 800A3AC4 21200002 */   addu      $a0, $s0, $zero
    /* 942C8 800A3AC8 05DD030C */  jal        func_800F7414
    /* 942CC 800A3ACC 21200002 */   addu      $a0, $s0, $zero
    /* 942D0 800A3AD0 BF12040C */  jal        func_80104AFC
    /* 942D4 800A3AD4 00000000 */   nop
    /* 942D8 800A3AD8 BD0580A3 */  sb         $zero, %gp_rel(D_80158A95)($gp)
    /* 942DC 800A3ADC C005848F */  lw         $a0, %gp_rel(D_80158A98)($gp)
    /* 942E0 800A3AE0 01000524 */  addiu      $a1, $zero, 0x1
    /* 942E4 800A3AE4 0A80073C */  lui        $a3, %hi(func_800A348C)
    /* 942E8 800A3AE8 8C34E724 */  addiu      $a3, $a3, %lo(func_800A348C)
    /* 942EC 800A3AEC 2B9D020C */  jal        func_800A74AC
    /* 942F0 800A3AF0 21300000 */   addu      $a2, $zero, $zero
    /* 942F4 800A3AF4 1400BF8F */  lw         $ra, 0x14($sp)
    /* 942F8 800A3AF8 1000B08F */  lw         $s0, 0x10($sp)
    /* 942FC 800A3AFC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 94300 800A3B00 0800E003 */  jr         $ra
    /* 94304 800A3B04 00000000 */   nop
endlabel func_800A3AA4
