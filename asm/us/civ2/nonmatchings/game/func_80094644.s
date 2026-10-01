.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094644, 0x54

glabel func_80094644
    /* 84E44 80094644 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 84E48 80094648 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 84E4C 8009464C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 84E50 80094650 1400B1AF */  sw         $s1, 0x14($sp)
    /* 84E54 80094654 1000B0AF */  sw         $s0, 0x10($sp)
    /* 84E58 80094658 2180C000 */  addu       $s0, $a2, $zero
    /* 84E5C 8009465C 6E51020C */  jal        func_800945B8
    /* 84E60 80094660 2190E000 */   addu      $s2, $a3, $zero
    /* 84E64 80094664 21884000 */  addu       $s1, $v0, $zero
    /* 84E68 80094668 21202002 */  addu       $a0, $s1, $zero
    /* 84E6C 8009466C 21280002 */  addu       $a1, $s0, $zero
    /* 84E70 80094670 E7EE010C */  jal        func_8007BB9C
    /* 84E74 80094674 21304002 */   addu      $a2, $s2, $zero
    /* 84E78 80094678 21102002 */  addu       $v0, $s1, $zero
    /* 84E7C 8009467C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 84E80 80094680 1800B28F */  lw         $s2, 0x18($sp)
    /* 84E84 80094684 1400B18F */  lw         $s1, 0x14($sp)
    /* 84E88 80094688 1000B08F */  lw         $s0, 0x10($sp)
    /* 84E8C 8009468C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 84E90 80094690 0800E003 */  jr         $ra
    /* 84E94 80094694 00000000 */   nop
endlabel func_80094644
