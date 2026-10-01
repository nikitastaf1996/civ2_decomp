.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6B34, 0x28

glabel func_800C6B34
    /* B7334 800C6B34 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B7338 800C6B38 1000BFAF */  sw         $ra, 0x10($sp)
    /* B733C 800C6B3C 1680053C */  lui        $a1, %hi(D_801590B4)
    /* B7340 800C6B40 B490A524 */  addiu      $a1, $a1, %lo(D_801590B4)
    /* B7344 800C6B44 9987030C */  jal        func_800E1E64
    /* B7348 800C6B48 00000000 */   nop
    /* B734C 800C6B4C 1000BF8F */  lw         $ra, 0x10($sp)
    /* B7350 800C6B50 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B7354 800C6B54 0800E003 */  jr         $ra
    /* B7358 800C6B58 00000000 */   nop
endlabel func_800C6B34
