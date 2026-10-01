.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800466E4, 0x90

glabel func_800466E4
    /* 36EE4 800466E4 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 36EE8 800466E8 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* 36EEC 800466EC 6800B2AF */  sw         $s2, 0x68($sp)
    /* 36EF0 800466F0 6400B1AF */  sw         $s1, 0x64($sp)
    /* 36EF4 800466F4 6000B0AF */  sw         $s0, 0x60($sp)
    /* 36EF8 800466F8 21808000 */  addu       $s0, $a0, $zero
    /* 36EFC 800466FC 2188A000 */  addu       $s1, $a1, $zero
    /* 36F00 80046700 1280043C */  lui        $a0, %hi(D_80121340)
    /* 36F04 80046704 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 36F08 80046708 CB1A030C */  jal        func_800C6B2C
    /* 36F0C 8004670C 2190C000 */   addu      $s2, $a2, $zero
    /* 36F10 80046710 1280043C */  lui        $a0, %hi(D_80121340)
    /* 36F14 80046714 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 36F18 80046718 731B030C */  jal        func_800C6DCC
    /* 36F1C 8004671C 21282002 */   addu      $a1, $s1, $zero
    /* 36F20 80046720 1280043C */  lui        $a0, %hi(D_80121340)
    /* 36F24 80046724 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 36F28 80046728 33AC020C */  jal        func_800AB0CC
    /* 36F2C 8004672C 1000A527 */   addiu     $a1, $sp, 0x10
    /* 36F30 80046730 1180043C */  lui        $a0, %hi(D_8010BC94)
    /* 36F34 80046734 94BC8424 */  addiu      $a0, $a0, %lo(D_8010BC94)
    /* 36F38 80046738 21280002 */  addu       $a1, $s0, $zero
    /* 36F3C 8004673C 0A8B020C */  jal        func_800A2C28
    /* 36F40 80046740 1000A627 */   addiu     $a2, $sp, 0x10
    /* 36F44 80046744 1180043C */  lui        $a0, %hi(D_8010BC94)
    /* 36F48 80046748 94BC8424 */  addiu      $a0, $a0, %lo(D_8010BC94)
    /* 36F4C 8004674C 21280002 */  addu       $a1, $s0, $zero
    /* 36F50 80046750 9A8A020C */  jal        func_800A2A68
    /* 36F54 80046754 21304002 */   addu      $a2, $s2, $zero
    /* 36F58 80046758 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* 36F5C 8004675C 6800B28F */  lw         $s2, 0x68($sp)
    /* 36F60 80046760 6400B18F */  lw         $s1, 0x64($sp)
    /* 36F64 80046764 6000B08F */  lw         $s0, 0x60($sp)
    /* 36F68 80046768 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 36F6C 8004676C 0800E003 */  jr         $ra
    /* 36F70 80046770 00000000 */   nop
endlabel func_800466E4
