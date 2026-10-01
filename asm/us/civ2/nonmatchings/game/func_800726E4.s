.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800726E4, 0x28

glabel func_800726E4
    /* 62EE4 800726E4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 62EE8 800726E8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 62EEC 800726EC 5E86020C */  jal        func_800A1978
    /* 62EF0 800726F0 00000000 */   nop
    /* 62EF4 800726F4 01000224 */  addiu      $v0, $zero, 0x1
    /* 62EF8 800726F8 800282AF */  sw         $v0, %gp_rel(D_80158758)($gp)
    /* 62EFC 800726FC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 62F00 80072700 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 62F04 80072704 0800E003 */  jr         $ra
    /* 62F08 80072708 00000000 */   nop
endlabel func_800726E4
