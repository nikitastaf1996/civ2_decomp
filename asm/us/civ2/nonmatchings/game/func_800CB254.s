.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CB254, 0x128

glabel func_800CB254
    /* BBA54 800CB254 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* BBA58 800CB258 1800BFAF */  sw         $ra, 0x18($sp)
    /* BBA5C 800CB25C 1400B1AF */  sw         $s1, 0x14($sp)
    /* BBA60 800CB260 1000B0AF */  sw         $s0, 0x10($sp)
    /* BBA64 800CB264 21808000 */  addu       $s0, $a0, $zero
    /* BBA68 800CB268 98E9030C */  jal        func_800FA660
    /* BBA6C 800CB26C 21880002 */   addu      $s1, $s0, $zero
    /* BBA70 800CB270 1280043C */  lui        $a0, %hi(D_8011E748)
    /* BBA74 800CB274 48E7848C */  lw         $a0, %lo(D_8011E748)($a0)
    /* BBA78 800CB278 331F040C */  jal        func_80107CCC
    /* BBA7C 800CB27C 00841000 */   sll       $s0, $s0, 16
    /* BBA80 800CB280 1280013C */  lui        $at, %hi(D_8011E748)
    /* BBA84 800CB284 48E720AC */  sw         $zero, %lo(D_8011E748)($at)
    /* BBA88 800CB288 A569030C */  jal        func_800DA694
    /* BBA8C 800CB28C 00000000 */   nop
    /* BBA90 800CB290 AE5E020C */  jal        func_80097AB8
    /* BBA94 800CB294 00000000 */   nop
    /* BBA98 800CB298 80000224 */  addiu      $v0, $zero, 0x80
    /* BBA9C 800CB29C 1680013C */  lui        $at, %hi(D_801592E4)
    /* BBAA0 800CB2A0 E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* BBAA4 800CB2A4 3E82030C */  jal        __builtin_new
    /* BBAA8 800CB2A8 54190424 */   addiu     $a0, $zero, 0x1954
    /* BBAAC 800CB2AC 032C1000 */  sra        $a1, $s0, 16
    /* BBAB0 800CB2B0 0500A01C */  bgtz       $a1, .L800CB2C8
    /* BBAB4 800CB2B4 21204000 */   addu      $a0, $v0, $zero
    /* BBAB8 800CB2B8 27101100 */  nor        $v0, $zero, $s1
    /* BBABC 800CB2BC 01004224 */  addiu      $v0, $v0, 0x1
    /* BBAC0 800CB2C0 00140200 */  sll        $v0, $v0, 16
    /* BBAC4 800CB2C4 032C0200 */  sra        $a1, $v0, 16
  .L800CB2C8:
    /* BBAC8 800CB2C8 692D030C */  jal        func_800CB5A4
    /* BBACC 800CB2CC 00000000 */   nop
    /* BBAD0 800CB2D0 21804000 */  addu       $s0, $v0, $zero
    /* BBAD4 800CB2D4 622E030C */  jal        func_800CB988
    /* BBAD8 800CB2D8 21200002 */   addu      $a0, $s0, $zero
    /* BBADC 800CB2DC 00140200 */  sll        $v0, $v0, 16
    /* BBAE0 800CB2E0 03004014 */  bnez       $v0, .L800CB2F0
    /* BBAE4 800CB2E4 00141100 */   sll       $v0, $s1, 16
    /* BBAE8 800CB2E8 D92C0308 */  j          .L800CB364
    /* BBAEC 800CB2EC 21100000 */   addu      $v0, $zero, $zero
  .L800CB2F0:
    /* BBAF0 800CB2F0 05004104 */  bgez       $v0, .L800CB308
    /* BBAF4 800CB2F4 00000000 */   nop
    /* BBAF8 800CB2F8 3431030C */  jal        func_800CC4D0
    /* BBAFC 800CB2FC 21200002 */   addu      $a0, $s0, $zero
    /* BBB00 800CB300 C42C0308 */  j          .L800CB310
    /* BBB04 800CB304 00000000 */   nop
  .L800CB308:
    /* BBB08 800CB308 8F2F030C */  jal        func_800CBE3C
    /* BBB0C 800CB30C 21200002 */   addu      $a0, $s0, $zero
  .L800CB310:
    /* BBB10 800CB310 03000012 */  beqz       $s0, .L800CB320
    /* BBB14 800CB314 21200002 */   addu      $a0, $s0, $zero
    /* BBB18 800CB318 0A2E030C */  jal        func_800CB828
    /* BBB1C 800CB31C 03000524 */   addiu     $a1, $zero, 0x3
  .L800CB320:
    /* BBB20 800CB320 CE68030C */  jal        func_800DA338
    /* BBB24 800CB324 00000000 */   nop
    /* BBB28 800CB328 895E020C */  jal        func_80097A24
    /* BBB2C 800CB32C 00000000 */   nop
    /* BBB30 800CB330 40010424 */  addiu      $a0, $zero, 0x140
    /* BBB34 800CB334 0E1F040C */  jal        func_80107C38
    /* BBB38 800CB338 F0000524 */   addiu     $a1, $zero, 0xF0
    /* BBB3C 800CB33C 1280013C */  lui        $at, %hi(D_8011E748)
    /* BBB40 800CB340 48E722AC */  sw         $v0, %lo(D_8011E748)($at)
    /* BBB44 800CB344 80000224 */  addiu      $v0, $zero, 0x80
    /* BBB48 800CB348 1680013C */  lui        $at, %hi(D_801592E4)
    /* BBB4C 800CB34C E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* BBB50 800CB350 5674020C */  jal        func_8009D158
    /* BBB54 800CB354 00000000 */   nop
    /* BBB58 800CB358 A8E9030C */  jal        func_800FA6A0
    /* BBB5C 800CB35C 00000000 */   nop
    /* BBB60 800CB360 01000224 */  addiu      $v0, $zero, 0x1
  .L800CB364:
    /* BBB64 800CB364 1800BF8F */  lw         $ra, 0x18($sp)
    /* BBB68 800CB368 1400B18F */  lw         $s1, 0x14($sp)
    /* BBB6C 800CB36C 1000B08F */  lw         $s0, 0x10($sp)
    /* BBB70 800CB370 2000BD27 */  addiu      $sp, $sp, 0x20
    /* BBB74 800CB374 0800E003 */  jr         $ra
    /* BBB78 800CB378 00000000 */   nop
endlabel func_800CB254
