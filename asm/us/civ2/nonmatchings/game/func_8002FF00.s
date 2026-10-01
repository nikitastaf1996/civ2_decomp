.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002FF00, 0x28

glabel func_8002FF00
    /* 20700 8002FF00 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 20704 8002FF04 1000BFAF */  sw         $ra, 0x10($sp)
    /* 20708 8002FF08 1180043C */  lui        $a0, %hi(D_8010BA60)
    /* 2070C 8002FF0C 60BA8424 */  addiu      $a0, $a0, %lo(D_8010BA60)
    /* 20710 8002FF10 D74A020C */  jal        func_80092B5C
    /* 20714 8002FF14 02000524 */   addiu     $a1, $zero, 0x2
    /* 20718 8002FF18 1000BF8F */  lw         $ra, 0x10($sp)
    /* 2071C 8002FF1C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 20720 8002FF20 0800E003 */  jr         $ra
    /* 20724 8002FF24 00000000 */   nop
endlabel func_8002FF00
