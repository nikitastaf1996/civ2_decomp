.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80066000, 0x28

glabel func_80066000
    /* 56800 80066000 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 56804 80066004 1000BFAF */  sw         $ra, 0x10($sp)
    /* 56808 80066008 1A12040C */  jal        func_80104868
    /* 5680C 8006600C 00000000 */   nop
    /* 56810 80066010 BF12040C */  jal        func_80104AFC
    /* 56814 80066014 00000000 */   nop
    /* 56818 80066018 1000BF8F */  lw         $ra, 0x10($sp)
    /* 5681C 8006601C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 56820 80066020 0800E003 */  jr         $ra
    /* 56824 80066024 00000000 */   nop
endlabel func_80066000
