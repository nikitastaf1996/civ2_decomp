.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80085DC8, 0x50

glabel func_80085DC8
    /* 765C8 80085DC8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 765CC 80085DCC 1800BFAF */  sw         $ra, 0x18($sp)
    /* 765D0 80085DD0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 765D4 80085DD4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 765D8 80085DD8 21808000 */  addu       $s0, $a0, $zero
    /* 765DC 80085DDC 5C17020C */  jal        func_80085D70
    /* 765E0 80085DE0 2188A000 */   addu      $s1, $a1, $zero
    /* 765E4 80085DE4 01001026 */  addiu      $s0, $s0, 0x1
    /* 765E8 80085DE8 21200002 */  addu       $a0, $s0, $zero
    /* 765EC 80085DEC 5C17020C */  jal        func_80085D70
    /* 765F0 80085DF0 FFFF2526 */   addiu     $a1, $s1, -0x1
    /* 765F4 80085DF4 21200002 */  addu       $a0, $s0, $zero
    /* 765F8 80085DF8 5C17020C */  jal        func_80085D70
    /* 765FC 80085DFC 01002526 */   addiu     $a1, $s1, 0x1
    /* 76600 80085E00 1800BF8F */  lw         $ra, 0x18($sp)
    /* 76604 80085E04 1400B18F */  lw         $s1, 0x14($sp)
    /* 76608 80085E08 1000B08F */  lw         $s0, 0x10($sp)
    /* 7660C 80085E0C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 76610 80085E10 0800E003 */  jr         $ra
    /* 76614 80085E14 00000000 */   nop
endlabel func_80085DC8
