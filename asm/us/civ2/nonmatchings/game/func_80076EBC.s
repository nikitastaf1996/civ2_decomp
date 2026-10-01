.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80076EBC, 0x20

glabel func_80076EBC
    /* 676BC 80076EBC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 676C0 80076EC0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 676C4 80076EC4 B2D9010C */  jal        func_800766C8
    /* 676C8 80076EC8 21280000 */   addu      $a1, $zero, $zero
    /* 676CC 80076ECC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 676D0 80076ED0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 676D4 80076ED4 0800E003 */  jr         $ra
    /* 676D8 80076ED8 00000000 */   nop
endlabel func_80076EBC
