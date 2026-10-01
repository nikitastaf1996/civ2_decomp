.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A065C, 0x20

glabel func_800A065C
    /* 90E5C 800A065C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 90E60 800A0660 1000BFAF */  sw         $ra, 0x10($sp)
    /* 90E64 800A0664 ED12040C */  jal        func_80104BB4
    /* 90E68 800A0668 21200000 */   addu      $a0, $zero, $zero
    /* 90E6C 800A066C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 90E70 800A0670 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 90E74 800A0674 0800E003 */  jr         $ra
    /* 90E78 800A0678 00000000 */   nop
endlabel func_800A065C
