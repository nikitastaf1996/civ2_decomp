.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80072AD8, 0x94

glabel func_80072AD8
    /* 632D8 80072AD8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 632DC 80072ADC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 632E0 80072AE0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 632E4 80072AE4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 632E8 80072AE8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 632EC 80072AEC 03008104 */  bgez       $a0, .L80072AFC
    /* 632F0 80072AF0 2180A000 */   addu      $s0, $a1, $zero
    /* 632F4 80072AF4 D4CA0108 */  j          .L80072B50
    /* 632F8 80072AF8 21100000 */   addu      $v0, $zero, $zero
  .L80072AFC:
    /* 632FC 80072AFC 03009014 */  bne        $a0, $s0, .L80072B0C
    /* 63300 80072B00 21900000 */   addu      $s2, $zero, $zero
    /* 63304 80072B04 D4CA0108 */  j          .L80072B50
    /* 63308 80072B08 01000224 */   addiu     $v0, $zero, 0x1
  .L80072B0C:
    /* 6330C 80072B0C 00890400 */  sll        $s1, $a0, 4
    /* 63310 80072B10 1180013C */  lui        $at, %hi(D_8010C2AA)
    /* 63314 80072B14 21083100 */  addu       $at, $at, $s1
    /* 63318 80072B18 AAC22480 */  lb         $a0, %lo(D_8010C2AA)($at)
    /* 6331C 80072B1C B6CA010C */  jal        func_80072AD8
    /* 63320 80072B20 21280002 */   addu      $a1, $s0, $zero
    /* 63324 80072B24 08004014 */  bnez       $v0, .L80072B48
    /* 63328 80072B28 00000000 */   nop
    /* 6332C 80072B2C 1180013C */  lui        $at, %hi(D_8010C2AB)
    /* 63330 80072B30 21083100 */  addu       $at, $at, $s1
    /* 63334 80072B34 ABC22480 */  lb         $a0, %lo(D_8010C2AB)($at)
    /* 63338 80072B38 B6CA010C */  jal        func_80072AD8
    /* 6333C 80072B3C 21280002 */   addu      $a1, $s0, $zero
    /* 63340 80072B40 03004010 */  beqz       $v0, .L80072B50
    /* 63344 80072B44 21104002 */   addu      $v0, $s2, $zero
  .L80072B48:
    /* 63348 80072B48 01001224 */  addiu      $s2, $zero, 0x1
    /* 6334C 80072B4C 21104002 */  addu       $v0, $s2, $zero
  .L80072B50:
    /* 63350 80072B50 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 63354 80072B54 1800B28F */  lw         $s2, 0x18($sp)
    /* 63358 80072B58 1400B18F */  lw         $s1, 0x14($sp)
    /* 6335C 80072B5C 1000B08F */  lw         $s0, 0x10($sp)
    /* 63360 80072B60 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 63364 80072B64 0800E003 */  jr         $ra
    /* 63368 80072B68 00000000 */   nop
endlabel func_80072AD8
