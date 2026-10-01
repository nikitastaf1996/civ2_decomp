.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007C234, 0x5DC

glabel func_8007C234
    /* 6CA34 8007C234 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 6CA38 8007C238 3000BFAF */  sw         $ra, 0x30($sp)
    /* 6CA3C 8007C23C 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 6CA40 8007C240 2800B4AF */  sw         $s4, 0x28($sp)
    /* 6CA44 8007C244 2400B3AF */  sw         $s3, 0x24($sp)
    /* 6CA48 8007C248 2000B2AF */  sw         $s2, 0x20($sp)
    /* 6CA4C 8007C24C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 6CA50 8007C250 1800B0AF */  sw         $s0, 0x18($sp)
    /* 6CA54 8007C254 21988000 */  addu       $s3, $a0, $zero
    /* 6CA58 8007C258 2188A000 */  addu       $s1, $a1, $zero
    /* 6CA5C 8007C25C 21A0C000 */  addu       $s4, $a2, $zero
    /* 6CA60 8007C260 21A8E000 */  addu       $s5, $a3, $zero
    /* 6CA64 8007C264 1280033C */  lui        $v1, %hi(D_8011A275)
    /* 6CA68 8007C268 75A26324 */  addiu      $v1, $v1, %lo(D_8011A275)
    /* 6CA6C 8007C26C 00006290 */  lbu        $v0, 0x0($v1)
    /* 6CA70 8007C270 00000000 */  nop
    /* 6CA74 8007C274 07102202 */  srav       $v0, $v0, $s1
    /* 6CA78 8007C278 01004230 */  andi       $v0, $v0, 0x1
    /* 6CA7C 8007C27C 06004014 */  bnez       $v0, .L8007C298
    /* 6CA80 8007C280 FFFF1224 */   addiu     $s2, $zero, -0x1
    /* 6CA84 8007C284 0B006284 */  lh         $v0, 0xB($v1)
    /* 6CA88 8007C288 00000000 */  nop
    /* 6CA8C 8007C28C F8034228 */  slti       $v0, $v0, 0x3F8
    /* 6CA90 8007C290 55014010 */  beqz       $v0, .L8007C7E8
    /* 6CA94 8007C294 21104002 */   addu      $v0, $s2, $zero
  .L8007C298:
    /* 6CA98 8007C298 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 6CA9C 8007C29C 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 6CAA0 8007C2A0 00000000 */  nop
    /* 6CAA4 8007C2A4 00044228 */  slti       $v0, $v0, 0x400
    /* 6CAA8 8007C2A8 0E004010 */  beqz       $v0, .L8007C2E4
    /* 6CAAC 8007C2AC 40101100 */   sll       $v0, $s1, 1
    /* 6CAB0 8007C2B0 21105100 */  addu       $v0, $v0, $s1
    /* 6CAB4 8007C2B4 80100200 */  sll        $v0, $v0, 2
    /* 6CAB8 8007C2B8 23105100 */  subu       $v0, $v0, $s1
    /* 6CABC 8007C2BC 00110200 */  sll        $v0, $v0, 4
    /* 6CAC0 8007C2C0 23105100 */  subu       $v0, $v0, $s1
    /* 6CAC4 8007C2C4 C0100200 */  sll        $v0, $v0, 3
    /* 6CAC8 8007C2C8 1180013C */  lui        $at, %hi(D_801176F8)
    /* 6CACC 8007C2CC 21082200 */  addu       $at, $at, $v0
    /* 6CAD0 8007C2D0 F8762284 */  lh         $v0, %lo(D_801176F8)($at)
    /* 6CAD4 8007C2D4 00000000 */  nop
    /* 6CAD8 8007C2D8 9D034228 */  slti       $v0, $v0, 0x39D
    /* 6CADC 8007C2DC 11004014 */  bnez       $v0, .L8007C324
    /* 6CAE0 8007C2E0 00000000 */   nop
  .L8007C2E4:
    /* 6CAE4 8007C2E4 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 6CAE8 8007C2E8 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 6CAEC 8007C2EC 00000000 */  nop
    /* 6CAF0 8007C2F0 07102202 */  srav       $v0, $v0, $s1
    /* 6CAF4 8007C2F4 01004230 */  andi       $v0, $v0, 0x1
    /* 6CAF8 8007C2F8 3A014010 */  beqz       $v0, .L8007C7E4
    /* 6CAFC 8007C2FC CF390524 */   addiu     $a1, $zero, 0x39CF
    /* 6CB00 8007C300 1000A0AF */  sw         $zero, 0x10($sp)
    /* 6CB04 8007C304 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 6CB08 8007C308 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 6CB0C 8007C30C 1380073C */  lui        $a3, %hi(D_80135B98)
    /* 6CB10 8007C310 985BE724 */  addiu      $a3, $a3, %lo(D_80135B98)
    /* 6CB14 8007C314 18E3020C */  jal        func_800B8C60
    /* 6CB18 8007C318 21300000 */   addu      $a2, $zero, $zero
    /* 6CB1C 8007C31C FAF10108 */  j          .L8007C7E8
    /* 6CB20 8007C320 21104002 */   addu      $v0, $s2, $zero
  .L8007C324:
    /* 6CB24 8007C324 1280043C */  lui        $a0, %hi(D_8011A280)
    /* 6CB28 8007C328 80A28424 */  addiu      $a0, $a0, %lo(D_8011A280)
    /* 6CB2C 8007C32C 00008294 */  lhu        $v0, 0x0($a0)
    /* 6CB30 8007C330 00000000 */  nop
    /* 6CB34 8007C334 01004324 */  addiu      $v1, $v0, 0x1
    /* 6CB38 8007C338 000083A4 */  sh         $v1, 0x0($a0)
    /* 6CB3C 8007C33C 00140200 */  sll        $v0, $v0, 16
    /* 6CB40 8007C340 03940200 */  sra        $s2, $v0, 16
    /* 6CB44 8007C344 80101300 */  sll        $v0, $s3, 2
    /* 6CB48 8007C348 21105300 */  addu       $v0, $v0, $s3
    /* 6CB4C 8007C34C 80100200 */  sll        $v0, $v0, 2
    /* 6CB50 8007C350 1180013C */  lui        $at, %hi(D_8010D28E)
    /* 6CB54 8007C354 21082200 */  addu       $at, $at, $v0
    /* 6CB58 8007C358 8ED22280 */  lb         $v0, %lo(D_8010D28E)($at)
    /* 6CB5C 8007C35C 00000000 */  nop
    /* 6CB60 8007C360 05004228 */  slti       $v0, $v0, 0x5
    /* 6CB64 8007C364 0F004010 */  beqz       $v0, .L8007C3A4
    /* 6CB68 8007C368 40101100 */   sll       $v0, $s1, 1
    /* 6CB6C 8007C36C 21105100 */  addu       $v0, $v0, $s1
    /* 6CB70 8007C370 80100200 */  sll        $v0, $v0, 2
    /* 6CB74 8007C374 23105100 */  subu       $v0, $v0, $s1
    /* 6CB78 8007C378 00110200 */  sll        $v0, $v0, 4
    /* 6CB7C 8007C37C 23105100 */  subu       $v0, $v0, $s1
    /* 6CB80 8007C380 C0100200 */  sll        $v0, $v0, 3
    /* 6CB84 8007C384 1180013C */  lui        $at, %hi(D_801176F8)
    /* 6CB88 8007C388 21082200 */  addu       $at, $at, $v0
    /* 6CB8C 8007C38C F8762394 */  lhu        $v1, %lo(D_801176F8)($at)
    /* 6CB90 8007C390 00000000 */  nop
    /* 6CB94 8007C394 01006324 */  addiu      $v1, $v1, 0x1
    /* 6CB98 8007C398 1180013C */  lui        $at, %hi(D_801176F8)
    /* 6CB9C 8007C39C 21082200 */  addu       $at, $at, $v0
    /* 6CBA0 8007C3A0 F87623A4 */  sh         $v1, %lo(D_801176F8)($at)
  .L8007C3A4:
    /* 6CBA4 8007C3A4 40101100 */  sll        $v0, $s1, 1
    /* 6CBA8 8007C3A8 21105100 */  addu       $v0, $v0, $s1
    /* 6CBAC 8007C3AC 80100200 */  sll        $v0, $v0, 2
    /* 6CBB0 8007C3B0 23105100 */  subu       $v0, $v0, $s1
    /* 6CBB4 8007C3B4 00110200 */  sll        $v0, $v0, 4
    /* 6CBB8 8007C3B8 23105100 */  subu       $v0, $v0, $s1
    /* 6CBBC 8007C3BC C0100200 */  sll        $v0, $v0, 3
    /* 6CBC0 8007C3C0 1180033C */  lui        $v1, %hi(D_80117763)
    /* 6CBC4 8007C3C4 63776324 */  addiu      $v1, $v1, %lo(D_80117763)
    /* 6CBC8 8007C3C8 21104300 */  addu       $v0, $v0, $v1
    /* 6CBCC 8007C3CC 21105300 */  addu       $v0, $v0, $s3
    /* 6CBD0 8007C3D0 00004390 */  lbu        $v1, 0x0($v0)
    /* 6CBD4 8007C3D4 00000000 */  nop
    /* 6CBD8 8007C3D8 01006324 */  addiu      $v1, $v1, 0x1
    /* 6CBDC 8007C3DC 000043A0 */  sb         $v1, 0x0($v0)
    /* 6CBE0 8007C3E0 40101200 */  sll        $v0, $s2, 1
    /* 6CBE4 8007C3E4 21105200 */  addu       $v0, $v0, $s2
    /* 6CBE8 8007C3E8 80100200 */  sll        $v0, $v0, 2
    /* 6CBEC 8007C3EC 21105200 */  addu       $v0, $v0, $s2
    /* 6CBF0 8007C3F0 40800200 */  sll        $s0, $v0, 1
    /* 6CBF4 8007C3F4 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6CBF8 8007C3F8 21083000 */  addu       $at, $at, $s0
    /* 6CBFC 8007C3FC BAD633A0 */  sb         $s3, %lo(D_8010D6BA)($at)
    /* 6CC00 8007C400 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 6CC04 8007C404 21083000 */  addu       $at, $at, $s0
    /* 6CC08 8007C408 BBD631A0 */  sb         $s1, %lo(D_8010D6BB)($at)
    /* 6CC0C 8007C40C 1180013C */  lui        $at, %hi(D_8010D6BC)
    /* 6CC10 8007C410 21083000 */  addu       $at, $at, $s0
    /* 6CC14 8007C414 BCD620A0 */  sb         $zero, %lo(D_8010D6BC)($at)
    /* 6CC18 8007C418 1180013C */  lui        $at, %hi(D_8010D6BE)
    /* 6CC1C 8007C41C 21083000 */  addu       $at, $at, $s0
    /* 6CC20 8007C420 BED620A0 */  sb         $zero, %lo(D_8010D6BE)($at)
    /* 6CC24 8007C424 58000224 */  addiu      $v0, $zero, 0x58
    /* 6CC28 8007C428 1180013C */  lui        $at, %hi(D_8010D6C0)
    /* 6CC2C 8007C42C 21083000 */  addu       $at, $at, $s0
    /* 6CC30 8007C430 C0D622A0 */  sb         $v0, %lo(D_8010D6C0)($at)
    /* 6CC34 8007C434 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 6CC38 8007C438 21083000 */  addu       $at, $at, $s0
    /* 6CC3C 8007C43C B8D620A4 */  sh         $zero, %lo(D_8010D6B8)($at)
    /* 6CC40 8007C440 1180013C */  lui        $at, %hi(D_8010D6BD)
    /* 6CC44 8007C444 21083000 */  addu       $at, $at, $s0
    /* 6CC48 8007C448 BDD620A0 */  sb         $zero, %lo(D_8010D6BD)($at)
    /* 6CC4C 8007C44C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6CC50 8007C450 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6CC54 8007C454 21083000 */  addu       $at, $at, $s0
    /* 6CC58 8007C458 C3D622A0 */  sb         $v0, %lo(D_8010D6C3)($at)
    /* 6CC5C 8007C45C 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* 6CC60 8007C460 21083000 */  addu       $at, $at, $s0
    /* 6CC64 8007C464 C4D622A0 */  sb         $v0, %lo(D_8010D6C4)($at)
    /* 6CC68 8007C468 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6CC6C 8007C46C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 6CC70 8007C470 21208002 */  addu       $a0, $s4, $zero
    /* 6CC74 8007C474 2128A002 */  addu       $a1, $s5, $zero
    /* 6CC78 8007C478 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 6CC7C 8007C47C 6026020C */  jal        func_80089980
    /* 6CC80 8007C480 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 6CC84 8007C484 10002012 */  beqz       $s1, .L8007C4C8
    /* 6CC88 8007C488 21204000 */   addu      $a0, $v0, $zero
    /* 6CC8C 8007C48C 0E008004 */  bltz       $a0, .L8007C4C8
    /* 6CC90 8007C490 40100400 */   sll       $v0, $a0, 1
    /* 6CC94 8007C494 21104400 */  addu       $v0, $v0, $a0
    /* 6CC98 8007C498 80100200 */  sll        $v0, $v0, 2
    /* 6CC9C 8007C49C 23104400 */  subu       $v0, $v0, $a0
    /* 6CCA0 8007C4A0 C0100200 */  sll        $v0, $v0, 3
    /* 6CCA4 8007C4A4 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 6CCA8 8007C4A8 21082200 */  addu       $at, $at, $v0
    /* 6CCAC 8007C4AC D83E2380 */  lb         $v1, %lo(D_80113ED8)($at)
    /* 6CCB0 8007C4B0 FF002232 */  andi       $v0, $s1, 0xFF
    /* 6CCB4 8007C4B4 05006214 */  bne        $v1, $v0, .L8007C4CC
    /* 6CCB8 8007C4B8 40101200 */   sll       $v0, $s2, 1
    /* 6CCBC 8007C4BC 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* 6CCC0 8007C4C0 21083000 */  addu       $at, $at, $s0
    /* 6CCC4 8007C4C4 C4D624A0 */  sb         $a0, %lo(D_8010D6C4)($at)
  .L8007C4C8:
    /* 6CCC8 8007C4C8 40101200 */  sll        $v0, $s2, 1
  .L8007C4CC:
    /* 6CCCC 8007C4CC 21105200 */  addu       $v0, $v0, $s2
    /* 6CCD0 8007C4D0 80100200 */  sll        $v0, $v0, 2
    /* 6CCD4 8007C4D4 21105200 */  addu       $v0, $v0, $s2
    /* 6CCD8 8007C4D8 40100200 */  sll        $v0, $v0, 1
    /* 6CCDC 8007C4DC 1180013C */  lui        $at, %hi(D_8010D6C1)
    /* 6CCE0 8007C4E0 21082200 */  addu       $at, $at, $v0
    /* 6CCE4 8007C4E4 C1D620A0 */  sb         $zero, %lo(D_8010D6C1)($at)
    /* 6CCE8 8007C4E8 1180013C */  lui        $at, %hi(D_8010D6C2)
    /* 6CCEC 8007C4EC 21082200 */  addu       $at, $at, $v0
    /* 6CCF0 8007C4F0 C2D620A0 */  sb         $zero, %lo(D_8010D6C2)($at)
    /* 6CCF4 8007C4F4 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 6CCF8 8007C4F8 1180013C */  lui        $at, %hi(D_8010D6BF)
    /* 6CCFC 8007C4FC 21082200 */  addu       $at, $at, $v0
    /* 6CD00 8007C500 BFD623A0 */  sb         $v1, %lo(D_8010D6BF)($at)
    /* 6CD04 8007C504 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 6CD08 8007C508 1180013C */  lui        $at, %hi(D_8010D6CA)
    /* 6CD0C 8007C50C 21082200 */  addu       $at, $at, $v0
    /* 6CD10 8007C510 CAD623A4 */  sh         $v1, %lo(D_8010D6CA)($at)
    /* 6CD14 8007C514 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 6CD18 8007C518 21082200 */  addu       $at, $at, $v0
    /* 6CD1C 8007C51C CCD623A4 */  sh         $v1, %lo(D_8010D6CC)($at)
    /* 6CD20 8007C520 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6CD24 8007C524 21082200 */  addu       $at, $at, $v0
    /* 6CD28 8007C528 B4D623A4 */  sh         $v1, %lo(D_8010D6B4)($at)
    /* 6CD2C 8007C52C 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6CD30 8007C530 21082200 */  addu       $at, $at, $v0
    /* 6CD34 8007C534 B6D623A4 */  sh         $v1, %lo(D_8010D6B6)($at)
    /* 6CD38 8007C538 1180013C */  lui        $at, %hi(D_8010D6C6)
    /* 6CD3C 8007C53C 21082200 */  addu       $at, $at, $v0
    /* 6CD40 8007C540 C6D623A4 */  sh         $v1, %lo(D_8010D6C6)($at)
    /* 6CD44 8007C544 1180013C */  lui        $at, %hi(D_8010D6C8)
    /* 6CD48 8007C548 21082200 */  addu       $at, $at, $v0
    /* 6CD4C 8007C54C C8D623A4 */  sh         $v1, %lo(D_8010D6C8)($at)
    /* 6CD50 8007C550 21204002 */  addu       $a0, $s2, $zero
    /* 6CD54 8007C554 21288002 */  addu       $a1, $s4, $zero
    /* 6CD58 8007C558 E7EE010C */  jal        func_8007BB9C
    /* 6CD5C 8007C55C 2130A002 */   addu      $a2, $s5, $zero
    /* 6CD60 8007C560 21204002 */  addu       $a0, $s2, $zero
    /* 6CD64 8007C564 FDB9000C */  jal        func_8002E7F4
    /* 6CD68 8007C568 01000524 */   addiu     $a1, $zero, 0x1
    /* 6CD6C 8007C56C 1280043C */  lui        $a0, %hi(D_8011A262)
    /* 6CD70 8007C570 62A28424 */  addiu      $a0, $a0, %lo(D_8011A262)
    /* 6CD74 8007C574 00008284 */  lh         $v0, 0x0($a0)
    /* 6CD78 8007C578 00000000 */  nop
    /* 6CD7C 8007C57C 9A004010 */  beqz       $v0, .L8007C7E8
    /* 6CD80 8007C580 21104002 */   addu      $v0, $s2, $zero
    /* 6CD84 8007C584 13008290 */  lbu        $v0, 0x13($a0)
    /* 6CD88 8007C588 00000000 */  nop
    /* 6CD8C 8007C58C 07102202 */  srav       $v0, $v0, $s1
    /* 6CD90 8007C590 01004230 */  andi       $v0, $v0, 0x1
    /* 6CD94 8007C594 93004010 */  beqz       $v0, .L8007C7E4
    /* 6CD98 8007C598 80101300 */   sll       $v0, $s3, 2
    /* 6CD9C 8007C59C 21105300 */  addu       $v0, $v0, $s3
    /* 6CDA0 8007C5A0 80100200 */  sll        $v0, $v0, 2
    /* 6CDA4 8007C5A4 1180013C */  lui        $at, %hi(D_8010D285)
    /* 6CDA8 8007C5A8 21082200 */  addu       $at, $at, $v0
    /* 6CDAC 8007C5AC 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* 6CDB0 8007C5B0 02000224 */  addiu      $v0, $zero, 0x2
    /* 6CDB4 8007C5B4 17006214 */  bne        $v1, $v0, .L8007C614
    /* 6CDB8 8007C5B8 80101300 */   sll       $v0, $s3, 2
    /* 6CDBC 8007C5BC FCFF8294 */  lhu        $v0, -0x4($a0)
    /* 6CDC0 8007C5C0 00000000 */  nop
    /* 6CDC4 8007C5C4 04004230 */  andi       $v0, $v0, 0x4
    /* 6CDC8 8007C5C8 87004014 */  bnez       $v0, .L8007C7E8
    /* 6CDCC 8007C5CC 21104002 */   addu      $v0, $s2, $zero
    /* 6CDD0 8007C5D0 F2FF828C */  lw         $v0, -0xE($a0)
    /* 6CDD4 8007C5D4 00000000 */  nop
    /* 6CDD8 8007C5D8 00014230 */  andi       $v0, $v0, 0x100
    /* 6CDDC 8007C5DC 06004010 */  beqz       $v0, .L8007C5F8
    /* 6CDE0 8007C5E0 C91B0524 */   addiu     $a1, $zero, 0x1BC9
    /* 6CDE4 8007C5E4 1680043C */  lui        $a0, %hi(D_8015885C)
    /* 6CDE8 8007C5E8 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* 6CDEC 8007C5EC 21300000 */  addu       $a2, $zero, $zero
    /* 6CDF0 8007C5F0 63E4020C */  jal        func_800B918C
    /* 6CDF4 8007C5F4 21384002 */   addu      $a3, $s2, $zero
  .L8007C5F8:
    /* 6CDF8 8007C5F8 1280033C */  lui        $v1, %hi(D_8011A25E)
    /* 6CDFC 8007C5FC 5EA26324 */  addiu      $v1, $v1, %lo(D_8011A25E)
    /* 6CE00 8007C600 00006294 */  lhu        $v0, 0x0($v1)
    /* 6CE04 8007C604 00000000 */  nop
    /* 6CE08 8007C608 04004234 */  ori        $v0, $v0, 0x4
    /* 6CE0C 8007C60C F9F10108 */  j          .L8007C7E4
    /* 6CE10 8007C610 000062A4 */   sh        $v0, 0x0($v1)
  .L8007C614:
    /* 6CE14 8007C614 21105300 */  addu       $v0, $v0, $s3
    /* 6CE18 8007C618 80100200 */  sll        $v0, $v0, 2
    /* 6CE1C 8007C61C 1180013C */  lui        $at, %hi(D_8010D285)
    /* 6CE20 8007C620 21082200 */  addu       $at, $at, $v0
    /* 6CE24 8007C624 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* 6CE28 8007C628 01000224 */  addiu      $v0, $zero, 0x1
    /* 6CE2C 8007C62C 19006214 */  bne        $v1, $v0, .L8007C694
    /* 6CE30 8007C630 80101300 */   sll       $v0, $s3, 2
    /* 6CE34 8007C634 1280033C */  lui        $v1, %hi(D_8011A25E)
    /* 6CE38 8007C638 5EA26324 */  addiu      $v1, $v1, %lo(D_8011A25E)
    /* 6CE3C 8007C63C 00006294 */  lhu        $v0, 0x0($v1)
    /* 6CE40 8007C640 00000000 */  nop
    /* 6CE44 8007C644 02004230 */  andi       $v0, $v0, 0x2
    /* 6CE48 8007C648 67004014 */  bnez       $v0, .L8007C7E8
    /* 6CE4C 8007C64C 21104002 */   addu      $v0, $s2, $zero
    /* 6CE50 8007C650 F6FF628C */  lw         $v0, -0xA($v1)
    /* 6CE54 8007C654 00000000 */  nop
    /* 6CE58 8007C658 00014230 */  andi       $v0, $v0, 0x100
    /* 6CE5C 8007C65C 08004010 */  beqz       $v0, .L8007C680
    /* 6CE60 8007C660 F8200524 */   addiu     $a1, $zero, 0x20F8
    /* 6CE64 8007C664 1680043C */  lui        $a0, %hi(D_8015885C)
    /* 6CE68 8007C668 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* 6CE6C 8007C66C 21300000 */  addu       $a2, $zero, $zero
    /* 6CE70 8007C670 63E4020C */  jal        func_800B918C
    /* 6CE74 8007C674 21384002 */   addu      $a3, $s2, $zero
    /* 6CE78 8007C678 1280033C */  lui        $v1, %hi(D_8011A25E)
    /* 6CE7C 8007C67C 5EA26324 */  addiu      $v1, $v1, %lo(D_8011A25E)
  .L8007C680:
    /* 6CE80 8007C680 00006294 */  lhu        $v0, 0x0($v1)
    /* 6CE84 8007C684 00000000 */  nop
    /* 6CE88 8007C688 02004234 */  ori        $v0, $v0, 0x2
    /* 6CE8C 8007C68C F9F10108 */  j          .L8007C7E4
    /* 6CE90 8007C690 000062A4 */   sh        $v0, 0x0($v1)
  .L8007C694:
    /* 6CE94 8007C694 21105300 */  addu       $v0, $v0, $s3
    /* 6CE98 8007C698 80100200 */  sll        $v0, $v0, 2
    /* 6CE9C 8007C69C 1180013C */  lui        $at, %hi(D_8010D28E)
    /* 6CEA0 8007C6A0 21082200 */  addu       $at, $at, $v0
    /* 6CEA4 8007C6A4 8ED22380 */  lb         $v1, %lo(D_8010D28E)($at)
    /* 6CEA8 8007C6A8 07000224 */  addiu      $v0, $zero, 0x7
    /* 6CEAC 8007C6AC 19006214 */  bne        $v1, $v0, .L8007C714
    /* 6CEB0 8007C6B0 00000000 */   nop
    /* 6CEB4 8007C6B4 1280033C */  lui        $v1, %hi(D_8011A25E)
    /* 6CEB8 8007C6B8 5EA26324 */  addiu      $v1, $v1, %lo(D_8011A25E)
    /* 6CEBC 8007C6BC 00006294 */  lhu        $v0, 0x0($v1)
    /* 6CEC0 8007C6C0 00000000 */  nop
    /* 6CEC4 8007C6C4 10004230 */  andi       $v0, $v0, 0x10
    /* 6CEC8 8007C6C8 47004014 */  bnez       $v0, .L8007C7E8
    /* 6CECC 8007C6CC 21104002 */   addu      $v0, $s2, $zero
    /* 6CED0 8007C6D0 F6FF628C */  lw         $v0, -0xA($v1)
    /* 6CED4 8007C6D4 00000000 */  nop
    /* 6CED8 8007C6D8 00014230 */  andi       $v0, $v0, 0x100
    /* 6CEDC 8007C6DC 08004010 */  beqz       $v0, .L8007C700
    /* 6CEE0 8007C6E0 3B290524 */   addiu     $a1, $zero, 0x293B
    /* 6CEE4 8007C6E4 1680043C */  lui        $a0, %hi(D_8015885C)
    /* 6CEE8 8007C6E8 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* 6CEEC 8007C6EC 21300000 */  addu       $a2, $zero, $zero
    /* 6CEF0 8007C6F0 63E4020C */  jal        func_800B918C
    /* 6CEF4 8007C6F4 21384002 */   addu      $a3, $s2, $zero
    /* 6CEF8 8007C6F8 1280033C */  lui        $v1, %hi(D_8011A25E)
    /* 6CEFC 8007C6FC 5EA26324 */  addiu      $v1, $v1, %lo(D_8011A25E)
  .L8007C700:
    /* 6CF00 8007C700 00006294 */  lhu        $v0, 0x0($v1)
    /* 6CF04 8007C704 00000000 */  nop
    /* 6CF08 8007C708 10004234 */  ori        $v0, $v0, 0x10
    /* 6CF0C 8007C70C F9F10108 */  j          .L8007C7E4
    /* 6CF10 8007C710 000062A4 */   sh        $v0, 0x0($v1)
  .L8007C714:
    /* 6CF14 8007C714 1280023C */  lui        $v0, %hi(D_8011A254)
    /* 6CF18 8007C718 54A2428C */  lw         $v0, %lo(D_8011A254)($v0)
    /* 6CF1C 8007C71C 00000000 */  nop
    /* 6CF20 8007C720 00014230 */  andi       $v0, $v0, 0x100
    /* 6CF24 8007C724 2F004010 */  beqz       $v0, .L8007C7E4
    /* 6CF28 8007C728 80101300 */   sll       $v0, $s3, 2
    /* 6CF2C 8007C72C 21105300 */  addu       $v0, $v0, $s3
    /* 6CF30 8007C730 80100200 */  sll        $v0, $v0, 2
    /* 6CF34 8007C734 1180013C */  lui        $at, %hi(D_8010D28E)
    /* 6CF38 8007C738 21082200 */  addu       $at, $at, $v0
    /* 6CF3C 8007C73C 8ED22280 */  lb         $v0, %lo(D_8010D28E)($at)
    /* 6CF40 8007C740 00000000 */  nop
    /* 6CF44 8007C744 05004228 */  slti       $v0, $v0, 0x5
    /* 6CF48 8007C748 26004010 */  beqz       $v0, .L8007C7E4
    /* 6CF4C 8007C74C 40101100 */   sll       $v0, $s1, 1
    /* 6CF50 8007C750 21105100 */  addu       $v0, $v0, $s1
    /* 6CF54 8007C754 80100200 */  sll        $v0, $v0, 2
    /* 6CF58 8007C758 23105100 */  subu       $v0, $v0, $s1
    /* 6CF5C 8007C75C 00110200 */  sll        $v0, $v0, 4
    /* 6CF60 8007C760 23105100 */  subu       $v0, $v0, $s1
    /* 6CF64 8007C764 C0100200 */  sll        $v0, $v0, 3
    /* 6CF68 8007C768 1180013C */  lui        $at, %hi(D_801176F8)
    /* 6CF6C 8007C76C 21082200 */  addu       $at, $at, $v0
    /* 6CF70 8007C770 F8762384 */  lh         $v1, %lo(D_801176F8)($at)
    /* 6CF74 8007C774 01000224 */  addiu      $v0, $zero, 0x1
    /* 6CF78 8007C778 08006214 */  bne        $v1, $v0, .L8007C79C
    /* 6CF7C 8007C77C 40101100 */   sll       $v0, $s1, 1
    /* 6CF80 8007C780 1680043C */  lui        $a0, %hi(D_8015885C)
    /* 6CF84 8007C784 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* 6CF88 8007C788 0E050524 */  addiu      $a1, $zero, 0x50E
    /* 6CF8C 8007C78C 21300000 */  addu       $a2, $zero, $zero
    /* 6CF90 8007C790 63E4020C */  jal        func_800B918C
    /* 6CF94 8007C794 21384002 */   addu      $a3, $s2, $zero
    /* 6CF98 8007C798 40101100 */  sll        $v0, $s1, 1
  .L8007C79C:
    /* 6CF9C 8007C79C 21105100 */  addu       $v0, $v0, $s1
    /* 6CFA0 8007C7A0 80100200 */  sll        $v0, $v0, 2
    /* 6CFA4 8007C7A4 23105100 */  subu       $v0, $v0, $s1
    /* 6CFA8 8007C7A8 00110200 */  sll        $v0, $v0, 4
    /* 6CFAC 8007C7AC 23105100 */  subu       $v0, $v0, $s1
    /* 6CFB0 8007C7B0 C0100200 */  sll        $v0, $v0, 3
    /* 6CFB4 8007C7B4 1180013C */  lui        $at, %hi(D_801176F8)
    /* 6CFB8 8007C7B8 21082200 */  addu       $at, $at, $v0
    /* 6CFBC 8007C7BC F8762384 */  lh         $v1, %lo(D_801176F8)($at)
    /* 6CFC0 8007C7C0 02000224 */  addiu      $v0, $zero, 0x2
    /* 6CFC4 8007C7C4 08006214 */  bne        $v1, $v0, .L8007C7E8
    /* 6CFC8 8007C7C8 21104002 */   addu      $v0, $s2, $zero
    /* 6CFCC 8007C7CC 1680043C */  lui        $a0, %hi(D_8015885C)
    /* 6CFD0 8007C7D0 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* 6CFD4 8007C7D4 4D060524 */  addiu      $a1, $zero, 0x64D
    /* 6CFD8 8007C7D8 21300000 */  addu       $a2, $zero, $zero
    /* 6CFDC 8007C7DC 63E4020C */  jal        func_800B918C
    /* 6CFE0 8007C7E0 21384002 */   addu      $a3, $s2, $zero
  .L8007C7E4:
    /* 6CFE4 8007C7E4 21104002 */  addu       $v0, $s2, $zero
  .L8007C7E8:
    /* 6CFE8 8007C7E8 3000BF8F */  lw         $ra, 0x30($sp)
    /* 6CFEC 8007C7EC 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 6CFF0 8007C7F0 2800B48F */  lw         $s4, 0x28($sp)
    /* 6CFF4 8007C7F4 2400B38F */  lw         $s3, 0x24($sp)
    /* 6CFF8 8007C7F8 2000B28F */  lw         $s2, 0x20($sp)
    /* 6CFFC 8007C7FC 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 6D000 8007C800 1800B08F */  lw         $s0, 0x18($sp)
    /* 6D004 8007C804 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 6D008 8007C808 0800E003 */  jr         $ra
    /* 6D00C 8007C80C 00000000 */   nop
endlabel func_8007C234
