.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009BA3C, 0xD8

glabel func_8009BA3C
    /* 8C23C 8009BA3C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 8C240 8009BA40 3000BFAF */  sw         $ra, 0x30($sp)
    /* 8C244 8009BA44 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 8C248 8009BA48 2800B4AF */  sw         $s4, 0x28($sp)
    /* 8C24C 8009BA4C 2400B3AF */  sw         $s3, 0x24($sp)
    /* 8C250 8009BA50 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8C254 8009BA54 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8C258 8009BA58 1800B0AF */  sw         $s0, 0x18($sp)
    /* 8C25C 8009BA5C 21808000 */  addu       $s0, $a0, $zero
    /* 8C260 8009BA60 2188A000 */  addu       $s1, $a1, $zero
    /* 8C264 8009BA64 2190C000 */  addu       $s2, $a2, $zero
    /* 8C268 8009BA68 4800A38F */  lw         $v1, 0x48($sp)
    /* 8C26C 8009BA6C 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 8C270 8009BA70 1680023C */  lui        $v0, %hi(D_80158870)
    /* 8C274 8009BA74 70884290 */  lbu        $v0, %lo(D_80158870)($v0)
    /* 8C278 8009BA78 00000000 */  nop
    /* 8C27C 8009BA7C 1B004010 */  beqz       $v0, .L8009BAEC
    /* 8C280 8009BA80 2198E000 */   addu      $s3, $a3, $zero
    /* 8C284 8009BA84 1680143C */  lui        $s4, %hi(D_801592E4)
    /* 8C288 8009BA88 E4929486 */  lh         $s4, %lo(D_801592E4)($s4)
    /* 8C28C 8009BA8C 80000224 */  addiu      $v0, $zero, 0x80
    /* 8C290 8009BA90 1680013C */  lui        $at, %hi(D_801592E4)
    /* 8C294 8009BA94 E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* 8C298 8009BA98 1280023C */  lui        $v0, %hi(D_8011A271)
    /* 8C29C 8009BA9C 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* 8C2A0 8009BAA0 00000000 */  nop
    /* 8C2A4 8009BAA4 03004014 */  bnez       $v0, .L8009BAB4
    /* 8C2A8 8009BAA8 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 8C2AC 8009BAAC AE6E0208 */  j          .L8009BAB8
    /* 8C2B0 8009BAB0 1000A3AF */   sw        $v1, 0x10($sp)
  .L8009BAB4:
    /* 8C2B4 8009BAB4 1000A2AF */  sw         $v0, 0x10($sp)
  .L8009BAB8:
    /* 8C2B8 8009BAB8 21200002 */  addu       $a0, $s0, $zero
    /* 8C2BC 8009BABC 21282002 */  addu       $a1, $s1, $zero
    /* 8C2C0 8009BAC0 21304002 */  addu       $a2, $s2, $zero
    /* 8C2C4 8009BAC4 6E6D020C */  jal        func_8009B5B8
    /* 8C2C8 8009BAC8 21386002 */   addu      $a3, $s3, $zero
    /* 8C2CC 8009BACC 0500A012 */  beqz       $s5, .L8009BAE4
    /* 8C2D0 8009BAD0 21200002 */   addu      $a0, $s0, $zero
    /* 8C2D4 8009BAD4 21282002 */  addu       $a1, $s1, $zero
    /* 8C2D8 8009BAD8 21304002 */  addu       $a2, $s2, $zero
    /* 8C2DC 8009BADC 6E6E020C */  jal        func_8009B9B8
    /* 8C2E0 8009BAE0 21386002 */   addu      $a3, $s3, $zero
  .L8009BAE4:
    /* 8C2E4 8009BAE4 1680013C */  lui        $at, %hi(D_801592E4)
    /* 8C2E8 8009BAE8 E49234A4 */  sh         $s4, %lo(D_801592E4)($at)
  .L8009BAEC:
    /* 8C2EC 8009BAEC 3000BF8F */  lw         $ra, 0x30($sp)
    /* 8C2F0 8009BAF0 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 8C2F4 8009BAF4 2800B48F */  lw         $s4, 0x28($sp)
    /* 8C2F8 8009BAF8 2400B38F */  lw         $s3, 0x24($sp)
    /* 8C2FC 8009BAFC 2000B28F */  lw         $s2, 0x20($sp)
    /* 8C300 8009BB00 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8C304 8009BB04 1800B08F */  lw         $s0, 0x18($sp)
    /* 8C308 8009BB08 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 8C30C 8009BB0C 0800E003 */  jr         $ra
    /* 8C310 8009BB10 00000000 */   nop
endlabel func_8009BA3C
