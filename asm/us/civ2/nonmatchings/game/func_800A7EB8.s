.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A7EB8, 0x24

glabel func_800A7EB8
    /* 986B8 800A7EB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 986BC 800A7EBC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 986C0 800A7EC0 21200000 */  addu       $a0, $zero, $zero
    /* 986C4 800A7EC4 689E020C */  jal        func_800A79A0
    /* 986C8 800A7EC8 21280000 */   addu      $a1, $zero, $zero
    /* 986CC 800A7ECC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 986D0 800A7ED0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 986D4 800A7ED4 0800E003 */  jr         $ra
    /* 986D8 800A7ED8 00000000 */   nop
endlabel func_800A7EB8
