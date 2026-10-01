.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800473D4, 0x28

glabel func_800473D4
    /* 37BD4 800473D4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 37BD8 800473D8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 37BDC 800473DC 1180043C */  lui        $a0, %hi(D_8010BC94)
    /* 37BE0 800473E0 94BC8424 */  addiu      $a0, $a0, %lo(D_8010BC94)
    /* 37BE4 800473E4 C788020C */  jal        func_800A231C
    /* 37BE8 800473E8 02000524 */   addiu     $a1, $zero, 0x2
    /* 37BEC 800473EC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 37BF0 800473F0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 37BF4 800473F4 0800E003 */  jr         $ra
    /* 37BF8 800473F8 00000000 */   nop
endlabel func_800473D4
