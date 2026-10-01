.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DFA14, 0x274

glabel func_800DFA14
    /* D0214 800DFA14 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* D0218 800DFA18 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* D021C 800DFA1C 6800BEAF */  sw         $fp, 0x68($sp)
    /* D0220 800DFA20 6400B7AF */  sw         $s7, 0x64($sp)
    /* D0224 800DFA24 6000B6AF */  sw         $s6, 0x60($sp)
    /* D0228 800DFA28 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* D022C 800DFA2C 5800B4AF */  sw         $s4, 0x58($sp)
    /* D0230 800DFA30 5400B3AF */  sw         $s3, 0x54($sp)
    /* D0234 800DFA34 5000B2AF */  sw         $s2, 0x50($sp)
    /* D0238 800DFA38 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* D023C 800DFA3C 4800B0AF */  sw         $s0, 0x48($sp)
    /* D0240 800DFA40 2800A4AF */  sw         $a0, 0x28($sp)
    /* D0244 800DFA44 3000A5AF */  sw         $a1, 0x30($sp)
    /* D0248 800DFA48 3800A6AF */  sw         $a2, 0x38($sp)
    /* D024C 800DFA4C 4000A7AF */  sw         $a3, 0x40($sp)
    /* D0250 800DFA50 E7031E24 */  addiu      $fp, $zero, 0x3E7
    /* D0254 800DFA54 FFFF1724 */  addiu      $s7, $zero, -0x1
    /* D0258 800DFA58 E7031624 */  addiu      $s6, $zero, 0x3E7
    /* D025C 800DFA5C A80D8293 */  lbu        $v0, %gp_rel(D_80159280)($gp)
    /* D0260 800DFA60 00000000 */  nop
    /* D0264 800DFA64 7B004014 */  bnez       $v0, .L800DFC54
    /* D0268 800DFA68 FFFF1524 */   addiu     $s5, $zero, -0x1
    /* D026C 800DFA6C 40A00600 */  sll        $s4, $a2, 1
    /* D0270 800DFA70 23981400 */  negu       $s3, $s4
  .L800DFA74:
    /* D0274 800DFA74 2A109302 */  slt        $v0, $s4, $s3
    /* D0278 800DFA78 76004014 */  bnez       $v0, .L800DFC54
    /* D027C 800DFA7C 00000000 */   nop
    /* D0280 800DFA80 2800A88F */  lw         $t0, 0x28($sp)
    /* D0284 800DFA84 173B030C */  jal        func_800CEC5C
    /* D0288 800DFA88 21201301 */   addu      $a0, $t0, $s3
    /* D028C 800DFA8C 21884000 */  addu       $s1, $v0, $zero
    /* D0290 800DFA90 6E002006 */  bltz       $s1, .L800DFC4C
    /* D0294 800DFA94 00000000 */   nop
    /* D0298 800DFA98 1280023C */  lui        $v0, %hi(D_8011C308)
    /* D029C 800DFA9C 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* D02A0 800DFAA0 00000000 */  nop
    /* D02A4 800DFAA4 2A102202 */  slt        $v0, $s1, $v0
    /* D02A8 800DFAA8 68004010 */  beqz       $v0, .L800DFC4C
    /* D02AC 800DFAAC 23901400 */   negu      $s2, $s4
  .L800DFAB0:
    /* D02B0 800DFAB0 2A109202 */  slt        $v0, $s4, $s2
    /* D02B4 800DFAB4 65004014 */  bnez       $v0, .L800DFC4C
    /* D02B8 800DFAB8 21206002 */   addu      $a0, $s3, $zero
    /* D02BC 800DFABC 823B030C */  jal        func_800CEE08
    /* D02C0 800DFAC0 21284002 */   addu      $a1, $s2, $zero
    /* D02C4 800DFAC4 3800A88F */  lw         $t0, 0x38($sp)
    /* D02C8 800DFAC8 00000000 */  nop
    /* D02CC 800DFACC 2A100201 */  slt        $v0, $t0, $v0
    /* D02D0 800DFAD0 5C004014 */  bnez       $v0, .L800DFC44
    /* D02D4 800DFAD4 00000000 */   nop
    /* D02D8 800DFAD8 3000A88F */  lw         $t0, 0x30($sp)
    /* D02DC 800DFADC 00000000 */  nop
    /* D02E0 800DFAE0 21801201 */  addu       $s0, $t0, $s2
    /* D02E4 800DFAE4 57000006 */  bltz       $s0, .L800DFC44
    /* D02E8 800DFAE8 00000000 */   nop
    /* D02EC 800DFAEC 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* D02F0 800DFAF0 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* D02F4 800DFAF4 00000000 */  nop
    /* D02F8 800DFAF8 2A100202 */  slt        $v0, $s0, $v0
    /* D02FC 800DFAFC 51004010 */  beqz       $v0, .L800DFC44
    /* D0300 800DFB00 01002232 */   andi      $v0, $s1, 0x1
    /* D0304 800DFB04 02004010 */  beqz       $v0, .L800DFB10
    /* D0308 800DFB08 01000232 */   andi      $v0, $s0, 0x1
    /* D030C 800DFB0C FFFF3126 */  addiu      $s1, $s1, -0x1
  .L800DFB10:
    /* D0310 800DFB10 02004010 */  beqz       $v0, .L800DFB1C
    /* D0314 800DFB14 00000000 */   nop
    /* D0318 800DFB18 01001026 */  addiu      $s0, $s0, 0x1
  .L800DFB1C:
    /* D031C 800DFB1C 0D000006 */  bltz       $s0, .L800DFB54
    /* D0320 800DFB20 21180000 */   addu      $v1, $zero, $zero
    /* D0324 800DFB24 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* D0328 800DFB28 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* D032C 800DFB2C 00000000 */  nop
    /* D0330 800DFB30 2A100202 */  slt        $v0, $s0, $v0
    /* D0334 800DFB34 07004010 */  beqz       $v0, .L800DFB54
    /* D0338 800DFB38 00000000 */   nop
    /* D033C 800DFB3C 05002006 */  bltz       $s1, .L800DFB54
    /* D0340 800DFB40 00000000 */   nop
    /* D0344 800DFB44 1280023C */  lui        $v0, %hi(D_8011C308)
    /* D0348 800DFB48 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* D034C 800DFB4C 00000000 */  nop
    /* D0350 800DFB50 2A182202 */  slt        $v1, $s1, $v0
  .L800DFB54:
    /* D0354 800DFB54 3B006010 */  beqz       $v1, .L800DFC44
    /* D0358 800DFB58 21202002 */   addu      $a0, $s1, $zero
    /* D035C 800DFB5C 21280002 */  addu       $a1, $s0, $zero
    /* D0360 800DFB60 1800A627 */  addiu      $a2, $sp, 0x18
    /* D0364 800DFB64 EE7D030C */  jal        func_800DF7B8
    /* D0368 800DFB68 1C00A727 */   addiu     $a3, $sp, 0x1C
    /* D036C 800DFB6C 21202002 */  addu       $a0, $s1, $zero
    /* D0370 800DFB70 187E030C */  jal        func_800DF860
    /* D0374 800DFB74 21280002 */   addu      $a1, $s0, $zero
    /* D0378 800DFB78 1480053C */  lui        $a1, %hi(D_801388EC)
    /* D037C 800DFB7C EC88A58C */  lw         $a1, %lo(D_801388EC)($a1)
    /* D0380 800DFB80 00000000 */  nop
    /* D0384 800DFB84 0C00A394 */  lhu        $v1, 0xC($a1)
    /* D0388 800DFB88 1800A497 */  lhu        $a0, 0x18($sp)
    /* D038C 800DFB8C 00000000 */  nop
    /* D0390 800DFB90 21186400 */  addu       $v1, $v1, $a0
    /* D0394 800DFB94 2000A3A7 */  sh         $v1, 0x20($sp)
    /* D0398 800DFB98 0E00A394 */  lhu        $v1, 0xE($a1)
    /* D039C 800DFB9C 1C00A497 */  lhu        $a0, 0x1C($sp)
    /* D03A0 800DFBA0 00000000 */  nop
    /* D03A4 800DFBA4 21186400 */  addu       $v1, $v1, $a0
    /* D03A8 800DFBA8 2200A3A7 */  sh         $v1, 0x22($sp)
    /* D03AC 800DFBAC 1F004530 */  andi       $a1, $v0, 0x1F
    /* D03B0 800DFBB0 E0034630 */  andi       $a2, $v0, 0x3E0
    /* D03B4 800DFBB4 007C4230 */  andi       $v0, $v0, 0x7C00
    /* D03B8 800DFBB8 2000A427 */  addiu      $a0, $sp, 0x20
    /* D03BC 800DFBBC C0280500 */  sll        $a1, $a1, 3
    /* D03C0 800DFBC0 82300600 */  srl        $a2, $a2, 2
    /* D03C4 800DFBC4 8D8D030C */  jal        ClearImage
    /* D03C8 800DFBC8 C2390200 */   srl       $a3, $v0, 7
    /* D03CC 800DFBCC 4000A88F */  lw         $t0, 0x40($sp)
    /* D03D0 800DFBD0 00000000 */  nop
    /* D03D4 800DFBD4 1B000011 */  beqz       $t0, .L800DFC44
    /* D03D8 800DFBD8 00000000 */   nop
    /* D03DC 800DFBDC 1800A58F */  lw         $a1, 0x18($sp)
    /* D03E0 800DFBE0 3410828F */  lw         $v0, %gp_rel(D_8015950C)($gp)
    /* D03E4 800DFBE4 00000000 */  nop
    /* D03E8 800DFBE8 2120A200 */  addu       $a0, $a1, $v0
    /* D03EC 800DFBEC FFFF8424 */  addiu      $a0, $a0, -0x1
    /* D03F0 800DFBF0 1C00A38F */  lw         $v1, 0x1C($sp)
    /* D03F4 800DFBF4 3810828F */  lw         $v0, %gp_rel(D_80159510)($gp)
    /* D03F8 800DFBF8 00000000 */  nop
    /* D03FC 800DFBFC 21186200 */  addu       $v1, $v1, $v0
    /* D0400 800DFC00 2A10BE00 */  slt        $v0, $a1, $fp
    /* D0404 800DFC04 02004010 */  beqz       $v0, .L800DFC10
    /* D0408 800DFC08 FFFF6324 */   addiu     $v1, $v1, -0x1
    /* D040C 800DFC0C 21F0A000 */  addu       $fp, $a1, $zero
  .L800DFC10:
    /* D0410 800DFC10 2A10E402 */  slt        $v0, $s7, $a0
    /* D0414 800DFC14 02004010 */  beqz       $v0, .L800DFC20
    /* D0418 800DFC18 00000000 */   nop
    /* D041C 800DFC1C 21B88000 */  addu       $s7, $a0, $zero
  .L800DFC20:
    /* D0420 800DFC20 1C00A48F */  lw         $a0, 0x1C($sp)
    /* D0424 800DFC24 00000000 */  nop
    /* D0428 800DFC28 2A109600 */  slt        $v0, $a0, $s6
    /* D042C 800DFC2C 02004010 */  beqz       $v0, .L800DFC38
    /* D0430 800DFC30 2A10A302 */   slt       $v0, $s5, $v1
    /* D0434 800DFC34 21B08000 */  addu       $s6, $a0, $zero
  .L800DFC38:
    /* D0438 800DFC38 02004010 */  beqz       $v0, .L800DFC44
    /* D043C 800DFC3C 00000000 */   nop
    /* D0440 800DFC40 21A86000 */  addu       $s5, $v1, $zero
  .L800DFC44:
    /* D0444 800DFC44 AC7E0308 */  j          .L800DFAB0
    /* D0448 800DFC48 01005226 */   addiu     $s2, $s2, 0x1
  .L800DFC4C:
    /* D044C 800DFC4C 9D7E0308 */  j          .L800DFA74
    /* D0450 800DFC50 02007326 */   addiu     $s3, $s3, 0x2
  .L800DFC54:
    /* D0454 800DFC54 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* D0458 800DFC58 6800BE8F */  lw         $fp, 0x68($sp)
    /* D045C 800DFC5C 6400B78F */  lw         $s7, 0x64($sp)
    /* D0460 800DFC60 6000B68F */  lw         $s6, 0x60($sp)
    /* D0464 800DFC64 5C00B58F */  lw         $s5, 0x5C($sp)
    /* D0468 800DFC68 5800B48F */  lw         $s4, 0x58($sp)
    /* D046C 800DFC6C 5400B38F */  lw         $s3, 0x54($sp)
    /* D0470 800DFC70 5000B28F */  lw         $s2, 0x50($sp)
    /* D0474 800DFC74 4C00B18F */  lw         $s1, 0x4C($sp)
    /* D0478 800DFC78 4800B08F */  lw         $s0, 0x48($sp)
    /* D047C 800DFC7C 7000BD27 */  addiu      $sp, $sp, 0x70
    /* D0480 800DFC80 0800E003 */  jr         $ra
    /* D0484 800DFC84 00000000 */   nop
endlabel func_800DFA14
