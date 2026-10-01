.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004C9FC, 0x464

glabel func_8004C9FC
    /* 3D1FC 8004C9FC C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 3D200 8004CA00 3800BFAF */  sw         $ra, 0x38($sp)
    /* 3D204 8004CA04 3400B3AF */  sw         $s3, 0x34($sp)
    /* 3D208 8004CA08 3000B2AF */  sw         $s2, 0x30($sp)
    /* 3D20C 8004CA0C 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 3D210 8004CA10 2800B0AF */  sw         $s0, 0x28($sp)
    /* 3D214 8004CA14 21888000 */  addu       $s1, $a0, $zero
    /* 3D218 8004CA18 2190A000 */  addu       $s2, $a1, $zero
    /* 3D21C 8004CA1C BC0F828F */  lw         $v0, %gp_rel(D_80159494)($gp)
    /* 3D220 8004CA20 00000000 */  nop
    /* 3D224 8004CA24 CB004004 */  bltz       $v0, .L8004CD54
    /* 3D228 8004CA28 2198C000 */   addu      $s3, $a2, $zero
    /* 3D22C 8004CA2C BC0F858F */  lw         $a1, %gp_rel(D_80159494)($gp)
    /* 3D230 8004CA30 DBCA010C */  jal        func_80072B6C
    /* 3D234 8004CA34 21204002 */   addu      $a0, $s2, $zero
    /* 3D238 8004CA38 80180200 */  sll        $v1, $v0, 2
    /* 3D23C 8004CA3C 21186200 */  addu       $v1, $v1, $v0
    /* 3D240 8004CA40 80800300 */  sll        $s0, $v1, 2
    /* 3D244 8004CA44 7C01838F */  lw         $v1, %gp_rel(D_80158654)($gp)
    /* 3D248 8004CA48 00000000 */  nop
    /* 3D24C 8004CA4C 33006228 */  slti       $v0, $v1, 0x33
    /* 3D250 8004CA50 09004014 */  bnez       $v0, .L8004CA78
    /* 3D254 8004CA54 18000302 */   mult      $s0, $v1
    /* 3D258 8004CA58 12800000 */  mflo       $s0
    /* 3D25C 8004CA5C EB51023C */  lui        $v0, (0x51EB851F >> 16)
    /* 3D260 8004CA60 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
    /* 3D264 8004CA64 18000202 */  mult       $s0, $v0
    /* 3D268 8004CA68 10400000 */  mfhi       $t0
    /* 3D26C 8004CA6C 03190800 */  sra        $v1, $t0, 4
    /* 3D270 8004CA70 C3171000 */  sra        $v0, $s0, 31
    /* 3D274 8004CA74 23806200 */  subu       $s0, $v1, $v0
  .L8004CA78:
    /* 3D278 8004CA78 1280013C */  lui        $at, %hi(D_8011A37E)
    /* 3D27C 8004CA7C 21083100 */  addu       $at, $at, $s1
    /* 3D280 8004CA80 7EA32390 */  lbu        $v1, %lo(D_8011A37E)($at)
    /* 3D284 8004CA84 07000224 */  addiu      $v0, $zero, 0x7
    /* 3D288 8004CA88 1A006214 */  bne        $v1, $v0, .L8004CAF4
    /* 3D28C 8004CA8C 40101100 */   sll       $v0, $s1, 1
    /* 3D290 8004CA90 21105100 */  addu       $v0, $v0, $s1
    /* 3D294 8004CA94 80100200 */  sll        $v0, $v0, 2
    /* 3D298 8004CA98 23105100 */  subu       $v0, $v0, $s1
    /* 3D29C 8004CA9C 00110200 */  sll        $v0, $v0, 4
    /* 3D2A0 8004CAA0 23105100 */  subu       $v0, $v0, $s1
    /* 3D2A4 8004CAA4 C0100200 */  sll        $v0, $v0, 3
    /* 3D2A8 8004CAA8 1180013C */  lui        $at, %hi(D_801176FA)
    /* 3D2AC 8004CAAC 21082200 */  addu       $at, $at, $v0
    /* 3D2B0 8004CAB0 FA762284 */  lh         $v0, %lo(D_801176FA)($at)
    /* 3D2B4 8004CAB4 00000000 */  nop
    /* 3D2B8 8004CAB8 05004228 */  slti       $v0, $v0, 0x5
    /* 3D2BC 8004CABC 0D004014 */  bnez       $v0, .L8004CAF4
    /* 3D2C0 8004CAC0 00000000 */   nop
    /* 3D2C4 8004CAC4 1280033C */  lui        $v1, %hi(D_8011A262)
    /* 3D2C8 8004CAC8 62A26324 */  addiu      $v1, $v1, %lo(D_8011A262)
    /* 3D2CC 8004CACC 00006284 */  lh         $v0, 0x0($v1)
    /* 3D2D0 8004CAD0 00000000 */  nop
    /* 3D2D4 8004CAD4 C9004228 */  slti       $v0, $v0, 0xC9
    /* 3D2D8 8004CAD8 06004014 */  bnez       $v0, .L8004CAF4
    /* 3D2DC 8004CADC 00000000 */   nop
    /* 3D2E0 8004CAE0 10006290 */  lbu        $v0, 0x10($v1)
    /* 3D2E4 8004CAE4 00000000 */  nop
    /* 3D2E8 8004CAE8 02004010 */  beqz       $v0, .L8004CAF4
    /* 3D2EC 8004CAEC 00000000 */   nop
    /* 3D2F0 8004CAF0 40801000 */  sll        $s0, $s0, 1
  .L8004CAF4:
    /* 3D2F4 8004CAF4 BC0F828F */  lw         $v0, %gp_rel(D_80159494)($gp)
    /* 3D2F8 8004CAF8 1280013C */  lui        $at, %hi(D_8011A2E5)
    /* 3D2FC 8004CAFC 21082200 */  addu       $at, $at, $v0
    /* 3D300 8004CB00 E5A22480 */  lb         $a0, %lo(D_8011A2E5)($at)
    /* 3D304 8004CB04 0B3B030C */  jal        func_800CEC2C
    /* 3D308 8004CB08 00000000 */   nop
    /* 3D30C 8004CB0C FFFF4324 */  addiu      $v1, $v0, -0x1
    /* 3D310 8004CB10 21206000 */  addu       $a0, $v1, $zero
    /* 3D314 8004CB14 01000224 */  addiu      $v0, $zero, 0x1
    /* 3D318 8004CB18 2A104300 */  slt        $v0, $v0, $v1
    /* 3D31C 8004CB1C 02004010 */  beqz       $v0, .L8004CB28
    /* 3D320 8004CB20 01000324 */   addiu     $v1, $zero, 0x1
    /* 3D324 8004CB24 21188000 */  addu       $v1, $a0, $zero
  .L8004CB28:
    /* 3D328 8004CB28 1A000302 */  div        $zero, $s0, $v1
    /* 3D32C 8004CB2C 02006014 */  bnez       $v1, .L8004CB38
    /* 3D330 8004CB30 00000000 */   nop
    /* 3D334 8004CB34 0D000700 */  break      7
  .L8004CB38:
    /* 3D338 8004CB38 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3D33C 8004CB3C 04006114 */  bne        $v1, $at, .L8004CB50
    /* 3D340 8004CB40 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3D344 8004CB44 02000116 */  bne        $s0, $at, .L8004CB50
    /* 3D348 8004CB48 00000000 */   nop
    /* 3D34C 8004CB4C 0D000600 */  break      6
  .L8004CB50:
    /* 3D350 8004CB50 12800000 */  mflo       $s0
    /* 3D354 8004CB54 00000000 */  nop
    /* 3D358 8004CB58 80181000 */  sll        $v1, $s0, 2
    /* 3D35C 8004CB5C 21187000 */  addu       $v1, $v1, $s0
    /* 3D360 8004CB60 40101100 */  sll        $v0, $s1, 1
    /* 3D364 8004CB64 21105100 */  addu       $v0, $v0, $s1
    /* 3D368 8004CB68 80100200 */  sll        $v0, $v0, 2
    /* 3D36C 8004CB6C 23105100 */  subu       $v0, $v0, $s1
    /* 3D370 8004CB70 00110200 */  sll        $v0, $v0, 4
    /* 3D374 8004CB74 23105100 */  subu       $v0, $v0, $s1
    /* 3D378 8004CB78 C0100200 */  sll        $v0, $v0, 3
    /* 3D37C 8004CB7C 1180013C */  lui        $at, %hi(D_80117694)
    /* 3D380 8004CB80 21082200 */  addu       $at, $at, $v0
    /* 3D384 8004CB84 9476228C */  lw         $v0, %lo(D_80117694)($at)
    /* 3D388 8004CB88 00000000 */  nop
    /* 3D38C 8004CB8C DD054228 */  slti       $v0, $v0, 0x5DD
    /* 3D390 8004CB90 04004014 */  bnez       $v0, .L8004CBA4
    /* 3D394 8004CB94 40800300 */   sll       $s0, $v1, 1
    /* 3D398 8004CB98 80100300 */  sll        $v0, $v1, 2
    /* 3D39C 8004CB9C 21800202 */  addu       $s0, $s0, $v0
    /* 3D3A0 8004CBA0 43801000 */  sra        $s0, $s0, 1
  .L8004CBA4:
    /* 3D3A4 8004CBA4 40101100 */  sll        $v0, $s1, 1
    /* 3D3A8 8004CBA8 21105100 */  addu       $v0, $v0, $s1
    /* 3D3AC 8004CBAC 80100200 */  sll        $v0, $v0, 2
    /* 3D3B0 8004CBB0 23105100 */  subu       $v0, $v0, $s1
    /* 3D3B4 8004CBB4 00110200 */  sll        $v0, $v0, 4
    /* 3D3B8 8004CBB8 23105100 */  subu       $v0, $v0, $s1
    /* 3D3BC 8004CBBC C0100200 */  sll        $v0, $v0, 3
    /* 3D3C0 8004CBC0 1180013C */  lui        $at, %hi(D_80117694)
    /* 3D3C4 8004CBC4 21082200 */  addu       $at, $at, $v0
    /* 3D3C8 8004CBC8 9476228C */  lw         $v0, %lo(D_80117694)($at)
    /* 3D3CC 8004CBCC 00000000 */  nop
    /* 3D3D0 8004CBD0 B90B4228 */  slti       $v0, $v0, 0xBB9
    /* 3D3D4 8004CBD4 07004014 */  bnez       $v0, .L8004CBF4
    /* 3D3D8 8004CBD8 40101100 */   sll       $v0, $s1, 1
    /* 3D3DC 8004CBDC 40101000 */  sll        $v0, $s0, 1
    /* 3D3E0 8004CBE0 21800202 */  addu       $s0, $s0, $v0
    /* 3D3E4 8004CBE4 C2171000 */  srl        $v0, $s0, 31
    /* 3D3E8 8004CBE8 21100202 */  addu       $v0, $s0, $v0
    /* 3D3EC 8004CBEC 43800200 */  sra        $s0, $v0, 1
    /* 3D3F0 8004CBF0 40101100 */  sll        $v0, $s1, 1
  .L8004CBF4:
    /* 3D3F4 8004CBF4 21105100 */  addu       $v0, $v0, $s1
    /* 3D3F8 8004CBF8 80100200 */  sll        $v0, $v0, 2
    /* 3D3FC 8004CBFC 23105100 */  subu       $v0, $v0, $s1
    /* 3D400 8004CC00 00110200 */  sll        $v0, $v0, 4
    /* 3D404 8004CC04 23105100 */  subu       $v0, $v0, $s1
    /* 3D408 8004CC08 C0200200 */  sll        $a0, $v0, 3
    /* 3D40C 8004CC0C 1180023C */  lui        $v0, %hi(D_801176B4)
    /* 3D410 8004CC10 B4764224 */  addiu      $v0, $v0, %lo(D_801176B4)
    /* 3D414 8004CC14 80181200 */  sll        $v1, $s2, 2
    /* 3D418 8004CC18 21108200 */  addu       $v0, $a0, $v0
    /* 3D41C 8004CC1C 21186200 */  addu       $v1, $v1, $v0
    /* 3D420 8004CC20 0000628C */  lw         $v0, 0x0($v1)
    /* 3D424 8004CC24 00000000 */  nop
    /* 3D428 8004CC28 08004230 */  andi       $v0, $v0, 0x8
    /* 3D42C 8004CC2C 35004010 */  beqz       $v0, .L8004CD04
    /* 3D430 8004CC30 40101200 */   sll       $v0, $s2, 1
    /* 3D434 8004CC34 21105200 */  addu       $v0, $v0, $s2
    /* 3D438 8004CC38 80100200 */  sll        $v0, $v0, 2
    /* 3D43C 8004CC3C 23105200 */  subu       $v0, $v0, $s2
    /* 3D440 8004CC40 00110200 */  sll        $v0, $v0, 4
    /* 3D444 8004CC44 23105200 */  subu       $v0, $v0, $s2
    /* 3D448 8004CC48 C0100200 */  sll        $v0, $v0, 3
    /* 3D44C 8004CC4C 1180013C */  lui        $at, %hi(D_801176A2)
    /* 3D450 8004CC50 21082200 */  addu       $at, $at, $v0
    /* 3D454 8004CC54 A2762390 */  lbu        $v1, %lo(D_801176A2)($at)
    /* 3D458 8004CC58 1180013C */  lui        $at, %hi(D_801176A2)
    /* 3D45C 8004CC5C 21082400 */  addu       $at, $at, $a0
    /* 3D460 8004CC60 A2762290 */  lbu        $v0, %lo(D_801176A2)($at)
    /* 3D464 8004CC64 00000000 */  nop
    /* 3D468 8004CC68 2B104300 */  sltu       $v0, $v0, $v1
    /* 3D46C 8004CC6C 05004010 */  beqz       $v0, .L8004CC84
    /* 3D470 8004CC70 00000000 */   nop
    /* 3D474 8004CC74 C2171000 */  srl        $v0, $s0, 31
    /* 3D478 8004CC78 21100202 */  addu       $v0, $s0, $v0
    /* 3D47C 8004CC7C 26330108 */  j          .L8004CC98
    /* 3D480 8004CC80 43800200 */   sra       $s0, $v0, 1
  .L8004CC84:
    /* 3D484 8004CC84 02000106 */  bgez       $s0, .L8004CC90
    /* 3D488 8004CC88 21100002 */   addu      $v0, $s0, $zero
    /* 3D48C 8004CC8C 03000226 */  addiu      $v0, $s0, 0x3
  .L8004CC90:
    /* 3D490 8004CC90 83100200 */  sra        $v0, $v0, 2
    /* 3D494 8004CC94 23800202 */  subu       $s0, $s0, $v0
  .L8004CC98:
    /* 3D498 8004CC98 40101200 */  sll        $v0, $s2, 1
    /* 3D49C 8004CC9C 21105200 */  addu       $v0, $v0, $s2
    /* 3D4A0 8004CCA0 80100200 */  sll        $v0, $v0, 2
    /* 3D4A4 8004CCA4 23105200 */  subu       $v0, $v0, $s2
    /* 3D4A8 8004CCA8 00110200 */  sll        $v0, $v0, 4
    /* 3D4AC 8004CCAC 23105200 */  subu       $v0, $v0, $s2
    /* 3D4B0 8004CCB0 C0100200 */  sll        $v0, $v0, 3
    /* 3D4B4 8004CCB4 1180013C */  lui        $at, %hi(D_801176A2)
    /* 3D4B8 8004CCB8 21082200 */  addu       $at, $at, $v0
    /* 3D4BC 8004CCBC A2762390 */  lbu        $v1, %lo(D_801176A2)($at)
    /* 3D4C0 8004CCC0 40101100 */  sll        $v0, $s1, 1
    /* 3D4C4 8004CCC4 21105100 */  addu       $v0, $v0, $s1
    /* 3D4C8 8004CCC8 80100200 */  sll        $v0, $v0, 2
    /* 3D4CC 8004CCCC 23105100 */  subu       $v0, $v0, $s1
    /* 3D4D0 8004CCD0 00110200 */  sll        $v0, $v0, 4
    /* 3D4D4 8004CCD4 23105100 */  subu       $v0, $v0, $s1
    /* 3D4D8 8004CCD8 C0100200 */  sll        $v0, $v0, 3
    /* 3D4DC 8004CCDC 1180013C */  lui        $at, %hi(D_801176A2)
    /* 3D4E0 8004CCE0 21082200 */  addu       $at, $at, $v0
    /* 3D4E4 8004CCE4 A2762290 */  lbu        $v0, %lo(D_801176A2)($at)
    /* 3D4E8 8004CCE8 00000000 */  nop
    /* 3D4EC 8004CCEC 04004224 */  addiu      $v0, $v0, 0x4
    /* 3D4F0 8004CCF0 2A104300 */  slt        $v0, $v0, $v1
    /* 3D4F4 8004CCF4 03004010 */  beqz       $v0, .L8004CD04
    /* 3D4F8 8004CCF8 C2171000 */   srl       $v0, $s0, 31
    /* 3D4FC 8004CCFC 21100202 */  addu       $v0, $s0, $v0
    /* 3D500 8004CD00 43800200 */  sra        $s0, $v0, 1
  .L8004CD04:
    /* 3D504 8004CD04 03000106 */  bgez       $s0, .L8004CD14
    /* 3D508 8004CD08 6400022A */   slti      $v0, $s0, 0x64
    /* 3D50C 8004CD0C 30751024 */  addiu      $s0, $zero, 0x7530
    /* 3D510 8004CD10 6400022A */  slti       $v0, $s0, 0x64
  .L8004CD14:
    /* 3D514 8004CD14 02004010 */  beqz       $v0, .L8004CD20
    /* 3D518 8004CD18 40101100 */   sll       $v0, $s1, 1
    /* 3D51C 8004CD1C 64001024 */  addiu      $s0, $zero, 0x64
  .L8004CD20:
    /* 3D520 8004CD20 21105100 */  addu       $v0, $v0, $s1
    /* 3D524 8004CD24 80100200 */  sll        $v0, $v0, 2
    /* 3D528 8004CD28 23105100 */  subu       $v0, $v0, $s1
    /* 3D52C 8004CD2C 00110200 */  sll        $v0, $v0, 4
    /* 3D530 8004CD30 23105100 */  subu       $v0, $v0, $s1
    /* 3D534 8004CD34 C0100200 */  sll        $v0, $v0, 3
    /* 3D538 8004CD38 1180013C */  lui        $at, %hi(D_80117694)
    /* 3D53C 8004CD3C 21082200 */  addu       $at, $at, $v0
    /* 3D540 8004CD40 9476228C */  lw         $v0, %lo(D_80117694)($at)
    /* 3D544 8004CD44 00000000 */  nop
    /* 3D548 8004CD48 2A105000 */  slt        $v0, $v0, $s0
    /* 3D54C 8004CD4C 03004010 */  beqz       $v0, .L8004CD5C
    /* 3D550 8004CD50 00000000 */   nop
  .L8004CD54:
    /* 3D554 8004CD54 90330108 */  j          .L8004CE40
    /* 3D558 8004CD58 21100000 */   addu      $v0, $zero, $zero
  .L8004CD5C:
    /* 3D55C 8004CD5C BC0F828F */  lw         $v0, %gp_rel(D_80159494)($gp)
    /* 3D560 8004CD60 00000000 */  nop
    /* 3D564 8004CD64 00110200 */  sll        $v0, $v0, 4
    /* 3D568 8004CD68 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* 3D56C 8004CD6C 21082200 */  addu       $at, $at, $v0
    /* 3D570 8004CD70 A0C2258C */  lw         $a1, %lo(D_8010C2A0)($at)
    /* 3D574 8004CD74 ABAC020C */  jal        func_800AB2AC
    /* 3D578 8004CD78 01000424 */   addiu     $a0, $zero, 0x1
    /* 3D57C 8004CD7C 1280013C */  lui        $at, %hi(D_8011FF28)
    /* 3D580 8004CD80 28FF30AC */  sw         $s0, %lo(D_8011FF28)($at)
    /* 3D584 8004CD84 0200622A */  slti       $v0, $s3, 0x2
    /* 3D588 8004CD88 07004010 */  beqz       $v0, .L8004CDA8
    /* 3D58C 8004CD8C 55520524 */   addiu     $a1, $zero, 0x5255
    /* 3D590 8004CD90 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3D594 8004CD94 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3D598 8004CD98 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3D59C 8004CD9C F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3D5A0 8004CDA0 70330108 */  j          .L8004CDC0
    /* 3D5A4 8004CDA4 1800A0AF */   sw        $zero, 0x18($sp)
  .L8004CDA8:
    /* 3D5A8 8004CDA8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3D5AC 8004CDAC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3D5B0 8004CDB0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3D5B4 8004CDB4 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3D5B8 8004CDB8 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3D5BC 8004CDBC 37530524 */  addiu      $a1, $zero, 0x5337
  .L8004CDC0:
    /* 3D5C0 8004CDC0 21300000 */  addu       $a2, $zero, $zero
    /* 3D5C4 8004CDC4 B4E2020C */  jal        func_800B8AD0
    /* 3D5C8 8004CDC8 21380000 */   addu      $a3, $zero, $zero
    /* 3D5CC 8004CDCC 21184000 */  addu       $v1, $v0, $zero
    /* 3D5D0 8004CDD0 01000224 */  addiu      $v0, $zero, 0x1
    /* 3D5D4 8004CDD4 1A006214 */  bne        $v1, $v0, .L8004CE40
    /* 3D5D8 8004CDD8 00000000 */   nop
    /* 3D5DC 8004CDDC 40101100 */  sll        $v0, $s1, 1
    /* 3D5E0 8004CDE0 21105100 */  addu       $v0, $v0, $s1
    /* 3D5E4 8004CDE4 80100200 */  sll        $v0, $v0, 2
    /* 3D5E8 8004CDE8 23105100 */  subu       $v0, $v0, $s1
    /* 3D5EC 8004CDEC 00110200 */  sll        $v0, $v0, 4
    /* 3D5F0 8004CDF0 23105100 */  subu       $v0, $v0, $s1
    /* 3D5F4 8004CDF4 C0100200 */  sll        $v0, $v0, 3
    /* 3D5F8 8004CDF8 1180013C */  lui        $at, %hi(D_80117694)
    /* 3D5FC 8004CDFC 21082200 */  addu       $at, $at, $v0
    /* 3D600 8004CE00 9476238C */  lw         $v1, %lo(D_80117694)($at)
    /* 3D604 8004CE04 00000000 */  nop
    /* 3D608 8004CE08 23187000 */  subu       $v1, $v1, $s0
    /* 3D60C 8004CE0C 1180013C */  lui        $at, %hi(D_80117694)
    /* 3D610 8004CE10 21082200 */  addu       $at, $at, $v0
    /* 3D614 8004CE14 947623AC */  sw         $v1, %lo(D_80117694)($at)
    /* 3D618 8004CE18 9FBF000C */  jal        func_8002FE7C
    /* 3D61C 8004CE1C 01000424 */   addiu     $a0, $zero, 0x1
    /* 3D620 8004CE20 21202002 */  addu       $a0, $s1, $zero
    /* 3D624 8004CE24 BC0F858F */  lw         $a1, %gp_rel(D_80159494)($gp)
    /* 3D628 8004CE28 F5CF010C */  jal        func_80073FD4
    /* 3D62C 8004CE2C 21304002 */   addu      $a2, $s2, $zero
    /* 3D630 8004CE30 21202002 */  addu       $a0, $s1, $zero
    /* 3D634 8004CE34 4130010C */  jal        func_8004C104
    /* 3D638 8004CE38 21284002 */   addu      $a1, $s2, $zero
    /* 3D63C 8004CE3C 01000224 */  addiu      $v0, $zero, 0x1
  .L8004CE40:
    /* 3D640 8004CE40 3800BF8F */  lw         $ra, 0x38($sp)
    /* 3D644 8004CE44 3400B38F */  lw         $s3, 0x34($sp)
    /* 3D648 8004CE48 3000B28F */  lw         $s2, 0x30($sp)
    /* 3D64C 8004CE4C 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 3D650 8004CE50 2800B08F */  lw         $s0, 0x28($sp)
    /* 3D654 8004CE54 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 3D658 8004CE58 0800E003 */  jr         $ra
    /* 3D65C 8004CE5C 00000000 */   nop
endlabel func_8004C9FC
