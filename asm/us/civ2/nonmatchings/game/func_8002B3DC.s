.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B3DC, 0x488

glabel func_8002B3DC
    /* 1BBDC 8002B3DC B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 1BBE0 8002B3E0 4000BFAF */  sw         $ra, 0x40($sp)
    /* 1BBE4 8002B3E4 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 1BBE8 8002B3E8 3800B6AF */  sw         $s6, 0x38($sp)
    /* 1BBEC 8002B3EC 3400B5AF */  sw         $s5, 0x34($sp)
    /* 1BBF0 8002B3F0 3000B4AF */  sw         $s4, 0x30($sp)
    /* 1BBF4 8002B3F4 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 1BBF8 8002B3F8 2800B2AF */  sw         $s2, 0x28($sp)
    /* 1BBFC 8002B3FC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 1BC00 8002B400 2000B0AF */  sw         $s0, 0x20($sp)
    /* 1BC04 8002B404 21908000 */  addu       $s2, $a0, $zero
    /* 1BC08 8002B408 2198A000 */  addu       $s3, $a1, $zero
    /* 1BC0C 8002B40C 21A0C000 */  addu       $s4, $a2, $zero
    /* 1BC10 8002B410 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 1BC14 8002B414 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 1BC18 8002B418 00000000 */  nop
    /* 1BC1C 8002B41C 56004018 */  blez       $v0, .L8002B578
    /* 1BC20 8002B420 21880000 */   addu      $s1, $zero, $zero
    /* 1BC24 8002B424 40101100 */  sll        $v0, $s1, 1
  .L8002B428:
    /* 1BC28 8002B428 21105100 */  addu       $v0, $v0, $s1
    /* 1BC2C 8002B42C 80100200 */  sll        $v0, $v0, 2
    /* 1BC30 8002B430 21105100 */  addu       $v0, $v0, $s1
    /* 1BC34 8002B434 40800200 */  sll        $s0, $v0, 1
    /* 1BC38 8002B438 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 1BC3C 8002B43C 21083000 */  addu       $at, $at, $s0
    /* 1BC40 8002B440 BBD62280 */  lb         $v0, %lo(D_8010D6BB)($at)
    /* 1BC44 8002B444 00000000 */  nop
    /* 1BC48 8002B448 44005214 */  bne        $v0, $s2, .L8002B55C
    /* 1BC4C 8002B44C 00000000 */   nop
    /* 1BC50 8002B450 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1BC54 8002B454 21083000 */  addu       $at, $at, $s0
    /* 1BC58 8002B458 BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* 1BC5C 8002B45C 00000000 */  nop
    /* 1BC60 8002B460 80180200 */  sll        $v1, $v0, 2
    /* 1BC64 8002B464 21186200 */  addu       $v1, $v1, $v0
    /* 1BC68 8002B468 80180300 */  sll        $v1, $v1, 2
    /* 1BC6C 8002B46C 1180013C */  lui        $at, %hi(D_8010D280)
    /* 1BC70 8002B470 21082300 */  addu       $at, $at, $v1
    /* 1BC74 8002B474 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 1BC78 8002B478 00000000 */  nop
    /* 1BC7C 8002B47C 00014230 */  andi       $v0, $v0, 0x100
    /* 1BC80 8002B480 36004010 */  beqz       $v0, .L8002B55C
    /* 1BC84 8002B484 00000000 */   nop
    /* 1BC88 8002B488 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 1BC8C 8002B48C 21083000 */  addu       $at, $at, $s0
    /* 1BC90 8002B490 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 1BC94 8002B494 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 1BC98 8002B498 21083000 */  addu       $at, $at, $s0
    /* 1BC9C 8002B49C B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 1BCA0 8002B4A0 1262020C */  jal        func_80098848
    /* 1BCA4 8002B4A4 00000000 */   nop
    /* 1BCA8 8002B4A8 2C004004 */  bltz       $v0, .L8002B55C
    /* 1BCAC 8002B4AC 00000000 */   nop
    /* 1BCB0 8002B4B0 1180013C */  lui        $at, %hi(D_8010D6BC)
    /* 1BCB4 8002B4B4 21083000 */  addu       $at, $at, $s0
    /* 1BCB8 8002B4B8 BCD62290 */  lbu        $v0, %lo(D_8010D6BC)($at)
    /* 1BCBC 8002B4BC 00000000 */  nop
    /* 1BCC0 8002B4C0 08004010 */  beqz       $v0, .L8002B4E4
    /* 1BCC4 8002B4C4 40101100 */   sll       $v0, $s1, 1
    /* 1BCC8 8002B4C8 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 1BCCC 8002B4CC 21083000 */  addu       $at, $at, $s0
    /* 1BCD0 8002B4D0 B8D62294 */  lhu        $v0, %lo(D_8010D6B8)($at)
    /* 1BCD4 8002B4D4 00000000 */  nop
    /* 1BCD8 8002B4D8 00014230 */  andi       $v0, $v0, 0x100
    /* 1BCDC 8002B4DC 1F004010 */  beqz       $v0, .L8002B55C
    /* 1BCE0 8002B4E0 40101100 */   sll       $v0, $s1, 1
  .L8002B4E4:
    /* 1BCE4 8002B4E4 21105100 */  addu       $v0, $v0, $s1
    /* 1BCE8 8002B4E8 80100200 */  sll        $v0, $v0, 2
    /* 1BCEC 8002B4EC 21105100 */  addu       $v0, $v0, $s1
    /* 1BCF0 8002B4F0 40180200 */  sll        $v1, $v0, 1
    /* 1BCF4 8002B4F4 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 1BCF8 8002B4F8 21082300 */  addu       $at, $at, $v1
    /* 1BCFC 8002B4FC B8D62294 */  lhu        $v0, %lo(D_8010D6B8)($at)
    /* 1BD00 8002B500 00000000 */  nop
    /* 1BD04 8002B504 10004230 */  andi       $v0, $v0, 0x10
    /* 1BD08 8002B508 14004014 */  bnez       $v0, .L8002B55C
    /* 1BD0C 8002B50C 21306002 */   addu      $a2, $s3, $zero
    /* 1BD10 8002B510 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 1BD14 8002B514 21082300 */  addu       $at, $at, $v1
    /* 1BD18 8002B518 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 1BD1C 8002B51C 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 1BD20 8002B520 21082300 */  addu       $at, $at, $v1
    /* 1BD24 8002B524 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 1BD28 8002B528 653B030C */  jal        func_800CED94
    /* 1BD2C 8002B52C 21388002 */   addu      $a3, $s4, $zero
    /* 1BD30 8002B530 1280033C */  lui        $v1, %hi(D_8011A5DB)
    /* 1BD34 8002B534 DBA56390 */  lbu        $v1, %lo(D_8011A5DB)($v1)
    /* 1BD38 8002B538 00000000 */  nop
    /* 1BD3C 8002B53C 2A186200 */  slt        $v1, $v1, $v0
    /* 1BD40 8002B540 06006014 */  bnez       $v1, .L8002B55C
    /* 1BD44 8002B544 21202002 */   addu      $a0, $s1, $zero
    /* 1BD48 8002B548 21286002 */  addu       $a1, $s3, $zero
    /* 1BD4C 8002B54C A37B010C */  jal        func_8005EE8C
    /* 1BD50 8002B550 21308002 */   addu      $a2, $s4, $zero
    /* 1BD54 8002B554 0DAE0008 */  j          .L8002B834
    /* 1BD58 8002B558 00000000 */   nop
  .L8002B55C:
    /* 1BD5C 8002B55C 01003126 */  addiu      $s1, $s1, 0x1
    /* 1BD60 8002B560 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 1BD64 8002B564 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 1BD68 8002B568 00000000 */  nop
    /* 1BD6C 8002B56C 2A102202 */  slt        $v0, $s1, $v0
    /* 1BD70 8002B570 ADFF4014 */  bnez       $v0, .L8002B428
    /* 1BD74 8002B574 40101100 */   sll       $v0, $s1, 1
  .L8002B578:
    /* 1BD78 8002B578 21206002 */  addu       $a0, $s3, $zero
    /* 1BD7C 8002B57C 0161020C */  jal        func_80098404
    /* 1BD80 8002B580 21288002 */   addu      $a1, $s4, $zero
    /* 1BD84 8002B584 21B04000 */  addu       $s6, $v0, $zero
    /* 1BD88 8002B588 21206002 */  addu       $a0, $s3, $zero
    /* 1BD8C 8002B58C 2561020C */  jal        func_80098494
    /* 1BD90 8002B590 21288002 */   addu      $a1, $s4, $zero
    /* 1BD94 8002B594 21A84000 */  addu       $s5, $v0, $zero
    /* 1BD98 8002B598 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 1BD9C 8002B59C 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 1BDA0 8002B5A0 00000000 */  nop
    /* 1BDA4 8002B5A4 A3004018 */  blez       $v0, .L8002B834
    /* 1BDA8 8002B5A8 21880000 */   addu      $s1, $zero, $zero
    /* 1BDAC 8002B5AC 1180173C */  lui        $s7, %hi(D_801176B4)
    /* 1BDB0 8002B5B0 B476F726 */  addiu      $s7, $s7, %lo(D_801176B4)
    /* 1BDB4 8002B5B4 40101100 */  sll        $v0, $s1, 1
  .L8002B5B8:
    /* 1BDB8 8002B5B8 21105100 */  addu       $v0, $v0, $s1
    /* 1BDBC 8002B5BC 80100200 */  sll        $v0, $v0, 2
    /* 1BDC0 8002B5C0 21105100 */  addu       $v0, $v0, $s1
    /* 1BDC4 8002B5C4 40100200 */  sll        $v0, $v0, 1
    /* 1BDC8 8002B5C8 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 1BDCC 8002B5CC 21082200 */  addu       $at, $at, $v0
    /* 1BDD0 8002B5D0 BBD62480 */  lb         $a0, %lo(D_8010D6BB)($at)
    /* 1BDD4 8002B5D4 00000000 */  nop
    /* 1BDD8 8002B5D8 18009210 */  beq        $a0, $s2, .L8002B63C
    /* 1BDDC 8002B5DC 00000000 */   nop
    /* 1BDE0 8002B5E0 8D009610 */  beq        $a0, $s6, .L8002B818
    /* 1BDE4 8002B5E4 40101200 */   sll       $v0, $s2, 1
    /* 1BDE8 8002B5E8 21105200 */  addu       $v0, $v0, $s2
    /* 1BDEC 8002B5EC 80100200 */  sll        $v0, $v0, 2
    /* 1BDF0 8002B5F0 23105200 */  subu       $v0, $v0, $s2
    /* 1BDF4 8002B5F4 00110200 */  sll        $v0, $v0, 4
    /* 1BDF8 8002B5F8 23105200 */  subu       $v0, $v0, $s2
    /* 1BDFC 8002B5FC C0100200 */  sll        $v0, $v0, 3
    /* 1BE00 8002B600 80180400 */  sll        $v1, $a0, 2
    /* 1BE04 8002B604 21105700 */  addu       $v0, $v0, $s7
    /* 1BE08 8002B608 21186200 */  addu       $v1, $v1, $v0
    /* 1BE0C 8002B60C 0000628C */  lw         $v0, 0x0($v1)
    /* 1BE10 8002B610 00000000 */  nop
    /* 1BE14 8002B614 08004230 */  andi       $v0, $v0, 0x8
    /* 1BE18 8002B618 7F004010 */  beqz       $v0, .L8002B818
    /* 1BE1C 8002B61C 00000000 */   nop
    /* 1BE20 8002B620 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 1BE24 8002B624 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 1BE28 8002B628 00000000 */  nop
    /* 1BE2C 8002B62C 07108200 */  srav       $v0, $v0, $a0
    /* 1BE30 8002B630 01004230 */  andi       $v0, $v0, 0x1
    /* 1BE34 8002B634 78004014 */  bnez       $v0, .L8002B818
    /* 1BE38 8002B638 00000000 */   nop
  .L8002B63C:
    /* 1BE3C 8002B63C 40101100 */  sll        $v0, $s1, 1
    /* 1BE40 8002B640 21105100 */  addu       $v0, $v0, $s1
    /* 1BE44 8002B644 80100200 */  sll        $v0, $v0, 2
    /* 1BE48 8002B648 21105100 */  addu       $v0, $v0, $s1
    /* 1BE4C 8002B64C 40800200 */  sll        $s0, $v0, 1
    /* 1BE50 8002B650 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1BE54 8002B654 21083000 */  addu       $at, $at, $s0
    /* 1BE58 8002B658 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 1BE5C 8002B65C 00000000 */  nop
    /* 1BE60 8002B660 80100300 */  sll        $v0, $v1, 2
    /* 1BE64 8002B664 21104300 */  addu       $v0, $v0, $v1
    /* 1BE68 8002B668 80180200 */  sll        $v1, $v0, 2
    /* 1BE6C 8002B66C 1180013C */  lui        $at, %hi(D_8010D285)
    /* 1BE70 8002B670 21082300 */  addu       $at, $at, $v1
    /* 1BE74 8002B674 85D22280 */  lb         $v0, %lo(D_8010D285)($at)
    /* 1BE78 8002B678 00000000 */  nop
    /* 1BE7C 8002B67C 66004014 */  bnez       $v0, .L8002B818
    /* 1BE80 8002B680 00000000 */   nop
    /* 1BE84 8002B684 1180013C */  lui        $at, %hi(D_8010D288)
    /* 1BE88 8002B688 21082300 */  addu       $at, $at, $v1
    /* 1BE8C 8002B68C 88D22280 */  lb         $v0, %lo(D_8010D288)($at)
    /* 1BE90 8002B690 00000000 */  nop
    /* 1BE94 8002B694 60004010 */  beqz       $v0, .L8002B818
    /* 1BE98 8002B698 00000000 */   nop
    /* 1BE9C 8002B69C A8ED010C */  jal        func_8007B6A0
    /* 1BEA0 8002B6A0 21202002 */   addu      $a0, $s1, $zero
    /* 1BEA4 8002B6A4 5C004010 */  beqz       $v0, .L8002B818
    /* 1BEA8 8002B6A8 00000000 */   nop
    /* 1BEAC 8002B6AC 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1BEB0 8002B6B0 21083000 */  addu       $at, $at, $s0
    /* 1BEB4 8002B6B4 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 1BEB8 8002B6B8 00000000 */  nop
    /* 1BEBC 8002B6BC 80100300 */  sll        $v0, $v1, 2
    /* 1BEC0 8002B6C0 21104300 */  addu       $v0, $v0, $v1
    /* 1BEC4 8002B6C4 80100200 */  sll        $v0, $v0, 2
    /* 1BEC8 8002B6C8 1180013C */  lui        $at, %hi(D_8010D28E)
    /* 1BECC 8002B6CC 21082200 */  addu       $at, $at, $v0
    /* 1BED0 8002B6D0 8ED22380 */  lb         $v1, %lo(D_8010D28E)($at)
    /* 1BED4 8002B6D4 01000224 */  addiu      $v0, $zero, 0x1
    /* 1BED8 8002B6D8 0B006214 */  bne        $v1, $v0, .L8002B708
    /* 1BEDC 8002B6DC 40101100 */   sll       $v0, $s1, 1
    /* 1BEE0 8002B6E0 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 1BEE4 8002B6E4 21083000 */  addu       $at, $at, $s0
    /* 1BEE8 8002B6E8 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 1BEEC 8002B6EC 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 1BEF0 8002B6F0 21083000 */  addu       $at, $at, $s0
    /* 1BEF4 8002B6F4 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 1BEF8 8002B6F8 1262020C */  jal        func_80098848
    /* 1BEFC 8002B6FC 00000000 */   nop
    /* 1BF00 8002B700 45004104 */  bgez       $v0, .L8002B818
    /* 1BF04 8002B704 40101100 */   sll       $v0, $s1, 1
  .L8002B708:
    /* 1BF08 8002B708 21105100 */  addu       $v0, $v0, $s1
    /* 1BF0C 8002B70C 80100200 */  sll        $v0, $v0, 2
    /* 1BF10 8002B710 21105100 */  addu       $v0, $v0, $s1
    /* 1BF14 8002B714 40800200 */  sll        $s0, $v0, 1
    /* 1BF18 8002B718 21206002 */  addu       $a0, $s3, $zero
    /* 1BF1C 8002B71C 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 1BF20 8002B720 21083000 */  addu       $at, $at, $s0
    /* 1BF24 8002B724 B4D62684 */  lh         $a2, %lo(D_8010D6B4)($at)
    /* 1BF28 8002B728 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 1BF2C 8002B72C 21083000 */  addu       $at, $at, $s0
    /* 1BF30 8002B730 B6D62784 */  lh         $a3, %lo(D_8010D6B6)($at)
    /* 1BF34 8002B734 653B030C */  jal        func_800CED94
    /* 1BF38 8002B738 21288002 */   addu      $a1, $s4, $zero
    /* 1BF3C 8002B73C 07004228 */  slti       $v0, $v0, 0x7
    /* 1BF40 8002B740 35004010 */  beqz       $v0, .L8002B818
    /* 1BF44 8002B744 00000000 */   nop
    /* 1BF48 8002B748 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 1BF4C 8002B74C 21083000 */  addu       $at, $at, $s0
    /* 1BF50 8002B750 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 1BF54 8002B754 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 1BF58 8002B758 21083000 */  addu       $at, $at, $s0
    /* 1BF5C 8002B75C B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 1BF60 8002B760 2561020C */  jal        func_80098494
    /* 1BF64 8002B764 00000000 */   nop
    /* 1BF68 8002B768 2B005514 */  bne        $v0, $s5, .L8002B818
    /* 1BF6C 8002B76C 00000000 */   nop
    /* 1BF70 8002B770 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 1BF74 8002B774 21083000 */  addu       $at, $at, $s0
    /* 1BF78 8002B778 BBD62280 */  lb         $v0, %lo(D_8010D6BB)($at)
    /* 1BF7C 8002B77C 1680013C */  lui        $at, %hi(D_80158AC4)
    /* 1BF80 8002B780 C48A22AC */  sw         $v0, %lo(D_80158AC4)($at)
    /* 1BF84 8002B784 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 1BF88 8002B788 21083000 */  addu       $at, $at, $s0
    /* 1BF8C 8002B78C BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* 1BF90 8002B790 1680013C */  lui        $at, %hi(D_80158ABC)
    /* 1BF94 8002B794 BC8A22AC */  sw         $v0, %lo(D_80158ABC)($at)
    /* 1BF98 8002B798 1680013C */  lui        $at, %hi(D_80158AD4)
    /* 1BF9C 8002B79C D48A33AC */  sw         $s3, %lo(D_80158AD4)($at)
    /* 1BFA0 8002B7A0 1680013C */  lui        $at, %hi(D_80158AD8)
    /* 1BFA4 8002B7A4 D88A34AC */  sw         $s4, %lo(D_80158AD8)($at)
    /* 1BFA8 8002B7A8 A8ED010C */  jal        func_8007B6A0
    /* 1BFAC 8002B7AC 21202002 */   addu      $a0, $s1, $zero
    /* 1BFB0 8002B7B0 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 1BFB4 8002B7B4 21083000 */  addu       $at, $at, $s0
    /* 1BFB8 8002B7B8 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 1BFBC 8002B7BC 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 1BFC0 8002B7C0 21083000 */  addu       $at, $at, $s0
    /* 1BFC4 8002B7C4 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 1BFC8 8002B7C8 F092020C */  jal        func_800A4BC0
    /* 1BFCC 8002B7CC 40300200 */   sll       $a2, $v0, 1
    /* 1BFD0 8002B7D0 21184000 */  addu       $v1, $v0, $zero
    /* 1BFD4 8002B7D4 10006018 */  blez       $v1, .L8002B818
    /* 1BFD8 8002B7D8 08000224 */   addiu     $v0, $zero, 0x8
    /* 1BFDC 8002B7DC 0E006210 */  beq        $v1, $v0, .L8002B818
    /* 1BFE0 8002B7E0 0B000224 */   addiu     $v0, $zero, 0xB
    /* 1BFE4 8002B7E4 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 1BFE8 8002B7E8 21083000 */  addu       $at, $at, $s0
    /* 1BFEC 8002B7EC C3D622A0 */  sb         $v0, %lo(D_8010D6C3)($at)
    /* 1BFF0 8002B7F0 1180013C */  lui        $at, %hi(D_8010D6C6)
    /* 1BFF4 8002B7F4 21083000 */  addu       $at, $at, $s0
    /* 1BFF8 8002B7F8 C6D633A4 */  sh         $s3, %lo(D_8010D6C6)($at)
    /* 1BFFC 8002B7FC 1180013C */  lui        $at, %hi(D_8010D6C8)
    /* 1C000 8002B800 21083000 */  addu       $at, $at, $s0
    /* 1C004 8002B804 C8D634A4 */  sh         $s4, %lo(D_8010D6C8)($at)
    /* 1C008 8002B808 4B000224 */  addiu      $v0, $zero, 0x4B
    /* 1C00C 8002B80C 1180013C */  lui        $at, %hi(D_8010D6C0)
    /* 1C010 8002B810 21083000 */  addu       $at, $at, $s0
    /* 1C014 8002B814 C0D622A0 */  sb         $v0, %lo(D_8010D6C0)($at)
  .L8002B818:
    /* 1C018 8002B818 01003126 */  addiu      $s1, $s1, 0x1
    /* 1C01C 8002B81C 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 1C020 8002B820 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 1C024 8002B824 00000000 */  nop
    /* 1C028 8002B828 2A102202 */  slt        $v0, $s1, $v0
    /* 1C02C 8002B82C 62FF4014 */  bnez       $v0, .L8002B5B8
    /* 1C030 8002B830 40101100 */   sll       $v0, $s1, 1
  .L8002B834:
    /* 1C034 8002B834 4000BF8F */  lw         $ra, 0x40($sp)
    /* 1C038 8002B838 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 1C03C 8002B83C 3800B68F */  lw         $s6, 0x38($sp)
    /* 1C040 8002B840 3400B58F */  lw         $s5, 0x34($sp)
    /* 1C044 8002B844 3000B48F */  lw         $s4, 0x30($sp)
    /* 1C048 8002B848 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 1C04C 8002B84C 2800B28F */  lw         $s2, 0x28($sp)
    /* 1C050 8002B850 2400B18F */  lw         $s1, 0x24($sp)
    /* 1C054 8002B854 2000B08F */  lw         $s0, 0x20($sp)
    /* 1C058 8002B858 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 1C05C 8002B85C 0800E003 */  jr         $ra
    /* 1C060 8002B860 00000000 */   nop
endlabel func_8002B3DC
