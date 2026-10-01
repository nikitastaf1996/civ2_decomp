.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009B9FC, 0x20

glabel func_8009B9FC
    /* 8C1FC 8009B9FC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8C200 8009BA00 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8C204 8009BA04 6E6E020C */  jal        func_8009B9B8
    /* 8C208 8009BA08 21380000 */   addu      $a3, $zero, $zero
    /* 8C20C 8009BA0C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8C210 8009BA10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8C214 8009BA14 0800E003 */  jr         $ra
    /* 8C218 8009BA18 00000000 */   nop
endlabel func_8009B9FC
