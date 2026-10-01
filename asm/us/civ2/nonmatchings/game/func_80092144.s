.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80092144, 0x20

glabel func_80092144
    /* 82944 80092144 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 82948 80092148 1000BFAF */  sw         $ra, 0x10($sp)
    /* 8294C 8009214C CFC9010C */  jal        func_8007273C
    /* 82950 80092150 00000000 */   nop
    /* 82954 80092154 1000BF8F */  lw         $ra, 0x10($sp)
    /* 82958 80092158 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8295C 8009215C 0800E003 */  jr         $ra
    /* 82960 80092160 00000000 */   nop
endlabel func_80092144
