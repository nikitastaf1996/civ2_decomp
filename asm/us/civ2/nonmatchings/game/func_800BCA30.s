.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BCA30, 0x380

glabel func_800BCA30
    /* AD230 800BCA30 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* AD234 800BCA34 5400B5AF */  sw         $s5, 0x54($sp)
    /* AD238 800BCA38 7800B58F */  lw         $s5, 0x78($sp)
    /* AD23C 800BCA3C 1680023C */  lui        $v0, %hi(D_80158864)
    /* AD240 800BCA40 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* AD244 800BCA44 4800B2AF */  sw         $s2, 0x48($sp)
    /* AD248 800BCA48 21908000 */  addu       $s2, $a0, $zero
    /* AD24C 800BCA4C 5C00B7AF */  sw         $s7, 0x5C($sp)
    /* AD250 800BCA50 21B8A000 */  addu       $s7, $a1, $zero
    /* AD254 800BCA54 6000BEAF */  sw         $fp, 0x60($sp)
    /* AD258 800BCA58 7C00BE8F */  lw         $fp, 0x7C($sp)
    /* AD25C 800BCA5C 0F000524 */  addiu      $a1, $zero, 0xF
    /* AD260 800BCA60 4C00B3AF */  sw         $s3, 0x4C($sp)
    /* AD264 800BCA64 2198E000 */  addu       $s3, $a3, $zero
    /* AD268 800BCA68 6400BFAF */  sw         $ra, 0x64($sp)
    /* AD26C 800BCA6C 5800B6AF */  sw         $s6, 0x58($sp)
    /* AD270 800BCA70 5000B4AF */  sw         $s4, 0x50($sp)
    /* AD274 800BCA74 4400B1AF */  sw         $s1, 0x44($sp)
    /* AD278 800BCA78 4000B0AF */  sw         $s0, 0x40($sp)
    /* AD27C 800BCA7C 09004480 */  lb         $a0, 0x9($v0)
    /* AD280 800BCA80 21380000 */  addu       $a3, $zero, $zero
    /* AD284 800BCA84 2A1A030C */  jal        func_800C68A8
    /* AD288 800BCA88 1000A0AF */   sw        $zero, 0x10($sp)
    /* AD28C 800BCA8C 21800000 */  addu       $s0, $zero, $zero
    /* AD290 800BCA90 1680033C */  lui        $v1, %hi(D_80158864)
    /* AD294 800BCA94 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* AD298 800BCA98 21880000 */  addu       $s1, $zero, $zero
    /* AD29C 800BCA9C 3400638C */  lw         $v1, 0x34($v1)
    /* AD2A0 800BCAA0 00000000 */  nop
    /* AD2A4 800BCAA4 821E0300 */  srl        $v1, $v1, 26
    /* AD2A8 800BCAA8 1680013C */  lui        $at, %hi(D_8015858C)
    /* AD2AC 800BCAAC 8C8523AC */  sw         $v1, %lo(D_8015858C)($at)
    /* AD2B0 800BCAB0 2500601A */  blez       $s3, .L800BCB48
    /* AD2B4 800BCAB4 21A04000 */   addu      $s4, $v0, $zero
    /* AD2B8 800BCAB8 00141700 */  sll        $v0, $s7, 16
    /* AD2BC 800BCABC 03B40200 */  sra        $s6, $v0, 16
  .L800BCAC0:
    /* AD2C0 800BCAC0 1680023C */  lui        $v0, %hi(D_80158864)
    /* AD2C4 800BCAC4 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* AD2C8 800BCAC8 00000000 */  nop
    /* AD2CC 800BCACC 08004480 */  lb         $a0, 0x8($v0)
    /* AD2D0 800BCAD0 1663030C */  jal        func_800D8C58
    /* AD2D4 800BCAD4 01003126 */   addiu     $s1, $s1, 0x1
    /* AD2D8 800BCAD8 1800A427 */  addiu      $a0, $sp, 0x18
    /* AD2DC 800BCADC 40180200 */  sll        $v1, $v0, 1
    /* AD2E0 800BCAE0 21186200 */  addu       $v1, $v1, $v0
    /* AD2E4 800BCAE4 00290300 */  sll        $a1, $v1, 4
    /* AD2E8 800BCAE8 21186500 */  addu       $v1, $v1, $a1
    /* AD2EC 800BCAEC C0180300 */  sll        $v1, $v1, 3
    /* AD2F0 800BCAF0 23186200 */  subu       $v1, $v1, $v0
    /* AD2F4 800BCAF4 80180300 */  sll        $v1, $v1, 2
    /* AD2F8 800BCAF8 1380023C */  lui        $v0, %hi(D_8012E3EC)
    /* AD2FC 800BCAFC ECE34224 */  addiu      $v0, $v0, %lo(D_8012E3EC)
    /* AD300 800BCB00 21186200 */  addu       $v1, $v1, $v0
    /* AD304 800BCB04 01000232 */  andi       $v0, $s0, 0x1
    /* AD308 800BCB08 C0280200 */  sll        $a1, $v0, 3
    /* AD30C 800BCB0C 2128A200 */  addu       $a1, $a1, $v0
    /* AD310 800BCB10 80280500 */  sll        $a1, $a1, 2
    /* AD314 800BCB14 2128A200 */  addu       $a1, $a1, $v0
    /* AD318 800BCB18 80280500 */  sll        $a1, $a1, 2
    /* AD31C 800BCB1C 21286500 */  addu       $a1, $v1, $a1
    /* AD320 800BCB20 1280063C */  lui        $a2, %hi(D_80120D84)
    /* AD324 800BCB24 840DC624 */  addiu      $a2, $a2, %lo(D_80120D84)
    /* AD328 800BCB28 003C1200 */  sll        $a3, $s2, 16
    /* AD32C 800BCB2C 033C0700 */  sra        $a3, $a3, 16
    /* AD330 800BCB30 89EE030C */  jal        func_800FBA24
    /* AD334 800BCB34 1000B6AF */   sw        $s6, 0x10($sp)
    /* AD338 800BCB38 21905402 */  addu       $s2, $s2, $s4
    /* AD33C 800BCB3C 2A103302 */  slt        $v0, $s1, $s3
    /* AD340 800BCB40 DFFF4014 */  bnez       $v0, .L800BCAC0
    /* AD344 800BCB44 01001026 */   addiu     $s0, $s0, 0x1
  .L800BCB48:
    /* AD348 800BCB48 21107502 */  addu       $v0, $s3, $s5
    /* AD34C 800BCB4C 1680053C */  lui        $a1, %hi(D_80158864)
    /* AD350 800BCB50 6488A58C */  lw         $a1, %lo(D_80158864)($a1)
    /* AD354 800BCB54 1680043C */  lui        $a0, %hi(D_8015858C)
    /* AD358 800BCB58 8C85848C */  lw         $a0, %lo(D_8015858C)($a0)
    /* AD35C 800BCB5C 0900A380 */  lb         $v1, 0x9($a1)
    /* AD360 800BCB60 21104400 */  addu       $v0, $v0, $a0
    /* AD364 800BCB64 23186200 */  subu       $v1, $v1, $v0
    /* AD368 800BCB68 2A006018 */  blez       $v1, .L800BCC14
    /* AD36C 800BCB6C 21880000 */   addu      $s1, $zero, $zero
    /* AD370 800BCB70 00141700 */  sll        $v0, $s7, 16
    /* AD374 800BCB74 03B40200 */  sra        $s6, $v0, 16
  .L800BCB78:
    /* AD378 800BCB78 0800A480 */  lb         $a0, 0x8($a1)
    /* AD37C 800BCB7C 1663030C */  jal        func_800D8C58
    /* AD380 800BCB80 01003126 */   addiu     $s1, $s1, 0x1
    /* AD384 800BCB84 1800A427 */  addiu      $a0, $sp, 0x18
    /* AD388 800BCB88 40180200 */  sll        $v1, $v0, 1
    /* AD38C 800BCB8C 21186200 */  addu       $v1, $v1, $v0
    /* AD390 800BCB90 00290300 */  sll        $a1, $v1, 4
    /* AD394 800BCB94 21186500 */  addu       $v1, $v1, $a1
    /* AD398 800BCB98 C0180300 */  sll        $v1, $v1, 3
    /* AD39C 800BCB9C 23186200 */  subu       $v1, $v1, $v0
    /* AD3A0 800BCBA0 80180300 */  sll        $v1, $v1, 2
    /* AD3A4 800BCBA4 1380023C */  lui        $v0, %hi(D_8012E514)
    /* AD3A8 800BCBA8 14E54224 */  addiu      $v0, $v0, %lo(D_8012E514)
    /* AD3AC 800BCBAC 21186200 */  addu       $v1, $v1, $v0
    /* AD3B0 800BCBB0 01000232 */  andi       $v0, $s0, 0x1
    /* AD3B4 800BCBB4 C0280200 */  sll        $a1, $v0, 3
    /* AD3B8 800BCBB8 2128A200 */  addu       $a1, $a1, $v0
    /* AD3BC 800BCBBC 80280500 */  sll        $a1, $a1, 2
    /* AD3C0 800BCBC0 2128A200 */  addu       $a1, $a1, $v0
    /* AD3C4 800BCBC4 80280500 */  sll        $a1, $a1, 2
    /* AD3C8 800BCBC8 21286500 */  addu       $a1, $v1, $a1
    /* AD3CC 800BCBCC 1280063C */  lui        $a2, %hi(D_80120D84)
    /* AD3D0 800BCBD0 840DC624 */  addiu      $a2, $a2, %lo(D_80120D84)
    /* AD3D4 800BCBD4 003C1200 */  sll        $a3, $s2, 16
    /* AD3D8 800BCBD8 033C0700 */  sra        $a3, $a3, 16
    /* AD3DC 800BCBDC 89EE030C */  jal        func_800FBA24
    /* AD3E0 800BCBE0 1000B6AF */   sw        $s6, 0x10($sp)
    /* AD3E4 800BCBE4 21905402 */  addu       $s2, $s2, $s4
    /* AD3E8 800BCBE8 21187502 */  addu       $v1, $s3, $s5
    /* AD3EC 800BCBEC 1680053C */  lui        $a1, %hi(D_80158864)
    /* AD3F0 800BCBF0 6488A58C */  lw         $a1, %lo(D_80158864)($a1)
    /* AD3F4 800BCBF4 1680043C */  lui        $a0, %hi(D_8015858C)
    /* AD3F8 800BCBF8 8C85848C */  lw         $a0, %lo(D_8015858C)($a0)
    /* AD3FC 800BCBFC 0900A280 */  lb         $v0, 0x9($a1)
    /* AD400 800BCC00 21186400 */  addu       $v1, $v1, $a0
    /* AD404 800BCC04 23104300 */  subu       $v0, $v0, $v1
    /* AD408 800BCC08 2A102202 */  slt        $v0, $s1, $v0
    /* AD40C 800BCC0C DAFF4014 */  bnez       $v0, .L800BCB78
    /* AD410 800BCC10 01001026 */   addiu     $s0, $s0, 0x1
  .L800BCC14:
    /* AD414 800BCC14 2B00A01A */  blez       $s5, .L800BCCC4
    /* AD418 800BCC18 21880000 */   addu      $s1, $zero, $zero
    /* AD41C 800BCC1C 00141700 */  sll        $v0, $s7, 16
    /* AD420 800BCC20 03B40200 */  sra        $s6, $v0, 16
  .L800BCC24:
    /* AD424 800BCC24 2310BE02 */  subu       $v0, $s5, $fp
    /* AD428 800BCC28 2A102202 */  slt        $v0, $s1, $v0
    /* AD42C 800BCC2C 02004014 */  bnez       $v0, .L800BCC38
    /* AD430 800BCC30 04001324 */   addiu     $s3, $zero, 0x4
    /* AD434 800BCC34 06001324 */  addiu      $s3, $zero, 0x6
  .L800BCC38:
    /* AD438 800BCC38 1680023C */  lui        $v0, %hi(D_80158864)
    /* AD43C 800BCC3C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* AD440 800BCC40 00000000 */  nop
    /* AD444 800BCC44 08004480 */  lb         $a0, 0x8($v0)
    /* AD448 800BCC48 1663030C */  jal        func_800D8C58
    /* AD44C 800BCC4C 01003126 */   addiu     $s1, $s1, 0x1
    /* AD450 800BCC50 1800A427 */  addiu      $a0, $sp, 0x18
    /* AD454 800BCC54 40300200 */  sll        $a2, $v0, 1
    /* AD458 800BCC58 2130C200 */  addu       $a2, $a2, $v0
    /* AD45C 800BCC5C 00190600 */  sll        $v1, $a2, 4
    /* AD460 800BCC60 2130C300 */  addu       $a2, $a2, $v1
    /* AD464 800BCC64 C0300600 */  sll        $a2, $a2, 3
    /* AD468 800BCC68 2330C200 */  subu       $a2, $a2, $v0
    /* AD46C 800BCC6C 80300600 */  sll        $a2, $a2, 2
    /* AD470 800BCC70 1380023C */  lui        $v0, %hi(D_8012E3EC)
    /* AD474 800BCC74 ECE34224 */  addiu      $v0, $v0, %lo(D_8012E3EC)
    /* AD478 800BCC78 2130C200 */  addu       $a2, $a2, $v0
    /* AD47C 800BCC7C 01000232 */  andi       $v0, $s0, 0x1
    /* AD480 800BCC80 21106202 */  addu       $v0, $s3, $v0
    /* AD484 800BCC84 C0280200 */  sll        $a1, $v0, 3
    /* AD488 800BCC88 2128A200 */  addu       $a1, $a1, $v0
    /* AD48C 800BCC8C 80280500 */  sll        $a1, $a1, 2
    /* AD490 800BCC90 2128A200 */  addu       $a1, $a1, $v0
    /* AD494 800BCC94 80280500 */  sll        $a1, $a1, 2
    /* AD498 800BCC98 2128C500 */  addu       $a1, $a2, $a1
    /* AD49C 800BCC9C 1280063C */  lui        $a2, %hi(D_80120D84)
    /* AD4A0 800BCCA0 840DC624 */  addiu      $a2, $a2, %lo(D_80120D84)
    /* AD4A4 800BCCA4 003C1200 */  sll        $a3, $s2, 16
    /* AD4A8 800BCCA8 033C0700 */  sra        $a3, $a3, 16
    /* AD4AC 800BCCAC 89EE030C */  jal        func_800FBA24
    /* AD4B0 800BCCB0 1000B6AF */   sw        $s6, 0x10($sp)
    /* AD4B4 800BCCB4 21905402 */  addu       $s2, $s2, $s4
    /* AD4B8 800BCCB8 2A103502 */  slt        $v0, $s1, $s5
    /* AD4BC 800BCCBC D9FF4014 */  bnez       $v0, .L800BCC24
    /* AD4C0 800BCCC0 01001026 */   addiu     $s0, $s0, 0x1
  .L800BCCC4:
    /* AD4C4 800BCCC4 1680023C */  lui        $v0, %hi(D_8015858C)
    /* AD4C8 800BCCC8 8C85428C */  lw         $v0, %lo(D_8015858C)($v0)
    /* AD4CC 800BCCCC 00000000 */  nop
    /* AD4D0 800BCCD0 29004018 */  blez       $v0, .L800BCD78
    /* AD4D4 800BCCD4 21880000 */   addu      $s1, $zero, $zero
    /* AD4D8 800BCCD8 00141700 */  sll        $v0, $s7, 16
    /* AD4DC 800BCCDC 039C0200 */  sra        $s3, $v0, 16
  .L800BCCE0:
    /* AD4E0 800BCCE0 1680023C */  lui        $v0, %hi(D_80158864)
    /* AD4E4 800BCCE4 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* AD4E8 800BCCE8 00000000 */  nop
    /* AD4EC 800BCCEC 08004480 */  lb         $a0, 0x8($v0)
    /* AD4F0 800BCCF0 1663030C */  jal        func_800D8C58
    /* AD4F4 800BCCF4 00000000 */   nop
    /* AD4F8 800BCCF8 21202002 */  addu       $a0, $s1, $zero
    /* AD4FC 800BCCFC C351000C */  jal        func_8001470C
    /* AD500 800BCD00 21804000 */   addu      $s0, $v0, $zero
    /* AD504 800BCD04 1800A427 */  addiu      $a0, $sp, 0x18
    /* AD508 800BCD08 40181000 */  sll        $v1, $s0, 1
    /* AD50C 800BCD0C 21187000 */  addu       $v1, $v1, $s0
    /* AD510 800BCD10 00290300 */  sll        $a1, $v1, 4
    /* AD514 800BCD14 21186500 */  addu       $v1, $v1, $a1
    /* AD518 800BCD18 C0180300 */  sll        $v1, $v1, 3
    /* AD51C 800BCD1C 23187000 */  subu       $v1, $v1, $s0
    /* AD520 800BCD20 80180300 */  sll        $v1, $v1, 2
    /* AD524 800BCD24 1380053C */  lui        $a1, %hi(D_8012E7F8)
    /* AD528 800BCD28 F8E7A524 */  addiu      $a1, $a1, %lo(D_8012E7F8)
    /* AD52C 800BCD2C 21186500 */  addu       $v1, $v1, $a1
    /* AD530 800BCD30 C0280200 */  sll        $a1, $v0, 3
    /* AD534 800BCD34 2128A200 */  addu       $a1, $a1, $v0
    /* AD538 800BCD38 80280500 */  sll        $a1, $a1, 2
    /* AD53C 800BCD3C 2128A200 */  addu       $a1, $a1, $v0
    /* AD540 800BCD40 80280500 */  sll        $a1, $a1, 2
    /* AD544 800BCD44 21286500 */  addu       $a1, $v1, $a1
    /* AD548 800BCD48 1280063C */  lui        $a2, %hi(D_80120D84)
    /* AD54C 800BCD4C 840DC624 */  addiu      $a2, $a2, %lo(D_80120D84)
    /* AD550 800BCD50 003C1200 */  sll        $a3, $s2, 16
    /* AD554 800BCD54 033C0700 */  sra        $a3, $a3, 16
    /* AD558 800BCD58 89EE030C */  jal        func_800FBA24
    /* AD55C 800BCD5C 1000B3AF */   sw        $s3, 0x10($sp)
    /* AD560 800BCD60 1680023C */  lui        $v0, %hi(D_8015858C)
    /* AD564 800BCD64 8C85428C */  lw         $v0, %lo(D_8015858C)($v0)
    /* AD568 800BCD68 01003126 */  addiu      $s1, $s1, 0x1
    /* AD56C 800BCD6C 2A102202 */  slt        $v0, $s1, $v0
    /* AD570 800BCD70 DBFF4014 */  bnez       $v0, .L800BCCE0
    /* AD574 800BCD74 21905402 */   addu      $s2, $s2, $s4
  .L800BCD78:
    /* AD578 800BCD78 21108002 */  addu       $v0, $s4, $zero
    /* AD57C 800BCD7C 6400BF8F */  lw         $ra, 0x64($sp)
    /* AD580 800BCD80 6000BE8F */  lw         $fp, 0x60($sp)
    /* AD584 800BCD84 5C00B78F */  lw         $s7, 0x5C($sp)
    /* AD588 800BCD88 5800B68F */  lw         $s6, 0x58($sp)
    /* AD58C 800BCD8C 5400B58F */  lw         $s5, 0x54($sp)
    /* AD590 800BCD90 5000B48F */  lw         $s4, 0x50($sp)
    /* AD594 800BCD94 4C00B38F */  lw         $s3, 0x4C($sp)
    /* AD598 800BCD98 4800B28F */  lw         $s2, 0x48($sp)
    /* AD59C 800BCD9C 4400B18F */  lw         $s1, 0x44($sp)
    /* AD5A0 800BCDA0 4000B08F */  lw         $s0, 0x40($sp)
    /* AD5A4 800BCDA4 6800BD27 */  addiu      $sp, $sp, 0x68
    /* AD5A8 800BCDA8 0800E003 */  jr         $ra
    /* AD5AC 800BCDAC 00000000 */   nop
endlabel func_800BCA30
