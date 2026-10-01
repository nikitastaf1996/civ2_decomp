.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A8560, 0x84

glabel func_800A8560
    /* 98D60 800A8560 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98D64 800A8564 1400BFAF */  sw         $ra, 0x14($sp)
    /* 98D68 800A8568 1000B0AF */  sw         $s0, 0x10($sp)
    /* 98D6C 800A856C 5808848F */  lw         $a0, %gp_rel(D_80158D30)($gp)
    /* 98D70 800A8570 59F8030C */  jal        func_800FE164
    /* 98D74 800A8574 21800000 */   addu      $s0, $zero, $zero
    /* 98D78 800A8578 00140200 */  sll        $v0, $v0, 16
    /* 98D7C 800A857C 0D004014 */  bnez       $v0, .L800A85B4
    /* 98D80 800A8580 00000000 */   nop
    /* 98D84 800A8584 5808848F */  lw         $a0, %gp_rel(D_80158D30)($gp)
    /* 98D88 800A8588 1280053C */  lui        $a1, %hi(D_80121340)
    /* 98D8C 800A858C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 98D90 800A8590 8FF6030C */  jal        func_800FDA3C
    /* 98D94 800A8594 00000000 */   nop
    /* 98D98 800A8598 00140200 */  sll        $v0, $v0, 16
    /* 98D9C 800A859C 05004010 */  beqz       $v0, .L800A85B4
    /* 98DA0 800A85A0 00000000 */   nop
    /* 98DA4 800A85A4 1280023C */  lui        $v0, %hi(D_80121340)
    /* 98DA8 800A85A8 40134224 */  addiu      $v0, $v0, %lo(D_80121340)
    /* 98DAC 800A85AC 680882AF */  sw         $v0, %gp_rel(D_80158D40)($gp)
    /* 98DB0 800A85B0 21804000 */  addu       $s0, $v0, $zero
  .L800A85B4:
    /* 98DB4 800A85B4 06000016 */  bnez       $s0, .L800A85D0
    /* 98DB8 800A85B8 21100002 */   addu      $v0, $s0, $zero
    /* 98DBC 800A85BC 1280013C */  lui        $at, %hi(D_80121340)
    /* 98DC0 800A85C0 401320A0 */  sb         $zero, %lo(D_80121340)($at)
    /* 98DC4 800A85C4 E9A0020C */  jal        func_800A83A4
    /* 98DC8 800A85C8 00000000 */   nop
    /* 98DCC 800A85CC 21100002 */  addu       $v0, $s0, $zero
  .L800A85D0:
    /* 98DD0 800A85D0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 98DD4 800A85D4 1000B08F */  lw         $s0, 0x10($sp)
    /* 98DD8 800A85D8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 98DDC 800A85DC 0800E003 */  jr         $ra
    /* 98DE0 800A85E0 00000000 */   nop
endlabel func_800A8560
