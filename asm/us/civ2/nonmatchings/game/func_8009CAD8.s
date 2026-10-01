.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009CAD8, 0x17C

glabel func_8009CAD8
    /* 8D2D8 8009CAD8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 8D2DC 8009CADC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 8D2E0 8009CAE0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8D2E4 8009CAE4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8D2E8 8009CAE8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8D2EC 8009CAEC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8D2F0 8009CAF0 1280103C */  lui        $s0, %hi(D_8011E72C)
    /* 8D2F4 8009CAF4 2CE71026 */  addiu      $s0, $s0, %lo(D_8011E72C)
    /* 8D2F8 8009CAF8 21880000 */  addu       $s1, $zero, $zero
    /* 8D2FC 8009CAFC 01001224 */  addiu      $s2, $zero, 0x1
    /* 8D300 8009CB00 0180133C */  lui        $s3, %hi(D_800138BC)
    /* 8D304 8009CB04 BC387326 */  addiu      $s3, $s3, %lo(D_800138BC)
  .L8009CB08:
    /* 8D308 8009CB08 9AE0030C */  jal        func_800F8268
    /* 8D30C 8009CB0C 21200002 */   addu      $a0, $s0, $zero
    /* 8D310 8009CB10 EFE9030C */  jal        func_800FA7BC
    /* 8D314 8009CB14 2C000426 */   addiu     $a0, $s0, 0x2C
    /* 8D318 8009CB18 3C0000AE */  sw         $zero, 0x3C($s0)
    /* 8D31C 8009CB1C 400000AE */  sw         $zero, 0x40($s0)
    /* 8D320 8009CB20 440000AE */  sw         $zero, 0x44($s0)
    /* 8D324 8009CB24 480000AE */  sw         $zero, 0x48($s0)
    /* 8D328 8009CB28 4C0000AE */  sw         $zero, 0x4C($s0)
    /* 8D32C 8009CB2C 500000AE */  sw         $zero, 0x50($s0)
    /* 8D330 8009CB30 540000AE */  sw         $zero, 0x54($s0)
    /* 8D334 8009CB34 580000AE */  sw         $zero, 0x58($s0)
    /* 8D338 8009CB38 5C0000AE */  sw         $zero, 0x5C($s0)
    /* 8D33C 8009CB3C 600000AE */  sw         $zero, 0x60($s0)
    /* 8D340 8009CB40 640000AE */  sw         $zero, 0x64($s0)
    /* 8D344 8009CB44 680000AE */  sw         $zero, 0x68($s0)
    /* 8D348 8009CB48 6C0000AE */  sw         $zero, 0x6C($s0)
    /* 8D34C 8009CB4C 700000AE */  sw         $zero, 0x70($s0)
    /* 8D350 8009CB50 740000AE */  sw         $zero, 0x74($s0)
    /* 8D354 8009CB54 780000AE */  sw         $zero, 0x78($s0)
    /* 8D358 8009CB58 7C0000AE */  sw         $zero, 0x7C($s0)
    /* 8D35C 8009CB5C 800000AE */  sw         $zero, 0x80($s0)
    /* 8D360 8009CB60 840000AE */  sw         $zero, 0x84($s0)
    /* 8D364 8009CB64 880000AE */  sw         $zero, 0x88($s0)
    /* 8D368 8009CB68 8C0000AE */  sw         $zero, 0x8C($s0)
    /* 8D36C 8009CB6C 900000AE */  sw         $zero, 0x90($s0)
    /* 8D370 8009CB70 940000AE */  sw         $zero, 0x94($s0)
    /* 8D374 8009CB74 980000A6 */  sh         $zero, 0x98($s0)
    /* 8D378 8009CB78 9A0000A6 */  sh         $zero, 0x9A($s0)
    /* 8D37C 8009CB7C 00400224 */  addiu      $v0, $zero, 0x4000
    /* 8D380 8009CB80 9C0002A6 */  sh         $v0, 0x9C($s0)
    /* 8D384 8009CB84 9E0002A6 */  sh         $v0, 0x9E($s0)
    /* 8D388 8009CB88 A60000A6 */  sh         $zero, 0xA6($s0)
    /* 8D38C 8009CB8C A80000A6 */  sh         $zero, 0xA8($s0)
    /* 8D390 8009CB90 A00000A6 */  sh         $zero, 0xA0($s0)
    /* 8D394 8009CB94 A20012A6 */  sh         $s2, 0xA2($s0)
    /* 8D398 8009CB98 A40012A6 */  sh         $s2, 0xA4($s0)
    /* 8D39C 8009CB9C B00000AE */  sw         $zero, 0xB0($s0)
    /* 8D3A0 8009CBA0 B40000AE */  sw         $zero, 0xB4($s0)
    /* 8D3A4 8009CBA4 B80000AE */  sw         $zero, 0xB8($s0)
    /* 8D3A8 8009CBA8 BC0012A2 */  sb         $s2, 0xBC($s0)
    /* 8D3AC 8009CBAC 280013AE */  sw         $s3, 0x28($s0)
    /* 8D3B0 8009CBB0 B00000AE */  sw         $zero, 0xB0($s0)
    /* 8D3B4 8009CBB4 C00000AE */  sw         $zero, 0xC0($s0)
    /* 8D3B8 8009CBB8 0180023C */  lui        $v0, %hi(D_80011A54)
    /* 8D3BC 8009CBBC 541A4224 */  addiu      $v0, $v0, %lo(D_80011A54)
    /* 8D3C0 8009CBC0 280002AE */  sw         $v0, 0x28($s0)
    /* 8D3C4 8009CBC4 9AE0030C */  jal        func_800F8268
    /* 8D3C8 8009CBC8 68020426 */   addiu     $a0, $s0, 0x268
    /* 8D3CC 8009CBCC 9AE0030C */  jal        func_800F8268
    /* 8D3D0 8009CBD0 94020426 */   addiu     $a0, $s0, 0x294
    /* 8D3D4 8009CBD4 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* 8D3D8 8009CBD8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8D3DC 8009CBDC CAFF2216 */  bne        $s1, $v0, .L8009CB08
    /* 8D3E0 8009CBE0 C0021026 */   addiu     $s0, $s0, 0x2C0
    /* 8D3E4 8009CBE4 1280043C */  lui        $a0, %hi(D_8011E9EC)
    /* 8D3E8 8009CBE8 ECE98424 */  addiu      $a0, $a0, %lo(D_8011E9EC)
    /* 8D3EC 8009CBEC C7D8030C */  jal        func_800F631C
    /* 8D3F0 8009CBF0 01001024 */   addiu     $s0, $zero, 0x1
    /* 8D3F4 8009CBF4 1280013C */  lui        $at, %hi(D_8011EA14)
    /* 8D3F8 8009CBF8 14EA30A4 */  sh         $s0, %lo(D_8011EA14)($at)
    /* 8D3FC 8009CBFC 1280013C */  lui        $at, %hi(D_8011EA0C)
    /* 8D400 8009CC00 0CEA20AC */  sw         $zero, %lo(D_8011EA0C)($at)
    /* 8D404 8009CC04 1280013C */  lui        $at, %hi(D_8011EA10)
    /* 8D408 8009CC08 10EA20AC */  sw         $zero, %lo(D_8011EA10)($at)
    /* 8D40C 8009CC0C 1280043C */  lui        $a0, %hi(D_8011EA1C)
    /* 8D410 8009CC10 1CEA8424 */  addiu      $a0, $a0, %lo(D_8011EA1C)
    /* 8D414 8009CC14 C7D8030C */  jal        func_800F631C
    /* 8D418 8009CC18 00000000 */   nop
    /* 8D41C 8009CC1C 1280013C */  lui        $at, %hi(D_8011EA44)
    /* 8D420 8009CC20 44EA30A4 */  sh         $s0, %lo(D_8011EA44)($at)
    /* 8D424 8009CC24 1280013C */  lui        $at, %hi(D_8011EA3C)
    /* 8D428 8009CC28 3CEA20AC */  sw         $zero, %lo(D_8011EA3C)($at)
    /* 8D42C 8009CC2C 1280013C */  lui        $at, %hi(D_8011EA40)
    /* 8D430 8009CC30 40EA20AC */  sw         $zero, %lo(D_8011EA40)($at)
    /* 8D434 8009CC34 2000BF8F */  lw         $ra, 0x20($sp)
    /* 8D438 8009CC38 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8D43C 8009CC3C 1800B28F */  lw         $s2, 0x18($sp)
    /* 8D440 8009CC40 1400B18F */  lw         $s1, 0x14($sp)
    /* 8D444 8009CC44 1000B08F */  lw         $s0, 0x10($sp)
    /* 8D448 8009CC48 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 8D44C 8009CC4C 0800E003 */  jr         $ra
    /* 8D450 8009CC50 00000000 */   nop
endlabel func_8009CAD8
