.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DE160, 0x68

glabel func_800DE160
    /* CE960 800DE160 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* CE964 800DE164 1800BFAF */  sw         $ra, 0x18($sp)
    /* CE968 800DE168 1400B1AF */  sw         $s1, 0x14($sp)
    /* CE96C 800DE16C 1000B0AF */  sw         $s0, 0x10($sp)
    /* CE970 800DE170 21808000 */  addu       $s0, $a0, $zero
    /* CE974 800DE174 4806048E */  lw         $a0, 0x648($s0)
    /* CE978 800DE178 00000000 */  nop
    /* CE97C 800DE17C 03008010 */  beqz       $a0, .L800DE18C
    /* CE980 800DE180 2188A000 */   addu      $s1, $a1, $zero
    /* CE984 800DE184 E511040C */  jal        func_80104794
    /* CE988 800DE188 00000000 */   nop
  .L800DE18C:
    /* CE98C 800DE18C 14060426 */  addiu      $a0, $s0, 0x614
    /* CE990 800DE190 4CE1030C */  jal        func_800F8530
    /* CE994 800DE194 02000524 */   addiu     $a1, $zero, 0x2
    /* CE998 800DE198 84000426 */  addiu      $a0, $s0, 0x84
    /* CE99C 800DE19C 9BD7030C */  jal        func_800F5E6C
    /* CE9A0 800DE1A0 02000524 */   addiu     $a1, $zero, 0x2
    /* CE9A4 800DE1A4 21200002 */  addu       $a0, $s0, $zero
    /* CE9A8 800DE1A8 F5E9030C */  jal        func_800FA7D4
    /* CE9AC 800DE1AC 21282002 */   addu      $a1, $s1, $zero
    /* CE9B0 800DE1B0 1800BF8F */  lw         $ra, 0x18($sp)
    /* CE9B4 800DE1B4 1400B18F */  lw         $s1, 0x14($sp)
    /* CE9B8 800DE1B8 1000B08F */  lw         $s0, 0x10($sp)
    /* CE9BC 800DE1BC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* CE9C0 800DE1C0 0800E003 */  jr         $ra
    /* CE9C4 800DE1C4 00000000 */   nop
endlabel func_800DE160
