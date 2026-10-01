.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B64C, 0x20

glabel func_8002B64C
    /* 1BE4C 8002B64C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1BE50 8002B650 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1BE54 8002B654 7CAC000C */  jal        func_8002B1F0
    /* 1BE58 8002B658 00000000 */   nop
    /* 1BE5C 8002B65C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1BE60 8002B660 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1BE64 8002B664 0800E003 */  jr         $ra
    /* 1BE68 8002B668 00000000 */   nop
endlabel func_8002B64C
