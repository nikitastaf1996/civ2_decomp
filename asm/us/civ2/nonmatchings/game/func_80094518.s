.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094518, 0x2C

glabel func_80094518
    /* 84D18 80094518 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 84D1C 8009451C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 84D20 80094520 1000B0AF */  sw         $s0, 0x10($sp)
    /* 84D24 80094524 A587030C */  jal        func_800E1E94
    /* 84D28 80094528 21808000 */   addu      $s0, $a0, $zero
    /* 84D2C 8009452C 21100002 */  addu       $v0, $s0, $zero
    /* 84D30 80094530 1400BF8F */  lw         $ra, 0x14($sp)
    /* 84D34 80094534 1000B08F */  lw         $s0, 0x10($sp)
    /* 84D38 80094538 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 84D3C 8009453C 0800E003 */  jr         $ra
    /* 84D40 80094540 00000000 */   nop
endlabel func_80094518
