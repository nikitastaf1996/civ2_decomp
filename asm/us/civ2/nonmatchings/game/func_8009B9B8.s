.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009B9B8, 0x44

glabel func_8009B9B8
    /* 8C1B8 8009B9B8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 8C1BC 8009B9BC 2800BFAF */  sw         $ra, 0x28($sp)
    /* 8C1C0 8009B9C0 2400B1AF */  sw         $s1, 0x24($sp)
    /* 8C1C4 8009B9C4 2000B0AF */  sw         $s0, 0x20($sp)
    /* 8C1C8 8009B9C8 21808000 */  addu       $s0, $a0, $zero
    /* 8C1CC 8009B9CC 1800B127 */  addiu      $s1, $sp, 0x18
    /* 8C1D0 8009B9D0 226D020C */  jal        func_8009B488
    /* 8C1D4 8009B9D4 1000B1AF */   sw        $s1, 0x10($sp)
    /* 8C1D8 8009B9D8 21200002 */  addu       $a0, $s0, $zero
    /* 8C1DC 8009B9DC B47B020C */  jal        func_8009EED0
    /* 8C1E0 8009B9E0 21282002 */   addu      $a1, $s1, $zero
    /* 8C1E4 8009B9E4 2800BF8F */  lw         $ra, 0x28($sp)
    /* 8C1E8 8009B9E8 2400B18F */  lw         $s1, 0x24($sp)
    /* 8C1EC 8009B9EC 2000B08F */  lw         $s0, 0x20($sp)
    /* 8C1F0 8009B9F0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 8C1F4 8009B9F4 0800E003 */  jr         $ra
    /* 8C1F8 8009B9F8 00000000 */   nop
endlabel func_8009B9B8
