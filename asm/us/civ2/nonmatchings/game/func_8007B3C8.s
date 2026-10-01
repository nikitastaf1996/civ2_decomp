.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007B3C8, 0x2D8

glabel func_8007B3C8
    /* 6BBC8 8007B3C8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6BBCC 8007B3CC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 6BBD0 8007B3D0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6BBD4 8007B3D4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6BBD8 8007B3D8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6BBDC 8007B3DC 21908000 */  addu       $s2, $a0, $zero
    /* 6BBE0 8007B3E0 40101200 */  sll        $v0, $s2, 1
    /* 6BBE4 8007B3E4 21105200 */  addu       $v0, $v0, $s2
    /* 6BBE8 8007B3E8 80100200 */  sll        $v0, $v0, 2
    /* 6BBEC 8007B3EC 21105200 */  addu       $v0, $v0, $s2
    /* 6BBF0 8007B3F0 40200200 */  sll        $a0, $v0, 1
    /* 6BBF4 8007B3F4 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6BBF8 8007B3F8 21082400 */  addu       $at, $at, $a0
    /* 6BBFC 8007B3FC BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6BC00 8007B400 00000000 */  nop
    /* 6BC04 8007B404 80100300 */  sll        $v0, $v1, 2
    /* 6BC08 8007B408 21104300 */  addu       $v0, $v0, $v1
    /* 6BC0C 8007B40C 80100200 */  sll        $v0, $v0, 2
    /* 6BC10 8007B410 1180013C */  lui        $at, %hi(D_8010D286)
    /* 6BC14 8007B414 21082200 */  addu       $at, $at, $v0
    /* 6BC18 8007B418 86D23180 */  lb         $s1, %lo(D_8010D286)($at)
    /* 6BC1C 8007B41C 1180013C */  lui        $at, %hi(D_8010D285)
    /* 6BC20 8007B420 21082200 */  addu       $at, $at, $v0
    /* 6BC24 8007B424 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* 6BC28 8007B428 02000224 */  addiu      $v0, $zero, 0x2
    /* 6BC2C 8007B42C 32006214 */  bne        $v1, $v0, .L8007B4F8
    /* 6BC30 8007B430 40101200 */   sll       $v0, $s2, 1
    /* 6BC34 8007B434 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 6BC38 8007B438 21082400 */  addu       $at, $at, $a0
    /* 6BC3C 8007B43C BBD63080 */  lb         $s0, %lo(D_8010D6BB)($at)
    /* 6BC40 8007B440 00000000 */  nop
    /* 6BC44 8007B444 21200002 */  addu       $a0, $s0, $zero
    /* 6BC48 8007B448 8ACA010C */  jal        func_80072A28
    /* 6BC4C 8007B44C 3B000524 */   addiu     $a1, $zero, 0x3B
    /* 6BC50 8007B450 05004010 */  beqz       $v0, .L8007B468
    /* 6BC54 8007B454 21200002 */   addu      $a0, $s0, $zero
    /* 6BC58 8007B458 1280023C */  lui        $v0, %hi(D_8011A5C8)
    /* 6BC5C 8007B45C C8A54290 */  lbu        $v0, %lo(D_8011A5C8)($v0)
    /* 6BC60 8007B460 00000000 */  nop
    /* 6BC64 8007B464 21882202 */  addu       $s1, $s1, $v0
  .L8007B468:
    /* 6BC68 8007B468 C17B030C */  jal        func_800DEF04
    /* 6BC6C 8007B46C 0C000524 */   addiu     $a1, $zero, 0xC
    /* 6BC70 8007B470 06004010 */  beqz       $v0, .L8007B48C
    /* 6BC74 8007B474 21200002 */   addu      $a0, $s0, $zero
    /* 6BC78 8007B478 1280023C */  lui        $v0, %hi(D_8011A5C8)
    /* 6BC7C 8007B47C C8A54290 */  lbu        $v0, %lo(D_8011A5C8)($v0)
    /* 6BC80 8007B480 00000000 */  nop
    /* 6BC84 8007B484 40100200 */  sll        $v0, $v0, 1
    /* 6BC88 8007B488 21882202 */  addu       $s1, $s1, $v0
  .L8007B48C:
    /* 6BC8C 8007B48C C17B030C */  jal        func_800DEF04
    /* 6BC90 8007B490 03000524 */   addiu     $a1, $zero, 0x3
    /* 6BC94 8007B494 17004010 */  beqz       $v0, .L8007B4F4
    /* 6BC98 8007B498 40101200 */   sll       $v0, $s2, 1
    /* 6BC9C 8007B49C 21105200 */  addu       $v0, $v0, $s2
    /* 6BCA0 8007B4A0 80100200 */  sll        $v0, $v0, 2
    /* 6BCA4 8007B4A4 21105200 */  addu       $v0, $v0, $s2
    /* 6BCA8 8007B4A8 40100200 */  sll        $v0, $v0, 1
    /* 6BCAC 8007B4AC 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6BCB0 8007B4B0 21082200 */  addu       $at, $at, $v0
    /* 6BCB4 8007B4B4 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6BCB8 8007B4B8 00000000 */  nop
    /* 6BCBC 8007B4BC 80100300 */  sll        $v0, $v1, 2
    /* 6BCC0 8007B4C0 21104300 */  addu       $v0, $v0, $v1
    /* 6BCC4 8007B4C4 80100200 */  sll        $v0, $v0, 2
    /* 6BCC8 8007B4C8 1180013C */  lui        $at, %hi(D_8010D280)
    /* 6BCCC 8007B4CC 21082200 */  addu       $at, $at, $v0
    /* 6BCD0 8007B4D0 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 6BCD4 8007B4D4 00000000 */  nop
    /* 6BCD8 8007B4D8 20004230 */  andi       $v0, $v0, 0x20
    /* 6BCDC 8007B4DC 06004014 */  bnez       $v0, .L8007B4F8
    /* 6BCE0 8007B4E0 40101200 */   sll       $v0, $s2, 1
    /* 6BCE4 8007B4E4 1280023C */  lui        $v0, %hi(D_8011A5C8)
    /* 6BCE8 8007B4E8 C8A54290 */  lbu        $v0, %lo(D_8011A5C8)($v0)
    /* 6BCEC 8007B4EC 00000000 */  nop
    /* 6BCF0 8007B4F0 21882202 */  addu       $s1, $s1, $v0
  .L8007B4F4:
    /* 6BCF4 8007B4F4 40101200 */  sll        $v0, $s2, 1
  .L8007B4F8:
    /* 6BCF8 8007B4F8 21105200 */  addu       $v0, $v0, $s2
    /* 6BCFC 8007B4FC 80100200 */  sll        $v0, $v0, 2
    /* 6BD00 8007B500 21105200 */  addu       $v0, $v0, $s2
    /* 6BD04 8007B504 40180200 */  sll        $v1, $v0, 1
    /* 6BD08 8007B508 1180013C */  lui        $at, %hi(D_8010D6BE)
    /* 6BD0C 8007B50C 21082300 */  addu       $at, $at, $v1
    /* 6BD10 8007B510 BED62290 */  lbu        $v0, %lo(D_8010D6BE)($at)
    /* 6BD14 8007B514 00000000 */  nop
    /* 6BD18 8007B518 5A004010 */  beqz       $v0, .L8007B684
    /* 6BD1C 8007B51C 21102002 */   addu      $v0, $s1, $zero
    /* 6BD20 8007B520 1280023C */  lui        $v0, %hi(D_8011A250)
    /* 6BD24 8007B524 50A24294 */  lhu        $v0, %lo(D_8011A250)($v0)
    /* 6BD28 8007B528 00000000 */  nop
    /* 6BD2C 8007B52C 10004230 */  andi       $v0, $v0, 0x10
    /* 6BD30 8007B530 54004010 */  beqz       $v0, .L8007B684
    /* 6BD34 8007B534 21102002 */   addu      $v0, $s1, $zero
    /* 6BD38 8007B538 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6BD3C 8007B53C 21082300 */  addu       $at, $at, $v1
    /* 6BD40 8007B540 BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* 6BD44 8007B544 00000000 */  nop
    /* 6BD48 8007B548 80180200 */  sll        $v1, $v0, 2
    /* 6BD4C 8007B54C 21186200 */  addu       $v1, $v1, $v0
    /* 6BD50 8007B550 80180300 */  sll        $v1, $v1, 2
    /* 6BD54 8007B554 1180013C */  lui        $at, %hi(D_8010D285)
    /* 6BD58 8007B558 21082300 */  addu       $at, $at, $v1
    /* 6BD5C 8007B55C 85D22280 */  lb         $v0, %lo(D_8010D285)($at)
    /* 6BD60 8007B560 01000424 */  addiu      $a0, $zero, 0x1
    /* 6BD64 8007B564 47004410 */  beq        $v0, $a0, .L8007B684
    /* 6BD68 8007B568 21102002 */   addu      $v0, $s1, $zero
    /* 6BD6C 8007B56C 1180013C */  lui        $at, %hi(D_8010D28A)
    /* 6BD70 8007B570 21082300 */  addu       $at, $at, $v1
    /* 6BD74 8007B574 8AD23080 */  lb         $s0, %lo(D_8010D28A)($at)
    /* 6BD78 8007B578 00000000 */  nop
    /* 6BD7C 8007B57C 21180002 */  addu       $v1, $s0, $zero
    /* 6BD80 8007B580 2A109000 */  slt        $v0, $a0, $s0
    /* 6BD84 8007B584 02004010 */  beqz       $v0, .L8007B590
    /* 6BD88 8007B588 01001024 */   addiu     $s0, $zero, 0x1
    /* 6BD8C 8007B58C 21806000 */  addu       $s0, $v1, $zero
  .L8007B590:
    /* 6BD90 8007B590 CDEC010C */  jal        func_8007B334
    /* 6BD94 8007B594 21204002 */   addu      $a0, $s2, $zero
    /* 6BD98 8007B598 18002202 */  mult       $s1, $v0
    /* 6BD9C 8007B59C 12880000 */  mflo       $s1
    /* 6BDA0 8007B5A0 00000000 */  nop
    /* 6BDA4 8007B5A4 00000000 */  nop
    /* 6BDA8 8007B5A8 1A003002 */  div        $zero, $s1, $s0
    /* 6BDAC 8007B5AC 02000016 */  bnez       $s0, .L8007B5B8
    /* 6BDB0 8007B5B0 00000000 */   nop
    /* 6BDB4 8007B5B4 0D000700 */  break      7
  .L8007B5B8:
    /* 6BDB8 8007B5B8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 6BDBC 8007B5BC 04000116 */  bne        $s0, $at, .L8007B5D0
    /* 6BDC0 8007B5C0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 6BDC4 8007B5C4 02002116 */  bne        $s1, $at, .L8007B5D0
    /* 6BDC8 8007B5C8 00000000 */   nop
    /* 6BDCC 8007B5CC 0D000600 */  break      6
  .L8007B5D0:
    /* 6BDD0 8007B5D0 12880000 */  mflo       $s1
    /* 6BDD4 8007B5D4 1280033C */  lui        $v1, %hi(D_8011A5C8)
    /* 6BDD8 8007B5D8 C8A56390 */  lbu        $v1, %lo(D_8011A5C8)($v1)
    /* 6BDDC 8007B5DC 00000000 */  nop
    /* 6BDE0 8007B5E0 1A002302 */  div        $zero, $s1, $v1
    /* 6BDE4 8007B5E4 02006014 */  bnez       $v1, .L8007B5F0
    /* 6BDE8 8007B5E8 00000000 */   nop
    /* 6BDEC 8007B5EC 0D000700 */  break      7
  .L8007B5F0:
    /* 6BDF0 8007B5F0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 6BDF4 8007B5F4 04006114 */  bne        $v1, $at, .L8007B608
    /* 6BDF8 8007B5F8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 6BDFC 8007B5FC 02002116 */  bne        $s1, $at, .L8007B608
    /* 6BE00 8007B600 00000000 */   nop
    /* 6BE04 8007B604 0D000600 */  break      6
  .L8007B608:
    /* 6BE08 8007B608 10200000 */  mfhi       $a0
    /* 6BE0C 8007B60C 00000000 */  nop
    /* 6BE10 8007B610 02008010 */  beqz       $a0, .L8007B61C
    /* 6BE14 8007B614 23106400 */   subu      $v0, $v1, $a0
    /* 6BE18 8007B618 21882202 */  addu       $s1, $s1, $v0
  .L8007B61C:
    /* 6BE1C 8007B61C 1280043C */  lui        $a0, %hi(D_8011A5C8)
    /* 6BE20 8007B620 C8A58490 */  lbu        $a0, %lo(D_8011A5C8)($a0)
    /* 6BE24 8007B624 40101200 */  sll        $v0, $s2, 1
    /* 6BE28 8007B628 21105200 */  addu       $v0, $v0, $s2
    /* 6BE2C 8007B62C 80100200 */  sll        $v0, $v0, 2
    /* 6BE30 8007B630 21105200 */  addu       $v0, $v0, $s2
    /* 6BE34 8007B634 40100200 */  sll        $v0, $v0, 1
    /* 6BE38 8007B638 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6BE3C 8007B63C 21082200 */  addu       $at, $at, $v0
    /* 6BE40 8007B640 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6BE44 8007B644 00000000 */  nop
    /* 6BE48 8007B648 80100300 */  sll        $v0, $v1, 2
    /* 6BE4C 8007B64C 21104300 */  addu       $v0, $v0, $v1
    /* 6BE50 8007B650 80100200 */  sll        $v0, $v0, 2
    /* 6BE54 8007B654 1180013C */  lui        $at, %hi(D_8010D285)
    /* 6BE58 8007B658 21082200 */  addu       $at, $at, $v0
    /* 6BE5C 8007B65C 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* 6BE60 8007B660 02000224 */  addiu      $v0, $zero, 0x2
    /* 6BE64 8007B664 02006214 */  bne        $v1, $v0, .L8007B670
    /* 6BE68 8007B668 21182002 */   addu      $v1, $s1, $zero
    /* 6BE6C 8007B66C 40200400 */  sll        $a0, $a0, 1
  .L8007B670:
    /* 6BE70 8007B670 2A109100 */  slt        $v0, $a0, $s1
    /* 6BE74 8007B674 02004010 */  beqz       $v0, .L8007B680
    /* 6BE78 8007B678 21888000 */   addu      $s1, $a0, $zero
    /* 6BE7C 8007B67C 21886000 */  addu       $s1, $v1, $zero
  .L8007B680:
    /* 6BE80 8007B680 21102002 */  addu       $v0, $s1, $zero
  .L8007B684:
    /* 6BE84 8007B684 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 6BE88 8007B688 1800B28F */  lw         $s2, 0x18($sp)
    /* 6BE8C 8007B68C 1400B18F */  lw         $s1, 0x14($sp)
    /* 6BE90 8007B690 1000B08F */  lw         $s0, 0x10($sp)
    /* 6BE94 8007B694 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6BE98 8007B698 0800E003 */  jr         $ra
    /* 6BE9C 8007B69C 00000000 */   nop
endlabel func_8007B3C8
