.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A2848, 0x70

glabel func_800A2848
    /* 93048 800A2848 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9304C 800A284C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 93050 800A2850 1400B1AF */  sw         $s1, 0x14($sp)
    /* 93054 800A2854 1000B0AF */  sw         $s0, 0x10($sp)
    /* 93058 800A2858 A805828F */  lw         $v0, %gp_rel(D_80158A80)($gp)
    /* 9305C 800A285C 00000000 */  nop
    /* 93060 800A2860 0F004010 */  beqz       $v0, .L800A28A0
    /* 93064 800A2864 2188A000 */   addu      $s1, $a1, $zero
    /* 93068 800A2868 002C0400 */  sll        $a1, $a0, 16
    /* 9306C 800A286C A405848F */  lw         $a0, %gp_rel(D_80158A7C)($gp)
    /* 93070 800A2870 FB88020C */  jal        func_800A23EC
    /* 93074 800A2874 032C0500 */   sra       $a1, $a1, 16
    /* 93078 800A2878 21804000 */  addu       $s0, $v0, $zero
    /* 9307C 800A287C 00341100 */  sll        $a2, $s1, 16
    /* 93080 800A2880 A405848F */  lw         $a0, %gp_rel(D_80158A7C)($gp)
    /* 93084 800A2884 21280002 */  addu       $a1, $s0, $zero
    /* 93088 800A2888 4389020C */  jal        func_800A250C
    /* 9308C 800A288C 03340600 */   sra       $a2, $a2, 16
    /* 93090 800A2890 A805838F */  lw         $v1, %gp_rel(D_80158A80)($gp)
    /* 93094 800A2894 21200002 */  addu       $a0, $s0, $zero
    /* 93098 800A2898 09F86000 */  jalr       $v1
    /* 9309C 800A289C 21284000 */   addu      $a1, $v0, $zero
  .L800A28A0:
    /* 930A0 800A28A0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 930A4 800A28A4 1400B18F */  lw         $s1, 0x14($sp)
    /* 930A8 800A28A8 1000B08F */  lw         $s0, 0x10($sp)
    /* 930AC 800A28AC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 930B0 800A28B0 0800E003 */  jr         $ra
    /* 930B4 800A28B4 00000000 */   nop
endlabel func_800A2848
