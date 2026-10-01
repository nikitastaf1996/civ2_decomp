.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6BDC, 0x28

glabel func_800C6BDC
    /* B73DC 800C6BDC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B73E0 800C6BE0 1000BFAF */  sw         $ra, 0x10($sp)
    /* B73E4 800C6BE4 1680053C */  lui        $a1, %hi(D_801590BC)
    /* B73E8 800C6BE8 BC90A524 */  addiu      $a1, $a1, %lo(D_801590BC)
    /* B73EC 800C6BEC 9987030C */  jal        func_800E1E64
    /* B73F0 800C6BF0 00000000 */   nop
    /* B73F4 800C6BF4 1000BF8F */  lw         $ra, 0x10($sp)
    /* B73F8 800C6BF8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B73FC 800C6BFC 0800E003 */  jr         $ra
    /* B7400 800C6C00 00000000 */   nop
endlabel func_800C6BDC
