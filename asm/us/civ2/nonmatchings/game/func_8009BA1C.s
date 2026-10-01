.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009BA1C, 0x20

glabel func_8009BA1C
    /* 8C21C 8009BA1C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8C220 8009BA20 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8C224 8009BA24 AC7B020C */  jal        func_8009EEB0
    /* 8C228 8009BA28 00000000 */   nop
    /* 8C22C 8009BA2C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8C230 8009BA30 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8C234 8009BA34 0800E003 */  jr         $ra
    /* 8C238 8009BA38 00000000 */   nop
endlabel func_8009BA1C
