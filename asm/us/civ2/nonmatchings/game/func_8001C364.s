.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001C364, 0x714

glabel func_8001C364
    /* CB64 8001C364 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* CB68 8001C368 5400BFAF */  sw         $ra, 0x54($sp)
    /* CB6C 8001C36C 5000BEAF */  sw         $fp, 0x50($sp)
    /* CB70 8001C370 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* CB74 8001C374 4800B6AF */  sw         $s6, 0x48($sp)
    /* CB78 8001C378 4400B5AF */  sw         $s5, 0x44($sp)
    /* CB7C 8001C37C 4000B4AF */  sw         $s4, 0x40($sp)
    /* CB80 8001C380 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* CB84 8001C384 3800B2AF */  sw         $s2, 0x38($sp)
    /* CB88 8001C388 3400B1AF */  sw         $s1, 0x34($sp)
    /* CB8C 8001C38C 3000B0AF */  sw         $s0, 0x30($sp)
    /* CB90 8001C390 1680023C */  lui        $v0, %hi(D_80158864)
    /* CB94 8001C394 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* CB98 8001C398 00000000 */  nop
    /* CB9C 8001C39C 08005680 */  lb         $s6, 0x8($v0)
    /* CBA0 8001C3A0 00000000 */  nop
    /* CBA4 8001C3A4 40101600 */  sll        $v0, $s6, 1
    /* CBA8 8001C3A8 21105600 */  addu       $v0, $v0, $s6
    /* CBAC 8001C3AC 80100200 */  sll        $v0, $v0, 2
    /* CBB0 8001C3B0 23105600 */  subu       $v0, $v0, $s6
    /* CBB4 8001C3B4 00110200 */  sll        $v0, $v0, 4
    /* CBB8 8001C3B8 23105600 */  subu       $v0, $v0, $s6
    /* CBBC 8001C3BC C0100200 */  sll        $v0, $v0, 3
    /* CBC0 8001C3C0 1180013C */  lui        $at, %hi(D_801176A7)
    /* CBC4 8001C3C4 21082200 */  addu       $at, $at, $v0
    /* CBC8 8001C3C8 A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* CBCC 8001C3CC 00000000 */  nop
    /* CBD0 8001C3D0 1000A2AF */  sw         $v0, 0x10($sp)
  .L8001C3D4:
    /* CBD4 8001C3D4 500080AF */  sw         $zero, %gp_rel(D_80158528)($gp)
    /* CBD8 8001C3D8 540080AF */  sw         $zero, %gp_rel(D_8015852C)($gp)
    /* CBDC 8001C3DC 21880000 */  addu       $s1, $zero, $zero
    /* CBE0 8001C3E0 40101600 */  sll        $v0, $s6, 1
    /* CBE4 8001C3E4 21105600 */  addu       $v0, $v0, $s6
    /* CBE8 8001C3E8 80100200 */  sll        $v0, $v0, 2
    /* CBEC 8001C3EC 23105600 */  subu       $v0, $v0, $s6
    /* CBF0 8001C3F0 00110200 */  sll        $v0, $v0, 4
    /* CBF4 8001C3F4 1800A2AF */  sw         $v0, 0x18($sp)
    /* CBF8 8001C3F8 21404000 */  addu       $t0, $v0, $zero
    /* CBFC 8001C3FC 23401601 */  subu       $t0, $t0, $s6
    /* CC00 8001C400 1800A8AF */  sw         $t0, 0x18($sp)
  .L8001C404:
    /* CC04 8001C404 1280023C */  lui        $v0, %hi(D_8011A280)
    /* CC08 8001C408 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* CC0C 8001C40C 00000000 */  nop
    /* CC10 8001C410 2A102202 */  slt        $v0, $s1, $v0
    /* CC14 8001C414 8B014010 */  beqz       $v0, .L8001CA44
    /* CC18 8001C418 40101100 */   sll       $v0, $s1, 1
    /* CC1C 8001C41C 21105100 */  addu       $v0, $v0, $s1
    /* CC20 8001C420 80100200 */  sll        $v0, $v0, 2
    /* CC24 8001C424 21105100 */  addu       $v0, $v0, $s1
    /* CC28 8001C428 40200200 */  sll        $a0, $v0, 1
    /* CC2C 8001C42C 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* CC30 8001C430 21082400 */  addu       $at, $at, $a0
    /* CC34 8001C434 BBD62280 */  lb         $v0, %lo(D_8010D6BB)($at)
    /* CC38 8001C438 00000000 */  nop
    /* CC3C 8001C43C 7F015614 */  bne        $v0, $s6, .L8001CA3C
    /* CC40 8001C440 00000000 */   nop
    /* CC44 8001C444 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* CC48 8001C448 21082400 */  addu       $at, $at, $a0
    /* CC4C 8001C44C C4D62390 */  lbu        $v1, %lo(D_8010D6C4)($at)
    /* CC50 8001C450 1680023C */  lui        $v0, %hi(D_80158860)
    /* CC54 8001C454 6088428C */  lw         $v0, %lo(D_80158860)($v0)
    /* CC58 8001C458 00000000 */  nop
    /* CC5C 8001C45C 77016214 */  bne        $v1, $v0, .L8001CA3C
    /* CC60 8001C460 00000000 */   nop
    /* CC64 8001C464 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* CC68 8001C468 21082400 */  addu       $at, $at, $a0
    /* CC6C 8001C46C BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* CC70 8001C470 00000000 */  nop
    /* CC74 8001C474 80180200 */  sll        $v1, $v0, 2
    /* CC78 8001C478 21186200 */  addu       $v1, $v1, $v0
    /* CC7C 8001C47C 80180300 */  sll        $v1, $v1, 2
    /* CC80 8001C480 1180013C */  lui        $at, %hi(D_8010D28E)
    /* CC84 8001C484 21082300 */  addu       $at, $at, $v1
    /* CC88 8001C488 8ED22280 */  lb         $v0, %lo(D_8010D28E)($at)
    /* CC8C 8001C48C 00000000 */  nop
    /* CC90 8001C490 06004228 */  slti       $v0, $v0, 0x6
    /* CC94 8001C494 69014010 */  beqz       $v0, .L8001CA3C
    /* CC98 8001C498 00000000 */   nop
    /* CC9C 8001C49C 1000A58F */  lw         $a1, 0x10($sp)
    /* CCA0 8001C4A0 C453000C */  jal        func_80014F10
    /* CCA4 8001C4A4 21202002 */   addu      $a0, $s1, $zero
    /* CCA8 8001C4A8 5400838F */  lw         $v1, %gp_rel(D_8015852C)($gp)
    /* CCAC 8001C4AC 1180023C */  lui        $v0, %hi(D_8010BA40)
    /* CCB0 8001C4B0 40BA428C */  lw         $v0, %lo(D_8010BA40)($v0)
    /* CCB4 8001C4B4 00000000 */  nop
    /* CCB8 8001C4B8 2A104300 */  slt        $v0, $v0, $v1
    /* CCBC 8001C4BC 1C004014 */  bnez       $v0, .L8001C530
    /* CCC0 8001C4C0 00000000 */   nop
    /* CCC4 8001C4C4 1680023C */  lui        $v0, %hi(D_80158864)
    /* CCC8 8001C4C8 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* CCCC 8001C4CC 00000000 */  nop
    /* CCD0 8001C4D0 0400428C */  lw         $v0, 0x4($v0)
    /* CCD4 8001C4D4 00000000 */  nop
    /* CCD8 8001C4D8 01004230 */  andi       $v0, $v0, 0x1
    /* CCDC 8001C4DC 57014010 */  beqz       $v0, .L8001CA3C
    /* CCE0 8001C4E0 00000000 */   nop
    /* CCE4 8001C4E4 1280023C */  lui        $v0, %hi(D_8011A262)
    /* CCE8 8001C4E8 62A24284 */  lh         $v0, %lo(D_8011A262)($v0)
    /* CCEC 8001C4EC 00000000 */  nop
    /* CCF0 8001C4F0 21102202 */  addu       $v0, $s1, $v0
    /* CCF4 8001C4F4 07004230 */  andi       $v0, $v0, 0x7
    /* CCF8 8001C4F8 50014014 */  bnez       $v0, .L8001CA3C
    /* CCFC 8001C4FC 00000000 */   nop
    /* CD00 8001C500 1280023C */  lui        $v0, %hi(D_8011A275)
    /* CD04 8001C504 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* CD08 8001C508 00000000 */  nop
    /* CD0C 8001C50C 0710C202 */  srav       $v0, $v0, $s6
    /* CD10 8001C510 01004230 */  andi       $v0, $v0, 0x1
    /* CD14 8001C514 49014014 */  bnez       $v0, .L8001CA3C
    /* CD18 8001C518 00000000 */   nop
    /* CD1C 8001C51C 1000A88F */  lw         $t0, 0x10($sp)
    /* CD20 8001C520 00000000 */  nop
    /* CD24 8001C524 05000229 */  slti       $v0, $t0, 0x5
    /* CD28 8001C528 44014014 */  bnez       $v0, .L8001CA3C
    /* CD2C 8001C52C 00000000 */   nop
  .L8001C530:
    /* CD30 8001C530 5400828F */  lw         $v0, %gp_rel(D_8015852C)($gp)
    /* CD34 8001C534 1180033C */  lui        $v1, %hi(D_8010BA40)
    /* CD38 8001C538 40BA638C */  lw         $v1, %lo(D_8010BA40)($v1)
    /* CD3C 8001C53C 00000000 */  nop
    /* CD40 8001C540 2AB86200 */  slt        $s7, $v1, $v0
    /* CD44 8001C544 FFFF1424 */  addiu      $s4, $zero, -0x1
    /* CD48 8001C548 FFFF1524 */  addiu      $s5, $zero, -0x1
    /* CD4C 8001C54C 21F02002 */  addu       $fp, $s1, $zero
    /* CD50 8001C550 1280023C */  lui        $v0, %hi(D_8011A280)
    /* CD54 8001C554 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* CD58 8001C558 00000000 */  nop
    /* CD5C 8001C55C 89004018 */  blez       $v0, .L8001C784
    /* CD60 8001C560 21880000 */   addu      $s1, $zero, $zero
    /* CD64 8001C564 40101100 */  sll        $v0, $s1, 1
  .L8001C568:
    /* CD68 8001C568 21105100 */  addu       $v0, $v0, $s1
    /* CD6C 8001C56C 80100200 */  sll        $v0, $v0, 2
    /* CD70 8001C570 21105100 */  addu       $v0, $v0, $s1
    /* CD74 8001C574 40800200 */  sll        $s0, $v0, 1
    /* CD78 8001C578 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* CD7C 8001C57C 21083000 */  addu       $at, $at, $s0
    /* CD80 8001C580 C4D62390 */  lbu        $v1, %lo(D_8010D6C4)($at)
    /* CD84 8001C584 1680023C */  lui        $v0, %hi(D_80158860)
    /* CD88 8001C588 6088428C */  lw         $v0, %lo(D_80158860)($v0)
    /* CD8C 8001C58C 00000000 */  nop
    /* CD90 8001C590 75006214 */  bne        $v1, $v0, .L8001C768
    /* CD94 8001C594 00000000 */   nop
    /* CD98 8001C598 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* CD9C 8001C59C 21083000 */  addu       $at, $at, $s0
    /* CDA0 8001C5A0 BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* CDA4 8001C5A4 00000000 */  nop
    /* CDA8 8001C5A8 80180200 */  sll        $v1, $v0, 2
    /* CDAC 8001C5AC 21186200 */  addu       $v1, $v1, $v0
    /* CDB0 8001C5B0 80180300 */  sll        $v1, $v1, 2
    /* CDB4 8001C5B4 1180013C */  lui        $at, %hi(D_8010D28E)
    /* CDB8 8001C5B8 21082300 */  addu       $at, $at, $v1
    /* CDBC 8001C5BC 8ED22380 */  lb         $v1, %lo(D_8010D28E)($at)
    /* CDC0 8001C5C0 00000000 */  nop
    /* CDC4 8001C5C4 06006228 */  slti       $v0, $v1, 0x6
    /* CDC8 8001C5C8 67004010 */  beqz       $v0, .L8001C768
    /* CDCC 8001C5CC 00000000 */   nop
    /* CDD0 8001C5D0 4F00E016 */  bnez       $s7, .L8001C710
    /* CDD4 8001C5D4 40101100 */   sll       $v0, $s1, 1
    /* CDD8 8001C5D8 05006228 */  slti       $v0, $v1, 0x5
    /* CDDC 8001C5DC 62004010 */  beqz       $v0, .L8001C768
    /* CDE0 8001C5E0 00000000 */   nop
    /* CDE4 8001C5E4 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* CDE8 8001C5E8 21083000 */  addu       $at, $at, $s0
    /* CDEC 8001C5EC B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* CDF0 8001C5F0 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* CDF4 8001C5F4 21083000 */  addu       $at, $at, $s0
    /* CDF8 8001C5F8 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* CDFC 8001C5FC 1262020C */  jal        func_80098848
    /* CE00 8001C600 00000000 */   nop
    /* CE04 8001C604 58004104 */  bgez       $v0, .L8001C768
    /* CE08 8001C608 00000000 */   nop
    /* CE0C 8001C60C 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* CE10 8001C610 21083000 */  addu       $at, $at, $s0
    /* CE14 8001C614 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* CE18 8001C618 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* CE1C 8001C61C 21083000 */  addu       $at, $at, $s0
    /* CE20 8001C620 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* CE24 8001C624 6961020C */  jal        func_800985A4
    /* CE28 8001C628 00000000 */   nop
    /* CE2C 8001C62C 42004230 */  andi       $v0, $v0, 0x42
    /* CE30 8001C630 40000324 */  addiu      $v1, $zero, 0x40
    /* CE34 8001C634 36004314 */  bne        $v0, $v1, .L8001C710
    /* CE38 8001C638 40101100 */   sll       $v0, $s1, 1
    /* CE3C 8001C63C 21980000 */  addu       $s3, $zero, $zero
    /* CE40 8001C640 1280023C */  lui        $v0, %hi(D_8011A282)
    /* CE44 8001C644 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* CE48 8001C648 00000000 */  nop
    /* CE4C 8001C64C 2E004018 */  blez       $v0, .L8001C708
    /* CE50 8001C650 21800000 */   addu      $s0, $zero, $zero
    /* CE54 8001C654 40101100 */  sll        $v0, $s1, 1
    /* CE58 8001C658 21105100 */  addu       $v0, $v0, $s1
    /* CE5C 8001C65C 80100200 */  sll        $v0, $v0, 2
    /* CE60 8001C660 21105100 */  addu       $v0, $v0, $s1
    /* CE64 8001C664 40900200 */  sll        $s2, $v0, 1
    /* CE68 8001C668 40101000 */  sll        $v0, $s0, 1
  .L8001C66C:
    /* CE6C 8001C66C 21105000 */  addu       $v0, $v0, $s0
    /* CE70 8001C670 80100200 */  sll        $v0, $v0, 2
    /* CE74 8001C674 23105000 */  subu       $v0, $v0, $s0
    /* CE78 8001C678 C0380200 */  sll        $a3, $v0, 3
    /* CE7C 8001C67C 1680023C */  lui        $v0, %hi(D_80158864)
    /* CE80 8001C680 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* CE84 8001C684 1180013C */  lui        $at, %hi(D_80113ED8)
    /* CE88 8001C688 21082700 */  addu       $at, $at, $a3
    /* CE8C 8001C68C D83E2380 */  lb         $v1, %lo(D_80113ED8)($at)
    /* CE90 8001C690 08004280 */  lb         $v0, 0x8($v0)
    /* CE94 8001C694 00000000 */  nop
    /* CE98 8001C698 14006214 */  bne        $v1, $v0, .L8001C6EC
    /* CE9C 8001C69C 00000000 */   nop
    /* CEA0 8001C6A0 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* CEA4 8001C6A4 21083200 */  addu       $at, $at, $s2
    /* CEA8 8001C6A8 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* CEAC 8001C6AC 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* CEB0 8001C6B0 21083200 */  addu       $at, $at, $s2
    /* CEB4 8001C6B4 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* CEB8 8001C6B8 1180013C */  lui        $at, %hi(D_80113ED0)
    /* CEBC 8001C6BC 21082700 */  addu       $at, $at, $a3
    /* CEC0 8001C6C0 D03E2684 */  lh         $a2, %lo(D_80113ED0)($at)
    /* CEC4 8001C6C4 1180013C */  lui        $at, %hi(D_80113ED2)
    /* CEC8 8001C6C8 21082700 */  addu       $at, $at, $a3
    /* CECC 8001C6CC D23E2784 */  lh         $a3, %lo(D_80113ED2)($at)
    /* CED0 8001C6D0 653B030C */  jal        func_800CED94
    /* CED4 8001C6D4 00000000 */   nop
    /* CED8 8001C6D8 04004228 */  slti       $v0, $v0, 0x4
    /* CEDC 8001C6DC 03004010 */  beqz       $v0, .L8001C6EC
    /* CEE0 8001C6E0 00000000 */   nop
    /* CEE4 8001C6E4 C2710008 */  j          .L8001C708
    /* CEE8 8001C6E8 01001324 */   addiu     $s3, $zero, 0x1
  .L8001C6EC:
    /* CEEC 8001C6EC 01001026 */  addiu      $s0, $s0, 0x1
    /* CEF0 8001C6F0 1280023C */  lui        $v0, %hi(D_8011A282)
    /* CEF4 8001C6F4 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* CEF8 8001C6F8 00000000 */  nop
    /* CEFC 8001C6FC 2A100202 */  slt        $v0, $s0, $v0
    /* CF00 8001C700 DAFF4014 */  bnez       $v0, .L8001C66C
    /* CF04 8001C704 40101000 */   sll       $v0, $s0, 1
  .L8001C708:
    /* CF08 8001C708 17006016 */  bnez       $s3, .L8001C768
    /* CF0C 8001C70C 40101100 */   sll       $v0, $s1, 1
  .L8001C710:
    /* CF10 8001C710 21105100 */  addu       $v0, $v0, $s1
    /* CF14 8001C714 80100200 */  sll        $v0, $v0, 2
    /* CF18 8001C718 21105100 */  addu       $v0, $v0, $s1
    /* CF1C 8001C71C 40100200 */  sll        $v0, $v0, 1
    /* CF20 8001C720 1680033C */  lui        $v1, %hi(D_80158864)
    /* CF24 8001C724 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* CF28 8001C728 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* CF2C 8001C72C 21082200 */  addu       $at, $at, $v0
    /* CF30 8001C730 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* CF34 8001C734 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* CF38 8001C738 21082200 */  addu       $at, $at, $v0
    /* CF3C 8001C73C B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* CF40 8001C740 00006684 */  lh         $a2, 0x0($v1)
    /* CF44 8001C744 02006784 */  lh         $a3, 0x2($v1)
    /* CF48 8001C748 A73B030C */  jal        func_800CEE9C
    /* CF4C 8001C74C 00000000 */   nop
    /* CF50 8001C750 21184000 */  addu       $v1, $v0, $zero
    /* CF54 8001C754 2A108302 */  slt        $v0, $s4, $v1
    /* CF58 8001C758 03004010 */  beqz       $v0, .L8001C768
    /* CF5C 8001C75C 00000000 */   nop
    /* CF60 8001C760 21A06000 */  addu       $s4, $v1, $zero
    /* CF64 8001C764 21A82002 */  addu       $s5, $s1, $zero
  .L8001C768:
    /* CF68 8001C768 01003126 */  addiu      $s1, $s1, 0x1
    /* CF6C 8001C76C 1280023C */  lui        $v0, %hi(D_8011A280)
    /* CF70 8001C770 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* CF74 8001C774 00000000 */  nop
    /* CF78 8001C778 2A102202 */  slt        $v0, $s1, $v0
    /* CF7C 8001C77C 7AFF4014 */  bnez       $v0, .L8001C568
    /* CF80 8001C780 40101100 */   sll       $v0, $s1, 1
  .L8001C784:
    /* CF84 8001C784 1180023C */  lui        $v0, %hi(D_8010BA40)
    /* CF88 8001C788 40BA428C */  lw         $v0, %lo(D_8010BA40)($v0)
    /* CF8C 8001C78C 5400838F */  lw         $v1, %gp_rel(D_8015852C)($gp)
    /* CF90 8001C790 00000000 */  nop
    /* CF94 8001C794 2A104300 */  slt        $v0, $v0, $v1
    /* CF98 8001C798 6F004014 */  bnez       $v0, .L8001C958
    /* CF9C 8001C79C 2188C003 */   addu      $s1, $fp, $zero
    /* CFA0 8001C7A0 1280033C */  lui        $v1, %hi(D_8011A25A)
    /* CFA4 8001C7A4 5AA26324 */  addiu      $v1, $v1, %lo(D_8011A25A)
    /* CFA8 8001C7A8 00006294 */  lhu        $v0, 0x0($v1)
    /* CFAC 8001C7AC 00000000 */  nop
    /* CFB0 8001C7B0 01004230 */  andi       $v0, $v0, 0x1
    /* CFB4 8001C7B4 1F004010 */  beqz       $v0, .L8001C834
    /* CFB8 8001C7B8 00000000 */   nop
    /* CFBC 8001C7BC 1800A88F */  lw         $t0, 0x18($sp)
    /* CFC0 8001C7C0 00000000 */  nop
    /* CFC4 8001C7C4 C0200800 */  sll        $a0, $t0, 3
    /* CFC8 8001C7C8 22016390 */  lbu        $v1, 0x122($v1)
    /* CFCC 8001C7CC 00000000 */  nop
    /* CFD0 8001C7D0 40100300 */  sll        $v0, $v1, 1
    /* CFD4 8001C7D4 21104300 */  addu       $v0, $v0, $v1
    /* CFD8 8001C7D8 80100200 */  sll        $v0, $v0, 2
    /* CFDC 8001C7DC 23104300 */  subu       $v0, $v0, $v1
    /* CFE0 8001C7E0 00110200 */  sll        $v0, $v0, 4
    /* CFE4 8001C7E4 23104300 */  subu       $v0, $v0, $v1
    /* CFE8 8001C7E8 C0100200 */  sll        $v0, $v0, 3
    /* CFEC 8001C7EC 1180013C */  lui        $at, %hi(D_801176A2)
    /* CFF0 8001C7F0 21082400 */  addu       $at, $at, $a0
    /* CFF4 8001C7F4 A2762390 */  lbu        $v1, %lo(D_801176A2)($at)
    /* CFF8 8001C7F8 1180013C */  lui        $at, %hi(D_801176A2)
    /* CFFC 8001C7FC 21082200 */  addu       $at, $at, $v0
    /* D000 8001C800 A2762290 */  lbu        $v0, %lo(D_801176A2)($at)
    /* D004 8001C804 00000000 */  nop
    /* D008 8001C808 2B186200 */  sltu       $v1, $v1, $v0
    /* D00C 8001C80C 09006010 */  beqz       $v1, .L8001C834
    /* D010 8001C810 19FC0224 */   addiu     $v0, $zero, -0x3E7
    /* D014 8001C814 1180013C */  lui        $at, %hi(D_80117A54)
    /* D018 8001C818 21082400 */  addu       $at, $at, $a0
    /* D01C 8001C81C 547A22A4 */  sh         $v0, %lo(D_80117A54)($at)
    /* D020 8001C820 1180013C */  lui        $at, %hi(D_80117A52)
    /* D024 8001C824 21082400 */  addu       $at, $at, $a0
    /* D028 8001C828 527A22A4 */  sh         $v0, %lo(D_80117A52)($at)
    /* D02C 8001C82C 01710008 */  j          .L8001C404
    /* D030 8001C830 01003126 */   addiu     $s1, $s1, 0x1
  .L8001C834:
    /* D034 8001C834 4600801A */  blez       $s4, .L8001C950
    /* D038 8001C838 2188A002 */   addu      $s1, $s5, $zero
    /* D03C 8001C83C 40101100 */  sll        $v0, $s1, 1
    /* D040 8001C840 21105100 */  addu       $v0, $v0, $s1
    /* D044 8001C844 80100200 */  sll        $v0, $v0, 2
    /* D048 8001C848 21105100 */  addu       $v0, $v0, $s1
    /* D04C 8001C84C 40900200 */  sll        $s2, $v0, 1
    /* D050 8001C850 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* D054 8001C854 21083200 */  addu       $at, $at, $s2
    /* D058 8001C858 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* D05C 8001C85C 00000000 */  nop
    /* D060 8001C860 80100300 */  sll        $v0, $v1, 2
    /* D064 8001C864 21104300 */  addu       $v0, $v0, $v1
    /* D068 8001C868 80100200 */  sll        $v0, $v0, 2
    /* D06C 8001C86C 1180013C */  lui        $at, %hi(D_8010D285)
    /* D070 8001C870 21082200 */  addu       $at, $at, $v0
    /* D074 8001C874 85D22280 */  lb         $v0, %lo(D_8010D285)($at)
    /* D078 8001C878 00000000 */  nop
    /* D07C 8001C87C 34004014 */  bnez       $v0, .L8001C950
    /* D080 8001C880 00000000 */   nop
    /* D084 8001C884 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* D088 8001C888 21083200 */  addu       $at, $at, $s2
    /* D08C 8001C88C B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* D090 8001C890 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* D094 8001C894 21083200 */  addu       $at, $at, $s2
    /* D098 8001C898 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* D09C 8001C89C 1E26020C */  jal        func_80089878
    /* D0A0 8001C8A0 00000000 */   nop
    /* D0A4 8001C8A4 21804000 */  addu       $s0, $v0, $zero
    /* D0A8 8001C8A8 1E000006 */  bltz       $s0, .L8001C924
    /* D0AC 8001C8AC 40201000 */   sll       $a0, $s0, 1
    /* D0B0 8001C8B0 21209000 */  addu       $a0, $a0, $s0
    /* D0B4 8001C8B4 80200400 */  sll        $a0, $a0, 2
    /* D0B8 8001C8B8 23209000 */  subu       $a0, $a0, $s0
    /* D0BC 8001C8BC C0200400 */  sll        $a0, $a0, 3
    /* D0C0 8001C8C0 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* D0C4 8001C8C4 21083200 */  addu       $at, $at, $s2
    /* D0C8 8001C8C8 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* D0CC 8001C8CC 00000000 */  nop
    /* D0D0 8001C8D0 80100300 */  sll        $v0, $v1, 2
    /* D0D4 8001C8D4 21104300 */  addu       $v0, $v0, $v1
    /* D0D8 8001C8D8 80100200 */  sll        $v0, $v0, 2
    /* D0DC 8001C8DC 1180013C */  lui        $at, %hi(D_8010D28C)
    /* D0E0 8001C8E0 21082200 */  addu       $at, $at, $v0
    /* D0E4 8001C8E4 8CD22380 */  lb         $v1, %lo(D_8010D28C)($at)
    /* D0E8 8001C8E8 6800828F */  lw         $v0, %gp_rel(D_80158540)($gp)
    /* D0EC 8001C8EC 00000000 */  nop
    /* D0F0 8001C8F0 18006200 */  mult       $v1, $v0
    /* D0F4 8001C8F4 12180000 */  mflo       $v1
    /* D0F8 8001C8F8 C2170300 */  srl        $v0, $v1, 31
    /* D0FC 8001C8FC 21186200 */  addu       $v1, $v1, $v0
    /* D100 8001C900 43180300 */  sra        $v1, $v1, 1
    /* D104 8001C904 1180013C */  lui        $at, %hi(D_80113EEE)
    /* D108 8001C908 21082400 */  addu       $at, $at, $a0
    /* D10C 8001C90C EE3E2294 */  lhu        $v0, %lo(D_80113EEE)($at)
    /* D110 8001C910 00000000 */  nop
    /* D114 8001C914 21104300 */  addu       $v0, $v0, $v1
    /* D118 8001C918 1180013C */  lui        $at, %hi(D_80113EEE)
    /* D11C 8001C91C 21082400 */  addu       $at, $at, $a0
    /* D120 8001C920 EE3E22A4 */  sh         $v0, %lo(D_80113EEE)($at)
  .L8001C924:
    /* D124 8001C924 04F2010C */  jal        func_8007C810
    /* D128 8001C928 21202002 */   addu      $a0, $s1, $zero
    /* D12C 8001C92C 1680023C */  lui        $v0, %hi(D_80158864)
    /* D130 8001C930 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* D134 8001C934 00000000 */  nop
    /* D138 8001C938 0400438C */  lw         $v1, 0x4($v0)
    /* D13C 8001C93C EFFF043C */  lui        $a0, (0xFFEFDFFE >> 16)
    /* D140 8001C940 FEDF8434 */  ori        $a0, $a0, (0xFFEFDFFE & 0xFFFF)
    /* D144 8001C944 24186400 */  and        $v1, $v1, $a0
    /* D148 8001C948 F5700008 */  j          .L8001C3D4
    /* D14C 8001C94C 040043AC */   sw        $v1, 0x4($v0)
  .L8001C950:
    /* D150 8001C950 8F720008 */  j          .L8001CA3C
    /* D154 8001C954 2188C003 */   addu      $s1, $fp, $zero
  .L8001C958:
    /* D158 8001C958 38008006 */  bltz       $s4, .L8001CA3C
    /* D15C 8001C95C 00000000 */   nop
    /* D160 8001C960 1280023C */  lui        $v0, %hi(D_8011A275)
    /* D164 8001C964 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* D168 8001C968 00000000 */  nop
    /* D16C 8001C96C 0710C202 */  srav       $v0, $v0, $s6
    /* D170 8001C970 01004230 */  andi       $v0, $v0, 0x1
    /* D174 8001C974 21004010 */  beqz       $v0, .L8001C9FC
    /* D178 8001C978 2188A002 */   addu      $s1, $s5, $zero
    /* D17C 8001C97C 40801100 */  sll        $s0, $s1, 1
    /* D180 8001C980 21801102 */  addu       $s0, $s0, $s1
    /* D184 8001C984 80801000 */  sll        $s0, $s0, 2
    /* D188 8001C988 21801102 */  addu       $s0, $s0, $s1
    /* D18C 8001C98C 40801000 */  sll        $s0, $s0, 1
    /* D190 8001C990 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* D194 8001C994 21083000 */  addu       $at, $at, $s0
    /* D198 8001C998 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* D19C 8001C99C 00000000 */  nop
    /* D1A0 8001C9A0 80100300 */  sll        $v0, $v1, 2
    /* D1A4 8001C9A4 21104300 */  addu       $v0, $v0, $v1
    /* D1A8 8001C9A8 80100200 */  sll        $v0, $v0, 2
    /* D1AC 8001C9AC 1180013C */  lui        $at, %hi(D_8010D27C)
    /* D1B0 8001C9B0 21082200 */  addu       $at, $at, $v0
    /* D1B4 8001C9B4 7CD2258C */  lw         $a1, %lo(D_8010D27C)($at)
    /* D1B8 8001C9B8 ABAC020C */  jal        func_800AB2AC
    /* D1BC 8001C9BC 01000424 */   addiu     $a0, $zero, 0x1
    /* D1C0 8001C9C0 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* D1C4 8001C9C4 21083000 */  addu       $at, $at, $s0
    /* D1C8 8001C9C8 BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* D1CC 8001C9CC 00000000 */  nop
    /* D1D0 8001C9D0 C0300200 */  sll        $a2, $v0, 3
    /* D1D4 8001C9D4 2130C200 */  addu       $a2, $a2, $v0
    /* D1D8 8001C9D8 80300600 */  sll        $a2, $a2, 2
    /* D1DC 8001C9DC 2130C200 */  addu       $a2, $a2, $v0
    /* D1E0 8001C9E0 80300600 */  sll        $a2, $a2, 2
    /* D1E4 8001C9E4 1380023C */  lui        $v0, %hi(D_8012BF80)
    /* D1E8 8001C9E8 80BF4224 */  addiu      $v0, $v0, %lo(D_8012BF80)
    /* D1EC 8001C9EC A4160424 */  addiu      $a0, $zero, 0x16A4
    /* D1F0 8001C9F0 21280000 */  addu       $a1, $zero, $zero
    /* D1F4 8001C9F4 2963000C */  jal        func_80018CA4
    /* D1F8 8001C9F8 2130C200 */   addu      $a2, $a2, $v0
  .L8001C9FC:
    /* D1FC 8001C9FC 35F9010C */  jal        func_8007E4D4
    /* D200 8001CA00 21202002 */   addu      $a0, $s1, $zero
    /* D204 8001CA04 3000828F */  lw         $v0, %gp_rel(D_80158508)($gp)
    /* D208 8001CA08 00000000 */  nop
    /* D20C 8001CA0C 71FE4010 */  beqz       $v0, .L8001C3D4
    /* D210 8001CA10 00000000 */   nop
    /* D214 8001CA14 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* D218 8001CA18 F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* D21C 8001CA1C CF4C030C */  jal        func_800D333C
    /* D220 8001CA20 01000524 */   addiu     $a1, $zero, 0x1
    /* D224 8001CA24 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* D228 8001CA28 F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* D22C 8001CA2C A857030C */  jal        func_800D5EA0
    /* D230 8001CA30 01000524 */   addiu     $a1, $zero, 0x1
    /* D234 8001CA34 F5700008 */  j          .L8001C3D4
    /* D238 8001CA38 00000000 */   nop
  .L8001CA3C:
    /* D23C 8001CA3C 01710008 */  j          .L8001C404
    /* D240 8001CA40 01003126 */   addiu     $s1, $s1, 0x1
  .L8001CA44:
    /* D244 8001CA44 5400BF8F */  lw         $ra, 0x54($sp)
    /* D248 8001CA48 5000BE8F */  lw         $fp, 0x50($sp)
    /* D24C 8001CA4C 4C00B78F */  lw         $s7, 0x4C($sp)
    /* D250 8001CA50 4800B68F */  lw         $s6, 0x48($sp)
    /* D254 8001CA54 4400B58F */  lw         $s5, 0x44($sp)
    /* D258 8001CA58 4000B48F */  lw         $s4, 0x40($sp)
    /* D25C 8001CA5C 3C00B38F */  lw         $s3, 0x3C($sp)
    /* D260 8001CA60 3800B28F */  lw         $s2, 0x38($sp)
    /* D264 8001CA64 3400B18F */  lw         $s1, 0x34($sp)
    /* D268 8001CA68 3000B08F */  lw         $s0, 0x30($sp)
    /* D26C 8001CA6C 5800BD27 */  addiu      $sp, $sp, 0x58
    /* D270 8001CA70 0800E003 */  jr         $ra
    /* D274 8001CA74 00000000 */   nop
endlabel func_8001C364
