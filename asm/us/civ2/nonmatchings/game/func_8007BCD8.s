.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007BCD8, 0x50

glabel func_8007BCD8
    /* 6C4D8 8007BCD8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6C4DC 8007BCDC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 6C4E0 8007BCE0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6C4E4 8007BCE4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6C4E8 8007BCE8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6C4EC 8007BCEC 21808000 */  addu       $s0, $a0, $zero
    /* 6C4F0 8007BCF0 2188A000 */  addu       $s1, $a1, $zero
    /* 6C4F4 8007BCF4 7BEE010C */  jal        func_8007B9EC
    /* 6C4F8 8007BCF8 2190C000 */   addu      $s2, $a2, $zero
    /* 6C4FC 8007BCFC 21200002 */  addu       $a0, $s0, $zero
    /* 6C500 8007BD00 21282002 */  addu       $a1, $s1, $zero
    /* 6C504 8007BD04 E7EE010C */  jal        func_8007BB9C
    /* 6C508 8007BD08 21304002 */   addu      $a2, $s2, $zero
    /* 6C50C 8007BD0C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 6C510 8007BD10 1800B28F */  lw         $s2, 0x18($sp)
    /* 6C514 8007BD14 1400B18F */  lw         $s1, 0x14($sp)
    /* 6C518 8007BD18 1000B08F */  lw         $s0, 0x10($sp)
    /* 6C51C 8007BD1C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6C520 8007BD20 0800E003 */  jr         $ra
    /* 6C524 8007BD24 00000000 */   nop
endlabel func_8007BCD8
