.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6D6C, 0x28

glabel func_800C6D6C
    /* B756C 800C6D6C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B7570 800C6D70 1000BFAF */  sw         $ra, 0x10($sp)
    /* B7574 800C6D74 1680053C */  lui        $a1, %hi(D_801590E4)
    /* B7578 800C6D78 E490A524 */  addiu      $a1, $a1, %lo(D_801590E4)
    /* B757C 800C6D7C 9987030C */  jal        func_800E1E64
    /* B7580 800C6D80 00000000 */   nop
    /* B7584 800C6D84 1000BF8F */  lw         $ra, 0x10($sp)
    /* B7588 800C6D88 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B758C 800C6D8C 0800E003 */  jr         $ra
    /* B7590 800C6D90 00000000 */   nop
endlabel func_800C6D6C
