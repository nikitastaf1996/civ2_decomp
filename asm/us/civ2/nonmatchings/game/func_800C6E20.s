.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6E20, 0x50

glabel func_800C6E20
    /* B7620 800C6E20 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B7624 800C6E24 1800BFAF */  sw         $ra, 0x18($sp)
    /* B7628 800C6E28 1400B1AF */  sw         $s1, 0x14($sp)
    /* B762C 800C6E2C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B7630 800C6E30 21808000 */  addu       $s0, $a0, $zero
    /* B7634 800C6E34 291B030C */  jal        func_800C6CA4
    /* B7638 800C6E38 2188A000 */   addu      $s1, $a1, $zero
    /* B763C 800C6E3C A63A030C */  jal        func_800CEA98
    /* B7640 800C6E40 21202002 */   addu      $a0, $s1, $zero
    /* B7644 800C6E44 21200002 */  addu       $a0, $s0, $zero
    /* B7648 800C6E48 9987030C */  jal        func_800E1E64
    /* B764C 800C6E4C 21284000 */   addu      $a1, $v0, $zero
    /* B7650 800C6E50 331B030C */  jal        func_800C6CCC
    /* B7654 800C6E54 21200002 */   addu      $a0, $s0, $zero
    /* B7658 800C6E58 1800BF8F */  lw         $ra, 0x18($sp)
    /* B765C 800C6E5C 1400B18F */  lw         $s1, 0x14($sp)
    /* B7660 800C6E60 1000B08F */  lw         $s0, 0x10($sp)
    /* B7664 800C6E64 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B7668 800C6E68 0800E003 */  jr         $ra
    /* B766C 800C6E6C 00000000 */   nop
endlabel func_800C6E20
