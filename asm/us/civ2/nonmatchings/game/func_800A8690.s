.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A8690, 0x28

glabel func_800A8690
    /* 98E90 800A8690 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98E94 800A8694 1000BFAF */  sw         $ra, 0x10($sp)
    /* 98E98 800A8698 79A1020C */  jal        func_800A85E4
    /* 98E9C 800A869C 00000000 */   nop
    /* 98EA0 800A86A0 6652020C */  jal        func_80094998
    /* 98EA4 800A86A4 21204000 */   addu      $a0, $v0, $zero
    /* 98EA8 800A86A8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 98EAC 800A86AC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 98EB0 800A86B0 0800E003 */  jr         $ra
    /* 98EB4 800A86B4 00000000 */   nop
endlabel func_800A8690
