.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007C204, 0x30

glabel func_8007C204
    /* 6CA04 8007C204 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6CA08 8007C208 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6CA0C 8007C20C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6CA10 8007C210 2FF0010C */  jal        func_8007C0BC
    /* 6CA14 8007C214 21808000 */   addu      $s0, $a0, $zero
    /* 6CA18 8007C218 E6ED010C */  jal        func_8007B798
    /* 6CA1C 8007C21C 21200002 */   addu      $a0, $s0, $zero
    /* 6CA20 8007C220 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6CA24 8007C224 1000B08F */  lw         $s0, 0x10($sp)
    /* 6CA28 8007C228 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6CA2C 8007C22C 0800E003 */  jr         $ra
    /* 6CA30 8007C230 00000000 */   nop
endlabel func_8007C204
