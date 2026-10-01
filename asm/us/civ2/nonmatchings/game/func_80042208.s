.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80042208, 0x24

glabel func_80042208
    /* 32A08 80042208 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 32A0C 8004220C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 32A10 80042210 2801848F */  lw         $a0, %gp_rel(D_80158600)($gp)
    /* 32A14 80042214 A60B010C */  jal        func_80042E98
    /* 32A18 80042218 00000000 */   nop
    /* 32A1C 8004221C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 32A20 80042220 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 32A24 80042224 0800E003 */  jr         $ra
    /* 32A28 80042228 00000000 */   nop
endlabel func_80042208
