.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A86E8, 0x30

glabel func_800A86E8
    /* 98EE8 800A86E8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98EEC 800A86EC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 98EF0 800A86F0 79A1020C */  jal        func_800A85E4
    /* 98EF4 800A86F4 00000000 */   nop
    /* 98EF8 800A86F8 1280043C */  lui        $a0, %hi(D_8011F9F8)
    /* 98EFC 800A86FC F8F98424 */  addiu      $a0, $a0, %lo(D_8011F9F8)
    /* 98F00 800A8700 8D3A030C */  jal        func_800CEA34
    /* 98F04 800A8704 00000000 */   nop
    /* 98F08 800A8708 1000BF8F */  lw         $ra, 0x10($sp)
    /* 98F0C 800A870C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 98F10 800A8710 0800E003 */  jr         $ra
    /* 98F14 800A8714 00000000 */   nop
endlabel func_800A86E8
