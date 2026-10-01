.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007BEAC, 0x78

glabel func_8007BEAC
    /* 6C6AC 8007BEAC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6C6B0 8007BEB0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 6C6B4 8007BEB4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6C6B8 8007BEB8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6C6BC 8007BEBC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6C6C0 8007BEC0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6C6C4 8007BEC4 2198A000 */  addu       $s3, $a1, $zero
    /* 6C6C8 8007BEC8 E6ED010C */  jal        func_8007B798
    /* 6C6CC 8007BECC 2190C000 */   addu      $s2, $a2, $zero
    /* 6C6D0 8007BED0 21884000 */  addu       $s1, $v0, $zero
    /* 6C6D4 8007BED4 0B002006 */  bltz       $s1, .L8007BF04
    /* 6C6D8 8007BED8 00000000 */   nop
  .L8007BEDC:
    /* 6C6DC 8007BEDC BFED010C */  jal        func_8007B6FC
    /* 6C6E0 8007BEE0 21202002 */   addu      $a0, $s1, $zero
    /* 6C6E4 8007BEE4 21804000 */  addu       $s0, $v0, $zero
    /* 6C6E8 8007BEE8 21202002 */  addu       $a0, $s1, $zero
    /* 6C6EC 8007BEEC 21286002 */  addu       $a1, $s3, $zero
    /* 6C6F0 8007BEF0 36EF010C */  jal        func_8007BCD8
    /* 6C6F4 8007BEF4 21304002 */   addu      $a2, $s2, $zero
    /* 6C6F8 8007BEF8 21880002 */  addu       $s1, $s0, $zero
    /* 6C6FC 8007BEFC F7FF2106 */  bgez       $s1, .L8007BEDC
    /* 6C700 8007BF00 00000000 */   nop
  .L8007BF04:
    /* 6C704 8007BF04 2000BF8F */  lw         $ra, 0x20($sp)
    /* 6C708 8007BF08 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6C70C 8007BF0C 1800B28F */  lw         $s2, 0x18($sp)
    /* 6C710 8007BF10 1400B18F */  lw         $s1, 0x14($sp)
    /* 6C714 8007BF14 1000B08F */  lw         $s0, 0x10($sp)
    /* 6C718 8007BF18 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 6C71C 8007BF1C 0800E003 */  jr         $ra
    /* 6C720 8007BF20 00000000 */   nop
endlabel func_8007BEAC
