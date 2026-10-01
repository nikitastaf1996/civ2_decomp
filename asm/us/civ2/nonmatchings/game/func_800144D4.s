.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800144D4, 0x28

glabel func_800144D4
    /* 4CD4 800144D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4CD8 800144D8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4CDC 800144DC FF000424 */  addiu      $a0, $zero, 0xFF
    /* 4CE0 800144E0 21280000 */  addu       $a1, $zero, $zero
    /* 4CE4 800144E4 5B50000C */  jal        func_8001416C
    /* 4CE8 800144E8 21300000 */   addu      $a2, $zero, $zero
    /* 4CEC 800144EC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4CF0 800144F0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4CF4 800144F4 0800E003 */  jr         $ra
    /* 4CF8 800144F8 00000000 */   nop
endlabel func_800144D4
