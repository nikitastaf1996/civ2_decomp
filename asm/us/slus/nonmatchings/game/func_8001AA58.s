.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001AA58, 0x64

glabel func_8001AA58
    /* B258 8001AA58 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B25C 8001AA5C 1400BFAF */  sw         $ra, 0x14($sp)
    /* B260 8001AA60 1000B0AF */  sw         $s0, 0x10($sp)
    /* B264 8001AA64 01000224 */  addiu      $v0, $zero, 0x1
    /* B268 8001AA68 0A00A214 */  bne        $a1, $v0, .L8001AA94
    /* B26C 8001AA6C 21808000 */   addu      $s0, $a0, $zero
    /* B270 8001AA70 21200002 */  addu       $a0, $s0, $zero
  .L8001AA74:
    /* B274 8001AA74 1480063C */  lui        $a2, %hi(D_80139DC8)
    /* B278 8001AA78 C89DC624 */  addiu      $a2, $a2, %lo(D_80139DC8)
    /* B27C 8001AA7C 7567000C */  jal        func_80019DD4
    /* B280 8001AA80 01000524 */   addiu     $a1, $zero, 0x1
    /* B284 8001AA84 FBFF4010 */  beqz       $v0, .L8001AA74
    /* B288 8001AA88 21200002 */   addu      $a0, $s0, $zero
    /* B28C 8001AA8C AA6A0008 */  j          .L8001AAA8
    /* B290 8001AA90 00000000 */   nop
  .L8001AA94:
    /* B294 8001AA94 21200002 */  addu       $a0, $s0, $zero
    /* B298 8001AA98 1480063C */  lui        $a2, %hi(D_80139DC8)
    /* B29C 8001AA9C C89DC624 */  addiu      $a2, $a2, %lo(D_80139DC8)
    /* B2A0 8001AAA0 7567000C */  jal        func_80019DD4
    /* B2A4 8001AAA4 21280000 */   addu      $a1, $zero, $zero
  .L8001AAA8:
    /* B2A8 8001AAA8 1400BF8F */  lw         $ra, 0x14($sp)
    /* B2AC 8001AAAC 1000B08F */  lw         $s0, 0x10($sp)
    /* B2B0 8001AAB0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B2B4 8001AAB4 0800E003 */  jr         $ra
    /* B2B8 8001AAB8 00000000 */   nop
endlabel func_8001AA58
