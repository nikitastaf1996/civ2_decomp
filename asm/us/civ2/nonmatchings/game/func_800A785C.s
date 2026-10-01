.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A785C, 0x24

glabel func_800A785C
    /* 9805C 800A785C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98060 800A7860 1000BFAF */  sw         $ra, 0x10($sp)
    /* 98064 800A7864 02000424 */  addiu      $a0, $zero, 0x2
    /* 98068 800A7868 689E020C */  jal        func_800A79A0
    /* 9806C 800A786C 21280000 */   addu      $a1, $zero, $zero
    /* 98070 800A7870 1000BF8F */  lw         $ra, 0x10($sp)
    /* 98074 800A7874 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 98078 800A7878 0800E003 */  jr         $ra
    /* 9807C 800A787C 00000000 */   nop
endlabel func_800A785C
