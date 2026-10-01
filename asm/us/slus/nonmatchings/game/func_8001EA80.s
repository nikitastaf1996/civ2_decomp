.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001EA80, 0xF0

glabel func_8001EA80
    /* F280 8001EA80 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* F284 8001EA84 2400BFAF */  sw         $ra, 0x24($sp)
    /* F288 8001EA88 2000B4AF */  sw         $s4, 0x20($sp)
    /* F28C 8001EA8C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* F290 8001EA90 1800B2AF */  sw         $s2, 0x18($sp)
    /* F294 8001EA94 1400B1AF */  sw         $s1, 0x14($sp)
    /* F298 8001EA98 1000B0AF */  sw         $s0, 0x10($sp)
    /* F29C 8001EA9C 2138C000 */  addu       $a3, $a2, $zero
    /* F2A0 8001EAA0 21988000 */  addu       $s3, $a0, $zero
    /* F2A4 8001EAA4 2190A000 */  addu       $s2, $a1, $zero
    /* F2A8 8001EAA8 21A0E000 */  addu       $s4, $a3, $zero
    /* F2AC 8001EAAC 002C0500 */  sll        $a1, $a1, 16
    /* F2B0 8001EAB0 038C0500 */  sra        $s1, $a1, 16
    /* F2B4 8001EAB4 00240400 */  sll        $a0, $a0, 16
    /* F2B8 8001EAB8 03840400 */  sra        $s0, $a0, 16
    /* F2BC 8001EABC 003C0700 */  sll        $a3, $a3, 16
    /* F2C0 8001EAC0 0180043C */  lui        $a0, %hi(D_80017188)
    /* F2C4 8001EAC4 88718424 */  addiu      $a0, $a0, %lo(D_80017188)
    /* F2C8 8001EAC8 21280002 */  addu       $a1, $s0, $zero
    /* F2CC 8001EACC 21302002 */  addu       $a2, $s1, $zero
    /* F2D0 8001EAD0 5CAD000C */  jal        func_8002B570
    /* F2D4 8001EAD4 033C0700 */   sra       $a3, $a3, 16
    /* F2D8 8001EAD8 32040224 */  addiu      $v0, $zero, 0x432
    /* F2DC 8001EADC 06000212 */  beq        $s0, $v0, .L8001EAF8
    /* F2E0 8001EAE0 21200002 */   addu      $a0, $s0, $zero
    /* F2E4 8001EAE4 21282002 */  addu       $a1, $s1, $zero
    /* F2E8 8001EAE8 32040624 */  addiu      $a2, $zero, 0x432
    /* F2EC 8001EAEC 11B1000C */  jal        func_8002C444
    /* F2F0 8001EAF0 21380000 */   addu      $a3, $zero, $zero
    /* F2F4 8001EAF4 21884000 */  addu       $s1, $v0, $zero
  .L8001EAF8:
    /* F2F8 8001EAF8 00141200 */  sll        $v0, $s2, 16
    /* F2FC 8001EAFC 031C0200 */  sra        $v1, $v0, 16
    /* F300 8001EB00 2A102302 */  slt        $v0, $s1, $v1
    /* F304 8001EB04 02004010 */  beqz       $v0, .L8001EB10
    /* F308 8001EB08 00000000 */   nop
    /* F30C 8001EB0C 21886000 */  addu       $s1, $v1, $zero
  .L8001EB10:
    /* F310 8001EB10 00241100 */  sll        $a0, $s1, 16
    /* F314 8001EB14 CC78000C */  jal        func_8001E330
    /* F318 8001EB18 03240400 */   sra       $a0, $a0, 16
    /* F31C 8001EB1C 00241300 */  sll        $a0, $s3, 16
    /* F320 8001EB20 00841200 */  sll        $s0, $s2, 16
    /* F324 8001EB24 03841000 */  sra        $s0, $s0, 16
    /* F328 8001EB28 00341400 */  sll        $a2, $s4, 16
    /* F32C 8001EB2C 03240400 */  sra        $a0, $a0, 16
    /* F330 8001EB30 21280002 */  addu       $a1, $s0, $zero
    /* F334 8001EB34 8378000C */  jal        func_8001E20C
    /* F338 8001EB38 03340600 */   sra       $a2, $a2, 16
    /* F33C 8001EB3C 0678000C */  jal        func_8001E018
    /* F340 8001EB40 21200002 */   addu      $a0, $s0, $zero
    /* F344 8001EB44 9E79000C */  jal        func_8001E678
    /* F348 8001EB48 21200002 */   addu      $a0, $s0, $zero
    /* F34C 8001EB4C 2400BF8F */  lw         $ra, 0x24($sp)
    /* F350 8001EB50 2000B48F */  lw         $s4, 0x20($sp)
    /* F354 8001EB54 1C00B38F */  lw         $s3, 0x1C($sp)
    /* F358 8001EB58 1800B28F */  lw         $s2, 0x18($sp)
    /* F35C 8001EB5C 1400B18F */  lw         $s1, 0x14($sp)
    /* F360 8001EB60 1000B08F */  lw         $s0, 0x10($sp)
    /* F364 8001EB64 2800BD27 */  addiu      $sp, $sp, 0x28
    /* F368 8001EB68 0800E003 */  jr         $ra
    /* F36C 8001EB6C 00000000 */   nop
endlabel func_8001EA80
