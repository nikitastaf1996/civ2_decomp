.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009CC54, 0x60

glabel func_8009CC54
    /* 8D454 8009CC54 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8D458 8009CC58 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8D45C 8009CC5C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8D460 8009CC60 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8D464 8009CC64 21808000 */  addu       $s0, $a0, $zero
    /* 8D468 8009CC68 2188A000 */  addu       $s1, $a1, $zero
    /* 8D46C 8009CC6C 0180023C */  lui        $v0, %hi(D_80011A54)
    /* 8D470 8009CC70 541A4224 */  addiu      $v0, $v0, %lo(D_80011A54)
    /* 8D474 8009CC74 280002AE */  sw         $v0, 0x28($s0)
    /* 8D478 8009CC78 94020426 */  addiu      $a0, $s0, 0x294
    /* 8D47C 8009CC7C 4CE1030C */  jal        func_800F8530
    /* 8D480 8009CC80 02000524 */   addiu     $a1, $zero, 0x2
    /* 8D484 8009CC84 68020426 */  addiu      $a0, $s0, 0x268
    /* 8D488 8009CC88 4CE1030C */  jal        func_800F8530
    /* 8D48C 8009CC8C 02000524 */   addiu     $a1, $zero, 0x2
    /* 8D490 8009CC90 21200002 */  addu       $a0, $s0, $zero
    /* 8D494 8009CC94 D74A020C */  jal        func_80092B5C
    /* 8D498 8009CC98 21282002 */   addu      $a1, $s1, $zero
    /* 8D49C 8009CC9C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8D4A0 8009CCA0 1400B18F */  lw         $s1, 0x14($sp)
    /* 8D4A4 8009CCA4 1000B08F */  lw         $s0, 0x10($sp)
    /* 8D4A8 8009CCA8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8D4AC 8009CCAC 0800E003 */  jr         $ra
    /* 8D4B0 8009CCB0 00000000 */   nop
endlabel func_8009CC54
