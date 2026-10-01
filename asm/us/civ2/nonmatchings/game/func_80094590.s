.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094590, 0x20

glabel func_80094590
    /* 84D90 80094590 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 84D94 80094594 1000BFAF */  sw         $ra, 0x10($sp)
    /* 84D98 80094598 0DF8030C */  jal        func_800FE034
    /* 84D9C 8009459C 00000000 */   nop
    /* 84DA0 800945A0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 84DA4 800945A4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 84DA8 800945A8 0800E003 */  jr         $ra
    /* 84DAC 800945AC 00000000 */   nop
endlabel func_80094590
