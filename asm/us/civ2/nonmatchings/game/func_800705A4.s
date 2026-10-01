.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800705A4, 0x5C

glabel func_800705A4
    /* 60DA4 800705A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 60DA8 800705A8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 60DAC 800705AC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 60DB0 800705B0 2180A000 */  addu       $s0, $a1, $zero
    /* 60DB4 800705B4 500284AF */  sw         $a0, %gp_rel(D_80158728)($gp)
    /* 60DB8 800705B8 5C0290AF */  sw         $s0, %gp_rel(D_80158734)($gp)
    /* 60DBC 800705BC FED4030C */  jal        func_800F53F8
    /* 60DC0 800705C0 00200424 */   addiu     $a0, $zero, 0x2000
    /* 60DC4 800705C4 540280AF */  sw         $zero, %gp_rel(D_8015872C)($gp)
    /* 60DC8 800705C8 05000016 */  bnez       $s0, .L800705E0
    /* 60DCC 800705CC 21184000 */   addu      $v1, $v0, $zero
    /* 60DD0 800705D0 00200224 */  addiu      $v0, $zero, 0x2000
    /* 60DD4 800705D4 580282AF */  sw         $v0, %gp_rel(D_80158730)($gp)
    /* 60DD8 800705D8 79C10108 */  j          .L800705E4
    /* 60DDC 800705DC 00000000 */   nop
  .L800705E0:
    /* 60DE0 800705E0 580280AF */  sw         $zero, %gp_rel(D_80158730)($gp)
  .L800705E4:
    /* 60DE4 800705E4 600280AF */  sw         $zero, %gp_rel(D_80158738)($gp)
    /* 60DE8 800705E8 21106000 */  addu       $v0, $v1, $zero
    /* 60DEC 800705EC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 60DF0 800705F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 60DF4 800705F4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 60DF8 800705F8 0800E003 */  jr         $ra
    /* 60DFC 800705FC 00000000 */   nop
endlabel func_800705A4
