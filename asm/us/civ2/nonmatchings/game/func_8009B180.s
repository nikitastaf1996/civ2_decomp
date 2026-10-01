.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009B180, 0x64

glabel func_8009B180
    /* 8B980 8009B180 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8B984 8009B184 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 8B988 8009B188 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8B98C 8009B18C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8B990 8009B190 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8B994 8009B194 2188A000 */  addu       $s1, $a1, $zero
    /* 8B998 8009B198 3400B28F */  lw         $s2, 0x34($sp)
    /* 8B99C 8009B19C 2128C000 */  addu       $a1, $a2, $zero
    /* 8B9A0 8009B1A0 3000A68F */  lw         $a2, 0x30($sp)
    /* 8B9A4 8009B1A4 456C020C */  jal        func_8009B114
    /* 8B9A8 8009B1A8 2180E000 */   addu      $s0, $a3, $zero
    /* 8B9AC 8009B1AC 03004010 */  beqz       $v0, .L8009B1BC
    /* 8B9B0 8009B1B0 2A103002 */   slt       $v0, $s1, $s0
    /* 8B9B4 8009B1B4 03004010 */  beqz       $v0, .L8009B1C4
    /* 8B9B8 8009B1B8 21101202 */   addu      $v0, $s0, $s2
  .L8009B1BC:
    /* 8B9BC 8009B1BC 726C0208 */  j          .L8009B1C8
    /* 8B9C0 8009B1C0 21100000 */   addu      $v0, $zero, $zero
  .L8009B1C4:
    /* 8B9C4 8009B1C4 2A102202 */  slt        $v0, $s1, $v0
  .L8009B1C8:
    /* 8B9C8 8009B1C8 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 8B9CC 8009B1CC 1800B28F */  lw         $s2, 0x18($sp)
    /* 8B9D0 8009B1D0 1400B18F */  lw         $s1, 0x14($sp)
    /* 8B9D4 8009B1D4 1000B08F */  lw         $s0, 0x10($sp)
    /* 8B9D8 8009B1D8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8B9DC 8009B1DC 0800E003 */  jr         $ra
    /* 8B9E0 8009B1E0 00000000 */   nop
endlabel func_8009B180
