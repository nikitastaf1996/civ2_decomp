.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098494, 0x24

glabel func_80098494
    /* 88C94 80098494 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 88C98 80098498 1000BFAF */  sw         $ra, 0x10($sp)
    /* 88C9C 8009849C BD60020C */  jal        func_800982F4
    /* 88CA0 800984A0 00000000 */   nop
    /* 88CA4 800984A4 03004290 */  lbu        $v0, 0x3($v0)
    /* 88CA8 800984A8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 88CAC 800984AC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 88CB0 800984B0 0800E003 */  jr         $ra
    /* 88CB4 800984B4 00000000 */   nop
endlabel func_80098494
