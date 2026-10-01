.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B6C0, 0x78

glabel func_8001B6C0
    /* BEC0 8001B6C0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* BEC4 8001B6C4 2000BFAF */  sw         $ra, 0x20($sp)
    /* BEC8 8001B6C8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* BECC 8001B6CC 1800B2AF */  sw         $s2, 0x18($sp)
    /* BED0 8001B6D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* BED4 8001B6D4 1000B0AF */  sw         $s0, 0x10($sp)
    /* BED8 8001B6D8 21988000 */  addu       $s3, $a0, $zero
    /* BEDC 8001B6DC 2180A000 */  addu       $s0, $a1, $zero
    /* BEE0 8001B6E0 2188C000 */  addu       $s1, $a2, $zero
    /* BEE4 8001B6E4 00010224 */  addiu      $v0, $zero, 0x100
    /* BEE8 8001B6E8 06006216 */  bne        $s3, $v0, .L8001B704
    /* BEEC 8001B6EC 2190E000 */   addu      $s2, $a3, $zero
    /* BEF0 8001B6F0 001B0224 */  addiu      $v0, $zero, 0x1B00
    /* BEF4 8001B6F4 04000212 */  beq        $s0, $v0, .L8001B708
    /* BEF8 8001B6F8 21206002 */   addu      $a0, $s3, $zero
    /* BEFC 8001B6FC E7FE000C */  jal        SsVoKeyOff
    /* BF00 8001B700 00010424 */   addiu     $a0, $zero, 0x100
  .L8001B704:
    /* BF04 8001B704 21206002 */  addu       $a0, $s3, $zero
  .L8001B708:
    /* BF08 8001B708 21280002 */  addu       $a1, $s0, $zero
    /* BF0C 8001B70C FFFF2632 */  andi       $a2, $s1, 0xFFFF
    /* BF10 8001B710 F7FE000C */  jal        SsVoKeyOn
    /* BF14 8001B714 FFFF4732 */   andi      $a3, $s2, 0xFFFF
    /* BF18 8001B718 2000BF8F */  lw         $ra, 0x20($sp)
    /* BF1C 8001B71C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* BF20 8001B720 1800B28F */  lw         $s2, 0x18($sp)
    /* BF24 8001B724 1400B18F */  lw         $s1, 0x14($sp)
    /* BF28 8001B728 1000B08F */  lw         $s0, 0x10($sp)
    /* BF2C 8001B72C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* BF30 8001B730 0800E003 */  jr         $ra
    /* BF34 8001B734 00000000 */   nop
endlabel func_8001B6C0
