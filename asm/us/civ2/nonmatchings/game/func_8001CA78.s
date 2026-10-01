.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001CA78, 0x6D0

glabel func_8001CA78
    /* D278 8001CA78 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* D27C 8001CA7C 2000BFAF */  sw         $ra, 0x20($sp)
    /* D280 8001CA80 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* D284 8001CA84 1800B0AF */  sw         $s0, 0x18($sp)
    /* D288 8001CA88 1680023C */  lui        $v0, %hi(D_80158864)
    /* D28C 8001CA8C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* D290 8001CA90 00000000 */  nop
    /* D294 8001CA94 08005180 */  lb         $s1, 0x8($v0)
    /* D298 8001CA98 00000000 */  nop
    /* D29C 8001CA9C A4012012 */  beqz       $s1, .L8001D130
    /* D2A0 8001CAA0 00000000 */   nop
    /* D2A4 8001CAA4 8C00838F */  lw         $v1, %gp_rel(D_80158564)($gp)
    /* D2A8 8001CAA8 9000828F */  lw         $v0, %gp_rel(D_80158568)($gp)
    /* D2AC 8001CAAC 00000000 */  nop
    /* D2B0 8001CAB0 23286200 */  subu       $a1, $v1, $v0
    /* D2B4 8001CAB4 9200A104 */  bgez       $a1, .L8001CD00
    /* D2B8 8001CAB8 00000000 */   nop
    /* D2BC 8001CABC 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* D2C0 8001CAC0 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* D2C4 8001CAC4 00000000 */  nop
    /* D2C8 8001CAC8 10002216 */  bne        $s1, $v0, .L8001CB0C
    /* D2CC 8001CACC 00000000 */   nop
    /* D2D0 8001CAD0 1280023C */  lui        $v0, %hi(D_8011A25C)
    /* D2D4 8001CAD4 5CA24294 */  lhu        $v0, %lo(D_8011A25C)($v0)
    /* D2D8 8001CAD8 00000000 */  nop
    /* D2DC 8001CADC 10004230 */  andi       $v0, $v0, 0x10
    /* D2E0 8001CAE0 0A004014 */  bnez       $v0, .L8001CB0C
    /* D2E4 8001CAE4 0E000424 */   addiu     $a0, $zero, 0xE
    /* D2E8 8001CAE8 01000524 */  addiu      $a1, $zero, 0x1
    /* D2EC 8001CAEC 21300000 */  addu       $a2, $zero, $zero
    /* D2F0 8001CAF0 2B9D020C */  jal        func_800A74AC
    /* D2F4 8001CAF4 21380000 */   addu      $a3, $zero, $zero
    /* D2F8 8001CAF8 FD160424 */  addiu      $a0, $zero, 0x16FD
    /* D2FC 8001CAFC 48000524 */  addiu      $a1, $zero, 0x48
    /* D300 8001CB00 21300000 */  addu       $a2, $zero, $zero
    /* D304 8001CB04 A263000C */  jal        func_80018E88
    /* D308 8001CB08 21380000 */   addu      $a3, $zero, $zero
  .L8001CB0C:
    /* D30C 8001CB0C 1680043C */  lui        $a0, %hi(D_80158864)
    /* D310 8001CB10 6488848C */  lw         $a0, %lo(D_80158864)($a0)
    /* D314 8001CB14 00000000 */  nop
    /* D318 8001CB18 0400838C */  lw         $v1, 0x4($a0)
    /* D31C 8001CB1C 00000000 */  nop
    /* D320 8001CB20 01006230 */  andi       $v0, $v1, 0x1
    /* D324 8001CB24 1A004014 */  bnez       $v0, .L8001CB90
    /* D328 8001CB28 01406234 */   ori       $v0, $v1, 0x4001
    /* D32C 8001CB2C 040082AC */  sw         $v0, 0x4($a0)
    /* D330 8001CB30 1280023C */  lui        $v0, %hi(D_8011A275)
    /* D334 8001CB34 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* D338 8001CB38 00000000 */  nop
    /* D33C 8001CB3C 07102202 */  srav       $v0, $v0, $s1
    /* D340 8001CB40 01004230 */  andi       $v0, $v0, 0x1
    /* D344 8001CB44 05004014 */  bnez       $v0, .L8001CB5C
    /* D348 8001CB48 00000000 */   nop
    /* D34C 8001CB4C 1680043C */  lui        $a0, %hi(D_80158860)
    /* D350 8001CB50 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* D354 8001CB54 943A020C */  jal        func_8008EA50
    /* D358 8001CB58 63000524 */   addiu     $a1, $zero, 0x63
  .L8001CB5C:
    /* D35C 8001CB5C 1680023C */  lui        $v0, %hi(D_80158864)
    /* D360 8001CB60 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* D364 8001CB64 00000000 */  nop
    /* D368 8001CB68 00004484 */  lh         $a0, 0x0($v0)
    /* D36C 8001CB6C 02004584 */  lh         $a1, 0x2($v0)
    /* D370 8001CB70 01000224 */  addiu      $v0, $zero, 0x1
    /* D374 8001CB74 1000A2AF */  sw         $v0, 0x10($sp)
    /* D378 8001CB78 1280073C */  lui        $a3, %hi(D_8011ACB4)
    /* D37C 8001CB7C B4ACE78C */  lw         $a3, %lo(D_8011ACB4)($a3)
    /* D380 8001CB80 0B6F020C */  jal        func_8009BC2C
    /* D384 8001CB84 21300000 */   addu      $a2, $zero, $zero
    /* D388 8001CB88 A0730008 */  j          .L8001CE80
    /* D38C 8001CB8C 00000000 */   nop
  .L8001CB90:
    /* D390 8001CB90 1280023C */  lui        $v0, %hi(D_8011A275)
    /* D394 8001CB94 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* D398 8001CB98 00000000 */  nop
    /* D39C 8001CB9C 07102202 */  srav       $v0, $v0, $s1
    /* D3A0 8001CBA0 01004230 */  andi       $v0, $v0, 0x1
    /* D3A4 8001CBA4 05004014 */  bnez       $v0, .L8001CBBC
    /* D3A8 8001CBA8 00000000 */   nop
    /* D3AC 8001CBAC 1680043C */  lui        $a0, %hi(D_80158860)
    /* D3B0 8001CBB0 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* D3B4 8001CBB4 943A020C */  jal        func_8008EA50
    /* D3B8 8001CBB8 63000524 */   addiu     $a1, $zero, 0x63
  .L8001CBBC:
    /* D3BC 8001CBBC 1680043C */  lui        $a0, %hi(D_80158864)
    /* D3C0 8001CBC0 6488848C */  lw         $a0, %lo(D_80158864)($a0)
    /* D3C4 8001CBC4 00000000 */  nop
    /* D3C8 8001CBC8 0400838C */  lw         $v1, 0x4($a0)
    /* D3CC 8001CBCC 00000000 */  nop
    /* D3D0 8001CBD0 00206230 */  andi       $v0, $v1, 0x2000
    /* D3D4 8001CBD4 03004010 */  beqz       $v0, .L8001CBE4
    /* D3D8 8001CBD8 1000023C */   lui       $v0, (0x100000 >> 16)
    /* D3DC 8001CBDC 25106200 */  or         $v0, $v1, $v0
    /* D3E0 8001CBE0 040082AC */  sw         $v0, 0x4($a0)
  .L8001CBE4:
    /* D3E4 8001CBE4 1680023C */  lui        $v0, %hi(D_80158864)
    /* D3E8 8001CBE8 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* D3EC 8001CBEC 00000000 */  nop
    /* D3F0 8001CBF0 0400438C */  lw         $v1, 0x4($v0)
    /* D3F4 8001CBF4 00000000 */  nop
    /* D3F8 8001CBF8 00206334 */  ori        $v1, $v1, 0x2000
    /* D3FC 8001CBFC 040043AC */  sw         $v1, 0x4($v0)
    /* D400 8001CC00 1280043C */  lui        $a0, %hi(D_8011A275)
    /* D404 8001CC04 75A28424 */  addiu      $a0, $a0, %lo(D_8011A275)
    /* D408 8001CC08 00008290 */  lbu        $v0, 0x0($a0)
    /* D40C 8001CC0C 00000000 */  nop
    /* D410 8001CC10 07102202 */  srav       $v0, $v0, $s1
    /* D414 8001CC14 01004230 */  andi       $v0, $v0, 0x1
    /* D418 8001CC18 99004010 */  beqz       $v0, .L8001CE80
    /* D41C 8001CC1C 40101100 */   sll       $v0, $s1, 1
    /* D420 8001CC20 21105100 */  addu       $v0, $v0, $s1
    /* D424 8001CC24 80100200 */  sll        $v0, $v0, 2
    /* D428 8001CC28 23105100 */  subu       $v0, $v0, $s1
    /* D42C 8001CC2C 00110200 */  sll        $v0, $v0, 4
    /* D430 8001CC30 23105100 */  subu       $v0, $v0, $s1
    /* D434 8001CC34 C0100200 */  sll        $v0, $v0, 3
    /* D438 8001CC38 1180013C */  lui        $at, %hi(D_801176A7)
    /* D43C 8001CC3C 21082200 */  addu       $at, $at, $v0
    /* D440 8001CC40 A7762390 */  lbu        $v1, %lo(D_801176A7)($at)
    /* D444 8001CC44 06000224 */  addiu      $v0, $zero, 0x6
    /* D448 8001CC48 8D006214 */  bne        $v1, $v0, .L8001CE80
    /* D44C 8001CC4C 00000000 */   nop
    /* D450 8001CC50 E5FF8294 */  lhu        $v0, -0x1B($a0)
    /* D454 8001CC54 00000000 */  nop
    /* D458 8001CC58 80004230 */  andi       $v0, $v0, 0x80
    /* D45C 8001CC5C 07004010 */  beqz       $v0, .L8001CC7C
    /* D460 8001CC60 00000000 */   nop
    /* D464 8001CC64 1280023C */  lui        $v0, %hi(D_8011A390)
    /* D468 8001CC68 90A34294 */  lhu        $v0, %lo(D_8011A390)($v0)
    /* D46C 8001CC6C 00000000 */  nop
    /* D470 8001CC70 10004230 */  andi       $v0, $v0, 0x10
    /* D474 8001CC74 82004014 */  bnez       $v0, .L8001CE80
    /* D478 8001CC78 00000000 */   nop
  .L8001CC7C:
    /* D47C 8001CC7C 62170424 */  addiu      $a0, $zero, 0x1762
    /* D480 8001CC80 1380063C */  lui        $a2, %hi(D_80135380)
    /* D484 8001CC84 8053C624 */  addiu      $a2, $a2, %lo(D_80135380)
    /* D488 8001CC88 2963000C */  jal        func_80018CA4
    /* D48C 8001CC8C 21280000 */   addu      $a1, $zero, $zero
    /* D490 8001CC90 40801100 */  sll        $s0, $s1, 1
    /* D494 8001CC94 21801102 */  addu       $s0, $s0, $s1
    /* D498 8001CC98 80801000 */  sll        $s0, $s0, 2
    /* D49C 8001CC9C 23801102 */  subu       $s0, $s0, $s1
    /* D4A0 8001CCA0 00811000 */  sll        $s0, $s0, 4
    /* D4A4 8001CCA4 23801102 */  subu       $s0, $s0, $s1
    /* D4A8 8001CCA8 C0801000 */  sll        $s0, $s0, 3
    /* D4AC 8001CCAC 1180013C */  lui        $at, %hi(D_80117690)
    /* D4B0 8001CCB0 21083000 */  addu       $at, $at, $s0
    /* D4B4 8001CCB4 90762294 */  lhu        $v0, %lo(D_80117690)($at)
    /* D4B8 8001CCB8 00000000 */  nop
    /* D4BC 8001CCBC FEFF4230 */  andi       $v0, $v0, 0xFFFE
    /* D4C0 8001CCC0 1180013C */  lui        $at, %hi(D_80117690)
    /* D4C4 8001CCC4 21083000 */  addu       $at, $at, $s0
    /* D4C8 8001CCC8 907622A4 */  sh         $v0, %lo(D_80117690)($at)
    /* D4CC 8001CCCC 21202002 */  addu       $a0, $s1, $zero
    /* D4D0 8001CCD0 C580010C */  jal        func_80060314
    /* D4D4 8001CCD4 21280000 */   addu      $a1, $zero, $zero
    /* D4D8 8001CCD8 1180013C */  lui        $at, %hi(D_80117690)
    /* D4DC 8001CCDC 21083000 */  addu       $at, $at, $s0
    /* D4E0 8001CCE0 90762294 */  lhu        $v0, %lo(D_80117690)($at)
    /* D4E4 8001CCE4 00000000 */  nop
    /* D4E8 8001CCE8 01004234 */  ori        $v0, $v0, 0x1
    /* D4EC 8001CCEC 1180013C */  lui        $at, %hi(D_80117690)
    /* D4F0 8001CCF0 21083000 */  addu       $at, $at, $s0
    /* D4F4 8001CCF4 907622A4 */  sh         $v0, %lo(D_80117690)($at)
    /* D4F8 8001CCF8 A0730008 */  j          .L8001CE80
    /* D4FC 8001CCFC 00000000 */   nop
  .L8001CD00:
    /* D500 8001CD00 1400A014 */  bnez       $a1, .L8001CD54
    /* D504 8001CD04 00000000 */   nop
    /* D508 8001CD08 1180023C */  lui        $v0, %hi(D_8010BA40)
    /* D50C 8001CD0C 40BA428C */  lw         $v0, %lo(D_8010BA40)($v0)
    /* D510 8001CD10 5400838F */  lw         $v1, %gp_rel(D_8015852C)($gp)
    /* D514 8001CD14 00000000 */  nop
    /* D518 8001CD18 23104300 */  subu       $v0, $v0, $v1
    /* D51C 8001CD1C 0D004018 */  blez       $v0, .L8001CD54
    /* D520 8001CD20 00000000 */   nop
    /* D524 8001CD24 E000828F */  lw         $v0, %gp_rel(D_801585B8)($gp)
    /* D528 8001CD28 00000000 */  nop
    /* D52C 8001CD2C 09004004 */  bltz       $v0, .L8001CD54
    /* D530 8001CD30 00000000 */   nop
    /* D534 8001CD34 1680033C */  lui        $v1, %hi(D_80158864)
    /* D538 8001CD38 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* D53C 8001CD3C 00000000 */  nop
    /* D540 8001CD40 0400628C */  lw         $v0, 0x4($v1)
    /* D544 8001CD44 00000000 */  nop
    /* D548 8001CD48 00404234 */  ori        $v0, $v0, 0x4000
    /* D54C 8001CD4C 5C730008 */  j          .L8001CD70
    /* D550 8001CD50 040062AC */   sw        $v0, 0x4($v1)
  .L8001CD54:
    /* D554 8001CD54 1680023C */  lui        $v0, %hi(D_80158864)
    /* D558 8001CD58 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* D55C 8001CD5C 00000000 */  nop
    /* D560 8001CD60 0400438C */  lw         $v1, 0x4($v0)
    /* D564 8001CD64 FFBF0424 */  addiu      $a0, $zero, -0x4001
    /* D568 8001CD68 24186400 */  and        $v1, $v1, $a0
    /* D56C 8001CD6C 040043AC */  sw         $v1, 0x4($v0)
  .L8001CD70:
    /* D570 8001CD70 2E00A004 */  bltz       $a1, .L8001CE2C
    /* D574 8001CD74 40101100 */   sll       $v0, $s1, 1
    /* D578 8001CD78 1680043C */  lui        $a0, %hi(D_80158864)
    /* D57C 8001CD7C 6488848C */  lw         $a0, %lo(D_80158864)($a0)
    /* D580 8001CD80 00000000 */  nop
    /* D584 8001CD84 0400838C */  lw         $v1, 0x4($a0)
    /* D588 8001CD88 00000000 */  nop
    /* D58C 8001CD8C 01006230 */  andi       $v0, $v1, 0x1
    /* D590 8001CD90 25004010 */  beqz       $v0, .L8001CE28
    /* D594 8001CD94 EFFF023C */   lui       $v0, (0xFFEFDFFE >> 16)
    /* D598 8001CD98 FEDF4234 */  ori        $v0, $v0, (0xFFEFDFFE & 0xFFFF)
    /* D59C 8001CD9C 24106200 */  and        $v0, $v1, $v0
    /* D5A0 8001CDA0 040082AC */  sw         $v0, 0x4($a0)
    /* D5A4 8001CDA4 1280033C */  lui        $v1, %hi(D_8011A275)
    /* D5A8 8001CDA8 75A26324 */  addiu      $v1, $v1, %lo(D_8011A275)
    /* D5AC 8001CDAC 00006290 */  lbu        $v0, 0x0($v1)
    /* D5B0 8001CDB0 00000000 */  nop
    /* D5B4 8001CDB4 07102202 */  srav       $v0, $v0, $s1
    /* D5B8 8001CDB8 01004230 */  andi       $v0, $v0, 0x1
    /* D5BC 8001CDBC 0B004010 */  beqz       $v0, .L8001CDEC
    /* D5C0 8001CDC0 00000000 */   nop
    /* D5C4 8001CDC4 E7FF6294 */  lhu        $v0, -0x19($v1)
    /* D5C8 8001CDC8 00000000 */  nop
    /* D5CC 8001CDCC 20004230 */  andi       $v0, $v0, 0x20
    /* D5D0 8001CDD0 0A004014 */  bnez       $v0, .L8001CDFC
    /* D5D4 8001CDD4 31190424 */   addiu     $a0, $zero, 0x1931
    /* D5D8 8001CDD8 21280000 */  addu       $a1, $zero, $zero
    /* D5DC 8001CDDC 2963000C */  jal        func_80018CA4
    /* D5E0 8001CDE0 21300000 */   addu      $a2, $zero, $zero
    /* D5E4 8001CDE4 7F730008 */  j          .L8001CDFC
    /* D5E8 8001CDE8 00000000 */   nop
  .L8001CDEC:
    /* D5EC 8001CDEC 1680043C */  lui        $a0, %hi(D_80158860)
    /* D5F0 8001CDF0 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* D5F4 8001CDF4 943A020C */  jal        func_8008EA50
    /* D5F8 8001CDF8 63000524 */   addiu     $a1, $zero, 0x63
  .L8001CDFC:
    /* D5FC 8001CDFC 1680023C */  lui        $v0, %hi(D_80158864)
    /* D600 8001CE00 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* D604 8001CE04 00000000 */  nop
    /* D608 8001CE08 00004484 */  lh         $a0, 0x0($v0)
    /* D60C 8001CE0C 02004584 */  lh         $a1, 0x2($v0)
    /* D610 8001CE10 01000224 */  addiu      $v0, $zero, 0x1
    /* D614 8001CE14 1000A2AF */  sw         $v0, 0x10($sp)
    /* D618 8001CE18 1280073C */  lui        $a3, %hi(D_8011ACB4)
    /* D61C 8001CE1C B4ACE78C */  lw         $a3, %lo(D_8011ACB4)($a3)
    /* D620 8001CE20 0B6F020C */  jal        func_8009BC2C
    /* D624 8001CE24 21300000 */   addu      $a2, $zero, $zero
  .L8001CE28:
    /* D628 8001CE28 40101100 */  sll        $v0, $s1, 1
  .L8001CE2C:
    /* D62C 8001CE2C 21105100 */  addu       $v0, $v0, $s1
    /* D630 8001CE30 80100200 */  sll        $v0, $v0, 2
    /* D634 8001CE34 23105100 */  subu       $v0, $v0, $s1
    /* D638 8001CE38 00110200 */  sll        $v0, $v0, 4
    /* D63C 8001CE3C 23105100 */  subu       $v0, $v0, $s1
    /* D640 8001CE40 C0200200 */  sll        $a0, $v0, 3
    /* D644 8001CE44 1180013C */  lui        $at, %hi(D_801176A7)
    /* D648 8001CE48 21082400 */  addu       $at, $at, $a0
    /* D64C 8001CE4C A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* D650 8001CE50 00000000 */  nop
    /* D654 8001CE54 0A004010 */  beqz       $v0, .L8001CE80
    /* D658 8001CE58 00000000 */   nop
    /* D65C 8001CE5C 1180013C */  lui        $at, %hi(D_80117694)
    /* D660 8001CE60 21082400 */  addu       $at, $at, $a0
    /* D664 8001CE64 9476228C */  lw         $v0, %lo(D_80117694)($at)
    /* D668 8001CE68 7400838F */  lw         $v1, %gp_rel(D_8015854C)($gp)
    /* D66C 8001CE6C 00000000 */  nop
    /* D670 8001CE70 21104300 */  addu       $v0, $v0, $v1
    /* D674 8001CE74 1180013C */  lui        $at, %hi(D_80117694)
    /* D678 8001CE78 21082400 */  addu       $at, $at, $a0
    /* D67C 8001CE7C 947622AC */  sw         $v0, %lo(D_80117694)($at)
  .L8001CE80:
    /* D680 8001CE80 9000828F */  lw         $v0, %gp_rel(D_80158568)($gp)
    /* D684 8001CE84 00000000 */  nop
    /* D688 8001CE88 76004014 */  bnez       $v0, .L8001D064
    /* D68C 8001CE8C 00000000 */   nop
    /* D690 8001CE90 1680043C */  lui        $a0, %hi(D_80158864)
    /* D694 8001CE94 6488848C */  lw         $a0, %lo(D_80158864)($a0)
    /* D698 8001CE98 00000000 */  nop
    /* D69C 8001CE9C 09008380 */  lb         $v1, 0x9($a0)
    /* D6A0 8001CEA0 00000000 */  nop
    /* D6A4 8001CEA4 03006228 */  slti       $v0, $v1, 0x3
    /* D6A8 8001CEA8 6E004014 */  bnez       $v0, .L8001D064
    /* D6AC 8001CEAC 01006324 */   addiu     $v1, $v1, 0x1
    /* D6B0 8001CEB0 43180300 */  sra        $v1, $v1, 1
    /* D6B4 8001CEB4 8C00828F */  lw         $v0, %gp_rel(D_80158564)($gp)
    /* D6B8 8001CEB8 00000000 */  nop
    /* D6BC 8001CEBC 2A104300 */  slt        $v0, $v0, $v1
    /* D6C0 8001CEC0 68004014 */  bnez       $v0, .L8001D064
    /* D6C4 8001CEC4 40101100 */   sll       $v0, $s1, 1
    /* D6C8 8001CEC8 21105100 */  addu       $v0, $v0, $s1
    /* D6CC 8001CECC 80100200 */  sll        $v0, $v0, 2
    /* D6D0 8001CED0 23105100 */  subu       $v0, $v0, $s1
    /* D6D4 8001CED4 00110200 */  sll        $v0, $v0, 4
    /* D6D8 8001CED8 23105100 */  subu       $v0, $v0, $s1
    /* D6DC 8001CEDC C0100200 */  sll        $v0, $v0, 3
    /* D6E0 8001CEE0 1180013C */  lui        $at, %hi(D_801176A7)
    /* D6E4 8001CEE4 21082200 */  addu       $at, $at, $v0
    /* D6E8 8001CEE8 A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* D6EC 8001CEEC 00000000 */  nop
    /* D6F0 8001CEF0 5C004010 */  beqz       $v0, .L8001D064
    /* D6F4 8001CEF4 00000000 */   nop
    /* D6F8 8001CEF8 0400828C */  lw         $v0, 0x4($a0)
    /* D6FC 8001CEFC 00000000 */  nop
    /* D700 8001CF00 02004230 */  andi       $v0, $v0, 0x2
    /* D704 8001CF04 27004014 */  bnez       $v0, .L8001CFA4
    /* D708 8001CF08 40101100 */   sll       $v0, $s1, 1
    /* D70C 8001CF0C 1280103C */  lui        $s0, %hi(D_8011A275)
    /* D710 8001CF10 75A21026 */  addiu      $s0, $s0, %lo(D_8011A275)
    /* D714 8001CF14 00000292 */  lbu        $v0, 0x0($s0)
    /* D718 8001CF18 00000000 */  nop
    /* D71C 8001CF1C 07102202 */  srav       $v0, $v0, $s1
    /* D720 8001CF20 01004230 */  andi       $v0, $v0, 0x1
    /* D724 8001CF24 17004010 */  beqz       $v0, .L8001CF84
    /* D728 8001CF28 00000000 */   nop
    /* D72C 8001CF2C 2554020C */  jal        func_80095094
    /* D730 8001CF30 21202002 */   addu      $a0, $s1, $zero
    /* D734 8001CF34 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* D738 8001CF38 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* D73C 8001CF3C A587030C */  jal        func_800E1E94
    /* D740 8001CF40 21284000 */   addu      $a1, $v0, $zero
    /* D744 8001CF44 E7FF0296 */  lhu        $v0, -0x19($s0)
    /* D748 8001CF48 00000000 */  nop
    /* D74C 8001CF4C 40004230 */  andi       $v0, $v0, 0x40
    /* D750 8001CF50 0C004014 */  bnez       $v0, .L8001CF84
    /* D754 8001CF54 00000000 */   nop
    /* D758 8001CF58 BC00828F */  lw         $v0, %gp_rel(D_80158594)($gp)
    /* D75C 8001CF5C 00000000 */  nop
    /* D760 8001CF60 03004010 */  beqz       $v0, .L8001CF70
    /* D764 8001CF64 03000424 */   addiu     $a0, $zero, 0x3
    /* D768 8001CF68 689E020C */  jal        func_800A79A0
    /* D76C 8001CF6C 21280000 */   addu      $a1, $zero, $zero
  .L8001CF70:
    /* D770 8001CF70 82190424 */  addiu      $a0, $zero, 0x1982
    /* D774 8001CF74 4A000524 */  addiu      $a1, $zero, 0x4A
    /* D778 8001CF78 21300000 */  addu       $a2, $zero, $zero
    /* D77C 8001CF7C A263000C */  jal        func_80018E88
    /* D780 8001CF80 21380000 */   addu      $a3, $zero, $zero
  .L8001CF84:
    /* D784 8001CF84 1680033C */  lui        $v1, %hi(D_80158864)
    /* D788 8001CF88 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* D78C 8001CF8C 00000000 */  nop
    /* D790 8001CF90 0400628C */  lw         $v0, 0x4($v1)
    /* D794 8001CF94 00000000 */  nop
    /* D798 8001CF98 02004234 */  ori        $v0, $v0, 0x2
    /* D79C 8001CF9C 4C740008 */  j          .L8001D130
    /* D7A0 8001CFA0 040062AC */   sw        $v0, 0x4($v1)
  .L8001CFA4:
    /* D7A4 8001CFA4 21105100 */  addu       $v0, $v0, $s1
    /* D7A8 8001CFA8 80100200 */  sll        $v0, $v0, 2
    /* D7AC 8001CFAC 23105100 */  subu       $v0, $v0, $s1
    /* D7B0 8001CFB0 00110200 */  sll        $v0, $v0, 4
    /* D7B4 8001CFB4 23105100 */  subu       $v0, $v0, $s1
    /* D7B8 8001CFB8 C0100200 */  sll        $v0, $v0, 3
    /* D7BC 8001CFBC 1180013C */  lui        $at, %hi(D_801176A7)
    /* D7C0 8001CFC0 21082200 */  addu       $at, $at, $v0
    /* D7C4 8001CFC4 A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* D7C8 8001CFC8 00000000 */  nop
    /* D7CC 8001CFCC 0500422C */  sltiu      $v0, $v0, 0x5
    /* D7D0 8001CFD0 57004014 */  bnez       $v0, .L8001D130
    /* D7D4 8001CFD4 00000000 */   nop
    /* D7D8 8001CFD8 1680023C */  lui        $v0, %hi(D_80158864)
    /* D7DC 8001CFDC 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* D7E0 8001CFE0 00000000 */  nop
    /* D7E4 8001CFE4 09004380 */  lb         $v1, 0x9($v0)
    /* D7E8 8001CFE8 1280023C */  lui        $v0, %hi(D_8011A5CA)
    /* D7EC 8001CFEC CAA54290 */  lbu        $v0, %lo(D_8011A5CA)($v0)
    /* D7F0 8001CFF0 00000000 */  nop
    /* D7F4 8001CFF4 18006200 */  mult       $v1, $v0
    /* D7F8 8001CFF8 12200000 */  mflo       $a0
    /* D7FC 8001CFFC 4C00838F */  lw         $v1, %gp_rel(D_80158524)($gp)
    /* D800 8001D000 4800828F */  lw         $v0, %gp_rel(D_80158520)($gp)
    /* D804 8001D004 00000000 */  nop
    /* D808 8001D008 18006200 */  mult       $v1, $v0
    /* D80C 8001D00C 12180000 */  mflo       $v1
    /* D810 8001D010 21108300 */  addu       $v0, $a0, $v1
    /* D814 8001D014 1180033C */  lui        $v1, %hi(D_8010BA3C)
    /* D818 8001D018 3CBA638C */  lw         $v1, %lo(D_8010BA3C)($v1)
    /* D81C 8001D01C 00000000 */  nop
    /* D820 8001D020 2A104300 */  slt        $v0, $v0, $v1
    /* D824 8001D024 42004010 */  beqz       $v0, .L8001D130
    /* D828 8001D028 00000000 */   nop
    /* D82C 8001D02C 1680043C */  lui        $a0, %hi(D_80158860)
    /* D830 8001D030 6088848C */  lw         $a0, %lo(D_80158860)($a0)
    /* D834 8001D034 643A020C */  jal        func_8008E990
    /* D838 8001D038 00000000 */   nop
    /* D83C 8001D03C 3C004014 */  bnez       $v0, .L8001D130
    /* D840 8001D040 00000000 */   nop
    /* D844 8001D044 1680033C */  lui        $v1, %hi(D_80158864)
    /* D848 8001D048 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* D84C 8001D04C 00000000 */  nop
    /* D850 8001D050 09006290 */  lbu        $v0, 0x9($v1)
    /* D854 8001D054 00000000 */  nop
    /* D858 8001D058 01004224 */  addiu      $v0, $v0, 0x1
    /* D85C 8001D05C 4C740008 */  j          .L8001D130
    /* D860 8001D060 090062A0 */   sb        $v0, 0x9($v1)
  .L8001D064:
    /* D864 8001D064 1680023C */  lui        $v0, %hi(D_80158864)
    /* D868 8001D068 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* D86C 8001D06C 00000000 */  nop
    /* D870 8001D070 0400438C */  lw         $v1, 0x4($v0)
    /* D874 8001D074 00000000 */  nop
    /* D878 8001D078 02006230 */  andi       $v0, $v1, 0x2
    /* D87C 8001D07C 2C004010 */  beqz       $v0, .L8001D130
    /* D880 8001D080 00000000 */   nop
    /* D884 8001D084 1280103C */  lui        $s0, %hi(D_8011A275)
    /* D888 8001D088 75A21026 */  addiu      $s0, $s0, %lo(D_8011A275)
    /* D88C 8001D08C 00000292 */  lbu        $v0, 0x0($s0)
    /* D890 8001D090 00000000 */  nop
    /* D894 8001D094 07102202 */  srav       $v0, $v0, $s1
    /* D898 8001D098 01004230 */  andi       $v0, $v0, 0x1
    /* D89C 8001D09C 1D004010 */  beqz       $v0, .L8001D114
    /* D8A0 8001D0A0 40101100 */   sll       $v0, $s1, 1
    /* D8A4 8001D0A4 21105100 */  addu       $v0, $v0, $s1
    /* D8A8 8001D0A8 80100200 */  sll        $v0, $v0, 2
    /* D8AC 8001D0AC 23105100 */  subu       $v0, $v0, $s1
    /* D8B0 8001D0B0 00110200 */  sll        $v0, $v0, 4
    /* D8B4 8001D0B4 23105100 */  subu       $v0, $v0, $s1
    /* D8B8 8001D0B8 C0100200 */  sll        $v0, $v0, 3
    /* D8BC 8001D0BC 1180013C */  lui        $at, %hi(D_801176A7)
    /* D8C0 8001D0C0 21082200 */  addu       $at, $at, $v0
    /* D8C4 8001D0C4 A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* D8C8 8001D0C8 00000000 */  nop
    /* D8CC 8001D0CC 11004010 */  beqz       $v0, .L8001D114
    /* D8D0 8001D0D0 01006230 */   andi      $v0, $v1, 0x1
    /* D8D4 8001D0D4 0F004014 */  bnez       $v0, .L8001D114
    /* D8D8 8001D0D8 00000000 */   nop
    /* D8DC 8001D0DC 2554020C */  jal        func_80095094
    /* D8E0 8001D0E0 21202002 */   addu      $a0, $s1, $zero
    /* D8E4 8001D0E4 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* D8E8 8001D0E8 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* D8EC 8001D0EC A587030C */  jal        func_800E1E94
    /* D8F0 8001D0F0 21284000 */   addu      $a1, $v0, $zero
    /* D8F4 8001D0F4 E7FF0296 */  lhu        $v0, -0x19($s0)
    /* D8F8 8001D0F8 00000000 */  nop
    /* D8FC 8001D0FC 40004230 */  andi       $v0, $v0, 0x40
    /* D900 8001D100 04004014 */  bnez       $v0, .L8001D114
    /* D904 8001D104 EE190424 */   addiu     $a0, $zero, 0x19EE
    /* D908 8001D108 21280000 */  addu       $a1, $zero, $zero
    /* D90C 8001D10C 2963000C */  jal        func_80018CA4
    /* D910 8001D110 21300000 */   addu      $a2, $zero, $zero
  .L8001D114:
    /* D914 8001D114 1680023C */  lui        $v0, %hi(D_80158864)
    /* D918 8001D118 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* D91C 8001D11C 00000000 */  nop
    /* D920 8001D120 0400438C */  lw         $v1, 0x4($v0)
    /* D924 8001D124 FDFF0424 */  addiu      $a0, $zero, -0x3
    /* D928 8001D128 24186400 */  and        $v1, $v1, $a0
    /* D92C 8001D12C 040043AC */  sw         $v1, 0x4($v0)
  .L8001D130:
    /* D930 8001D130 2000BF8F */  lw         $ra, 0x20($sp)
    /* D934 8001D134 1C00B18F */  lw         $s1, 0x1C($sp)
    /* D938 8001D138 1800B08F */  lw         $s0, 0x18($sp)
    /* D93C 8001D13C 2800BD27 */  addiu      $sp, $sp, 0x28
    /* D940 8001D140 0800E003 */  jr         $ra
    /* D944 8001D144 00000000 */   nop
endlabel func_8001CA78
