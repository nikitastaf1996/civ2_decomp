.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80084FCC, 0xC4

glabel func_80084FCC
    /* 757CC 80084FCC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 757D0 80084FD0 3000BFAF */  sw         $ra, 0x30($sp)
    /* 757D4 80084FD4 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 757D8 80084FD8 2800B4AF */  sw         $s4, 0x28($sp)
    /* 757DC 80084FDC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 757E0 80084FE0 2000B2AF */  sw         $s2, 0x20($sp)
    /* 757E4 80084FE4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 757E8 80084FE8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 757EC 80084FEC 21A08000 */  addu       $s4, $a0, $zero
    /* 757F0 80084FF0 2190A000 */  addu       $s2, $a1, $zero
    /* 757F4 80084FF4 21A8C000 */  addu       $s5, $a2, $zero
    /* 757F8 80084FF8 4800B08F */  lw         $s0, 0x48($sp)
    /* 757FC 80084FFC 4C00B38F */  lw         $s3, 0x4C($sp)
    /* 75800 80085000 21884702 */  addu       $s1, $s2, $a3
    /* 75804 80085004 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 75808 80085008 1000B3AF */  sw         $s3, 0x10($sp)
    /* 7580C 8008500C 21302002 */  addu       $a2, $s1, $zero
    /* 75810 80085010 8413020C */  jal        func_80084E10
    /* 75814 80085014 2138A002 */   addu      $a3, $s5, $zero
    /* 75818 80085018 2180B002 */  addu       $s0, $s5, $s0
    /* 7581C 8008501C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 75820 80085020 1000B3AF */  sw         $s3, 0x10($sp)
    /* 75824 80085024 21208002 */  addu       $a0, $s4, $zero
    /* 75828 80085028 21284002 */  addu       $a1, $s2, $zero
    /* 7582C 8008502C 21302002 */  addu       $a2, $s1, $zero
    /* 75830 80085030 8413020C */  jal        func_80084E10
    /* 75834 80085034 21380002 */   addu      $a3, $s0, $zero
    /* 75838 80085038 1000B3AF */  sw         $s3, 0x10($sp)
    /* 7583C 8008503C 21208002 */  addu       $a0, $s4, $zero
    /* 75840 80085040 21284002 */  addu       $a1, $s2, $zero
    /* 75844 80085044 2130A002 */  addu       $a2, $s5, $zero
    /* 75848 80085048 A313020C */  jal        func_80084E8C
    /* 7584C 8008504C 21380002 */   addu      $a3, $s0, $zero
    /* 75850 80085050 1000B3AF */  sw         $s3, 0x10($sp)
    /* 75854 80085054 21208002 */  addu       $a0, $s4, $zero
    /* 75858 80085058 21282002 */  addu       $a1, $s1, $zero
    /* 7585C 8008505C 2130A002 */  addu       $a2, $s5, $zero
    /* 75860 80085060 A313020C */  jal        func_80084E8C
    /* 75864 80085064 21380002 */   addu      $a3, $s0, $zero
    /* 75868 80085068 3000BF8F */  lw         $ra, 0x30($sp)
    /* 7586C 8008506C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 75870 80085070 2800B48F */  lw         $s4, 0x28($sp)
    /* 75874 80085074 2400B38F */  lw         $s3, 0x24($sp)
    /* 75878 80085078 2000B28F */  lw         $s2, 0x20($sp)
    /* 7587C 8008507C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 75880 80085080 1800B08F */  lw         $s0, 0x18($sp)
    /* 75884 80085084 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 75888 80085088 0800E003 */  jr         $ra
    /* 7588C 8008508C 00000000 */   nop
endlabel func_80084FCC
