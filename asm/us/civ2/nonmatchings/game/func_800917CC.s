.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800917CC, 0x28

glabel func_800917CC
    /* 81FCC 800917CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 81FD0 800917D0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 81FD4 800917D4 1180043C */  lui        $a0, %hi(D_8010CBE0)
    /* 81FD8 800917D8 E0CB8424 */  addiu      $a0, $a0, %lo(D_8010CBE0)
    /* 81FDC 800917DC F5E9030C */  jal        func_800FA7D4
    /* 81FE0 800917E0 02000524 */   addiu     $a1, $zero, 0x2
    /* 81FE4 800917E4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 81FE8 800917E8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 81FEC 800917EC 0800E003 */  jr         $ra
    /* 81FF0 800917F0 00000000 */   nop
endlabel func_800917CC
