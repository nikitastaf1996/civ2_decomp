.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800985A4, 0x24

glabel func_800985A4
    /* 88DA4 800985A4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 88DA8 800985A8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 88DAC 800985AC BD60020C */  jal        func_800982F4
    /* 88DB0 800985B0 00000000 */   nop
    /* 88DB4 800985B4 01004290 */  lbu        $v0, 0x1($v0)
    /* 88DB8 800985B8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 88DBC 800985BC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 88DC0 800985C0 0800E003 */  jr         $ra
    /* 88DC4 800985C4 00000000 */   nop
endlabel func_800985A4
