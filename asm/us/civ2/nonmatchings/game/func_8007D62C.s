.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007D62C, 0x98

glabel func_8007D62C
    /* 6DE2C 8007D62C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6DE30 8007D630 2400BFAF */  sw         $ra, 0x24($sp)
    /* 6DE34 8007D634 2000B4AF */  sw         $s4, 0x20($sp)
    /* 6DE38 8007D638 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6DE3C 8007D63C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6DE40 8007D640 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6DE44 8007D644 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6DE48 8007D648 21988000 */  addu       $s3, $a0, $zero
    /* 6DE4C 8007D64C 2190A000 */  addu       $s2, $a1, $zero
    /* 6DE50 8007D650 0161020C */  jal        func_80098404
    /* 6DE54 8007D654 21880000 */   addu      $s1, $zero, $zero
    /* 6DE58 8007D658 21804000 */  addu       $s0, $v0, $zero
    /* 6DE5C 8007D65C 02000006 */  bltz       $s0, .L8007D668
    /* 6DE60 8007D660 01000224 */   addiu     $v0, $zero, 0x1
    /* 6DE64 8007D664 04880202 */  sllv       $s1, $v0, $s0
  .L8007D668:
    /* 6DE68 8007D668 01001024 */  addiu      $s0, $zero, 0x1
    /* 6DE6C 8007D66C 01001424 */  addiu      $s4, $zero, 0x1
    /* 6DE70 8007D670 21206002 */  addu       $a0, $s3, $zero
  .L8007D674:
    /* 6DE74 8007D674 21284002 */  addu       $a1, $s2, $zero
    /* 6DE78 8007D678 19F5010C */  jal        func_8007D464
    /* 6DE7C 8007D67C 21300002 */   addu      $a2, $s0, $zero
    /* 6DE80 8007D680 02004010 */  beqz       $v0, .L8007D68C
    /* 6DE84 8007D684 04101402 */   sllv      $v0, $s4, $s0
    /* 6DE88 8007D688 25882202 */  or         $s1, $s1, $v0
  .L8007D68C:
    /* 6DE8C 8007D68C 01001026 */  addiu      $s0, $s0, 0x1
    /* 6DE90 8007D690 0800022A */  slti       $v0, $s0, 0x8
    /* 6DE94 8007D694 F7FF4014 */  bnez       $v0, .L8007D674
    /* 6DE98 8007D698 21206002 */   addu      $a0, $s3, $zero
    /* 6DE9C 8007D69C 21102002 */  addu       $v0, $s1, $zero
    /* 6DEA0 8007D6A0 2400BF8F */  lw         $ra, 0x24($sp)
    /* 6DEA4 8007D6A4 2000B48F */  lw         $s4, 0x20($sp)
    /* 6DEA8 8007D6A8 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6DEAC 8007D6AC 1800B28F */  lw         $s2, 0x18($sp)
    /* 6DEB0 8007D6B0 1400B18F */  lw         $s1, 0x14($sp)
    /* 6DEB4 8007D6B4 1000B08F */  lw         $s0, 0x10($sp)
    /* 6DEB8 8007D6B8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 6DEBC 8007D6BC 0800E003 */  jr         $ra
    /* 6DEC0 8007D6C0 00000000 */   nop
endlabel func_8007D62C
