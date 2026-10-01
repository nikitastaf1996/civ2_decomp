.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006B410, 0x3E8

glabel func_8006B410
    /* 5BC10 8006B410 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 5BC14 8006B414 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 5BC18 8006B418 2800B6AF */  sw         $s6, 0x28($sp)
    /* 5BC1C 8006B41C 2400B5AF */  sw         $s5, 0x24($sp)
    /* 5BC20 8006B420 2000B4AF */  sw         $s4, 0x20($sp)
    /* 5BC24 8006B424 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 5BC28 8006B428 1800B2AF */  sw         $s2, 0x18($sp)
    /* 5BC2C 8006B42C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 5BC30 8006B430 1000B0AF */  sw         $s0, 0x10($sp)
    /* 5BC34 8006B434 21900000 */  addu       $s2, $zero, $zero
    /* 5BC38 8006B438 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5BC3C 8006B43C 1280013C */  lui        $at, %hi(D_8011A268)
    /* 5BC40 8006B440 68A222A4 */  sh         $v0, %lo(D_8011A268)($at)
    /* 5BC44 8006B444 19AA010C */  jal        func_8006A864
    /* 5BC48 8006B448 FFFF1024 */   addiu     $s0, $zero, -0x1
    /* 5BC4C 8006B44C 01000224 */  addiu      $v0, $zero, 0x1
    /* 5BC50 8006B450 1680013C */  lui        $at, %hi(D_80158885)
    /* 5BC54 8006B454 858822A0 */  sb         $v0, %lo(D_80158885)($at)
    /* 5BC58 8006B458 B40180AF */  sw         $zero, %gp_rel(D_8015868C)($gp)
    /* 5BC5C 8006B45C 01001624 */  addiu      $s6, $zero, 0x1
    /* 5BC60 8006B460 1280153C */  lui        $s5, %hi(D_8011A268)
    /* 5BC64 8006B464 68A2B526 */  addiu      $s5, $s5, %lo(D_8011A268)
    /* 5BC68 8006B468 1280143C */  lui        $s4, %hi(D_8011A280)
    /* 5BC6C 8006B46C 80A29426 */  addiu      $s4, $s4, %lo(D_8011A280)
    /* 5BC70 8006B470 1280133C */  lui        $s3, %hi(D_8011A258)
    /* 5BC74 8006B474 58A27326 */  addiu      $s3, $s3, %lo(D_8011A258)
  .L8006B478:
    /* 5BC78 8006B478 1280023C */  lui        $v0, %hi(D_8011ACBC)
    /* 5BC7C 8006B47C BCAC428C */  lw         $v0, %lo(D_8011ACBC)($v0)
    /* 5BC80 8006B480 00000000 */  nop
    /* 5BC84 8006B484 4F005614 */  bne        $v0, $s6, .L8006B5C4
    /* 5BC88 8006B488 00000000 */   nop
    /* 5BC8C 8006B48C 0000A486 */  lh         $a0, 0x0($s5)
    /* 5BC90 8006B490 00000000 */  nop
    /* 5BC94 8006B494 0E008004 */  bltz       $a0, .L8006B4D0
    /* 5BC98 8006B498 00000000 */   nop
    /* 5BC9C 8006B49C 1800A286 */  lh         $v0, 0x18($s5)
    /* 5BCA0 8006B4A0 00000000 */  nop
    /* 5BCA4 8006B4A4 2A108200 */  slt        $v0, $a0, $v0
    /* 5BCA8 8006B4A8 09004010 */  beqz       $v0, .L8006B4D0
    /* 5BCAC 8006B4AC 00000000 */   nop
    /* 5BCB0 8006B4B0 ABF9010C */  jal        func_8007E6AC
    /* 5BCB4 8006B4B4 00000000 */   nop
    /* 5BCB8 8006B4B8 05004010 */  beqz       $v0, .L8006B4D0
    /* 5BCBC 8006B4BC 00000000 */   nop
    /* 5BCC0 8006B4C0 1800A286 */  lh         $v0, 0x18($s5)
    /* 5BCC4 8006B4C4 00000000 */  nop
    /* 5BCC8 8006B4C8 07005010 */  beq        $v0, $s0, .L8006B4E8
    /* 5BCCC 8006B4CC 00000000 */   nop
  .L8006B4D0:
    /* 5BCD0 8006B4D0 B2A9010C */  jal        func_8006A6C8
    /* 5BCD4 8006B4D4 21200000 */   addu      $a0, $zero, $zero
    /* 5BCD8 8006B4D8 5674020C */  jal        func_8009D158
    /* 5BCDC 8006B4DC 00000000 */   nop
    /* 5BCE0 8006B4E0 80AD0108 */  j          .L8006B600
    /* 5BCE4 8006B4E4 00000000 */   nop
  .L8006B4E8:
    /* 5BCE8 8006B4E8 E80F8293 */  lbu        $v0, %gp_rel(D_801594C0)($gp)
    /* 5BCEC 8006B4EC 00000000 */  nop
    /* 5BCF0 8006B4F0 43004014 */  bnez       $v0, .L8006B600
    /* 5BCF4 8006B4F4 00000000 */   nop
    /* 5BCF8 8006B4F8 1280103C */  lui        $s0, %hi(D_8011A268)
    /* 5BCFC 8006B4FC 68A21086 */  lh         $s0, %lo(D_8011A268)($s0)
    /* 5BD00 8006B500 00000000 */  nop
    /* 5BD04 8006B504 40101000 */  sll        $v0, $s0, 1
    /* 5BD08 8006B508 21105000 */  addu       $v0, $v0, $s0
    /* 5BD0C 8006B50C 80100200 */  sll        $v0, $v0, 2
    /* 5BD10 8006B510 21105000 */  addu       $v0, $v0, $s0
    /* 5BD14 8006B514 40180200 */  sll        $v1, $v0, 1
    /* 5BD18 8006B518 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 5BD1C 8006B51C 21082300 */  addu       $at, $at, $v1
    /* 5BD20 8006B520 B4D62294 */  lhu        $v0, %lo(D_8010D6B4)($at)
    /* 5BD24 8006B524 1680013C */  lui        $at, %hi(D_80158886)
    /* 5BD28 8006B528 868822A4 */  sh         $v0, %lo(D_80158886)($at)
    /* 5BD2C 8006B52C 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 5BD30 8006B530 21082300 */  addu       $at, $at, $v1
    /* 5BD34 8006B534 B6D62294 */  lhu        $v0, %lo(D_8010D6B6)($at)
    /* 5BD38 8006B538 1680013C */  lui        $at, %hi(D_80158888)
    /* 5BD3C 8006B53C 888822A4 */  sh         $v0, %lo(D_80158888)($at)
    /* 5BD40 8006B540 1680023C */  lui        $v0, %hi(D_801587E8)
    /* 5BD44 8006B544 E8874290 */  lbu        $v0, %lo(D_801587E8)($v0)
    /* 5BD48 8006B548 00000000 */  nop
    /* 5BD4C 8006B54C 07004010 */  beqz       $v0, .L8006B56C
    /* 5BD50 8006B550 0B000224 */   addiu     $v0, $zero, 0xB
    /* 5BD54 8006B554 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 5BD58 8006B558 21082300 */  addu       $at, $at, $v1
    /* 5BD5C 8006B55C C3D62380 */  lb         $v1, %lo(D_8010D6C3)($at)
    /* 5BD60 8006B560 00000000 */  nop
    /* 5BD64 8006B564 26006210 */  beq        $v1, $v0, .L8006B600
    /* 5BD68 8006B568 00000000 */   nop
  .L8006B56C:
    /* 5BD6C 8006B56C A3BF000C */  jal        func_8002FE8C
    /* 5BD70 8006B570 01000424 */   addiu     $a0, $zero, 0x1
    /* 5BD74 8006B574 40101000 */  sll        $v0, $s0, 1
    /* 5BD78 8006B578 21105000 */  addu       $v0, $v0, $s0
    /* 5BD7C 8006B57C 80100200 */  sll        $v0, $v0, 2
    /* 5BD80 8006B580 21105000 */  addu       $v0, $v0, $s0
    /* 5BD84 8006B584 40100200 */  sll        $v0, $v0, 1
    /* 5BD88 8006B588 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 5BD8C 8006B58C 21082200 */  addu       $at, $at, $v0
    /* 5BD90 8006B590 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 5BD94 8006B594 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 5BD98 8006B598 21082200 */  addu       $at, $at, $v0
    /* 5BD9C 8006B59C B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 5BDA0 8006B5A0 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 5BDA4 8006B5A4 21082200 */  addu       $at, $at, $v0
    /* 5BDA8 8006B5A8 BBD62680 */  lb         $a2, %lo(D_8010D6BB)($at)
    /* 5BDAC 8006B5AC 6D7C020C */  jal        func_8009F1B4
    /* 5BDB0 8006B5B0 00000000 */   nop
    /* 5BDB4 8006B5B4 DD19010C */  jal        func_80046774
    /* 5BDB8 8006B5B8 00000000 */   nop
    /* 5BDBC 8006B5BC 80AD0108 */  j          .L8006B600
    /* 5BDC0 8006B5C0 00000000 */   nop
  .L8006B5C4:
    /* 5BDC4 8006B5C4 1280023C */  lui        $v0, %hi(D_8011A268)
    /* 5BDC8 8006B5C8 68A24284 */  lh         $v0, %lo(D_8011A268)($v0)
    /* 5BDCC 8006B5CC 00000000 */  nop
    /* 5BDD0 8006B5D0 0B004104 */  bgez       $v0, .L8006B600
    /* 5BDD4 8006B5D4 00000000 */   nop
    /* 5BDD8 8006B5D8 1680103C */  lui        $s0, %hi(D_80158886)
    /* 5BDDC 8006B5DC 86881086 */  lh         $s0, %lo(D_80158886)($s0)
    /* 5BDE0 8006B5E0 1680113C */  lui        $s1, %hi(D_80158888)
    /* 5BDE4 8006B5E4 88883186 */  lh         $s1, %lo(D_80158888)($s1)
    /* 5BDE8 8006B5E8 B2A9010C */  jal        func_8006A6C8
    /* 5BDEC 8006B5EC 01000424 */   addiu     $a0, $zero, 0x1
    /* 5BDF0 8006B5F0 1680013C */  lui        $at, %hi(D_80158886)
    /* 5BDF4 8006B5F4 868830A4 */  sh         $s0, %lo(D_80158886)($at)
    /* 5BDF8 8006B5F8 1680013C */  lui        $at, %hi(D_80158888)
    /* 5BDFC 8006B5FC 888831A4 */  sh         $s1, %lo(D_80158888)($at)
  .L8006B600:
    /* 5BE00 8006B600 1680013C */  lui        $at, %hi(D_801587E8)
    /* 5BE04 8006B604 E88720A0 */  sb         $zero, %lo(D_801587E8)($at)
    /* 5BE08 8006B608 00009086 */  lh         $s0, 0x0($s4)
    /* 5BE0C 8006B60C E80F80A3 */  sb         $zero, %gp_rel(D_801594C0)($gp)
    /* 5BE10 8006B610 E8FF8286 */  lh         $v0, -0x18($s4)
    /* 5BE14 8006B614 00000000 */  nop
    /* 5BE18 8006B618 22004104 */  bgez       $v0, .L8006B6A4
    /* 5BE1C 8006B61C 00000000 */   nop
    /* 5BE20 8006B620 D8FF8296 */  lhu        $v0, -0x28($s4)
    /* 5BE24 8006B624 00000000 */  nop
    /* 5BE28 8006B628 01004234 */  ori        $v0, $v0, 0x1
    /* 5BE2C 8006B62C D8FF82A6 */  sh         $v0, -0x28($s4)
    /* 5BE30 8006B630 1280023C */  lui        $v0, %hi(D_8011ACBC)
    /* 5BE34 8006B634 BCAC428C */  lw         $v0, %lo(D_8011ACBC)($v0)
    /* 5BE38 8006B638 00000000 */  nop
    /* 5BE3C 8006B63C 05005614 */  bne        $v0, $s6, .L8006B654
    /* 5BE40 8006B640 64000424 */   addiu     $a0, $zero, 0x64
    /* 5BE44 8006B644 01000524 */  addiu      $a1, $zero, 0x1
    /* 5BE48 8006B648 21300000 */  addu       $a2, $zero, $zero
    /* 5BE4C 8006B64C 2B9D020C */  jal        func_800A74AC
    /* 5BE50 8006B650 21380000 */   addu      $a3, $zero, $zero
  .L8006B654:
    /* 5BE54 8006B654 96A9010C */  jal        func_8006A658
    /* 5BE58 8006B658 01000424 */   addiu     $a0, $zero, 0x1
    /* 5BE5C 8006B65C 11004012 */  beqz       $s2, .L8006B6A4
    /* 5BE60 8006B660 00000000 */   nop
    /* 5BE64 8006B664 1280033C */  lui        $v1, %hi(D_8011A254)
    /* 5BE68 8006B668 54A26324 */  addiu      $v1, $v1, %lo(D_8011A254)
    /* 5BE6C 8006B66C 0000628C */  lw         $v0, 0x0($v1)
    /* 5BE70 8006B670 00000000 */  nop
    /* 5BE74 8006B674 00404230 */  andi       $v0, $v0, 0x4000
    /* 5BE78 8006B678 0A004014 */  bnez       $v0, .L8006B6A4
    /* 5BE7C 8006B67C 00000000 */   nop
    /* 5BE80 8006B680 04006294 */  lhu        $v0, 0x4($v1)
    /* 5BE84 8006B684 00000000 */  nop
    /* 5BE88 8006B688 02004230 */  andi       $v0, $v0, 0x2
    /* 5BE8C 8006B68C 05004014 */  bnez       $v0, .L8006B6A4
    /* 5BE90 8006B690 00000000 */   nop
    /* 5BE94 8006B694 1680013C */  lui        $at, %hi(D_80158885)
    /* 5BE98 8006B698 858820A0 */  sb         $zero, %lo(D_80158885)($at)
    /* 5BE9C 8006B69C CEAD0108 */  j          .L8006B738
    /* 5BEA0 8006B6A0 00000000 */   nop
  .L8006B6A4:
    /* 5BEA4 8006B6A4 1680013C */  lui        $at, %hi(D_80158872)
    /* 5BEA8 8006B6A8 728836A0 */  sb         $s6, %lo(D_80158872)($at)
    /* 5BEAC 8006B6AC 00006396 */  lhu        $v1, 0x0($s3)
    /* 5BEB0 8006B6B0 00000000 */  nop
    /* 5BEB4 8006B6B4 FDFF6230 */  andi       $v0, $v1, 0xFFFD
    /* 5BEB8 8006B6B8 000062A6 */  sh         $v0, 0x0($s3)
    /* 5BEBC 8006B6BC 10006286 */  lh         $v0, 0x10($s3)
    /* 5BEC0 8006B6C0 00000000 */  nop
    /* 5BEC4 8006B6C4 05004004 */  bltz       $v0, .L8006B6DC
    /* 5BEC8 8006B6C8 FCFF6230 */   andi      $v0, $v1, 0xFFFC
    /* 5BECC 8006B6CC 9AAB010C */  jal        func_8006AE68
    /* 5BED0 8006B6D0 000062A6 */   sh        $v0, 0x0($s3)
    /* 5BED4 8006B6D4 B9AD0108 */  j          .L8006B6E4
    /* 5BED8 8006B6D8 25904202 */   or        $s2, $s2, $v0
  .L8006B6DC:
    /* 5BEDC 8006B6DC A3AC010C */  jal        func_8006B28C
    /* 5BEE0 8006B6E0 00000000 */   nop
  .L8006B6E4:
    /* 5BEE4 8006B6E4 1680023C */  lui        $v0, %hi(D_80158870)
    /* 5BEE8 8006B6E8 70884290 */  lbu        $v0, %lo(D_80158870)($v0)
    /* 5BEEC 8006B6EC 00000000 */  nop
    /* 5BEF0 8006B6F0 36004010 */  beqz       $v0, .L8006B7CC
    /* 5BEF4 8006B6F4 00000000 */   nop
    /* 5BEF8 8006B6F8 1280023C */  lui        $v0, %hi(D_8011A258)
    /* 5BEFC 8006B6FC 58A24294 */  lhu        $v0, %lo(D_8011A258)($v0)
    /* 5BF00 8006B700 00000000 */  nop
    /* 5BF04 8006B704 02004230 */  andi       $v0, $v0, 0x2
    /* 5BF08 8006B708 02004010 */  beqz       $v0, .L8006B714
    /* 5BF0C 8006B70C 00000000 */   nop
    /* 5BF10 8006B710 21900000 */  addu       $s2, $zero, $zero
  .L8006B714:
    /* 5BF14 8006B714 1680023C */  lui        $v0, %hi(D_80158874)
    /* 5BF18 8006B718 74884290 */  lbu        $v0, %lo(D_80158874)($v0)
    /* 5BF1C 8006B71C 00000000 */  nop
    /* 5BF20 8006B720 03004010 */  beqz       $v0, .L8006B730
    /* 5BF24 8006B724 00000000 */   nop
    /* 5BF28 8006B728 3374020C */  jal        func_8009D0CC
    /* 5BF2C 8006B72C 00000000 */   nop
  .L8006B730:
    /* 5BF30 8006B730 1680013C */  lui        $at, %hi(D_80158872)
    /* 5BF34 8006B734 728820A0 */  sb         $zero, %lo(D_80158872)($at)
  .L8006B738:
    /* 5BF38 8006B738 1680023C */  lui        $v0, %hi(D_80158870)
    /* 5BF3C 8006B73C 70884290 */  lbu        $v0, %lo(D_80158870)($v0)
    /* 5BF40 8006B740 00000000 */  nop
    /* 5BF44 8006B744 06004010 */  beqz       $v0, .L8006B760
    /* 5BF48 8006B748 00000000 */   nop
    /* 5BF4C 8006B74C 1680023C */  lui        $v0, %hi(D_80158885)
    /* 5BF50 8006B750 85884290 */  lbu        $v0, %lo(D_80158885)($v0)
    /* 5BF54 8006B754 00000000 */  nop
    /* 5BF58 8006B758 47FF4014 */  bnez       $v0, .L8006B478
    /* 5BF5C 8006B75C 00000000 */   nop
  .L8006B760:
    /* 5BF60 8006B760 1280023C */  lui        $v0, %hi(D_80122AAC)
    /* 5BF64 8006B764 AC2A428C */  lw         $v0, %lo(D_80122AAC)($v0)
    /* 5BF68 8006B768 00000000 */  nop
    /* 5BF6C 8006B76C 13004014 */  bnez       $v0, .L8006B7BC
    /* 5BF70 8006B770 00000000 */   nop
    /* 5BF74 8006B774 1280033C */  lui        $v1, %hi(D_80122AA4)
    /* 5BF78 8006B778 A42A638C */  lw         $v1, %lo(D_80122AA4)($v1)
    /* 5BF7C 8006B77C 00000000 */  nop
    /* 5BF80 8006B780 40100300 */  sll        $v0, $v1, 1
    /* 5BF84 8006B784 21104300 */  addu       $v0, $v0, $v1
    /* 5BF88 8006B788 80100200 */  sll        $v0, $v0, 2
    /* 5BF8C 8006B78C 23104300 */  subu       $v0, $v0, $v1
    /* 5BF90 8006B790 C0100200 */  sll        $v0, $v0, 3
    /* 5BF94 8006B794 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 5BF98 8006B798 21082200 */  addu       $at, $at, $v0
    /* 5BF9C 8006B79C D83E2380 */  lb         $v1, %lo(D_80113ED8)($at)
    /* 5BFA0 8006B7A0 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 5BFA4 8006B7A4 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 5BFA8 8006B7A8 00000000 */  nop
    /* 5BFAC 8006B7AC 03006210 */  beq        $v1, $v0, .L8006B7BC
    /* 5BFB0 8006B7B0 00000000 */   nop
    /* 5BFB4 8006B7B4 5D5F030C */  jal        func_800D7D74
    /* 5BFB8 8006B7B8 00000000 */   nop
  .L8006B7BC:
    /* 5BFBC 8006B7BC 1A12040C */  jal        func_80104868
    /* 5BFC0 8006B7C0 00000000 */   nop
    /* 5BFC4 8006B7C4 1680013C */  lui        $at, %hi(D_80158885)
    /* 5BFC8 8006B7C8 858820A0 */  sb         $zero, %lo(D_80158885)($at)
  .L8006B7CC:
    /* 5BFCC 8006B7CC 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 5BFD0 8006B7D0 2800B68F */  lw         $s6, 0x28($sp)
    /* 5BFD4 8006B7D4 2400B58F */  lw         $s5, 0x24($sp)
    /* 5BFD8 8006B7D8 2000B48F */  lw         $s4, 0x20($sp)
    /* 5BFDC 8006B7DC 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 5BFE0 8006B7E0 1800B28F */  lw         $s2, 0x18($sp)
    /* 5BFE4 8006B7E4 1400B18F */  lw         $s1, 0x14($sp)
    /* 5BFE8 8006B7E8 1000B08F */  lw         $s0, 0x10($sp)
    /* 5BFEC 8006B7EC 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 5BFF0 8006B7F0 0800E003 */  jr         $ra
    /* 5BFF4 8006B7F4 00000000 */   nop
endlabel func_8006B410
