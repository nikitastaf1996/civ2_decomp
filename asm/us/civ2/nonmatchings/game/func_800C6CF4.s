.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6CF4, 0x28

glabel func_800C6CF4
    /* B74F4 800C6CF4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B74F8 800C6CF8 1000BFAF */  sw         $ra, 0x10($sp)
    /* B74FC 800C6CFC 1680053C */  lui        $a1, %hi(D_801590D8)
    /* B7500 800C6D00 D890A524 */  addiu      $a1, $a1, %lo(D_801590D8)
    /* B7504 800C6D04 9987030C */  jal        func_800E1E64
    /* B7508 800C6D08 00000000 */   nop
    /* B750C 800C6D0C 1000BF8F */  lw         $ra, 0x10($sp)
    /* B7510 800C6D10 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B7514 800C6D14 0800E003 */  jr         $ra
    /* B7518 800C6D18 00000000 */   nop
endlabel func_800C6CF4
