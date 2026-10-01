.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6C2C, 0x28

glabel func_800C6C2C
    /* B742C 800C6C2C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B7430 800C6C30 1000BFAF */  sw         $ra, 0x10($sp)
    /* B7434 800C6C34 1680053C */  lui        $a1, %hi(D_801590C4)
    /* B7438 800C6C38 C490A524 */  addiu      $a1, $a1, %lo(D_801590C4)
    /* B743C 800C6C3C 9987030C */  jal        func_800E1E64
    /* B7440 800C6C40 00000000 */   nop
    /* B7444 800C6C44 1000BF8F */  lw         $ra, 0x10($sp)
    /* B7448 800C6C48 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B744C 800C6C4C 0800E003 */  jr         $ra
    /* B7450 800C6C50 00000000 */   nop
endlabel func_800C6C2C
