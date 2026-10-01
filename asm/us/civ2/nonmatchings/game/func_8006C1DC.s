.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006C1DC, 0x2B4

glabel func_8006C1DC
    /* 5C9DC 8006C1DC D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 5C9E0 8006C1E0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 5C9E4 8006C1E4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5C9E8 8006C1E8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5C9EC 8006C1EC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5C9F0 8006C1F0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5C9F4 8006C1F4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5C9F8 8006C1F8 1280013C */  lui        $at, %hi(D_801210B8)
    /* 5C9FC 8006C1FC B81022AC */  sw         $v0, %lo(D_801210B8)($at)
    /* 5CA00 8006C200 DD19010C */  jal        func_80046774
    /* 5CA04 8006C204 00000000 */   nop
    /* 5CA08 8006C208 1280113C */  lui        $s1, %hi(D_8011A274)
    /* 5CA0C 8006C20C 74A23126 */  addiu      $s1, $s1, %lo(D_8011A274)
    /* 5CA10 8006C210 1280133C */  lui        $s3, %hi(D_8011ACB4)
    /* 5CA14 8006C214 B4AC7326 */  addiu      $s3, $s3, %lo(D_8011ACB4)
  .L8006C218:
    /* 5CA18 8006C218 FEAD010C */  jal        func_8006B7F8
    /* 5CA1C 8006C21C 21900000 */   addu      $s2, $zero, $zero
    /* 5CA20 8006C220 1680023C */  lui        $v0, %hi(D_80158871)
    /* 5CA24 8006C224 71884290 */  lbu        $v0, %lo(D_80158871)($v0)
    /* 5CA28 8006C228 00000000 */  nop
    /* 5CA2C 8006C22C 03004014 */  bnez       $v0, .L8006C23C
    /* 5CA30 8006C230 00000000 */   nop
    /* 5CA34 8006C234 48A0010C */  jal        func_80068120
    /* 5CA38 8006C238 00000000 */   nop
  .L8006C23C:
    /* 5CA3C 8006C23C BFAF010C */  jal        func_8006BEFC
    /* 5CA40 8006C240 01000424 */   addiu     $a0, $zero, 0x1
    /* 5CA44 8006C244 8A004014 */  bnez       $v0, .L8006C470
    /* 5CA48 8006C248 21800000 */   addu      $s0, $zero, $zero
  .L8006C24C:
    /* 5CA4C 8006C24C 1680023C */  lui        $v0, %hi(D_80158870)
    /* 5CA50 8006C250 70884290 */  lbu        $v0, %lo(D_80158870)($v0)
    /* 5CA54 8006C254 00000000 */  nop
    /* 5CA58 8006C258 74004010 */  beqz       $v0, .L8006C42C
    /* 5CA5C 8006C25C 0800022A */   slti      $v0, $s0, 0x8
    /* 5CA60 8006C260 72004010 */  beqz       $v0, .L8006C42C
    /* 5CA64 8006C264 00000000 */   nop
    /* 5CA68 8006C268 1680023C */  lui        $v0, %hi(D_80158871)
    /* 5CA6C 8006C26C 71884290 */  lbu        $v0, %lo(D_80158871)($v0)
    /* 5CA70 8006C270 00000000 */  nop
    /* 5CA74 8006C274 2A100202 */  slt        $v0, $s0, $v0
    /* 5CA78 8006C278 6A004014 */  bnez       $v0, .L8006C424
    /* 5CA7C 8006C27C 00000000 */   nop
    /* 5CA80 8006C280 00002292 */  lbu        $v0, 0x0($s1)
    /* 5CA84 8006C284 00000000 */  nop
    /* 5CA88 8006C288 07100202 */  srav       $v0, $v0, $s0
    /* 5CA8C 8006C28C 01004230 */  andi       $v0, $v0, 0x1
    /* 5CA90 8006C290 64004010 */  beqz       $v0, .L8006C424
    /* 5CA94 8006C294 00000000 */   nop
    /* 5CA98 8006C298 FBFF30A2 */  sb         $s0, -0x5($s1)
    /* 5CA9C 8006C29C 01002292 */  lbu        $v0, 0x1($s1)
    /* 5CAA0 8006C2A0 00000000 */  nop
    /* 5CAA4 8006C2A4 07100202 */  srav       $v0, $v0, $s0
    /* 5CAA8 8006C2A8 01004230 */  andi       $v0, $v0, 0x1
    /* 5CAAC 8006C2AC 24004010 */  beqz       $v0, .L8006C340
    /* 5CAB0 8006C2B0 00000000 */   nop
    /* 5CAB4 8006C2B4 00006392 */  lbu        $v1, 0x0($s3)
    /* 5CAB8 8006C2B8 000070AE */  sw         $s0, 0x0($s3)
    /* 5CABC 8006C2BC FCFF2282 */  lb         $v0, -0x4($s1)
    /* 5CAC0 8006C2C0 00000000 */  nop
    /* 5CAC4 8006C2C4 02004004 */  bltz       $v0, .L8006C2D0
    /* 5CAC8 8006C2C8 00000000 */   nop
    /* 5CACC 8006C2CC 000062AE */  sw         $v0, 0x0($s3)
  .L8006C2D0:
    /* 5CAD0 8006C2D0 FF006330 */  andi       $v1, $v1, 0xFF
    /* 5CAD4 8006C2D4 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 5CAD8 8006C2D8 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 5CADC 8006C2DC 00000000 */  nop
    /* 5CAE0 8006C2E0 06004314 */  bne        $v0, $v1, .L8006C2FC
    /* 5CAE4 8006C2E4 00000000 */   nop
    /* 5CAE8 8006C2E8 1680023C */  lui        $v0, %hi(D_80158871)
    /* 5CAEC 8006C2EC 71884290 */  lbu        $v0, %lo(D_80158871)($v0)
    /* 5CAF0 8006C2F0 00000000 */  nop
    /* 5CAF4 8006C2F4 09004010 */  beqz       $v0, .L8006C31C
    /* 5CAF8 8006C2F8 00000000 */   nop
  .L8006C2FC:
    /* 5CAFC 8006C2FC 1280043C */  lui        $a0, %hi(D_8011E72C)
    /* 5CB00 8006C300 2CE78424 */  addiu      $a0, $a0, %lo(D_8011E72C)
    /* 5CB04 8006C304 4485020C */  jal        func_800A1510
    /* 5CB08 8006C308 00000000 */   nop
    /* 5CB0C 8006C30C 1280043C */  lui        $a0, %hi(D_8011ACB4)
    /* 5CB10 8006C310 B4AC848C */  lw         $a0, %lo(D_8011ACB4)($a0)
    /* 5CB14 8006C314 986F020C */  jal        func_8009BE60
    /* 5CB18 8006C318 01000524 */   addiu     $a1, $zero, 0x1
  .L8006C31C:
    /* 5CB1C 8006C31C 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 5CB20 8006C320 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 5CB24 8006C324 00000000 */  nop
    /* 5CB28 8006C328 07100202 */  srav       $v0, $v0, $s0
    /* 5CB2C 8006C32C 01004230 */  andi       $v0, $v0, 0x1
    /* 5CB30 8006C330 03004010 */  beqz       $v0, .L8006C340
    /* 5CB34 8006C334 00000000 */   nop
    /* 5CB38 8006C338 1680013C */  lui        $at, %hi(D_80158A04)
    /* 5CB3C 8006C33C 048A20AC */  sw         $zero, %lo(D_80158A04)($at)
  .L8006C340:
    /* 5CB40 8006C340 1680023C */  lui        $v0, %hi(D_80158871)
    /* 5CB44 8006C344 71884290 */  lbu        $v0, %lo(D_80158871)($v0)
    /* 5CB48 8006C348 00000000 */  nop
    /* 5CB4C 8006C34C 0F004010 */  beqz       $v0, .L8006C38C
    /* 5CB50 8006C350 00000000 */   nop
    /* 5CB54 8006C354 9C01828F */  lw         $v0, %gp_rel(D_80158674)($gp)
    /* 5CB58 8006C358 00000000 */  nop
    /* 5CB5C 8006C35C 0D004010 */  beqz       $v0, .L8006C394
    /* 5CB60 8006C360 00000000 */   nop
    /* 5CB64 8006C364 1280043C */  lui        $a0, %hi(D_8011E72C)
    /* 5CB68 8006C368 2CE78424 */  addiu      $a0, $a0, %lo(D_8011E72C)
    /* 5CB6C 8006C36C 4485020C */  jal        func_800A1510
    /* 5CB70 8006C370 00000000 */   nop
    /* 5CB74 8006C374 1280043C */  lui        $a0, %hi(D_8011ACB4)
    /* 5CB78 8006C378 B4AC848C */  lw         $a0, %lo(D_8011ACB4)($a0)
    /* 5CB7C 8006C37C 986F020C */  jal        func_8009BE60
    /* 5CB80 8006C380 01000524 */   addiu     $a1, $zero, 0x1
    /* 5CB84 8006C384 BF12040C */  jal        func_80104AFC
    /* 5CB88 8006C388 00000000 */   nop
  .L8006C38C:
    /* 5CB8C 8006C38C E7A8010C */  jal        func_8006A39C
    /* 5CB90 8006C390 21200002 */   addu      $a0, $s0, $zero
  .L8006C394:
    /* 5CB94 8006C394 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 5CB98 8006C398 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 5CB9C 8006C39C 00000000 */  nop
    /* 5CBA0 8006C3A0 07100202 */  srav       $v0, $v0, $s0
    /* 5CBA4 8006C3A4 01004230 */  andi       $v0, $v0, 0x1
    /* 5CBA8 8006C3A8 0A004010 */  beqz       $v0, .L8006C3D4
    /* 5CBAC 8006C3AC 00000000 */   nop
    /* 5CBB0 8006C3B0 45AE010C */  jal        func_8006B914
    /* 5CBB4 8006C3B4 01001224 */   addiu     $s2, $zero, 0x1
    /* 5CBB8 8006C3B8 04AD010C */  jal        func_8006B410
    /* 5CBBC 8006C3BC 00000000 */   nop
    /* 5CBC0 8006C3C0 01000224 */  addiu      $v0, $zero, 0x1
    /* 5CBC4 8006C3C4 1680013C */  lui        $at, %hi(D_80158A04)
    /* 5CBC8 8006C3C8 048A22AC */  sw         $v0, %lo(D_80158A04)($at)
    /* 5CBCC 8006C3CC F7B00108 */  j          .L8006C3DC
    /* 5CBD0 8006C3D0 00000000 */   nop
  .L8006C3D4:
    /* 5CBD4 8006C3D4 3107010C */  jal        func_80041CC4
    /* 5CBD8 8006C3D8 00000000 */   nop
  .L8006C3DC:
    /* 5CBDC 8006C3DC 1680013C */  lui        $at, %hi(D_80158871)
    /* 5CBE0 8006C3E0 718820A0 */  sb         $zero, %lo(D_80158871)($at)
    /* 5CBE4 8006C3E4 9C0180AF */  sw         $zero, %gp_rel(D_80158674)($gp)
    /* 5CBE8 8006C3E8 1280023C */  lui        $v0, %hi(D_8011A258)
    /* 5CBEC 8006C3EC 58A24224 */  addiu      $v0, $v0, %lo(D_8011A258)
    /* 5CBF0 8006C3F0 00004394 */  lhu        $v1, 0x0($v0)
    /* 5CBF4 8006C3F4 00000000 */  nop
    /* 5CBF8 8006C3F8 FEFF6330 */  andi       $v1, $v1, 0xFFFE
    /* 5CBFC 8006C3FC 000043A4 */  sh         $v1, 0x0($v0)
    /* 5CC00 8006C400 1680023C */  lui        $v0, %hi(D_80158870)
    /* 5CC04 8006C404 70884290 */  lbu        $v0, %lo(D_80158870)($v0)
    /* 5CC08 8006C408 00000000 */  nop
    /* 5CC0C 8006C40C 18004010 */  beqz       $v0, .L8006C470
    /* 5CC10 8006C410 00000000 */   nop
    /* 5CC14 8006C414 BFAF010C */  jal        func_8006BEFC
    /* 5CC18 8006C418 21200000 */   addu      $a0, $zero, $zero
    /* 5CC1C 8006C41C 14004014 */  bnez       $v0, .L8006C470
    /* 5CC20 8006C420 00000000 */   nop
  .L8006C424:
    /* 5CC24 8006C424 93B00108 */  j          .L8006C24C
    /* 5CC28 8006C428 01001026 */   addiu     $s0, $s0, 0x1
  .L8006C42C:
    /* 5CC2C 8006C42C 0B004016 */  bnez       $s2, .L8006C45C
    /* 5CC30 8006C430 00000000 */   nop
    /* 5CC34 8006C434 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 5CC38 8006C438 B4AC4290 */  lbu        $v0, %lo(D_8011ACB4)($v0)
    /* 5CC3C 8006C43C 1280013C */  lui        $at, %hi(D_8011A26F)
    /* 5CC40 8006C440 6FA222A0 */  sb         $v0, %lo(D_8011A26F)($at)
    /* 5CC44 8006C444 04AD010C */  jal        func_8006B410
    /* 5CC48 8006C448 00000000 */   nop
    /* 5CC4C 8006C44C BFAF010C */  jal        func_8006BEFC
    /* 5CC50 8006C450 21200000 */   addu      $a0, $zero, $zero
    /* 5CC54 8006C454 06004014 */  bnez       $v0, .L8006C470
    /* 5CC58 8006C458 00000000 */   nop
  .L8006C45C:
    /* 5CC5C 8006C45C 1680023C */  lui        $v0, %hi(D_80158870)
    /* 5CC60 8006C460 70884290 */  lbu        $v0, %lo(D_80158870)($v0)
    /* 5CC64 8006C464 00000000 */  nop
    /* 5CC68 8006C468 6BFF4014 */  bnez       $v0, .L8006C218
    /* 5CC6C 8006C46C 00000000 */   nop
  .L8006C470:
    /* 5CC70 8006C470 2000BF8F */  lw         $ra, 0x20($sp)
    /* 5CC74 8006C474 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5CC78 8006C478 1800B28F */  lw         $s2, 0x18($sp)
    /* 5CC7C 8006C47C 1400B18F */  lw         $s1, 0x14($sp)
    /* 5CC80 8006C480 1000B08F */  lw         $s0, 0x10($sp)
    /* 5CC84 8006C484 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 5CC88 8006C488 0800E003 */  jr         $ra
    /* 5CC8C 8006C48C 00000000 */   nop
endlabel func_8006C1DC
