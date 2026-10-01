.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6994, 0x198

glabel func_800C6994
    /* B7194 800C6994 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* B7198 800C6998 4C00BFAF */  sw         $ra, 0x4C($sp)
    /* B719C 800C699C 4800BEAF */  sw         $fp, 0x48($sp)
    /* B71A0 800C69A0 4400B7AF */  sw         $s7, 0x44($sp)
    /* B71A4 800C69A4 4000B6AF */  sw         $s6, 0x40($sp)
    /* B71A8 800C69A8 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* B71AC 800C69AC 3800B4AF */  sw         $s4, 0x38($sp)
    /* B71B0 800C69B0 3400B3AF */  sw         $s3, 0x34($sp)
    /* B71B4 800C69B4 3000B2AF */  sw         $s2, 0x30($sp)
    /* B71B8 800C69B8 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* B71BC 800C69BC 2800B0AF */  sw         $s0, 0x28($sp)
    /* B71C0 800C69C0 21B88000 */  addu       $s7, $a0, $zero
    /* B71C4 800C69C4 21B0A000 */  addu       $s6, $a1, $zero
    /* B71C8 800C69C8 2190C000 */  addu       $s2, $a2, $zero
    /* B71CC 800C69CC 21A8E000 */  addu       $s5, $a3, $zero
    /* B71D0 800C69D0 6000B38F */  lw         $s3, 0x60($sp)
    /* B71D4 800C69D4 7000BE8F */  lw         $fp, 0x70($sp)
    /* B71D8 800C69D8 21800000 */  addu       $s0, $zero, $zero
    /* B71DC 800C69DC 6400B18F */  lw         $s1, 0x64($sp)
    /* B71E0 800C69E0 1800A227 */  addiu      $v0, $sp, 0x18
    /* B71E4 800C69E4 1000A2AF */  sw         $v0, 0x10($sp)
    /* B71E8 800C69E8 21202002 */  addu       $a0, $s1, $zero
    /* B71EC 800C69EC 6800A58F */  lw         $a1, 0x68($sp)
    /* B71F0 800C69F0 6C00A68F */  lw         $a2, 0x6C($sp)
    /* B71F4 800C69F4 2A1A030C */  jal        func_800C68A8
    /* B71F8 800C69F8 6400A727 */   addiu     $a3, $sp, 0x64
    /* B71FC 800C69FC 15002012 */  beqz       $s1, .L800C6A54
    /* B7200 800C6A00 21A04000 */   addu      $s4, $v0, $zero
    /* B7204 800C6A04 6400A28F */  lw         $v0, 0x64($sp)
    /* B7208 800C6A08 00000000 */  nop
    /* B720C 800C6A0C 11002212 */  beq        $s1, $v0, .L800C6A54
    /* B7210 800C6A10 00000000 */   nop
    /* B7214 800C6A14 0F007112 */  beq        $s3, $s1, .L800C6A54
    /* B7218 800C6A18 18006202 */   mult      $s3, $v0
    /* B721C 800C6A1C 12980000 */  mflo       $s3
    /* B7220 800C6A20 00000000 */  nop
    /* B7224 800C6A24 00000000 */  nop
    /* B7228 800C6A28 1A007102 */  div        $zero, $s3, $s1
    /* B722C 800C6A2C 02002016 */  bnez       $s1, .L800C6A38
    /* B7230 800C6A30 00000000 */   nop
    /* B7234 800C6A34 0D000700 */  break      7
  .L800C6A38:
    /* B7238 800C6A38 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B723C 800C6A3C 04002116 */  bne        $s1, $at, .L800C6A50
    /* B7240 800C6A40 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B7244 800C6A44 02006116 */  bne        $s3, $at, .L800C6A50
    /* B7248 800C6A48 00000000 */   nop
    /* B724C 800C6A4C 0D000600 */  break      6
  .L800C6A50:
    /* B7250 800C6A50 12980000 */  mflo       $s3
  .L800C6A54:
    /* B7254 800C6A54 21880000 */  addu       $s1, $zero, $zero
    /* B7258 800C6A58 00141500 */  sll        $v0, $s5, 16
    /* B725C 800C6A5C 03AC0200 */  sra        $s5, $v0, 16
  .L800C6A60:
    /* B7260 800C6A60 6400A48F */  lw         $a0, 0x64($sp)
    /* B7264 800C6A64 00000000 */  nop
    /* B7268 800C6A68 2A109300 */  slt        $v0, $a0, $s3
    /* B726C 800C6A6C 02004010 */  beqz       $v0, .L800C6A78
    /* B7270 800C6A70 21186002 */   addu      $v1, $s3, $zero
    /* B7274 800C6A74 21188000 */  addu       $v1, $a0, $zero
  .L800C6A78:
    /* B7278 800C6A78 2A102302 */  slt        $v0, $s1, $v1
    /* B727C 800C6A7C 1E004010 */  beqz       $v0, .L800C6AF8
    /* B7280 800C6A80 003C1200 */   sll       $a3, $s2, 16
    /* B7284 800C6A84 1000B5AF */  sw         $s5, 0x10($sp)
    /* B7288 800C6A88 2000A427 */  addiu      $a0, $sp, 0x20
    /* B728C 800C6A8C 2128C002 */  addu       $a1, $s6, $zero
    /* B7290 800C6A90 2130E002 */  addu       $a2, $s7, $zero
    /* B7294 800C6A94 89EE030C */  jal        func_800FBA24
    /* B7298 800C6A98 033C0700 */   sra       $a3, $a3, 16
    /* B729C 800C6A9C 1400C013 */  beqz       $fp, .L800C6AF0
    /* B72A0 800C6AA0 21905402 */   addu      $s2, $s2, $s4
    /* B72A4 800C6AA4 6400A38F */  lw         $v1, 0x64($sp)
    /* B72A8 800C6AA8 00000000 */  nop
    /* B72AC 800C6AAC 02006228 */  slti       $v0, $v1, 0x2
    /* B72B0 800C6AB0 0F004014 */  bnez       $v0, .L800C6AF0
    /* B72B4 800C6AB4 21206000 */   addu      $a0, $v1, $zero
    /* B72B8 800C6AB8 1800A28F */  lw         $v0, 0x18($sp)
    /* B72BC 800C6ABC 00000000 */  nop
    /* B72C0 800C6AC0 21800202 */  addu       $s0, $s0, $v0
    /* B72C4 800C6AC4 FFFF6224 */  addiu      $v0, $v1, -0x1
    /* B72C8 800C6AC8 2A100202 */  slt        $v0, $s0, $v0
    /* B72CC 800C6ACC 08004014 */  bnez       $v0, .L800C6AF0
    /* B72D0 800C6AD0 00000000 */   nop
  .L800C6AD4:
    /* B72D4 800C6AD4 01000326 */  addiu      $v1, $s0, 0x1
    /* B72D8 800C6AD8 21108000 */  addu       $v0, $a0, $zero
    /* B72DC 800C6ADC 23806200 */  subu       $s0, $v1, $v0
    /* B72E0 800C6AE0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* B72E4 800C6AE4 2A100202 */  slt        $v0, $s0, $v0
    /* B72E8 800C6AE8 FAFF4010 */  beqz       $v0, .L800C6AD4
    /* B72EC 800C6AEC 01005226 */   addiu     $s2, $s2, 0x1
  .L800C6AF0:
    /* B72F0 800C6AF0 981A0308 */  j          .L800C6A60
    /* B72F4 800C6AF4 01003126 */   addiu     $s1, $s1, 0x1
  .L800C6AF8:
    /* B72F8 800C6AF8 4C00BF8F */  lw         $ra, 0x4C($sp)
    /* B72FC 800C6AFC 4800BE8F */  lw         $fp, 0x48($sp)
    /* B7300 800C6B00 4400B78F */  lw         $s7, 0x44($sp)
    /* B7304 800C6B04 4000B68F */  lw         $s6, 0x40($sp)
    /* B7308 800C6B08 3C00B58F */  lw         $s5, 0x3C($sp)
    /* B730C 800C6B0C 3800B48F */  lw         $s4, 0x38($sp)
    /* B7310 800C6B10 3400B38F */  lw         $s3, 0x34($sp)
    /* B7314 800C6B14 3000B28F */  lw         $s2, 0x30($sp)
    /* B7318 800C6B18 2C00B18F */  lw         $s1, 0x2C($sp)
    /* B731C 800C6B1C 2800B08F */  lw         $s0, 0x28($sp)
    /* B7320 800C6B20 5000BD27 */  addiu      $sp, $sp, 0x50
    /* B7324 800C6B24 0800E003 */  jr         $ra
    /* B7328 800C6B28 00000000 */   nop
endlabel func_800C6994
