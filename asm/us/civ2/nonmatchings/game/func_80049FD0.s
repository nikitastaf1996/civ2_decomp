.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80049FD0, 0x88

glabel func_80049FD0
    /* 3A7D0 80049FD0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3A7D4 80049FD4 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3A7D8 80049FD8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 3A7DC 80049FDC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3A7E0 80049FE0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 3A7E4 80049FE4 21808000 */  addu       $s0, $a0, $zero
    /* 3A7E8 80049FE8 2188A000 */  addu       $s1, $a1, $zero
    /* 3A7EC 80049FEC E175030C */  jal        func_800DD784
    /* 3A7F0 80049FF0 2190C000 */   addu      $s2, $a2, $zero
    /* 3A7F4 80049FF4 21200002 */  addu       $a0, $s0, $zero
    /* 3A7F8 80049FF8 21282002 */  addu       $a1, $s1, $zero
    /* 3A7FC 80049FFC EF75030C */  jal        func_800DD7BC
    /* 3A800 8004A000 21305200 */   addu      $a2, $v0, $s2
    /* 3A804 8004A004 DC0F828F */  lw         $v0, %gp_rel(D_801594B4)($gp)
    /* 3A808 8004A008 00000000 */  nop
    /* 3A80C 8004A00C 09000216 */  bne        $s0, $v0, .L8004A034
    /* 3A810 8004A010 21200002 */   addu      $a0, $s0, $zero
    /* 3A814 8004A014 D80F828F */  lw         $v0, %gp_rel(D_801594B0)($gp)
    /* 3A818 8004A018 00000000 */  nop
    /* 3A81C 8004A01C 05002216 */  bne        $s1, $v0, .L8004A034
    /* 3A820 8004A020 00000000 */   nop
    /* 3A824 8004A024 7C01828F */  lw         $v0, %gp_rel(D_80158654)($gp)
    /* 3A828 8004A028 00000000 */  nop
    /* 3A82C 8004A02C 21104202 */  addu       $v0, $s2, $v0
    /* 3A830 8004A030 7C0182AF */  sw         $v0, %gp_rel(D_80158654)($gp)
  .L8004A034:
    /* 3A834 8004A034 E175030C */  jal        func_800DD784
    /* 3A838 8004A038 21282002 */   addu      $a1, $s1, $zero
    /* 3A83C 8004A03C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3A840 8004A040 1800B28F */  lw         $s2, 0x18($sp)
    /* 3A844 8004A044 1400B18F */  lw         $s1, 0x14($sp)
    /* 3A848 8004A048 1000B08F */  lw         $s0, 0x10($sp)
    /* 3A84C 8004A04C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3A850 8004A050 0800E003 */  jr         $ra
    /* 3A854 8004A054 00000000 */   nop
endlabel func_80049FD0
