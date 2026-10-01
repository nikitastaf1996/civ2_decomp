.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A4938, 0x20

glabel func_800A4938
    /* 95138 800A4938 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9513C 800A493C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 95140 800A4940 FED4030C */  jal        func_800F53F8
    /* 95144 800A4944 00000000 */   nop
    /* 95148 800A4948 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9514C 800A494C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 95150 800A4950 0800E003 */  jr         $ra
    /* 95154 800A4954 00000000 */   nop
endlabel func_800A4938
