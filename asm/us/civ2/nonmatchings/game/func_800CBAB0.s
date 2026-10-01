.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CBAB0, 0x2E0

glabel func_800CBAB0
    /* BC2B0 800CBAB0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* BC2B4 800CBAB4 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* BC2B8 800CBAB8 2800B0AF */  sw         $s0, 0x28($sp)
    /* BC2BC 800CBABC B80C828F */  lw         $v0, %gp_rel(D_80159190)($gp)
    /* BC2C0 800CBAC0 00000000 */  nop
    /* BC2C4 800CBAC4 E8045094 */  lhu        $s0, 0x4E8($v0)
    /* BC2C8 800CBAC8 7907040C */  jal        func_80101DE4
    /* BC2CC 800CBACC 01000424 */   addiu     $a0, $zero, 0x1
    /* BC2D0 800CBAD0 B80C828F */  lw         $v0, %gp_rel(D_80159190)($gp)
    /* BC2D4 800CBAD4 00000000 */  nop
    /* BC2D8 800CBAD8 FC08438C */  lw         $v1, 0x8FC($v0)
    /* BC2DC 800CBADC 03000224 */  addiu      $v0, $zero, 0x3
    /* BC2E0 800CBAE0 05006214 */  bne        $v1, $v0, .L800CBAF8
    /* BC2E4 800CBAE4 21200000 */   addu      $a0, $zero, $zero
    /* BC2E8 800CBAE8 4C39030C */  jal        func_800CE530
    /* BC2EC 800CBAEC 21280000 */   addu      $a1, $zero, $zero
    /* BC2F0 800CBAF0 CD2E0308 */  j          .L800CBB34
    /* BC2F4 800CBAF4 00000000 */   nop
  .L800CBAF8:
    /* BC2F8 800CBAF8 B80C858F */  lw         $a1, %gp_rel(D_80159190)($gp)
    /* BC2FC 800CBAFC 00000000 */  nop
    /* BC300 800CBB00 3C04A28C */  lw         $v0, 0x43C($a1)
    /* BC304 800CBB04 00000000 */  nop
    /* BC308 800CBB08 0A004010 */  beqz       $v0, .L800CBB34
    /* BC30C 800CBB0C 40010224 */   addiu     $v0, $zero, 0x140
    /* BC310 800CBB10 1000A0A7 */  sh         $zero, 0x10($sp)
    /* BC314 800CBB14 1200A0A7 */  sh         $zero, 0x12($sp)
    /* BC318 800CBB18 1400A2A7 */  sh         $v0, 0x14($sp)
    /* BC31C 800CBB1C F0000224 */  addiu      $v0, $zero, 0xF0
    /* BC320 800CBB20 1600A2A7 */  sh         $v0, 0x16($sp)
    /* BC324 800CBB24 2004A424 */  addiu      $a0, $a1, 0x420
    /* BC328 800CBB28 1000A627 */  addiu      $a2, $sp, 0x10
    /* BC32C 800CBB2C 1FE4030C */  jal        func_800F907C
    /* BC330 800CBB30 2138C000 */   addu      $a3, $a2, $zero
  .L800CBB34:
    /* BC334 800CBB34 B80C828F */  lw         $v0, %gp_rel(D_80159190)($gp)
    /* BC338 800CBB38 00000000 */  nop
    /* BC33C 800CBB3C 48014484 */  lh         $a0, 0x148($v0)
    /* BC340 800CBB40 212D030C */  jal        func_800CB484
    /* BC344 800CBB44 00000000 */   nop
    /* BC348 800CBB48 1000A0A7 */  sh         $zero, 0x10($sp)
    /* BC34C 800CBB4C 1200A0A7 */  sh         $zero, 0x12($sp)
    /* BC350 800CBB50 E4000224 */  addiu      $v0, $zero, 0xE4
    /* BC354 800CBB54 1400A2A7 */  sh         $v0, 0x14($sp)
    /* BC358 800CBB58 98000224 */  addiu      $v0, $zero, 0x98
    /* BC35C 800CBB5C 1600A2A7 */  sh         $v0, 0x16($sp)
    /* BC360 800CBB60 57000224 */  addiu      $v0, $zero, 0x57
    /* BC364 800CBB64 1800A2A7 */  sh         $v0, 0x18($sp)
    /* BC368 800CBB68 31000224 */  addiu      $v0, $zero, 0x31
    /* BC36C 800CBB6C 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* BC370 800CBB70 3B010224 */  addiu      $v0, $zero, 0x13B
    /* BC374 800CBB74 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* BC378 800CBB78 C9000224 */  addiu      $v0, $zero, 0xC9
    /* BC37C 800CBB7C 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* BC380 800CBB80 00141000 */  sll        $v0, $s0, 16
    /* BC384 800CBB84 06004004 */  bltz       $v0, .L800CBBA0
    /* BC388 800CBB88 1000A627 */   addiu     $a2, $sp, 0x10
    /* BC38C 800CBB8C B80C858F */  lw         $a1, %gp_rel(D_80159190)($gp)
    /* BC390 800CBB90 00000000 */  nop
    /* BC394 800CBB94 E004A48C */  lw         $a0, 0x4E0($a1)
    /* BC398 800CBB98 EB2E0308 */  j          .L800CBBAC
    /* BC39C 800CBB9C 00000000 */   nop
  .L800CBBA0:
    /* BC3A0 800CBBA0 B80C858F */  lw         $a1, %gp_rel(D_80159190)($gp)
    /* BC3A4 800CBBA4 00000000 */  nop
    /* BC3A8 800CBBA8 F403A424 */  addiu      $a0, $a1, 0x3F4
  .L800CBBAC:
    /* BC3AC 800CBBAC 1FE4030C */  jal        func_800F907C
    /* BC3B0 800CBBB0 1800A727 */   addiu     $a3, $sp, 0x18
    /* BC3B4 800CBBB4 B80C848F */  lw         $a0, %gp_rel(D_80159190)($gp)
    /* BC3B8 800CBBB8 00000000 */  nop
    /* BC3BC 800CBBBC E404828C */  lw         $v0, 0x4E4($a0)
    /* BC3C0 800CBBC0 00000000 */  nop
    /* BC3C4 800CBBC4 0E004010 */  beqz       $v0, .L800CBC00
    /* BC3C8 800CBBC8 80000224 */   addiu     $v0, $zero, 0x80
    /* BC3CC 800CBBCC 1680033C */  lui        $v1, %hi(D_801592E4)
    /* BC3D0 800CBBD0 E4926384 */  lh         $v1, %lo(D_801592E4)($v1)
    /* BC3D4 800CBBD4 00000000 */  nop
    /* BC3D8 800CBBD8 03006210 */  beq        $v1, $v0, .L800CBBE8
    /* BC3DC 800CBBDC 00000000 */   nop
    /* BC3E0 800CBBE0 B536030C */  jal        func_800CDAD4
    /* BC3E4 800CBBE4 21280000 */   addu      $a1, $zero, $zero
  .L800CBBE8:
    /* BC3E8 800CBBE8 B80C828F */  lw         $v0, %gp_rel(D_80159190)($gp)
    /* BC3EC 800CBBEC 00000000 */  nop
    /* BC3F0 800CBBF0 E404448C */  lw         $a0, 0x4E4($v0)
    /* BC3F4 800CBBF4 7D11040C */  jal        func_801045F4
    /* BC3F8 800CBBF8 00000000 */   nop
    /* BC3FC 800CBBFC B80C848F */  lw         $a0, %gp_rel(D_80159190)($gp)
  .L800CBC00:
    /* BC400 800CBC00 00000000 */  nop
    /* BC404 800CBC04 FC08838C */  lw         $v1, 0x8FC($a0)
    /* BC408 800CBC08 03000224 */  addiu      $v0, $zero, 0x3
    /* BC40C 800CBC0C 47006210 */  beq        $v1, $v0, .L800CBD2C
    /* BC410 800CBC10 00000000 */   nop
    /* BC414 800CBC14 180D828F */  lw         $v0, %gp_rel(D_801591F0)($gp)
    /* BC418 800CBC18 00000000 */  nop
    /* BC41C 800CBC1C 57004010 */  beqz       $v0, .L800CBD7C
    /* BC420 800CBC20 00141000 */   sll       $v0, $s0, 16
    /* BC424 800CBC24 55004104 */  bgez       $v0, .L800CBD7C
    /* BC428 800CBC28 00000000 */   nop
    /* BC42C 800CBC2C AD87030C */  jal        func_800E1EB4
    /* BC430 800CBC30 62038424 */   addiu     $a0, $a0, 0x362
    /* BC434 800CBC34 40180200 */  sll        $v1, $v0, 1
    /* BC438 800CBC38 21186200 */  addu       $v1, $v1, $v0
    /* BC43C 800CBC3C A0000224 */  addiu      $v0, $zero, 0xA0
    /* BC440 800CBC40 23104300 */  subu       $v0, $v0, $v1
    /* BC444 800CBC44 2000A2A7 */  sh         $v0, 0x20($sp)
    /* BC448 800CBC48 C8000224 */  addiu      $v0, $zero, 0xC8
    /* BC44C 800CBC4C 2200A2A7 */  sh         $v0, 0x22($sp)
    /* BC450 800CBC50 40010224 */  addiu      $v0, $zero, 0x140
    /* BC454 800CBC54 2400A2A7 */  sh         $v0, 0x24($sp)
    /* BC458 800CBC58 F0000224 */  addiu      $v0, $zero, 0xF0
    /* BC45C 800CBC5C 2600A2A7 */  sh         $v0, 0x26($sp)
    /* BC460 800CBC60 B80C858F */  lw         $a1, %gp_rel(D_80159190)($gp)
    /* BC464 800CBC64 00000000 */  nop
    /* BC468 800CBC68 8400A424 */  addiu      $a0, $a1, 0x84
    /* BC46C 800CBC6C 6203A524 */  addiu      $a1, $a1, 0x362
    /* BC470 800CBC70 2000A627 */  addiu      $a2, $sp, 0x20
    /* BC474 800CBC74 6EE7030C */  jal        func_800F9DB8
    /* BC478 800CBC78 10000724 */   addiu     $a3, $zero, 0x10
    /* BC47C 800CBC7C B80C848F */  lw         $a0, %gp_rel(D_80159190)($gp)
    /* BC480 800CBC80 00000000 */  nop
    /* BC484 800CBC84 EA048284 */  lh         $v0, 0x4EA($a0)
    /* BC488 800CBC88 00000000 */  nop
    /* BC48C 800CBC8C 11004014 */  bnez       $v0, .L800CBCD4
    /* BC490 800CBC90 21280000 */   addu      $a1, $zero, $zero
    /* BC494 800CBC94 EC048284 */  lh         $v0, 0x4EC($a0)
    /* BC498 800CBC98 00000000 */  nop
    /* BC49C 800CBC9C 03004010 */  beqz       $v0, .L800CBCAC
    /* BC4A0 800CBCA0 01000524 */   addiu     $a1, $zero, 0x1
    /* BC4A4 800CBCA4 312F0308 */  j          .L800CBCC4
    /* BC4A8 800CBCA8 21300000 */   addu      $a2, $zero, $zero
  .L800CBCAC:
    /* BC4AC 800CBCAC F0038284 */  lh         $v0, 0x3F0($a0)
    /* BC4B0 800CBCB0 00000000 */  nop
    /* BC4B4 800CBCB4 03004014 */  bnez       $v0, .L800CBCC4
    /* BC4B8 800CBCB8 01000624 */   addiu     $a2, $zero, 0x1
    /* BC4BC 800CBCBC B80C848F */  lw         $a0, %gp_rel(D_80159190)($gp)
    /* BC4C0 800CBCC0 21280000 */  addu       $a1, $zero, $zero
  .L800CBCC4:
    /* BC4C4 800CBCC4 8E38030C */  jal        func_800CE238
    /* BC4C8 800CBCC8 00000000 */   nop
    /* BC4CC 800CBCCC 452F0308 */  j          .L800CBD14
    /* BC4D0 800CBCD0 00000000 */   nop
  .L800CBCD4:
    /* BC4D4 800CBCD4 8E38030C */  jal        func_800CE238
    /* BC4D8 800CBCD8 01000624 */   addiu     $a2, $zero, 0x1
    /* BC4DC 800CBCDC B80C848F */  lw         $a0, %gp_rel(D_80159190)($gp)
    /* BC4E0 800CBCE0 00000000 */  nop
    /* BC4E4 800CBCE4 EC048284 */  lh         $v0, 0x4EC($a0)
    /* BC4E8 800CBCE8 00000000 */  nop
    /* BC4EC 800CBCEC 05004010 */  beqz       $v0, .L800CBD04
    /* BC4F0 800CBCF0 01000524 */   addiu     $a1, $zero, 0x1
    /* BC4F4 800CBCF4 D838030C */  jal        func_800CE360
    /* BC4F8 800CBCF8 21300000 */   addu      $a2, $zero, $zero
    /* BC4FC 800CBCFC 5F2F0308 */  j          .L800CBD7C
    /* BC500 800CBD00 00000000 */   nop
  .L800CBD04:
    /* BC504 800CBD04 F0038284 */  lh         $v0, 0x3F0($a0)
    /* BC508 800CBD08 00000000 */  nop
    /* BC50C 800CBD0C 03004014 */  bnez       $v0, .L800CBD1C
    /* BC510 800CBD10 00000000 */   nop
  .L800CBD14:
    /* BC514 800CBD14 B80C848F */  lw         $a0, %gp_rel(D_80159190)($gp)
    /* BC518 800CBD18 21280000 */  addu       $a1, $zero, $zero
  .L800CBD1C:
    /* BC51C 800CBD1C D838030C */  jal        func_800CE360
    /* BC520 800CBD20 01000624 */   addiu     $a2, $zero, 0x1
    /* BC524 800CBD24 5F2F0308 */  j          .L800CBD7C
    /* BC528 800CBD28 00000000 */   nop
  .L800CBD2C:
    /* BC52C 800CBD2C AD87030C */  jal        func_800E1EB4
    /* BC530 800CBD30 62038424 */   addiu     $a0, $a0, 0x362
    /* BC534 800CBD34 40180200 */  sll        $v1, $v0, 1
    /* BC538 800CBD38 21186200 */  addu       $v1, $v1, $v0
    /* BC53C 800CBD3C A0000224 */  addiu      $v0, $zero, 0xA0
    /* BC540 800CBD40 23104300 */  subu       $v0, $v0, $v1
    /* BC544 800CBD44 2000A2A7 */  sh         $v0, 0x20($sp)
    /* BC548 800CBD48 C8000224 */  addiu      $v0, $zero, 0xC8
    /* BC54C 800CBD4C 2200A2A7 */  sh         $v0, 0x22($sp)
    /* BC550 800CBD50 40010224 */  addiu      $v0, $zero, 0x140
    /* BC554 800CBD54 2400A2A7 */  sh         $v0, 0x24($sp)
    /* BC558 800CBD58 F0000224 */  addiu      $v0, $zero, 0xF0
    /* BC55C 800CBD5C 2600A2A7 */  sh         $v0, 0x26($sp)
    /* BC560 800CBD60 B80C858F */  lw         $a1, %gp_rel(D_80159190)($gp)
    /* BC564 800CBD64 00000000 */  nop
    /* BC568 800CBD68 8400A424 */  addiu      $a0, $a1, 0x84
    /* BC56C 800CBD6C 6203A524 */  addiu      $a1, $a1, 0x362
    /* BC570 800CBD70 2000A627 */  addiu      $a2, $sp, 0x20
    /* BC574 800CBD74 6EE7030C */  jal        func_800F9DB8
    /* BC578 800CBD78 10000724 */   addiu     $a3, $zero, 0x10
  .L800CBD7C:
    /* BC57C 800CBD7C 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* BC580 800CBD80 2800B08F */  lw         $s0, 0x28($sp)
    /* BC584 800CBD84 3000BD27 */  addiu      $sp, $sp, 0x30
    /* BC588 800CBD88 0800E003 */  jr         $ra
    /* BC58C 800CBD8C 00000000 */   nop
endlabel func_800CBAB0
