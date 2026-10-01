.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DD264, 0x32C

glabel func_800DD264
    /* CDA64 800DD264 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* CDA68 800DD268 3800BFAF */  sw         $ra, 0x38($sp)
    /* CDA6C 800DD26C 3400B7AF */  sw         $s7, 0x34($sp)
    /* CDA70 800DD270 3000B6AF */  sw         $s6, 0x30($sp)
    /* CDA74 800DD274 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* CDA78 800DD278 2800B4AF */  sw         $s4, 0x28($sp)
    /* CDA7C 800DD27C 2400B3AF */  sw         $s3, 0x24($sp)
    /* CDA80 800DD280 2000B2AF */  sw         $s2, 0x20($sp)
    /* CDA84 800DD284 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* CDA88 800DD288 1800B0AF */  sw         $s0, 0x18($sp)
    /* CDA8C 800DD28C 21888000 */  addu       $s1, $a0, $zero
    /* CDA90 800DD290 1280023C */  lui        $v0, %hi(D_8011A258)
    /* CDA94 800DD294 58A24224 */  addiu      $v0, $v0, %lo(D_8011A258)
    /* CDA98 800DD298 00004394 */  lhu        $v1, 0x0($v0)
    /* CDA9C 800DD29C 00000000 */  nop
    /* CDAA0 800DD2A0 04007730 */  andi       $s7, $v1, 0x4
    /* CDAA4 800DD2A4 FBFF6330 */  andi       $v1, $v1, 0xFFFB
    /* CDAA8 800DD2A8 000043A4 */  sh         $v1, 0x0($v0)
    /* CDAAC 800DD2AC 21980000 */  addu       $s3, $zero, $zero
    /* CDAB0 800DD2B0 21A80000 */  addu       $s5, $zero, $zero
    /* CDAB4 800DD2B4 21A00000 */  addu       $s4, $zero, $zero
    /* CDAB8 800DD2B8 21800000 */  addu       $s0, $zero, $zero
    /* CDABC 800DD2BC 2A004284 */  lh         $v0, 0x2A($v0)
    /* CDAC0 800DD2C0 00000000 */  nop
    /* CDAC4 800DD2C4 5A004018 */  blez       $v0, .L800DD430
    /* CDAC8 800DD2C8 21900000 */   addu      $s2, $zero, $zero
    /* CDACC 800DD2CC 40101100 */  sll        $v0, $s1, 1
    /* CDAD0 800DD2D0 21105100 */  addu       $v0, $v0, $s1
    /* CDAD4 800DD2D4 80100200 */  sll        $v0, $v0, 2
    /* CDAD8 800DD2D8 23105100 */  subu       $v0, $v0, $s1
    /* CDADC 800DD2DC 00110200 */  sll        $v0, $v0, 4
    /* CDAE0 800DD2E0 23105100 */  subu       $v0, $v0, $s1
    /* CDAE4 800DD2E4 C0B00200 */  sll        $s6, $v0, 3
    /* CDAE8 800DD2E8 40101000 */  sll        $v0, $s0, 1
  .L800DD2EC:
    /* CDAEC 800DD2EC 21105000 */  addu       $v0, $v0, $s0
    /* CDAF0 800DD2F0 80100200 */  sll        $v0, $v0, 2
    /* CDAF4 800DD2F4 23105000 */  subu       $v0, $v0, $s0
    /* CDAF8 800DD2F8 C0100200 */  sll        $v0, $v0, 3
    /* CDAFC 800DD2FC 1180013C */  lui        $at, %hi(D_80113ED8)
    /* CDB00 800DD300 21082200 */  addu       $at, $at, $v0
    /* CDB04 800DD304 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* CDB08 800DD308 00000000 */  nop
    /* CDB0C 800DD30C 41005114 */  bne        $v0, $s1, .L800DD414
    /* CDB10 800DD310 00000000 */   nop
    /* CDB14 800DD314 0C25020C */  jal        func_80089430
    /* CDB18 800DD318 21200002 */   addu      $a0, $s0, $zero
    /* CDB1C 800DD31C 0B00E012 */  beqz       $s7, .L800DD34C
    /* CDB20 800DD320 40101000 */   sll       $v0, $s0, 1
    /* CDB24 800DD324 1180013C */  lui        $at, %hi(D_801176A7)
    /* CDB28 800DD328 21083600 */  addu       $at, $at, $s6
    /* CDB2C 800DD32C A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* CDB30 800DD330 00000000 */  nop
    /* CDB34 800DD334 0500422C */  sltiu      $v0, $v0, 0x5
    /* CDB38 800DD338 04004014 */  bnez       $v0, .L800DD34C
    /* CDB3C 800DD33C 40101000 */   sll       $v0, $s0, 1
    /* CDB40 800DD340 0C63000C */  jal        func_80018C30
    /* CDB44 800DD344 01000424 */   addiu     $a0, $zero, 0x1
    /* CDB48 800DD348 40101000 */  sll        $v0, $s0, 1
  .L800DD34C:
    /* CDB4C 800DD34C 21105000 */  addu       $v0, $v0, $s0
    /* CDB50 800DD350 80100200 */  sll        $v0, $v0, 2
    /* CDB54 800DD354 23105000 */  subu       $v0, $v0, $s0
    /* CDB58 800DD358 C0200200 */  sll        $a0, $v0, 3
    /* CDB5C 800DD35C 1180013C */  lui        $at, %hi(D_80113F27)
    /* CDB60 800DD360 21082400 */  addu       $at, $at, $a0
    /* CDB64 800DD364 273F2380 */  lb         $v1, %lo(D_80113F27)($at)
    /* CDB68 800DD368 1180013C */  lui        $at, %hi(D_80113F26)
    /* CDB6C 800DD36C 21082400 */  addu       $at, $at, $a0
    /* CDB70 800DD370 263F2280 */  lb         $v0, %lo(D_80113F26)($at)
    /* CDB74 800DD374 00000000 */  nop
    /* CDB78 800DD378 2A104300 */  slt        $v0, $v0, $v1
    /* CDB7C 800DD37C 0A004010 */  beqz       $v0, .L800DD3A8
    /* CDB80 800DD380 40101000 */   sll       $v0, $s0, 1
    /* CDB84 800DD384 1180013C */  lui        $at, %hi(D_80113ED4)
    /* CDB88 800DD388 21082400 */  addu       $at, $at, $a0
    /* CDB8C 800DD38C D43E228C */  lw         $v0, %lo(D_80113ED4)($at)
    /* CDB90 800DD390 00000000 */  nop
    /* CDB94 800DD394 01004230 */  andi       $v0, $v0, 0x1
    /* CDB98 800DD398 11004010 */  beqz       $v0, .L800DD3E0
    /* CDB9C 800DD39C 01009426 */   addiu     $s4, $s4, 0x1
    /* CDBA0 800DD3A0 F8740308 */  j          .L800DD3E0
    /* CDBA4 800DD3A4 0100B526 */   addiu     $s5, $s5, 0x1
  .L800DD3A8:
    /* CDBA8 800DD3A8 21105000 */  addu       $v0, $v0, $s0
    /* CDBAC 800DD3AC 80100200 */  sll        $v0, $v0, 2
    /* CDBB0 800DD3B0 23105000 */  subu       $v0, $v0, $s0
    /* CDBB4 800DD3B4 C0100200 */  sll        $v0, $v0, 3
    /* CDBB8 800DD3B8 1180013C */  lui        $at, %hi(D_80113F27)
    /* CDBBC 800DD3BC 21082200 */  addu       $at, $at, $v0
    /* CDBC0 800DD3C0 273F2380 */  lb         $v1, %lo(D_80113F27)($at)
    /* CDBC4 800DD3C4 1180013C */  lui        $at, %hi(D_80113F26)
    /* CDBC8 800DD3C8 21082200 */  addu       $at, $at, $v0
    /* CDBCC 800DD3CC 263F2280 */  lb         $v0, %lo(D_80113F26)($at)
    /* CDBD0 800DD3D0 00000000 */  nop
    /* CDBD4 800DD3D4 03006214 */  bne        $v1, $v0, .L800DD3E4
    /* CDBD8 800DD3D8 40101000 */   sll       $v0, $s0, 1
    /* CDBDC 800DD3DC 01007326 */  addiu      $s3, $s3, 0x1
  .L800DD3E0:
    /* CDBE0 800DD3E0 40101000 */  sll        $v0, $s0, 1
  .L800DD3E4:
    /* CDBE4 800DD3E4 21105000 */  addu       $v0, $v0, $s0
    /* CDBE8 800DD3E8 80100200 */  sll        $v0, $v0, 2
    /* CDBEC 800DD3EC 23105000 */  subu       $v0, $v0, $s0
    /* CDBF0 800DD3F0 C0100200 */  sll        $v0, $v0, 3
    /* CDBF4 800DD3F4 1180013C */  lui        $at, %hi(D_80113ED4)
    /* CDBF8 800DD3F8 21082200 */  addu       $at, $at, $v0
    /* CDBFC 800DD3FC D43E228C */  lw         $v0, %lo(D_80113ED4)($at)
    /* CDC00 800DD400 00000000 */  nop
    /* CDC04 800DD404 02004230 */  andi       $v0, $v0, 0x2
    /* CDC08 800DD408 02004010 */  beqz       $v0, .L800DD414
    /* CDC0C 800DD40C 00000000 */   nop
    /* CDC10 800DD410 01005226 */  addiu      $s2, $s2, 0x1
  .L800DD414:
    /* CDC14 800DD414 01001026 */  addiu      $s0, $s0, 0x1
    /* CDC18 800DD418 1280023C */  lui        $v0, %hi(D_8011A282)
    /* CDC1C 800DD41C 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* CDC20 800DD420 00000000 */  nop
    /* CDC24 800DD424 2A100202 */  slt        $v0, $s0, $v0
    /* CDC28 800DD428 B0FF4014 */  bnez       $v0, .L800DD2EC
    /* CDC2C 800DD42C 40101000 */   sll       $v0, $s0, 1
  .L800DD430:
    /* CDC30 800DD430 40101100 */  sll        $v0, $s1, 1
    /* CDC34 800DD434 21105100 */  addu       $v0, $v0, $s1
    /* CDC38 800DD438 80100200 */  sll        $v0, $v0, 2
    /* CDC3C 800DD43C 23105100 */  subu       $v0, $v0, $s1
    /* CDC40 800DD440 00110200 */  sll        $v0, $v0, 4
    /* CDC44 800DD444 23105100 */  subu       $v0, $v0, $s1
    /* CDC48 800DD448 C0200200 */  sll        $a0, $v0, 3
    /* CDC4C 800DD44C 1180013C */  lui        $at, %hi(D_801176A7)
    /* CDC50 800DD450 21082400 */  addu       $at, $at, $a0
    /* CDC54 800DD454 A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* CDC58 800DD458 00000000 */  nop
    /* CDC5C 800DD45C 0500422C */  sltiu      $v0, $v0, 0x5
    /* CDC60 800DD460 0B004014 */  bnez       $v0, .L800DD490
    /* CDC64 800DD464 00000000 */   nop
    /* CDC68 800DD468 1180013C */  lui        $at, %hi(D_801176A6)
    /* CDC6C 800DD46C 21082400 */  addu       $at, $at, $a0
    /* CDC70 800DD470 A6762390 */  lbu        $v1, %lo(D_801176A6)($at)
    /* CDC74 800DD474 1180013C */  lui        $at, %hi(D_801176A5)
    /* CDC78 800DD478 21082400 */  addu       $at, $at, $a0
    /* CDC7C 800DD47C A5762290 */  lbu        $v0, %lo(D_801176A5)($at)
    /* CDC80 800DD480 00000000 */  nop
    /* CDC84 800DD484 21186200 */  addu       $v1, $v1, $v0
    /* CDC88 800DD488 3A750308 */  j          .L800DD4E8
    /* CDC8C 800DD48C 09006328 */   slti      $v1, $v1, 0x9
  .L800DD490:
    /* CDC90 800DD490 17008016 */  bnez       $s4, .L800DD4F0
    /* CDC94 800DD494 01000324 */   addiu     $v1, $zero, 0x1
    /* CDC98 800DD498 13006012 */  beqz       $s3, .L800DD4E8
    /* CDC9C 800DD49C 00000000 */   nop
    /* CDCA0 800DD4A0 11004016 */  bnez       $s2, .L800DD4E8
    /* CDCA4 800DD4A4 40101100 */   sll       $v0, $s1, 1
    /* CDCA8 800DD4A8 21105100 */  addu       $v0, $v0, $s1
    /* CDCAC 800DD4AC 80100200 */  sll        $v0, $v0, 2
    /* CDCB0 800DD4B0 23105100 */  subu       $v0, $v0, $s1
    /* CDCB4 800DD4B4 00110200 */  sll        $v0, $v0, 4
    /* CDCB8 800DD4B8 23105100 */  subu       $v0, $v0, $s1
    /* CDCBC 800DD4BC C0100200 */  sll        $v0, $v0, 3
    /* CDCC0 800DD4C0 1180013C */  lui        $at, %hi(D_801176A6)
    /* CDCC4 800DD4C4 21082200 */  addu       $at, $at, $v0
    /* CDCC8 800DD4C8 A6762390 */  lbu        $v1, %lo(D_801176A6)($at)
    /* CDCCC 800DD4CC 1180013C */  lui        $at, %hi(D_801176A5)
    /* CDCD0 800DD4D0 21082200 */  addu       $at, $at, $v0
    /* CDCD4 800DD4D4 A5762290 */  lbu        $v0, %lo(D_801176A5)($at)
    /* CDCD8 800DD4D8 00000000 */  nop
    /* CDCDC 800DD4DC 21186200 */  addu       $v1, $v1, $v0
    /* CDCE0 800DD4E0 0A006338 */  xori       $v1, $v1, 0xA
    /* CDCE4 800DD4E4 2B180300 */  sltu       $v1, $zero, $v1
  .L800DD4E8:
    /* CDCE8 800DD4E8 16008012 */  beqz       $s4, .L800DD544
    /* CDCEC 800DD4EC 00000000 */   nop
  .L800DD4F0:
    /* CDCF0 800DD4F0 03006014 */  bnez       $v1, .L800DD500
    /* CDCF4 800DD4F4 00000000 */   nop
    /* CDCF8 800DD4F8 58750308 */  j          .L800DD560
    /* CDCFC 800DD4FC 02000224 */   addiu     $v0, $zero, 0x2
  .L800DD500:
    /* CDD00 800DD500 1700A012 */  beqz       $s5, .L800DD560
    /* CDD04 800DD504 03000224 */   addiu     $v0, $zero, 0x3
    /* CDD08 800DD508 40181100 */  sll        $v1, $s1, 1
    /* CDD0C 800DD50C 21187100 */  addu       $v1, $v1, $s1
    /* CDD10 800DD510 80180300 */  sll        $v1, $v1, 2
    /* CDD14 800DD514 23187100 */  subu       $v1, $v1, $s1
    /* CDD18 800DD518 00190300 */  sll        $v1, $v1, 4
    /* CDD1C 800DD51C 23187100 */  subu       $v1, $v1, $s1
    /* CDD20 800DD520 C0180300 */  sll        $v1, $v1, 3
    /* CDD24 800DD524 1180013C */  lui        $at, %hi(D_801176A7)
    /* CDD28 800DD528 21082300 */  addu       $at, $at, $v1
    /* CDD2C 800DD52C A7762490 */  lbu        $a0, %lo(D_801176A7)($at)
    /* CDD30 800DD530 06000324 */  addiu      $v1, $zero, 0x6
    /* CDD34 800DD534 0A008314 */  bne        $a0, $v1, .L800DD560
    /* CDD38 800DD538 00000000 */   nop
    /* CDD3C 800DD53C 58750308 */  j          .L800DD560
    /* CDD40 800DD540 01000224 */   addiu     $v0, $zero, 0x1
  .L800DD544:
    /* CDD44 800DD544 03006014 */  bnez       $v1, .L800DD554
    /* CDD48 800DD548 00000000 */   nop
    /* CDD4C 800DD54C 58750308 */  j          .L800DD560
    /* CDD50 800DD550 04000224 */   addiu     $v0, $zero, 0x4
  .L800DD554:
    /* CDD54 800DD554 02004016 */  bnez       $s2, .L800DD560
    /* CDD58 800DD558 06000224 */   addiu     $v0, $zero, 0x6
    /* CDD5C 800DD55C 05000224 */  addiu      $v0, $zero, 0x5
  .L800DD560:
    /* CDD60 800DD560 3800BF8F */  lw         $ra, 0x38($sp)
    /* CDD64 800DD564 3400B78F */  lw         $s7, 0x34($sp)
    /* CDD68 800DD568 3000B68F */  lw         $s6, 0x30($sp)
    /* CDD6C 800DD56C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* CDD70 800DD570 2800B48F */  lw         $s4, 0x28($sp)
    /* CDD74 800DD574 2400B38F */  lw         $s3, 0x24($sp)
    /* CDD78 800DD578 2000B28F */  lw         $s2, 0x20($sp)
    /* CDD7C 800DD57C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* CDD80 800DD580 1800B08F */  lw         $s0, 0x18($sp)
    /* CDD84 800DD584 4000BD27 */  addiu      $sp, $sp, 0x40
    /* CDD88 800DD588 0800E003 */  jr         $ra
    /* CDD8C 800DD58C 00000000 */   nop
endlabel func_800DD264
