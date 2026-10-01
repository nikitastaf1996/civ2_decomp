.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A28F0, 0x20

glabel func_800A28F0
    /* 930F0 800A28F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 930F4 800A28F4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 930F8 800A28F8 2F53020C */  jal        func_80094CBC
    /* 930FC 800A28FC 00000000 */   nop
    /* 93100 800A2900 1000BF8F */  lw         $ra, 0x10($sp)
    /* 93104 800A2904 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 93108 800A2908 0800E003 */  jr         $ra
    /* 9310C 800A290C 00000000 */   nop
endlabel func_800A28F0
