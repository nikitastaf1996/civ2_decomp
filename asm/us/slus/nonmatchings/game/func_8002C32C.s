.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002C32C, 0x118

glabel func_8002C32C
    /* 1CB2C 8002C32C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1CB30 8002C330 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1CB34 8002C334 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1CB38 8002C338 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1CB3C 8002C33C 3000B18F */  lw         $s1, 0x30($sp)
    /* 1CB40 8002C340 1000B08C */  lw         $s0, 0x10($a1)
    /* 1CB44 8002C344 0000828C */  lw         $v0, 0x0($a0)
    /* 1CB48 8002C348 00000000 */  nop
    /* 1CB4C 8002C34C 0000A2AC */  sw         $v0, 0x0($a1)
    /* 1CB50 8002C350 04008290 */  lbu        $v0, 0x4($a0)
    /* 1CB54 8002C354 00000000 */  nop
    /* 1CB58 8002C358 0400A2A0 */  sb         $v0, 0x4($a1)
    /* 1CB5C 8002C35C 05008290 */  lbu        $v0, 0x5($a0)
    /* 1CB60 8002C360 00000000 */  nop
    /* 1CB64 8002C364 0500A2A0 */  sb         $v0, 0x5($a1)
    /* 1CB68 8002C368 06008290 */  lbu        $v0, 0x6($a0)
    /* 1CB6C 8002C36C 00000000 */  nop
    /* 1CB70 8002C370 0600A2A0 */  sb         $v0, 0x6($a1)
    /* 1CB74 8002C374 08008294 */  lhu        $v0, 0x8($a0)
    /* 1CB78 8002C378 00000000 */  nop
    /* 1CB7C 8002C37C 0800A2A4 */  sh         $v0, 0x8($a1)
    /* 1CB80 8002C380 0A008294 */  lhu        $v0, 0xA($a0)
    /* 1CB84 8002C384 00000000 */  nop
    /* 1CB88 8002C388 0A00A2A4 */  sh         $v0, 0xA($a1)
    /* 1CB8C 8002C38C 0C008290 */  lbu        $v0, 0xC($a0)
    /* 1CB90 8002C390 00000000 */  nop
    /* 1CB94 8002C394 0C00A2A0 */  sb         $v0, 0xC($a1)
    /* 1CB98 8002C398 0000C290 */  lbu        $v0, 0x0($a2)
    /* 1CB9C 8002C39C 00000000 */  nop
    /* 1CBA0 8002C3A0 14004010 */  beqz       $v0, .L8002C3F4
    /* 1CBA4 8002C3A4 00000000 */   nop
    /* 1CBA8 8002C3A8 0D000324 */  addiu      $v1, $zero, 0xD
  .L8002C3AC:
    /* 1CBAC 8002C3AC 1100E018 */  blez       $a3, .L8002C3F4
    /* 1CBB0 8002C3B0 00000000 */   nop
    /* 1CBB4 8002C3B4 0000C290 */  lbu        $v0, 0x0($a2)
    /* 1CBB8 8002C3B8 00000000 */  nop
    /* 1CBBC 8002C3BC 04004314 */  bne        $v0, $v1, .L8002C3D0
    /* 1CBC0 8002C3C0 00000000 */   nop
    /* 1CBC4 8002C3C4 000000A2 */  sb         $zero, 0x0($s0)
    /* 1CBC8 8002C3C8 F9B00008 */  j          .L8002C3E4
    /* 1CBCC 8002C3CC 21380000 */   addu      $a3, $zero, $zero
  .L8002C3D0:
    /* 1CBD0 8002C3D0 0000C290 */  lbu        $v0, 0x0($a2)
    /* 1CBD4 8002C3D4 00000000 */  nop
    /* 1CBD8 8002C3D8 000002A2 */  sb         $v0, 0x0($s0)
    /* 1CBDC 8002C3DC 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1CBE0 8002C3E0 01001026 */  addiu      $s0, $s0, 0x1
  .L8002C3E4:
    /* 1CBE4 8002C3E4 0000C290 */  lbu        $v0, 0x0($a2)
    /* 1CBE8 8002C3E8 00000000 */  nop
    /* 1CBEC 8002C3EC EFFF4014 */  bnez       $v0, .L8002C3AC
    /* 1CBF0 8002C3F0 FFFFE724 */   addiu     $a3, $a3, -0x1
  .L8002C3F4:
    /* 1CBF4 8002C3F4 0D002012 */  beqz       $s1, .L8002C42C
    /* 1CBF8 8002C3F8 000000A2 */   sb        $zero, 0x0($s0)
    /* 1CBFC 8002C3FC 1000A48C */  lw         $a0, 0x10($a1)
    /* 1CC00 8002C400 53B6000C */  jal        func_8002D94C
    /* 1CC04 8002C404 00000000 */   nop
    /* 1CC08 8002C408 23102202 */  subu       $v0, $s1, $v0
    /* 1CC0C 8002C40C 06004018 */  blez       $v0, .L8002C428
    /* 1CC10 8002C410 00000000 */   nop
    /* 1CC14 8002C414 20000324 */  addiu      $v1, $zero, 0x20
  .L8002C418:
    /* 1CC18 8002C418 000003A2 */  sb         $v1, 0x0($s0)
    /* 1CC1C 8002C41C FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 1CC20 8002C420 FDFF401C */  bgtz       $v0, .L8002C418
    /* 1CC24 8002C424 01001026 */   addiu     $s0, $s0, 0x1
  .L8002C428:
    /* 1CC28 8002C428 000000A2 */  sb         $zero, 0x0($s0)
  .L8002C42C:
    /* 1CC2C 8002C42C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1CC30 8002C430 1400B18F */  lw         $s1, 0x14($sp)
    /* 1CC34 8002C434 1000B08F */  lw         $s0, 0x10($sp)
    /* 1CC38 8002C438 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1CC3C 8002C43C 0800E003 */  jr         $ra
    /* 1CC40 8002C440 00000000 */   nop
endlabel func_8002C32C
