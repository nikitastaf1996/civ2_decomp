.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006B28C, 0x184

glabel func_8006B28C
    /* 5BA8C 8006B28C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 5BA90 8006B290 1800BFAF */  sw         $ra, 0x18($sp)
    /* 5BA94 8006B294 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5BA98 8006B298 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5BA9C 8006B29C 01001024 */  addiu      $s0, $zero, 0x1
    /* 5BAA0 8006B2A0 01000224 */  addiu      $v0, $zero, 0x1
    /* 5BAA4 8006B2A4 1680013C */  lui        $at, %hi(D_80158872)
    /* 5BAA8 8006B2A8 728822A0 */  sb         $v0, %lo(D_80158872)($at)
    /* 5BAAC 8006B2AC 1280113C */  lui        $s1, %hi(D_8011A280)
    /* 5BAB0 8006B2B0 80A23186 */  lh         $s1, %lo(D_8011A280)($s1)
    /* 5BAB4 8006B2B4 1180043C */  lui        $a0, %hi(D_8010BC94)
    /* 5BAB8 8006B2B8 94BC8424 */  addiu      $a0, $a0, %lo(D_8010BC94)
    /* 5BABC 8006B2BC 09000524 */  addiu      $a1, $zero, 0x9
    /* 5BAC0 8006B2C0 9A8A020C */  jal        func_800A2A68
    /* 5BAC4 8006B2C4 21300000 */   addu      $a2, $zero, $zero
  .L8006B2C8:
    /* 5BAC8 8006B2C8 1680023C */  lui        $v0, %hi(D_80158872)
    /* 5BACC 8006B2CC 72884290 */  lbu        $v0, %lo(D_80158872)($v0)
    /* 5BAD0 8006B2D0 00000000 */  nop
    /* 5BAD4 8006B2D4 41004010 */  beqz       $v0, .L8006B3DC
    /* 5BAD8 8006B2D8 00000000 */   nop
    /* 5BADC 8006B2DC 1680023C */  lui        $v0, %hi(D_80158885)
    /* 5BAE0 8006B2E0 85884290 */  lbu        $v0, %lo(D_80158885)($v0)
    /* 5BAE4 8006B2E4 00000000 */  nop
    /* 5BAE8 8006B2E8 3C004010 */  beqz       $v0, .L8006B3DC
    /* 5BAEC 8006B2EC 00000000 */   nop
    /* 5BAF0 8006B2F0 1680023C */  lui        $v0, %hi(D_80158870)
    /* 5BAF4 8006B2F4 70884290 */  lbu        $v0, %lo(D_80158870)($v0)
    /* 5BAF8 8006B2F8 00000000 */  nop
    /* 5BAFC 8006B2FC 37004010 */  beqz       $v0, .L8006B3DC
    /* 5BB00 8006B300 00000000 */   nop
    /* 5BB04 8006B304 1280023C */  lui        $v0, %hi(D_8011ACBC)
    /* 5BB08 8006B308 BCAC428C */  lw         $v0, %lo(D_8011ACBC)($v0)
    /* 5BB0C 8006B30C 00000000 */  nop
    /* 5BB10 8006B310 32004014 */  bnez       $v0, .L8006B3DC
    /* 5BB14 8006B314 00000000 */   nop
    /* 5BB18 8006B318 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 5BB1C 8006B31C 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 5BB20 8006B320 00000000 */  nop
    /* 5BB24 8006B324 2D002216 */  bne        $s1, $v0, .L8006B3DC
    /* 5BB28 8006B328 00000000 */   nop
    /* 5BB2C 8006B32C 1680023C */  lui        $v0, %hi(D_80158894)
    /* 5BB30 8006B330 9488428C */  lw         $v0, %lo(D_80158894)($v0)
    /* 5BB34 8006B334 00000000 */  nop
    /* 5BB38 8006B338 08004010 */  beqz       $v0, .L8006B35C
    /* 5BB3C 8006B33C 21200000 */   addu      $a0, $zero, $zero
    /* 5BB40 8006B340 1680023C */  lui        $v0, %hi(D_80158A80)
    /* 5BB44 8006B344 808A428C */  lw         $v0, %lo(D_80158A80)($v0)
    /* 5BB48 8006B348 00000000 */  nop
    /* 5BB4C 8006B34C 09F84000 */  jalr       $v0
    /* 5BB50 8006B350 09000524 */   addiu     $a1, $zero, 0x9
    /* 5BB54 8006B354 EEAC0108 */  j          .L8006B3B8
    /* 5BB58 8006B358 00000000 */   nop
  .L8006B35C:
    /* 5BB5C 8006B35C 16000012 */  beqz       $s0, .L8006B3B8
    /* 5BB60 8006B360 00000000 */   nop
    /* 5BB64 8006B364 1280043C */  lui        $a0, %hi(D_8011E72C)
    /* 5BB68 8006B368 2CE78424 */  addiu      $a0, $a0, %lo(D_8011E72C)
    /* 5BB6C 8006B36C 1680053C */  lui        $a1, %hi(D_80158886)
    /* 5BB70 8006B370 8688A584 */  lh         $a1, %lo(D_80158886)($a1)
    /* 5BB74 8006B374 1680063C */  lui        $a2, %hi(D_80158888)
    /* 5BB78 8006B378 8888C684 */  lh         $a2, %lo(D_80158888)($a2)
    /* 5BB7C 8006B37C D37B020C */  jal        func_8009EF4C
    /* 5BB80 8006B380 00000000 */   nop
    /* 5BB84 8006B384 1680043C */  lui        $a0, %hi(D_80158A7C)
    /* 5BB88 8006B388 7C8A848C */  lw         $a0, %lo(D_80158A7C)($a0)
    /* 5BB8C 8006B38C 1F8B020C */  jal        func_800A2C7C
    /* 5BB90 8006B390 00000000 */   nop
    /* 5BB94 8006B394 21284000 */  addu       $a1, $v0, $zero
    /* 5BB98 8006B398 0700A004 */  bltz       $a1, .L8006B3B8
    /* 5BB9C 8006B39C 21800000 */   addu      $s0, $zero, $zero
    /* 5BBA0 8006B3A0 1680023C */  lui        $v0, %hi(D_80158A80)
    /* 5BBA4 8006B3A4 808A428C */  lw         $v0, %lo(D_80158A80)($v0)
    /* 5BBA8 8006B3A8 00000000 */  nop
    /* 5BBAC 8006B3AC 09F84000 */  jalr       $v0
    /* 5BBB0 8006B3B0 21200000 */   addu      $a0, $zero, $zero
    /* 5BBB4 8006B3B4 21800000 */  addu       $s0, $zero, $zero
  .L8006B3B8:
    /* 5BBB8 8006B3B8 AE9F020C */  jal        func_800A7EB8
    /* 5BBBC 8006B3BC 00000000 */   nop
    /* 5BBC0 8006B3C0 02000224 */  addiu      $v0, $zero, 0x2
    /* 5BBC4 8006B3C4 A00182AF */  sw         $v0, %gp_rel(D_80158678)($gp)
    /* 5BBC8 8006B3C8 1E12040C */  jal        func_80104878
    /* 5BBCC 8006B3CC 00000000 */   nop
    /* 5BBD0 8006B3D0 A00180AF */  sw         $zero, %gp_rel(D_80158678)($gp)
    /* 5BBD4 8006B3D4 B2AC0108 */  j          .L8006B2C8
    /* 5BBD8 8006B3D8 00000000 */   nop
  .L8006B3DC:
    /* 5BBDC 8006B3DC 1180043C */  lui        $a0, %hi(D_8010BC94)
    /* 5BBE0 8006B3E0 94BC8424 */  addiu      $a0, $a0, %lo(D_8010BC94)
    /* 5BBE4 8006B3E4 09000524 */  addiu      $a1, $zero, 0x9
    /* 5BBE8 8006B3E8 9A8A020C */  jal        func_800A2A68
    /* 5BBEC 8006B3EC 01000624 */   addiu     $a2, $zero, 0x1
    /* 5BBF0 8006B3F0 1680013C */  lui        $at, %hi(D_80158872)
    /* 5BBF4 8006B3F4 728820A0 */  sb         $zero, %lo(D_80158872)($at)
    /* 5BBF8 8006B3F8 1800BF8F */  lw         $ra, 0x18($sp)
    /* 5BBFC 8006B3FC 1400B18F */  lw         $s1, 0x14($sp)
    /* 5BC00 8006B400 1000B08F */  lw         $s0, 0x10($sp)
    /* 5BC04 8006B404 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 5BC08 8006B408 0800E003 */  jr         $ra
    /* 5BC0C 8006B40C 00000000 */   nop
endlabel func_8006B28C
