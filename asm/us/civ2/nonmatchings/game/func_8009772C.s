.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009772C, 0x2C

glabel func_8009772C
    /* 87F2C 8009772C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 87F30 80097730 1000BFAF */  sw         $ra, 0x10($sp)
    /* 87F34 80097734 1180043C */  lui        $a0, %hi(D_8010CBE0)
    /* 87F38 80097738 E0CB8424 */  addiu      $a0, $a0, %lo(D_8010CBE0)
    /* 87F3C 8009773C 7CEA030C */  jal        func_800FA9F0
    /* 87F40 80097740 00000000 */   nop
    /* 87F44 80097744 C40480AF */  sw         $zero, %gp_rel(D_8015899C)($gp)
    /* 87F48 80097748 1000BF8F */  lw         $ra, 0x10($sp)
    /* 87F4C 8009774C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 87F50 80097750 0800E003 */  jr         $ra
    /* 87F54 80097754 00000000 */   nop
endlabel func_8009772C
