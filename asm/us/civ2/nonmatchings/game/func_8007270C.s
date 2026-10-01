.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007270C, 0x30

glabel func_8007270C
    /* 62F0C 8007270C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 62F10 80072710 1000BFAF */  sw         $ra, 0x10($sp)
    /* 62F14 80072714 98E9030C */  jal        func_800FA660
    /* 62F18 80072718 00000000 */   nop
    /* 62F1C 8007271C 80000224 */  addiu      $v0, $zero, 0x80
    /* 62F20 80072720 1680013C */  lui        $at, %hi(D_801592E4)
    /* 62F24 80072724 E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* 62F28 80072728 800280AF */  sw         $zero, %gp_rel(D_80158758)($gp)
    /* 62F2C 8007272C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 62F30 80072730 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 62F34 80072734 0800E003 */  jr         $ra
    /* 62F38 80072738 00000000 */   nop
endlabel func_8007270C
