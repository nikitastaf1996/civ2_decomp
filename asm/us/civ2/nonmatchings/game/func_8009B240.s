.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009B240, 0x248

glabel func_8009B240
    /* 8BA40 8009B240 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 8BA44 8009B244 4800BFAF */  sw         $ra, 0x48($sp)
    /* 8BA48 8009B248 4400B7AF */  sw         $s7, 0x44($sp)
    /* 8BA4C 8009B24C 4000B6AF */  sw         $s6, 0x40($sp)
    /* 8BA50 8009B250 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 8BA54 8009B254 3800B4AF */  sw         $s4, 0x38($sp)
    /* 8BA58 8009B258 3400B3AF */  sw         $s3, 0x34($sp)
    /* 8BA5C 8009B25C 3000B2AF */  sw         $s2, 0x30($sp)
    /* 8BA60 8009B260 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 8BA64 8009B264 2800B0AF */  sw         $s0, 0x28($sp)
    /* 8BA68 8009B268 21988000 */  addu       $s3, $a0, $zero
    /* 8BA6C 8009B26C 21B8A000 */  addu       $s7, $a1, $zero
    /* 8BA70 8009B270 21B0C000 */  addu       $s6, $a2, $zero
    /* 8BA74 8009B274 F804828F */  lw         $v0, %gp_rel(D_801589D0)($gp)
    /* 8BA78 8009B278 00000000 */  nop
    /* 8BA7C 8009B27C 76004014 */  bnez       $v0, .L8009B458
    /* 8BA80 8009B280 21A0E000 */   addu      $s4, $a3, $zero
    /* 8BA84 8009B284 02008006 */  bltz       $s4, .L8009B290
    /* 8BA88 8009B288 00000000 */   nop
    /* 8BA8C 8009B28C 03009426 */  addiu      $s4, $s4, 0x3
  .L8009B290:
    /* 8BA90 8009B290 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 8BA94 8009B294 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 8BA98 8009B298 00000000 */  nop
    /* 8BA9C 8009B29C 6E004018 */  blez       $v0, .L8009B458
    /* 8BAA0 8009B2A0 21800000 */   addu      $s0, $zero, $zero
    /* 8BAA4 8009B2A4 1280153C */  lui        $s5, %hi(D_8011ACB4)
    /* 8BAA8 8009B2A8 B4ACB526 */  addiu      $s5, $s5, %lo(D_8011ACB4)
    /* 8BAAC 8009B2AC 40101000 */  sll        $v0, $s0, 1
  .L8009B2B0:
    /* 8BAB0 8009B2B0 21105000 */  addu       $v0, $v0, $s0
    /* 8BAB4 8009B2B4 80100200 */  sll        $v0, $v0, 2
    /* 8BAB8 8009B2B8 23105000 */  subu       $v0, $v0, $s0
    /* 8BABC 8009B2BC C0100200 */  sll        $v0, $v0, 3
    /* 8BAC0 8009B2C0 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 8BAC4 8009B2C4 21082200 */  addu       $at, $at, $v0
    /* 8BAC8 8009B2C8 D03E3284 */  lh         $s2, %lo(D_80113ED0)($at)
    /* 8BACC 8009B2CC 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 8BAD0 8009B2D0 21082200 */  addu       $at, $at, $v0
    /* 8BAD4 8009B2D4 D23E3184 */  lh         $s1, %lo(D_80113ED2)($at)
    /* 8BAD8 8009B2D8 08008006 */  bltz       $s4, .L8009B2FC
    /* 8BADC 8009B2DC 21204002 */   addu      $a0, $s2, $zero
    /* 8BAE0 8009B2E0 21282002 */  addu       $a1, $s1, $zero
    /* 8BAE4 8009B2E4 2130E002 */  addu       $a2, $s7, $zero
    /* 8BAE8 8009B2E8 653B030C */  jal        func_800CED94
    /* 8BAEC 8009B2EC 2138C002 */   addu      $a3, $s6, $zero
    /* 8BAF0 8009B2F0 2A108202 */  slt        $v0, $s4, $v0
    /* 8BAF4 8009B2F4 51004014 */  bnez       $v0, .L8009B43C
    /* 8BAF8 8009B2F8 00000000 */   nop
  .L8009B2FC:
    /* 8BAFC 8009B2FC 21206002 */  addu       $a0, $s3, $zero
    /* 8BB00 8009B300 21284002 */  addu       $a1, $s2, $zero
    /* 8BB04 8009B304 796C020C */  jal        func_8009B1E4
    /* 8BB08 8009B308 21302002 */   addu      $a2, $s1, $zero
    /* 8BB0C 8009B30C 4B004010 */  beqz       $v0, .L8009B43C
    /* 8BB10 8009B310 21204002 */   addu      $a0, $s2, $zero
    /* 8BB14 8009B314 0000A68E */  lw         $a2, 0x0($s5)
    /* 8BB18 8009B318 A161020C */  jal        func_80098684
    /* 8BB1C 8009B31C 21282002 */   addu      $a1, $s1, $zero
    /* 8BB20 8009B320 21204000 */  addu       $a0, $v0, $zero
    /* 8BB24 8009B324 40101000 */  sll        $v0, $s0, 1
    /* 8BB28 8009B328 21105000 */  addu       $v0, $v0, $s0
    /* 8BB2C 8009B32C 80100200 */  sll        $v0, $v0, 2
    /* 8BB30 8009B330 23105000 */  subu       $v0, $v0, $s0
    /* 8BB34 8009B334 C0280200 */  sll        $a1, $v0, 3
    /* 8BB38 8009B338 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 8BB3C 8009B33C 21082500 */  addu       $at, $at, $a1
    /* 8BB40 8009B340 D83E2380 */  lb         $v1, %lo(D_80113ED8)($at)
    /* 8BB44 8009B344 0000A292 */  lbu        $v0, 0x0($s5)
    /* 8BB48 8009B348 00000000 */  nop
    /* 8BB4C 8009B34C 1A006210 */  beq        $v1, $v0, .L8009B3B8
    /* 8BB50 8009B350 00000000 */   nop
    /* 8BB54 8009B354 17008010 */  beqz       $a0, .L8009B3B4
    /* 8BB58 8009B358 21300000 */   addu      $a2, $zero, $zero
    /* 8BB5C 8009B35C 1180013C */  lui        $at, %hi(D_80113EDC)
    /* 8BB60 8009B360 21082500 */  addu       $at, $at, $a1
    /* 8BB64 8009B364 DC3E2280 */  lb         $v0, %lo(D_80113EDC)($at)
    /* 8BB68 8009B368 0000A38E */  lw         $v1, 0x0($s5)
    /* 8BB6C 8009B36C 00000000 */  nop
    /* 8BB70 8009B370 07106200 */  srav       $v0, $v0, $v1
    /* 8BB74 8009B374 01004230 */  andi       $v0, $v0, 0x1
    /* 8BB78 8009B378 0E004010 */  beqz       $v0, .L8009B3B4
    /* 8BB7C 8009B37C 40101000 */   sll       $v0, $s0, 1
    /* 8BB80 8009B380 21105000 */  addu       $v0, $v0, $s0
    /* 8BB84 8009B384 80100200 */  sll        $v0, $v0, 2
    /* 8BB88 8009B388 23105000 */  subu       $v0, $v0, $s0
    /* 8BB8C 8009B38C C0100200 */  sll        $v0, $v0, 3
    /* 8BB90 8009B390 1180033C */  lui        $v1, %hi(D_80113EDD)
    /* 8BB94 8009B394 DD3E6324 */  addiu      $v1, $v1, %lo(D_80113EDD)
    /* 8BB98 8009B398 1280043C */  lui        $a0, %hi(D_8011ACB4)
    /* 8BB9C 8009B39C B4AC848C */  lw         $a0, %lo(D_8011ACB4)($a0)
    /* 8BBA0 8009B3A0 21104300 */  addu       $v0, $v0, $v1
    /* 8BBA4 8009B3A4 21104400 */  addu       $v0, $v0, $a0
    /* 8BBA8 8009B3A8 00004280 */  lb         $v0, 0x0($v0)
    /* 8BBAC 8009B3AC 00000000 */  nop
    /* 8BBB0 8009B3B0 2B300200 */  sltu       $a2, $zero, $v0
  .L8009B3B4:
    /* 8BBB4 8009B3B4 2120C000 */  addu       $a0, $a2, $zero
  .L8009B3B8:
    /* 8BBB8 8009B3B8 1280023C */  lui        $v0, %hi(D_8011A271)
    /* 8BBBC 8009B3BC 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* 8BBC0 8009B3C0 00000000 */  nop
    /* 8BBC4 8009B3C4 02004010 */  beqz       $v0, .L8009B3D0
    /* 8BBC8 8009B3C8 00000000 */   nop
    /* 8BBCC 8009B3CC 01000424 */  addiu      $a0, $zero, 0x1
  .L8009B3D0:
    /* 8BBD0 8009B3D0 1A008010 */  beqz       $a0, .L8009B43C
    /* 8BBD4 8009B3D4 21206002 */   addu      $a0, $s3, $zero
    /* 8BBD8 8009B3D8 1000B1AF */  sw         $s1, 0x10($sp)
    /* 8BBDC 8009B3DC 1800A527 */  addiu      $a1, $sp, 0x18
    /* 8BBE0 8009B3E0 1C00A627 */  addiu      $a2, $sp, 0x1C
    /* 8BBE4 8009B3E4 0A66020C */  jal        func_80099828
    /* 8BBE8 8009B3E8 21384002 */   addu      $a3, $s2, $zero
    /* 8BBEC 8009B3EC 48026886 */  lh         $t0, 0x248($s3)
    /* 8BBF0 8009B3F0 1800A68F */  lw         $a2, 0x18($sp)
    /* 8BBF4 8009B3F4 46026286 */  lh         $v0, 0x246($s3)
    /* 8BBF8 8009B3F8 00000000 */  nop
    /* 8BBFC 8009B3FC 40380200 */  sll        $a3, $v0, 1
    /* 8BC00 8009B400 2138E200 */  addu       $a3, $a3, $v0
    /* 8BC04 8009B404 83380700 */  sra        $a3, $a3, 2
    /* 8BC08 8009B408 1C00A38F */  lw         $v1, 0x1C($sp)
    /* 8BC0C 8009B40C 40281000 */  sll        $a1, $s0, 1
    /* 8BC10 8009B410 2128B000 */  addu       $a1, $a1, $s0
    /* 8BC14 8009B414 80280500 */  sll        $a1, $a1, 2
    /* 8BC18 8009B418 2328B000 */  subu       $a1, $a1, $s0
    /* 8BC1C 8009B41C C0280500 */  sll        $a1, $a1, 3
    /* 8BC20 8009B420 1180023C */  lui        $v0, %hi(D_80113EF2)
    /* 8BC24 8009B424 F23E4224 */  addiu      $v0, $v0, %lo(D_80113EF2)
    /* 8BC28 8009B428 21206002 */  addu       $a0, $s3, $zero
    /* 8BC2C 8009B42C 2128A200 */  addu       $a1, $a1, $v0
    /* 8BC30 8009B430 21300601 */  addu       $a2, $t0, $a2
    /* 8BC34 8009B434 2A80030C */  jal        func_800E00A8
    /* 8BC38 8009B438 2138E300 */   addu      $a3, $a3, $v1
  .L8009B43C:
    /* 8BC3C 8009B43C 01001026 */  addiu      $s0, $s0, 0x1
    /* 8BC40 8009B440 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 8BC44 8009B444 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 8BC48 8009B448 00000000 */  nop
    /* 8BC4C 8009B44C 2A100202 */  slt        $v0, $s0, $v0
    /* 8BC50 8009B450 97FF4014 */  bnez       $v0, .L8009B2B0
    /* 8BC54 8009B454 40101000 */   sll       $v0, $s0, 1
  .L8009B458:
    /* 8BC58 8009B458 4800BF8F */  lw         $ra, 0x48($sp)
    /* 8BC5C 8009B45C 4400B78F */  lw         $s7, 0x44($sp)
    /* 8BC60 8009B460 4000B68F */  lw         $s6, 0x40($sp)
    /* 8BC64 8009B464 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 8BC68 8009B468 3800B48F */  lw         $s4, 0x38($sp)
    /* 8BC6C 8009B46C 3400B38F */  lw         $s3, 0x34($sp)
    /* 8BC70 8009B470 3000B28F */  lw         $s2, 0x30($sp)
    /* 8BC74 8009B474 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 8BC78 8009B478 2800B08F */  lw         $s0, 0x28($sp)
    /* 8BC7C 8009B47C 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 8BC80 8009B480 0800E003 */  jr         $ra
    /* 8BC84 8009B484 00000000 */   nop
endlabel func_8009B240
