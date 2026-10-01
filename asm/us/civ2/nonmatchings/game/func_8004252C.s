.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004252C, 0x28

glabel func_8004252C
    /* 32D2C 8004252C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 32D30 80042530 1000BFAF */  sw         $ra, 0x10($sp)
    /* 32D34 80042534 2C0180AF */  sw         $zero, %gp_rel(D_80158604)($gp)
    /* 32D38 80042538 2801848F */  lw         $a0, %gp_rel(D_80158600)($gp)
    /* 32D3C 8004253C 31DE030C */  jal        func_800F78C4
    /* 32D40 80042540 2C008424 */   addiu     $a0, $a0, 0x2C
    /* 32D44 80042544 1000BF8F */  lw         $ra, 0x10($sp)
    /* 32D48 80042548 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 32D4C 8004254C 0800E003 */  jr         $ra
    /* 32D50 80042550 00000000 */   nop
endlabel func_8004252C
