.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001AABC, 0x78

glabel func_8001AABC
    /* B2BC 8001AABC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B2C0 8001AAC0 1800BFAF */  sw         $ra, 0x18($sp)
    /* B2C4 8001AAC4 1400B1AF */  sw         $s1, 0x14($sp)
    /* B2C8 8001AAC8 1000B0AF */  sw         $s0, 0x10($sp)
    /* B2CC 8001AACC 21808000 */  addu       $s0, $a0, $zero
    /* B2D0 8001AAD0 01000224 */  addiu      $v0, $zero, 0x1
    /* B2D4 8001AAD4 0B00C214 */  bne        $a2, $v0, .L8001AB04
    /* B2D8 8001AAD8 2188A000 */   addu      $s1, $a1, $zero
    /* B2DC 8001AADC 21200002 */  addu       $a0, $s0, $zero
  .L8001AAE0:
    /* B2E0 8001AAE0 21282002 */  addu       $a1, $s1, $zero
    /* B2E4 8001AAE4 1480073C */  lui        $a3, %hi(D_80139DC8)
    /* B2E8 8001AAE8 C89DE724 */  addiu      $a3, $a3, %lo(D_80139DC8)
    /* B2EC 8001AAEC BF67000C */  jal        func_80019EFC
    /* B2F0 8001AAF0 01000624 */   addiu     $a2, $zero, 0x1
    /* B2F4 8001AAF4 FAFF4010 */  beqz       $v0, .L8001AAE0
    /* B2F8 8001AAF8 21200002 */   addu      $a0, $s0, $zero
    /* B2FC 8001AAFC C76A0008 */  j          .L8001AB1C
    /* B300 8001AB00 00000000 */   nop
  .L8001AB04:
    /* B304 8001AB04 21200002 */  addu       $a0, $s0, $zero
    /* B308 8001AB08 21282002 */  addu       $a1, $s1, $zero
    /* B30C 8001AB0C 1480073C */  lui        $a3, %hi(D_80139DC8)
    /* B310 8001AB10 C89DE724 */  addiu      $a3, $a3, %lo(D_80139DC8)
    /* B314 8001AB14 BF67000C */  jal        func_80019EFC
    /* B318 8001AB18 21300000 */   addu      $a2, $zero, $zero
  .L8001AB1C:
    /* B31C 8001AB1C 1800BF8F */  lw         $ra, 0x18($sp)
    /* B320 8001AB20 1400B18F */  lw         $s1, 0x14($sp)
    /* B324 8001AB24 1000B08F */  lw         $s0, 0x10($sp)
    /* B328 8001AB28 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B32C 8001AB2C 0800E003 */  jr         $ra
    /* B330 8001AB30 00000000 */   nop
endlabel func_8001AABC
