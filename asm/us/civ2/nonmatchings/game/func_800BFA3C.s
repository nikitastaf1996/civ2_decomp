.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BFA3C, 0x230

glabel func_800BFA3C
    /* B023C 800BFA3C 20FDBD27 */  addiu      $sp, $sp, -0x2E0
    /* B0240 800BFA40 2800A427 */  addiu      $a0, $sp, 0x28
    /* B0244 800BFA44 00200524 */  addiu      $a1, $zero, 0x2000
    /* B0248 800BFA48 D802BFAF */  sw         $ra, 0x2D8($sp)
    /* B024C 800BFA4C D402B3AF */  sw         $s3, 0x2D4($sp)
    /* B0250 800BFA50 D002B2AF */  sw         $s2, 0x2D0($sp)
    /* B0254 800BFA54 CC02B1AF */  sw         $s1, 0x2CC($sp)
    /* B0258 800BFA58 ADC5020C */  jal        func_800B16B4
    /* B025C 800BFA5C C802B0AF */   sw        $s0, 0x2C8($sp)
    /* B0260 800BFA60 21900000 */  addu       $s2, $zero, $zero
    /* B0264 800BFA64 1280133C */  lui        $s3, %hi(D_80121104)
    /* B0268 800BFA68 0411738E */  lw         $s3, %lo(D_80121104)($s3)
    /* B026C 800BFA6C 21880000 */  addu       $s1, $zero, $zero
    /* B0270 800BFA70 5D54020C */  jal        func_80095174
    /* B0274 800BFA74 21206002 */   addu      $a0, $s3, $zero
    /* B0278 800BFA78 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* B027C 800BFA7C F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* B0280 800BFA80 A587030C */  jal        func_800E1E94
    /* B0284 800BFA84 21284000 */   addu      $a1, $v0, $zero
    /* B0288 800BFA88 2800A427 */  addiu      $a0, $sp, 0x28
    /* B028C 800BFA8C 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* B0290 800BFA90 F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* B0294 800BFA94 28DE0634 */  ori        $a2, $zero, 0xDE28
    /* B0298 800BFA98 21380000 */  addu       $a3, $zero, $zero
    /* B029C 800BFA9C 1000A0AF */  sw         $zero, 0x10($sp)
    /* B02A0 800BFAA0 1400A0AF */  sw         $zero, 0x14($sp)
    /* B02A4 800BFAA4 1800A0AF */  sw         $zero, 0x18($sp)
    /* B02A8 800BFAA8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* B02AC 800BFAAC 2CE0020C */  jal        func_800B80B0
    /* B02B0 800BFAB0 2000A0AF */   sw        $zero, 0x20($sp)
  .L800BFAB4:
    /* B02B4 800BFAB4 1280023C */  lui        $v0, %hi(D_8011A282)
    /* B02B8 800BFAB8 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* B02BC 800BFABC 00000000 */  nop
    /* B02C0 800BFAC0 2A104202 */  slt        $v0, $s2, $v0
    /* B02C4 800BFAC4 55004010 */  beqz       $v0, .L800BFC1C
    /* B02C8 800BFAC8 2800B027 */   addiu     $s0, $sp, 0x28
    /* B02CC 800BFACC 1180013C */  lui        $at, %hi(D_80113ED8)
    /* B02D0 800BFAD0 21083100 */  addu       $at, $at, $s1
    /* B02D4 800BFAD4 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* B02D8 800BFAD8 00000000 */  nop
    /* B02DC 800BFADC 4C005314 */  bne        $v0, $s3, .L800BFC10
    /* B02E0 800BFAE0 00000000 */   nop
    /* B02E4 800BFAE4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B02E8 800BFAE8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B02EC 800BFAEC CB1A030C */  jal        func_800C6B2C
    /* B02F0 800BFAF0 00000000 */   nop
    /* B02F4 800BFAF4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B02F8 800BFAF8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B02FC 800BFAFC 1180053C */  lui        $a1, %hi(D_80113EF2)
    /* B0300 800BFB00 F23EA524 */  addiu      $a1, $a1, %lo(D_80113EF2)
    /* B0304 800BFB04 9987030C */  jal        func_800E1E64
    /* B0308 800BFB08 21282502 */   addu      $a1, $s1, $a1
    /* B030C 800BFB0C 21204002 */  addu       $a0, $s2, $zero
    /* B0310 800BFB10 C826020C */  jal        func_80089B20
    /* B0314 800BFB14 01000524 */   addiu     $a1, $zero, 0x1
    /* B0318 800BFB18 11004010 */  beqz       $v0, .L800BFB60
    /* B031C 800BFB1C 00000000 */   nop
    /* B0320 800BFB20 1280043C */  lui        $a0, %hi(D_80121340)
    /* B0324 800BFB24 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0328 800BFB28 CD1A030C */  jal        func_800C6B34
    /* B032C 800BFB2C 00000000 */   nop
    /* B0330 800BFB30 1280043C */  lui        $a0, %hi(D_80121340)
    /* B0334 800BFB34 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0338 800BFB38 151B030C */  jal        func_800C6C54
    /* B033C 800BFB3C 00000000 */   nop
    /* B0340 800BFB40 1280043C */  lui        $a0, %hi(D_80121340)
    /* B0344 800BFB44 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0348 800BFB48 731B030C */  jal        func_800C6DCC
    /* B034C 800BFB4C 99000524 */   addiu     $a1, $zero, 0x99
    /* B0350 800BFB50 1280043C */  lui        $a0, %hi(D_80121340)
    /* B0354 800BFB54 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0358 800BFB58 1F1B030C */  jal        func_800C6C7C
    /* B035C 800BFB5C 00000000 */   nop
  .L800BFB60:
    /* B0360 800BFB60 1180013C */  lui        $at, %hi(D_80113F0D)
    /* B0364 800BFB64 21083100 */  addu       $at, $at, $s1
    /* B0368 800BFB68 0D3F2380 */  lb         $v1, %lo(D_80113F0D)($at)
    /* B036C 800BFB6C 00000000 */  nop
    /* B0370 800BFB70 DAFF6228 */  slti       $v0, $v1, -0x26
    /* B0374 800BFB74 22004010 */  beqz       $v0, .L800BFC00
    /* B0378 800BFB78 2800A427 */   addiu     $a0, $sp, 0x28
    /* B037C 800BFB7C 0300601C */  bgtz       $v1, .L800BFB8C
    /* B0380 800BFB80 21806000 */   addu      $s0, $v1, $zero
    /* B0384 800BFB84 27100300 */  nor        $v0, $zero, $v1
    /* B0388 800BFB88 01005024 */  addiu      $s0, $v0, 0x1
  .L800BFB8C:
    /* B038C 800BFB8C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B0390 800BFB90 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0394 800BFB94 CD1A030C */  jal        func_800C6B34
    /* B0398 800BFB98 00000000 */   nop
    /* B039C 800BFB9C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B03A0 800BFBA0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B03A4 800BFBA4 151B030C */  jal        func_800C6C54
    /* B03A8 800BFBA8 00000000 */   nop
    /* B03AC 800BFBAC C0101000 */  sll        $v0, $s0, 3
    /* B03B0 800BFBB0 1180013C */  lui        $at, %hi(D_8010D064)
    /* B03B4 800BFBB4 21082200 */  addu       $at, $at, $v0
    /* B03B8 800BFBB8 64D0258C */  lw         $a1, %lo(D_8010D064)($at)
    /* B03BC 800BFBBC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B03C0 800BFBC0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B03C4 800BFBC4 651B030C */  jal        func_800C6D94
    /* B03C8 800BFBC8 00000000 */   nop
    /* B03CC 800BFBCC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B03D0 800BFBD0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B03D4 800BFBD4 CD1A030C */  jal        func_800C6B34
    /* B03D8 800BFBD8 00000000 */   nop
    /* B03DC 800BFBDC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B03E0 800BFBE0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B03E4 800BFBE4 731B030C */  jal        func_800C6DCC
    /* B03E8 800BFBE8 F4000524 */   addiu     $a1, $zero, 0xF4
    /* B03EC 800BFBEC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B03F0 800BFBF0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B03F4 800BFBF4 1F1B030C */  jal        func_800C6C7C
    /* B03F8 800BFBF8 00000000 */   nop
    /* B03FC 800BFBFC 2800A427 */  addiu      $a0, $sp, 0x28
  .L800BFC00:
    /* B0400 800BFC00 1280053C */  lui        $a1, %hi(D_80121340)
    /* B0404 800BFC04 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B0408 800BFC08 A8C9020C */  jal        func_800B26A0
    /* B040C 800BFC0C 21304002 */   addu      $a2, $s2, $zero
  .L800BFC10:
    /* B0410 800BFC10 58003126 */  addiu      $s1, $s1, 0x58
    /* B0414 800BFC14 ADFE0208 */  j          .L800BFAB4
    /* B0418 800BFC18 01005226 */   addiu     $s2, $s2, 0x1
  .L800BFC1C:
    /* B041C 800BFC1C 21200002 */  addu       $a0, $s0, $zero
    /* B0420 800BFC20 52DF020C */  jal        func_800B7D48
    /* B0424 800BFC24 21280000 */   addu      $a1, $zero, $zero
    /* B0428 800BFC28 1280043C */  lui        $a0, %hi(D_80120DB0)
    /* B042C 800BFC2C B00D8424 */  addiu      $a0, $a0, %lo(D_80120DB0)
    /* B0430 800BFC30 31DE030C */  jal        func_800F78C4
    /* B0434 800BFC34 00000000 */   nop
    /* B0438 800BFC38 01000224 */  addiu      $v0, $zero, 0x1
    /* B043C 800BFC3C 300B82AF */  sw         $v0, %gp_rel(D_80159008)($gp)
    /* B0440 800BFC40 21200002 */  addu       $a0, $s0, $zero
    /* B0444 800BFC44 0AC7020C */  jal        func_800B1C28
    /* B0448 800BFC48 02000524 */   addiu     $a1, $zero, 0x2
    /* B044C 800BFC4C D802BF8F */  lw         $ra, 0x2D8($sp)
    /* B0450 800BFC50 D402B38F */  lw         $s3, 0x2D4($sp)
    /* B0454 800BFC54 D002B28F */  lw         $s2, 0x2D0($sp)
    /* B0458 800BFC58 CC02B18F */  lw         $s1, 0x2CC($sp)
    /* B045C 800BFC5C C802B08F */  lw         $s0, 0x2C8($sp)
    /* B0460 800BFC60 E002BD27 */  addiu      $sp, $sp, 0x2E0
    /* B0464 800BFC64 0800E003 */  jr         $ra
    /* B0468 800BFC68 00000000 */   nop
endlabel func_800BFA3C
