.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CB37C, 0x108

glabel func_800CB37C
    /* BBB7C 800CB37C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BBB80 800CB380 1400BFAF */  sw         $ra, 0x14($sp)
    /* BBB84 800CB384 1000B0AF */  sw         $s0, 0x10($sp)
    /* BBB88 800CB388 21808000 */  addu       $s0, $a0, $zero
    /* BBB8C 800CB38C 00240400 */  sll        $a0, $a0, 16
    /* BBB90 800CB390 03240400 */  sra        $a0, $a0, 16
    /* BBB94 800CB394 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* BBB98 800CB398 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* BBB9C 800CB39C 00000000 */  nop
    /* BBBA0 800CB3A0 33008214 */  bne        $a0, $v0, .L800CB470
    /* BBBA4 800CB3A4 21100000 */   addu      $v0, $zero, $zero
    /* BBBA8 800CB3A8 98E9030C */  jal        func_800FA660
    /* BBBAC 800CB3AC 00000000 */   nop
    /* BBBB0 800CB3B0 1280043C */  lui        $a0, %hi(D_8011E748)
    /* BBBB4 800CB3B4 48E7848C */  lw         $a0, %lo(D_8011E748)($a0)
    /* BBBB8 800CB3B8 331F040C */  jal        func_80107CCC
    /* BBBBC 800CB3BC 00000000 */   nop
    /* BBBC0 800CB3C0 1280013C */  lui        $at, %hi(D_8011E748)
    /* BBBC4 800CB3C4 48E720AC */  sw         $zero, %lo(D_8011E748)($at)
    /* BBBC8 800CB3C8 A569030C */  jal        func_800DA694
    /* BBBCC 800CB3CC 00000000 */   nop
    /* BBBD0 800CB3D0 AE5E020C */  jal        func_80097AB8
    /* BBBD4 800CB3D4 00000000 */   nop
    /* BBBD8 800CB3D8 80000224 */  addiu      $v0, $zero, 0x80
    /* BBBDC 800CB3DC 1680013C */  lui        $at, %hi(D_801592E4)
    /* BBBE0 800CB3E0 E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* BBBE4 800CB3E4 3E82030C */  jal        __builtin_new
    /* BBBE8 800CB3E8 54190424 */   addiu     $a0, $zero, 0x1954
    /* BBBEC 800CB3EC 002C1000 */  sll        $a1, $s0, 16
    /* BBBF0 800CB3F0 21204000 */  addu       $a0, $v0, $zero
    /* BBBF4 800CB3F4 692D030C */  jal        func_800CB5A4
    /* BBBF8 800CB3F8 032C0500 */   sra       $a1, $a1, 16
    /* BBBFC 800CB3FC 21804000 */  addu       $s0, $v0, $zero
    /* BBC00 800CB400 622E030C */  jal        func_800CB988
    /* BBC04 800CB404 21200002 */   addu      $a0, $s0, $zero
    /* BBC08 800CB408 00140200 */  sll        $v0, $v0, 16
    /* BBC0C 800CB40C 18004010 */  beqz       $v0, .L800CB470
    /* BBC10 800CB410 21100000 */   addu      $v0, $zero, $zero
    /* BBC14 800CB414 0F30030C */  jal        func_800CC03C
    /* BBC18 800CB418 21200002 */   addu      $a0, $s0, $zero
    /* BBC1C 800CB41C 03000012 */  beqz       $s0, .L800CB42C
    /* BBC20 800CB420 21200002 */   addu      $a0, $s0, $zero
    /* BBC24 800CB424 0A2E030C */  jal        func_800CB828
    /* BBC28 800CB428 03000524 */   addiu     $a1, $zero, 0x3
  .L800CB42C:
    /* BBC2C 800CB42C CE68030C */  jal        func_800DA338
    /* BBC30 800CB430 00000000 */   nop
    /* BBC34 800CB434 895E020C */  jal        func_80097A24
    /* BBC38 800CB438 00000000 */   nop
    /* BBC3C 800CB43C 40010424 */  addiu      $a0, $zero, 0x140
    /* BBC40 800CB440 0E1F040C */  jal        func_80107C38
    /* BBC44 800CB444 F0000524 */   addiu     $a1, $zero, 0xF0
    /* BBC48 800CB448 1280013C */  lui        $at, %hi(D_8011E748)
    /* BBC4C 800CB44C 48E722AC */  sw         $v0, %lo(D_8011E748)($at)
    /* BBC50 800CB450 80000224 */  addiu      $v0, $zero, 0x80
    /* BBC54 800CB454 1680013C */  lui        $at, %hi(D_801592E4)
    /* BBC58 800CB458 E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* BBC5C 800CB45C 5674020C */  jal        func_8009D158
    /* BBC60 800CB460 00000000 */   nop
    /* BBC64 800CB464 A8E9030C */  jal        func_800FA6A0
    /* BBC68 800CB468 00000000 */   nop
    /* BBC6C 800CB46C 01000224 */  addiu      $v0, $zero, 0x1
  .L800CB470:
    /* BBC70 800CB470 1400BF8F */  lw         $ra, 0x14($sp)
    /* BBC74 800CB474 1000B08F */  lw         $s0, 0x10($sp)
    /* BBC78 800CB478 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BBC7C 800CB47C 0800E003 */  jr         $ra
    /* BBC80 800CB480 00000000 */   nop
endlabel func_800CB37C
