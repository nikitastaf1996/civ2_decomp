.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A7824, 0x38

glabel func_800A7824
    /* 98024 800A7824 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98028 800A7828 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9802C 800A782C 01000224 */  addiu      $v0, $zero, 0x1
    /* 98030 800A7830 140882AF */  sw         $v0, %gp_rel(D_80158CEC)($gp)
    /* 98034 800A7834 2008828F */  lw         $v0, %gp_rel(D_80158CF8)($gp)
    /* 98038 800A7838 00000000 */  nop
    /* 9803C 800A783C 03004010 */  beqz       $v0, .L800A784C
    /* 98040 800A7840 00000000 */   nop
    /* 98044 800A7844 AE9F020C */  jal        func_800A7EB8
    /* 98048 800A7848 00000000 */   nop
  .L800A784C:
    /* 9804C 800A784C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 98050 800A7850 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 98054 800A7854 0800E003 */  jr         $ra
    /* 98058 800A7858 00000000 */   nop
endlabel func_800A7824
