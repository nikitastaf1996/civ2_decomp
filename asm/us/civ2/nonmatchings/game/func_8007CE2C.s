.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007CE2C, 0x4C

glabel func_8007CE2C
    /* 6D62C 8007CE2C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6D630 8007CE30 1400BFAF */  sw         $ra, 0x14($sp)
    /* 6D634 8007CE34 E6ED010C */  jal        func_8007B798
    /* 6D638 8007CE38 1000B0AF */   sw        $s0, 0x10($sp)
    /* 6D63C 8007CE3C 21804000 */  addu       $s0, $v0, $zero
    /* 6D640 8007CE40 08000006 */  bltz       $s0, .L8007CE64
    /* 6D644 8007CE44 00000000 */   nop
  .L8007CE48:
    /* 6D648 8007CE48 80F3010C */  jal        func_8007CE00
    /* 6D64C 8007CE4C 21200002 */   addu      $a0, $s0, $zero
    /* 6D650 8007CE50 BFED010C */  jal        func_8007B6FC
    /* 6D654 8007CE54 21200002 */   addu      $a0, $s0, $zero
    /* 6D658 8007CE58 21804000 */  addu       $s0, $v0, $zero
    /* 6D65C 8007CE5C FAFF0106 */  bgez       $s0, .L8007CE48
    /* 6D660 8007CE60 00000000 */   nop
  .L8007CE64:
    /* 6D664 8007CE64 1400BF8F */  lw         $ra, 0x14($sp)
    /* 6D668 8007CE68 1000B08F */  lw         $s0, 0x10($sp)
    /* 6D66C 8007CE6C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6D670 8007CE70 0800E003 */  jr         $ra
    /* 6D674 8007CE74 00000000 */   nop
endlabel func_8007CE2C
