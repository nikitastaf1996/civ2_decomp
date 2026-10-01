.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009EED0, 0x20

glabel func_8009EED0
    /* 8F6D0 8009EED0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8F6D4 8009EED4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8F6D8 8009EED8 8E12040C */  jal        func_80104A38
    /* 8F6DC 8009EEDC 00000000 */   nop
    /* 8F6E0 8009EEE0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 8F6E4 8009EEE4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8F6E8 8009EEE8 0800E003 */  jr         $ra
    /* 8F6EC 8009EEEC 00000000 */   nop
endlabel func_8009EED0
