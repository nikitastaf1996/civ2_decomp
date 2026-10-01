.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6B5C, 0x58

glabel func_800C6B5C
    /* B735C 800C6B5C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* B7360 800C6B60 2400BFAF */  sw         $ra, 0x24($sp)
    /* B7364 800C6B64 2000B2AF */  sw         $s2, 0x20($sp)
    /* B7368 800C6B68 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* B736C 800C6B6C 1800B0AF */  sw         $s0, 0x18($sp)
    /* B7370 800C6B70 21908000 */  addu       $s2, $a0, $zero
    /* B7374 800C6B74 2188A000 */  addu       $s1, $a1, $zero
    /* B7378 800C6B78 0700201A */  blez       $s1, .L800C6B98
    /* B737C 800C6B7C 21800000 */   addu      $s0, $zero, $zero
  .L800C6B80:
    /* B7380 800C6B80 CD1A030C */  jal        func_800C6B34
    /* B7384 800C6B84 21204002 */   addu      $a0, $s2, $zero
    /* B7388 800C6B88 01001026 */  addiu      $s0, $s0, 0x1
    /* B738C 800C6B8C 2A101102 */  slt        $v0, $s0, $s1
    /* B7390 800C6B90 FBFF4014 */  bnez       $v0, .L800C6B80
    /* B7394 800C6B94 00000000 */   nop
  .L800C6B98:
    /* B7398 800C6B98 2400BF8F */  lw         $ra, 0x24($sp)
    /* B739C 800C6B9C 2000B28F */  lw         $s2, 0x20($sp)
    /* B73A0 800C6BA0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* B73A4 800C6BA4 1800B08F */  lw         $s0, 0x18($sp)
    /* B73A8 800C6BA8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* B73AC 800C6BAC 0800E003 */  jr         $ra
    /* B73B0 800C6BB0 00000000 */   nop
endlabel func_800C6B5C
