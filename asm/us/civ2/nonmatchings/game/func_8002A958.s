.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002A958, 0x43C

glabel func_8002A958
    /* 1B158 8002A958 48FFBD27 */  addiu      $sp, $sp, -0xB8
    /* 1B15C 8002A95C B400BFAF */  sw         $ra, 0xB4($sp)
    /* 1B160 8002A960 B000BEAF */  sw         $fp, 0xB0($sp)
    /* 1B164 8002A964 AC00B7AF */  sw         $s7, 0xAC($sp)
    /* 1B168 8002A968 A800B6AF */  sw         $s6, 0xA8($sp)
    /* 1B16C 8002A96C A400B5AF */  sw         $s5, 0xA4($sp)
    /* 1B170 8002A970 A000B4AF */  sw         $s4, 0xA0($sp)
    /* 1B174 8002A974 9C00B3AF */  sw         $s3, 0x9C($sp)
    /* 1B178 8002A978 9800B2AF */  sw         $s2, 0x98($sp)
    /* 1B17C 8002A97C 9400B1AF */  sw         $s1, 0x94($sp)
    /* 1B180 8002A980 9000B0AF */  sw         $s0, 0x90($sp)
    /* 1B184 8002A984 21F08000 */  addu       $fp, $a0, $zero
    /* 1B188 8002A988 21B8A000 */  addu       $s7, $a1, $zero
    /* 1B18C 8002A98C 3800B127 */  addiu      $s1, $sp, 0x38
    /* 1B190 8002A990 21800000 */  addu       $s0, $zero, $zero
    /* 1B194 8002A994 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L8002A998:
    /* 1B198 8002A998 9AE0030C */  jal        func_800F8268
    /* 1B19C 8002A99C 21202002 */   addu      $a0, $s1, $zero
    /* 1B1A0 8002A9A0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 1B1A4 8002A9A4 FCFF1216 */  bne        $s0, $s2, .L8002A998
    /* 1B1A8 8002A9A8 2C003126 */   addiu     $s1, $s1, 0x2C
    /* 1B1AC 8002A9AC 8800A0AF */  sw         $zero, 0x88($sp)
    /* 1B1B0 8002A9B0 21900000 */  addu       $s2, $zero, $zero
    /* 1B1B4 8002A9B4 3000B627 */  addiu      $s6, $sp, 0x30
  .L8002A9B8:
    /* 1B1B8 8002A9B8 6200401E */  bgtz       $s2, .L8002AB44
    /* 1B1BC 8002A9BC 80101200 */   sll       $v0, $s2, 2
    /* 1B1C0 8002A9C0 21105600 */  addu       $v0, $v0, $s6
    /* 1B1C4 8002A9C4 0C004012 */  beqz       $s2, .L8002A9F8
    /* 1B1C8 8002A9C8 380040AC */   sw        $zero, 0x38($v0)
    /* 1B1CC 8002A9CC 40101200 */  sll        $v0, $s2, 1
    /* 1B1D0 8002A9D0 21105200 */  addu       $v0, $v0, $s2
    /* 1B1D4 8002A9D4 80100200 */  sll        $v0, $v0, 2
    /* 1B1D8 8002A9D8 23105200 */  subu       $v0, $v0, $s2
    /* 1B1DC 8002A9DC 80110200 */  sll        $v0, $v0, 6
    /* 1B1E0 8002A9E0 1280013C */  lui        $at, %hi(D_8011E956)
    /* 1B1E4 8002A9E4 21082200 */  addu       $at, $at, $v0
    /* 1B1E8 8002A9E8 56E92284 */  lh         $v0, %lo(D_8011E956)($at)
    /* 1B1EC 8002A9EC 00000000 */  nop
    /* 1B1F0 8002A9F0 52004010 */  beqz       $v0, .L8002AB3C
    /* 1B1F4 8002A9F4 00000000 */   nop
  .L8002A9F8:
    /* 1B1F8 8002A9F8 40101200 */  sll        $v0, $s2, 1
    /* 1B1FC 8002A9FC 21105200 */  addu       $v0, $v0, $s2
    /* 1B200 8002AA00 80100200 */  sll        $v0, $v0, 2
    /* 1B204 8002AA04 23A85200 */  subu       $s5, $v0, $s2
    /* 1B208 8002AA08 80991500 */  sll        $s3, $s5, 6
    /* 1B20C 8002AA0C 1280023C */  lui        $v0, %hi(D_8011E72C)
    /* 1B210 8002AA10 2CE74224 */  addiu      $v0, $v0, %lo(D_8011E72C)
    /* 1B214 8002AA14 21A06202 */  addu       $s4, $s3, $v0
    /* 1B218 8002AA18 21208002 */  addu       $a0, $s4, $zero
    /* 1B21C 8002AA1C 2128C003 */  addu       $a1, $fp, $zero
    /* 1B220 8002AA20 796C020C */  jal        func_8009B1E4
    /* 1B224 8002AA24 2130E002 */   addu      $a2, $s7, $zero
    /* 1B228 8002AA28 44004010 */  beqz       $v0, .L8002AB3C
    /* 1B22C 8002AA2C 80181200 */   sll       $v1, $s2, 2
    /* 1B230 8002AA30 21807600 */  addu       $s0, $v1, $s6
    /* 1B234 8002AA34 01000224 */  addiu      $v0, $zero, 0x1
    /* 1B238 8002AA38 380002AE */  sw         $v0, 0x38($s0)
    /* 1B23C 8002AA3C 01000824 */  addiu      $t0, $zero, 0x1
    /* 1B240 8002AA40 8800A8AF */  sw         $t0, 0x88($sp)
    /* 1B244 8002AA44 20000224 */  addiu      $v0, $zero, 0x20
    /* 1B248 8002AA48 3C0002AE */  sw         $v0, 0x3C($s0)
    /* 1B24C 8002AA4C 10000224 */  addiu      $v0, $zero, 0x10
    /* 1B250 8002AA50 400002AE */  sw         $v0, 0x40($s0)
    /* 1B254 8002AA54 7400A527 */  addiu      $a1, $sp, 0x74
    /* 1B258 8002AA58 7800A627 */  addiu      $a2, $sp, 0x78
    /* 1B25C 8002AA5C 1000B7AF */  sw         $s7, 0x10($sp)
    /* 1B260 8002AA60 21208002 */  addu       $a0, $s4, $zero
    /* 1B264 8002AA64 2128A300 */  addu       $a1, $a1, $v1
    /* 1B268 8002AA68 2130C300 */  addu       $a2, $a2, $v1
    /* 1B26C 8002AA6C 0A66020C */  jal        func_80099828
    /* 1B270 8002AA70 2138C003 */   addu      $a3, $fp, $zero
    /* 1B274 8002AA74 1280013C */  lui        $at, %hi(D_8011E978)
    /* 1B278 8002AA78 21083300 */  addu       $at, $at, $s3
    /* 1B27C 8002AA7C 78E92384 */  lh         $v1, %lo(D_8011E978)($at)
    /* 1B280 8002AA80 4400028E */  lw         $v0, 0x44($s0)
    /* 1B284 8002AA84 00000000 */  nop
    /* 1B288 8002AA88 21186200 */  addu       $v1, $v1, $v0
    /* 1B28C 8002AA8C 440003AE */  sw         $v1, 0x44($s0)
    /* 1B290 8002AA90 C0101200 */  sll        $v0, $s2, 3
    /* 1B294 8002AA94 21105600 */  addu       $v0, $v0, $s6
    /* 1B298 8002AA98 4800048E */  lw         $a0, 0x48($s0)
    /* 1B29C 8002AA9C 3C00058E */  lw         $a1, 0x3C($s0)
    /* 1B2A0 8002AAA0 4000068E */  lw         $a2, 0x40($s0)
    /* 1B2A4 8002AAA4 000043A4 */  sh         $v1, 0x0($v0)
    /* 1B2A8 8002AAA8 020044A4 */  sh         $a0, 0x2($v0)
    /* 1B2AC 8002AAAC 21186500 */  addu       $v1, $v1, $a1
    /* 1B2B0 8002AAB0 040043A4 */  sh         $v1, 0x4($v0)
    /* 1B2B4 8002AAB4 21208600 */  addu       $a0, $a0, $a2
    /* 1B2B8 8002AAB8 060044A4 */  sh         $a0, 0x6($v0)
    /* 1B2BC 8002AABC 3800B127 */  addiu      $s1, $sp, 0x38
    /* 1B2C0 8002AAC0 80101500 */  sll        $v0, $s5, 2
    /* 1B2C4 8002AAC4 21882202 */  addu       $s1, $s1, $v0
    /* 1B2C8 8002AAC8 1280013C */  lui        $at, %hi(D_8011E970)
    /* 1B2CC 8002AACC 21083300 */  addu       $at, $at, $s3
    /* 1B2D0 8002AAD0 70E92584 */  lh         $a1, %lo(D_8011E970)($at)
    /* 1B2D4 8002AAD4 1280013C */  lui        $at, %hi(D_8011E972)
    /* 1B2D8 8002AAD8 21083300 */  addu       $at, $at, $s3
    /* 1B2DC 8002AADC 72E92684 */  lh         $a2, %lo(D_8011E972)($at)
    /* 1B2E0 8002AAE0 F3E0030C */  jal        func_800F83CC
    /* 1B2E4 8002AAE4 21202002 */   addu      $a0, $s1, $zero
    /* 1B2E8 8002AAE8 D400828E */  lw         $v0, 0xD4($s4)
    /* 1B2EC 8002AAEC 00000000 */  nop
    /* 1B2F0 8002AAF0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1B2F4 8002AAF4 D800828E */  lw         $v0, 0xD8($s4)
    /* 1B2F8 8002AAF8 00000000 */  nop
    /* 1B2FC 8002AAFC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 1B300 8002AB00 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1B304 8002AB04 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 1B308 8002AB08 2000A0AF */  sw         $zero, 0x20($sp)
    /* 1B30C 8002AB0C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 1B310 8002AB10 3C00028E */  lw         $v0, 0x3C($s0)
    /* 1B314 8002AB14 00000000 */  nop
    /* 1B318 8002AB18 2800A2AF */  sw         $v0, 0x28($sp)
    /* 1B31C 8002AB1C 4000028E */  lw         $v0, 0x40($s0)
    /* 1B320 8002AB20 00000000 */  nop
    /* 1B324 8002AB24 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 1B328 8002AB28 21208002 */  addu       $a0, $s4, $zero
    /* 1B32C 8002AB2C 4400068E */  lw         $a2, 0x44($s0)
    /* 1B330 8002AB30 4800078E */  lw         $a3, 0x48($s0)
    /* 1B334 8002AB34 73BD020C */  jal        func_800AF5CC
    /* 1B338 8002AB38 21282002 */   addu      $a1, $s1, $zero
  .L8002AB3C:
    /* 1B33C 8002AB3C 6EAA0008 */  j          .L8002A9B8
    /* 1B340 8002AB40 01005226 */   addiu     $s2, $s2, 0x1
  .L8002AB44:
    /* 1B344 8002AB44 8800A88F */  lw         $t0, 0x88($sp)
    /* 1B348 8002AB48 00000000 */  nop
    /* 1B34C 8002AB4C 0C000015 */  bnez       $t0, .L8002AB80
    /* 1B350 8002AB50 3800A227 */   addiu     $v0, $sp, 0x38
    /* 1B354 8002AB54 6400B027 */  addiu      $s0, $sp, 0x64
    /* 1B358 8002AB58 07005010 */  beq        $v0, $s0, .L8002AB78
    /* 1B35C 8002AB5C 3800B127 */   addiu     $s1, $sp, 0x38
    /* 1B360 8002AB60 D4FF1026 */  addiu      $s0, $s0, -0x2C
  .L8002AB64:
    /* 1B364 8002AB64 21200002 */  addu       $a0, $s0, $zero
    /* 1B368 8002AB68 4CE1030C */  jal        func_800F8530
    /* 1B36C 8002AB6C 02000524 */   addiu     $a1, $zero, 0x2
    /* 1B370 8002AB70 FCFF3016 */  bne        $s1, $s0, .L8002AB64
    /* 1B374 8002AB74 D4FF1026 */   addiu     $s0, $s0, -0x2C
  .L8002AB78:
    /* 1B378 8002AB78 58AB0008 */  j          .L8002AD60
    /* 1B37C 8002AB7C 21100000 */   addu      $v0, $zero, $zero
  .L8002AB80:
    /* 1B380 8002AB80 F800848F */  lw         $a0, %gp_rel(D_801585D0)($gp)
    /* 1B384 8002AB84 00000000 */  nop
    /* 1B388 8002AB88 04008010 */  beqz       $a0, .L8002AB9C
    /* 1B38C 8002AB8C 01000524 */   addiu     $a1, $zero, 0x1
    /* 1B390 8002AB90 21300000 */  addu       $a2, $zero, $zero
    /* 1B394 8002AB94 2B9D020C */  jal        func_800A74AC
    /* 1B398 8002AB98 21380000 */   addu      $a3, $zero, $zero
  .L8002AB9C:
    /* 1B39C 8002AB9C 21980000 */  addu       $s3, $zero, $zero
    /* 1B3A0 8002ABA0 3000B427 */  addiu      $s4, $sp, 0x30
    /* 1B3A4 8002ABA4 3800B627 */  addiu      $s6, $sp, 0x38
  .L8002ABA8:
    /* 1B3A8 8002ABA8 0800622A */  slti       $v0, $s3, 0x8
    /* 1B3AC 8002ABAC 5A004010 */  beqz       $v0, .L8002AD18
    /* 1B3B0 8002ABB0 21900000 */   addu      $s2, $zero, $zero
    /* 1B3B4 8002ABB4 C0101300 */  sll        $v0, $s3, 3
    /* 1B3B8 8002ABB8 21105300 */  addu       $v0, $v0, $s3
    /* 1B3BC 8002ABBC 80100200 */  sll        $v0, $v0, 2
    /* 1B3C0 8002ABC0 21105300 */  addu       $v0, $v0, $s3
    /* 1B3C4 8002ABC4 80A80200 */  sll        $s5, $v0, 2
  .L8002ABC8:
    /* 1B3C8 8002ABC8 2600401E */  bgtz       $s2, .L8002AC64
    /* 1B3CC 8002ABCC 80101200 */   sll       $v0, $s2, 2
    /* 1B3D0 8002ABD0 21885400 */  addu       $s1, $v0, $s4
    /* 1B3D4 8002ABD4 3800228E */  lw         $v0, 0x38($s1)
    /* 1B3D8 8002ABD8 00000000 */  nop
    /* 1B3DC 8002ABDC 1F004010 */  beqz       $v0, .L8002AC5C
    /* 1B3E0 8002ABE0 40801200 */   sll       $s0, $s2, 1
    /* 1B3E4 8002ABE4 21801202 */  addu       $s0, $s0, $s2
    /* 1B3E8 8002ABE8 80801000 */  sll        $s0, $s0, 2
    /* 1B3EC 8002ABEC 23801202 */  subu       $s0, $s0, $s2
    /* 1B3F0 8002ABF0 80811000 */  sll        $s0, $s0, 6
    /* 1B3F4 8002ABF4 1280013C */  lui        $at, %hi(D_8011E95E)
    /* 1B3F8 8002ABF8 21083000 */  addu       $at, $at, $s0
    /* 1B3FC 8002ABFC 5EE92484 */  lh         $a0, %lo(D_8011E95E)($at)
    /* 1B400 8002AC00 00000000 */  nop
    /* 1B404 8002AC04 08008424 */  addiu      $a0, $a0, 0x8
    /* 1B408 8002AC08 00240400 */  sll        $a0, $a0, 16
    /* 1B40C 8002AC0C 03240400 */  sra        $a0, $a0, 16
    /* 1B410 8002AC10 D0EC030C */  jal        func_800FB340
    /* 1B414 8002AC14 08000524 */   addiu     $a1, $zero, 0x8
    /* 1B418 8002AC18 1380053C */  lui        $a1, %hi(D_80134884)
    /* 1B41C 8002AC1C 8448A524 */  addiu      $a1, $a1, %lo(D_80134884)
    /* 1B420 8002AC20 1280023C */  lui        $v0, %hi(D_8011E72C)
    /* 1B424 8002AC24 2CE74224 */  addiu      $v0, $v0, %lo(D_8011E72C)
    /* 1B428 8002AC28 21800202 */  addu       $s0, $s0, $v0
    /* 1B42C 8002AC2C 44002786 */  lh         $a3, 0x44($s1)
    /* 1B430 8002AC30 48002286 */  lh         $v0, 0x48($s1)
    /* 1B434 8002AC34 00000000 */  nop
    /* 1B438 8002AC38 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1B43C 8002AC3C 8000A427 */  addiu      $a0, $sp, 0x80
    /* 1B440 8002AC40 2128A502 */  addu       $a1, $s5, $a1
    /* 1B444 8002AC44 89EE030C */  jal        func_800FBA24
    /* 1B448 8002AC48 21300002 */   addu      $a2, $s0, $zero
    /* 1B44C 8002AC4C C0281200 */  sll        $a1, $s2, 3
    /* 1B450 8002AC50 21200002 */  addu       $a0, $s0, $zero
    /* 1B454 8002AC54 B47B020C */  jal        func_8009EED0
    /* 1B458 8002AC58 21288502 */   addu      $a1, $s4, $a1
  .L8002AC5C:
    /* 1B45C 8002AC5C F2AA0008 */  j          .L8002ABC8
    /* 1B460 8002AC60 01005226 */   addiu     $s2, $s2, 0x1
  .L8002AC64:
    /* 1B464 8002AC64 8E12040C */  jal        func_80104A38
    /* 1B468 8002AC68 21900000 */   addu      $s2, $zero, $zero
    /* 1B46C 8002AC6C 80101200 */  sll        $v0, $s2, 2
  .L8002AC70:
    /* 1B470 8002AC70 21185400 */  addu       $v1, $v0, $s4
    /* 1B474 8002AC74 3800628C */  lw         $v0, 0x38($v1)
    /* 1B478 8002AC78 00000000 */  nop
    /* 1B47C 8002AC7C 21004010 */  beqz       $v0, .L8002AD04
    /* 1B480 8002AC80 40281200 */   sll       $a1, $s2, 1
    /* 1B484 8002AC84 2128B200 */  addu       $a1, $a1, $s2
    /* 1B488 8002AC88 80280500 */  sll        $a1, $a1, 2
    /* 1B48C 8002AC8C 2328B200 */  subu       $a1, $a1, $s2
    /* 1B490 8002AC90 80200500 */  sll        $a0, $a1, 2
    /* 1B494 8002AC94 80290500 */  sll        $a1, $a1, 6
    /* 1B498 8002AC98 1280023C */  lui        $v0, %hi(D_8011E72C)
    /* 1B49C 8002AC9C 2CE74224 */  addiu      $v0, $v0, %lo(D_8011E72C)
    /* 1B4A0 8002ACA0 2128A200 */  addu       $a1, $a1, $v0
    /* 1B4A4 8002ACA4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 1B4A8 8002ACA8 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1B4AC 8002ACAC 4400628C */  lw         $v0, 0x44($v1)
    /* 1B4B0 8002ACB0 00000000 */  nop
    /* 1B4B4 8002ACB4 1800A2AF */  sw         $v0, 0x18($sp)
    /* 1B4B8 8002ACB8 4800628C */  lw         $v0, 0x48($v1)
    /* 1B4BC 8002ACBC 00000000 */  nop
    /* 1B4C0 8002ACC0 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 1B4C4 8002ACC4 D400A28C */  lw         $v0, 0xD4($a1)
    /* 1B4C8 8002ACC8 00000000 */  nop
    /* 1B4CC 8002ACCC 2000A2AF */  sw         $v0, 0x20($sp)
    /* 1B4D0 8002ACD0 D800A28C */  lw         $v0, 0xD8($a1)
    /* 1B4D4 8002ACD4 00000000 */  nop
    /* 1B4D8 8002ACD8 2400A2AF */  sw         $v0, 0x24($sp)
    /* 1B4DC 8002ACDC 3C00628C */  lw         $v0, 0x3C($v1)
    /* 1B4E0 8002ACE0 00000000 */  nop
    /* 1B4E4 8002ACE4 2800A2AF */  sw         $v0, 0x28($sp)
    /* 1B4E8 8002ACE8 4000628C */  lw         $v0, 0x40($v1)
    /* 1B4EC 8002ACEC 00000000 */  nop
    /* 1B4F0 8002ACF0 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 1B4F4 8002ACF4 2120C402 */  addu       $a0, $s6, $a0
    /* 1B4F8 8002ACF8 21300000 */  addu       $a2, $zero, $zero
    /* 1B4FC 8002ACFC 73BD020C */  jal        func_800AF5CC
    /* 1B500 8002AD00 21380000 */   addu      $a3, $zero, $zero
  .L8002AD04:
    /* 1B504 8002AD04 01005226 */  addiu      $s2, $s2, 0x1
    /* 1B508 8002AD08 D9FF401A */  blez       $s2, .L8002AC70
    /* 1B50C 8002AD0C 80101200 */   sll       $v0, $s2, 2
    /* 1B510 8002AD10 EAAA0008 */  j          .L8002ABA8
    /* 1B514 8002AD14 01007326 */   addiu     $s3, $s3, 0x1
  .L8002AD18:
    /* 1B518 8002AD18 079E020C */  jal        func_800A781C
    /* 1B51C 8002AD1C 0A000424 */   addiu     $a0, $zero, 0xA
    /* 1B520 8002AD20 01000424 */  addiu      $a0, $zero, 0x1
    /* 1B524 8002AD24 D0EC030C */  jal        func_800FB340
    /* 1B528 8002AD28 01000524 */   addiu     $a1, $zero, 0x1
    /* 1B52C 8002AD2C 3800A227 */  addiu      $v0, $sp, 0x38
    /* 1B530 8002AD30 6400B027 */  addiu      $s0, $sp, 0x64
    /* 1B534 8002AD34 0A005010 */  beq        $v0, $s0, .L8002AD60
    /* 1B538 8002AD38 01000224 */   addiu     $v0, $zero, 0x1
    /* 1B53C 8002AD3C 3800B127 */  addiu      $s1, $sp, 0x38
    /* 1B540 8002AD40 D4FF1026 */  addiu      $s0, $s0, -0x2C
  .L8002AD44:
    /* 1B544 8002AD44 21200002 */  addu       $a0, $s0, $zero
    /* 1B548 8002AD48 4CE1030C */  jal        func_800F8530
    /* 1B54C 8002AD4C 02000524 */   addiu     $a1, $zero, 0x2
    /* 1B550 8002AD50 FCFF3016 */  bne        $s1, $s0, .L8002AD44
    /* 1B554 8002AD54 D4FF1026 */   addiu     $s0, $s0, -0x2C
    /* 1B558 8002AD58 2C001026 */  addiu      $s0, $s0, 0x2C
    /* 1B55C 8002AD5C 01000224 */  addiu      $v0, $zero, 0x1
  .L8002AD60:
    /* 1B560 8002AD60 B400BF8F */  lw         $ra, 0xB4($sp)
    /* 1B564 8002AD64 B000BE8F */  lw         $fp, 0xB0($sp)
    /* 1B568 8002AD68 AC00B78F */  lw         $s7, 0xAC($sp)
    /* 1B56C 8002AD6C A800B68F */  lw         $s6, 0xA8($sp)
    /* 1B570 8002AD70 A400B58F */  lw         $s5, 0xA4($sp)
    /* 1B574 8002AD74 A000B48F */  lw         $s4, 0xA0($sp)
    /* 1B578 8002AD78 9C00B38F */  lw         $s3, 0x9C($sp)
    /* 1B57C 8002AD7C 9800B28F */  lw         $s2, 0x98($sp)
    /* 1B580 8002AD80 9400B18F */  lw         $s1, 0x94($sp)
    /* 1B584 8002AD84 9000B08F */  lw         $s0, 0x90($sp)
    /* 1B588 8002AD88 B800BD27 */  addiu      $sp, $sp, 0xB8
    /* 1B58C 8002AD8C 0800E003 */  jr         $ra
    /* 1B590 8002AD90 00000000 */   nop
endlabel func_8002A958
