.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6D1C, 0x28

glabel func_800C6D1C
    /* B751C 800C6D1C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B7520 800C6D20 1000BFAF */  sw         $ra, 0x10($sp)
    /* B7524 800C6D24 1680053C */  lui        $a1, %hi(D_801590DC)
    /* B7528 800C6D28 DC90A524 */  addiu      $a1, $a1, %lo(D_801590DC)
    /* B752C 800C6D2C 9987030C */  jal        func_800E1E64
    /* B7530 800C6D30 00000000 */   nop
    /* B7534 800C6D34 1000BF8F */  lw         $ra, 0x10($sp)
    /* B7538 800C6D38 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B753C 800C6D3C 0800E003 */  jr         $ra
    /* B7540 800C6D40 00000000 */   nop
endlabel func_800C6D1C
