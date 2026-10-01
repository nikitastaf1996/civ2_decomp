.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098898, 0x50

glabel func_80098898
    /* 89098 80098898 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8909C 8009889C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 890A0 800988A0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 890A4 800988A4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 890A8 800988A8 21808000 */  addu       $s0, $a0, $zero
    /* 890AC 800988AC 6961020C */  jal        func_800985A4
    /* 890B0 800988B0 2188A000 */   addu      $s1, $a1, $zero
    /* 890B4 800988B4 42004230 */  andi       $v0, $v0, 0x42
    /* 890B8 800988B8 42000324 */  addiu      $v1, $zero, 0x42
    /* 890BC 800988BC 04004314 */  bne        $v0, $v1, .L800988D0
    /* 890C0 800988C0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 890C4 800988C4 21200002 */  addu       $a0, $s0, $zero
    /* 890C8 800988C8 0161020C */  jal        func_80098404
    /* 890CC 800988CC 21282002 */   addu      $a1, $s1, $zero
  .L800988D0:
    /* 890D0 800988D0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 890D4 800988D4 1400B18F */  lw         $s1, 0x14($sp)
    /* 890D8 800988D8 1000B08F */  lw         $s0, 0x10($sp)
    /* 890DC 800988DC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 890E0 800988E0 0800E003 */  jr         $ra
    /* 890E4 800988E4 00000000 */   nop
endlabel func_80098898
