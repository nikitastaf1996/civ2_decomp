.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002C444, 0x488

glabel func_8002C444
    /* 1CC44 8002C444 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 1CC48 8002C448 8C00BFAF */  sw         $ra, 0x8C($sp)
    /* 1CC4C 8002C44C 8800BEAF */  sw         $fp, 0x88($sp)
    /* 1CC50 8002C450 8400B7AF */  sw         $s7, 0x84($sp)
    /* 1CC54 8002C454 8000B6AF */  sw         $s6, 0x80($sp)
    /* 1CC58 8002C458 7C00B5AF */  sw         $s5, 0x7C($sp)
    /* 1CC5C 8002C45C 7800B4AF */  sw         $s4, 0x78($sp)
    /* 1CC60 8002C460 7400B3AF */  sw         $s3, 0x74($sp)
    /* 1CC64 8002C464 7000B2AF */  sw         $s2, 0x70($sp)
    /* 1CC68 8002C468 6C00B1AF */  sw         $s1, 0x6C($sp)
    /* 1CC6C 8002C46C 6800B0AF */  sw         $s0, 0x68($sp)
    /* 1CC70 8002C470 21908000 */  addu       $s2, $a0, $zero
    /* 1CC74 8002C474 1800A5AF */  sw         $a1, 0x18($sp)
    /* 1CC78 8002C478 2188C000 */  addu       $s1, $a2, $zero
    /* 1CC7C 8002C47C 2000A7AF */  sw         $a3, 0x20($sp)
    /* 1CC80 8002C480 21A80000 */  addu       $s5, $zero, $zero
    /* 1CC84 8002C484 21B80000 */  addu       $s7, $zero, $zero
    /* 1CC88 8002C488 2800A0AF */  sw         $zero, 0x28($sp)
    /* 1CC8C 8002C48C F500A018 */  blez       $a1, .L8002C864
    /* 1CC90 8002C490 21F00000 */   addu      $fp, $zero, $zero
    /* 1CC94 8002C494 80101200 */  sll        $v0, $s2, 2
  .L8002C498:
    /* 1CC98 8002C498 21105200 */  addu       $v0, $v0, $s2
    /* 1CC9C 8002C49C 80100200 */  sll        $v0, $v0, 2
    /* 1CCA0 8002C4A0 0480013C */  lui        $at, %hi(D_80046F2C)
    /* 1CCA4 8002C4A4 21082200 */  addu       $at, $at, $v0
    /* 1CCA8 8002C4A8 2C6F338C */  lw         $s3, %lo(D_80046F2C)($at)
    /* 1CCAC 8002C4AC 20000824 */  addiu      $t0, $zero, 0x20
    /* 1CCB0 8002C4B0 4800A8AF */  sw         $t0, 0x48($sp)
    /* 1CCB4 8002C4B4 5000A0AF */  sw         $zero, 0x50($sp)
    /* 1CCB8 8002C4B8 0480013C */  lui        $at, %hi(D_80046F24)
    /* 1CCBC 8002C4BC 21082200 */  addu       $at, $at, $v0
    /* 1CCC0 8002C4C0 246F2284 */  lh         $v0, %lo(D_80046F24)($at)
    /* 1CCC4 8002C4C4 00000000 */  nop
    /* 1CCC8 8002C4C8 88004228 */  slti       $v0, $v0, 0x88
    /* 1CCCC 8002C4CC 04004014 */  bnez       $v0, .L8002C4E0
    /* 1CCD0 8002C4D0 16000924 */   addiu     $t1, $zero, 0x16
    /* 1CCD4 8002C4D4 4800A9AF */  sw         $t1, 0x48($sp)
    /* 1CCD8 8002C4D8 16000824 */  addiu      $t0, $zero, 0x16
    /* 1CCDC 8002C4DC 5000A8AF */  sw         $t0, 0x50($sp)
  .L8002C4E0:
    /* 1CCE0 8002C4E0 53B6000C */  jal        func_8002D94C
    /* 1CCE4 8002C4E4 21206002 */   addu      $a0, $s3, $zero
    /* 1CCE8 8002C4E8 80101200 */  sll        $v0, $s2, 2
    /* 1CCEC 8002C4EC 21105200 */  addu       $v0, $v0, $s2
    /* 1CCF0 8002C4F0 80100200 */  sll        $v0, $v0, 2
    /* 1CCF4 8002C4F4 0480013C */  lui        $at, %hi(D_80046F26)
    /* 1CCF8 8002C4F8 21082200 */  addu       $at, $at, $v0
    /* 1CCFC 8002C4FC 266F2284 */  lh         $v0, %lo(D_80046F26)($at)
    /* 1CD00 8002C500 00000000 */  nop
    /* 1CD04 8002C504 13004104 */  bgez       $v0, .L8002C554
    /* 1CD08 8002C508 00000000 */   nop
    /* 1CD0C 8002C50C 2800A98F */  lw         $t1, 0x28($sp)
    /* 1CD10 8002C510 00000000 */  nop
    /* 1CD14 8002C514 0A002015 */  bnez       $t1, .L8002C540
    /* 1CD18 8002C518 01001424 */   addiu     $s4, $zero, 0x1
    /* 1CD1C 8002C51C 0580023C */  lui        $v0, %hi(D_8005654C)
    /* 1CD20 8002C520 4C65428C */  lw         $v0, %lo(D_8005654C)($v0)
    /* 1CD24 8002C524 00000000 */  nop
    /* 1CD28 8002C528 80100200 */  sll        $v0, $v0, 2
    /* 1CD2C 8002C52C 0580013C */  lui        $at, %hi(D_8004D1D0)
    /* 1CD30 8002C530 21082200 */  addu       $at, $at, $v0
    /* 1CD34 8002C534 D0D1228C */  lw         $v0, %lo(D_8004D1D0)($at)
    /* 1CD38 8002C538 6FB10008 */  j          .L8002C5BC
    /* 1CD3C 8002C53C 3000A2AF */   sw        $v0, 0x30($sp)
  .L8002C540:
    /* 1CD40 8002C540 3000A88F */  lw         $t0, 0x30($sp)
    /* 1CD44 8002C544 00000000 */  nop
    /* 1CD48 8002C548 10000825 */  addiu      $t0, $t0, 0x10
    /* 1CD4C 8002C54C 6FB10008 */  j          .L8002C5BC
    /* 1CD50 8002C550 3000A8AF */   sw        $t0, 0x30($sp)
  .L8002C554:
    /* 1CD54 8002C554 80101200 */  sll        $v0, $s2, 2
    /* 1CD58 8002C558 21105200 */  addu       $v0, $v0, $s2
    /* 1CD5C 8002C55C 80100200 */  sll        $v0, $v0, 2
    /* 1CD60 8002C560 0480013C */  lui        $at, %hi(D_80046F26)
    /* 1CD64 8002C564 21082200 */  addu       $at, $at, $v0
    /* 1CD68 8002C568 266F2384 */  lh         $v1, %lo(D_80046F26)($at)
    /* 1CD6C 8002C56C 3000A98F */  lw         $t1, 0x30($sp)
    /* 1CD70 8002C570 00000000 */  nop
    /* 1CD74 8002C574 10002225 */  addiu      $v0, $t1, 0x10
    /* 1CD78 8002C578 08006210 */  beq        $v1, $v0, .L8002C59C
    /* 1CD7C 8002C57C 01001424 */   addiu     $s4, $zero, 0x1
    /* 1CD80 8002C580 2800A88F */  lw         $t0, 0x28($sp)
    /* 1CD84 8002C584 00000000 */  nop
    /* 1CD88 8002C588 03000015 */  bnez       $t0, .L8002C598
    /* 1CD8C 8002C58C 21A00000 */   addu      $s4, $zero, $zero
    /* 1CD90 8002C590 67B10008 */  j          .L8002C59C
    /* 1CD94 8002C594 01001424 */   addiu     $s4, $zero, 0x1
  .L8002C598:
    /* 1CD98 8002C598 21A80000 */  addu       $s5, $zero, $zero
  .L8002C59C:
    /* 1CD9C 8002C59C 80101200 */  sll        $v0, $s2, 2
    /* 1CDA0 8002C5A0 21105200 */  addu       $v0, $v0, $s2
    /* 1CDA4 8002C5A4 80100200 */  sll        $v0, $v0, 2
    /* 1CDA8 8002C5A8 0480013C */  lui        $at, %hi(D_80046F26)
    /* 1CDAC 8002C5AC 21082200 */  addu       $at, $at, $v0
    /* 1CDB0 8002C5B0 266F2284 */  lh         $v0, %lo(D_80046F26)($at)
    /* 1CDB4 8002C5B4 00000000 */  nop
    /* 1CDB8 8002C5B8 3000A2AF */  sw         $v0, 0x30($sp)
  .L8002C5BC:
    /* 1CDBC 8002C5BC 80101200 */  sll        $v0, $s2, 2
    /* 1CDC0 8002C5C0 21105200 */  addu       $v0, $v0, $s2
    /* 1CDC4 8002C5C4 80100200 */  sll        $v0, $v0, 2
    /* 1CDC8 8002C5C8 0480013C */  lui        $at, %hi(D_80046F28)
    /* 1CDCC 8002C5CC 21082200 */  addu       $at, $at, $v0
    /* 1CDD0 8002C5D0 286F2290 */  lbu        $v0, %lo(D_80046F28)($at)
    /* 1CDD4 8002C5D4 00000000 */  nop
    /* 1CDD8 8002C5D8 3800A2AF */  sw         $v0, 0x38($sp)
    /* 1CDDC 8002C5DC 21380000 */  addu       $a3, $zero, $zero
    /* 1CDE0 8002C5E0 00006292 */  lbu        $v0, 0x0($s3)
    /* 1CDE4 8002C5E4 00000000 */  nop
    /* 1CDE8 8002C5E8 61004010 */  beqz       $v0, .L8002C770
    /* 1CDEC 8002C5EC 21206002 */   addu      $a0, $s3, $zero
    /* 1CDF0 8002C5F0 5F00E016 */  bnez       $s7, .L8002C770
    /* 1CDF4 8002C5F4 00000000 */   nop
    /* 1CDF8 8002C5F8 80B01200 */  sll        $s6, $s2, 2
    /* 1CDFC 8002C5FC 21B0D202 */  addu       $s6, $s6, $s2
  .L8002C600:
    /* 1CE00 8002C600 00008390 */  lbu        $v1, 0x0($a0)
    /* 1CE04 8002C604 0D000224 */  addiu      $v0, $zero, 0xD
    /* 1CE08 8002C608 0D006210 */  beq        $v1, $v0, .L8002C640
    /* 1CE0C 8002C60C 21280000 */   addu      $a1, $zero, $zero
    /* 1CE10 8002C610 0E006228 */  slti       $v0, $v1, 0xE
    /* 1CE14 8002C614 05004010 */  beqz       $v0, .L8002C62C
    /* 1CE18 8002C618 0A000224 */   addiu     $v0, $zero, 0xA
    /* 1CE1C 8002C61C 0A006210 */  beq        $v1, $v0, .L8002C648
    /* 1CE20 8002C620 00000000 */   nop
    /* 1CE24 8002C624 96B10008 */  j          .L8002C658
    /* 1CE28 8002C628 0100E724 */   addiu     $a3, $a3, 0x1
  .L8002C62C:
    /* 1CE2C 8002C62C 20000224 */  addiu      $v0, $zero, 0x20
    /* 1CE30 8002C630 08006214 */  bne        $v1, $v0, .L8002C654
    /* 1CE34 8002C634 00000000 */   nop
    /* 1CE38 8002C638 94B10008 */  j          .L8002C650
    /* 1CE3C 8002C63C 5800A4AF */   sw        $a0, 0x58($sp)
  .L8002C640:
    /* 1CE40 8002C640 95B10008 */  j          .L8002C654
    /* 1CE44 8002C644 01001724 */   addiu     $s7, $zero, 0x1
  .L8002C648:
    /* 1CE48 8002C648 01000524 */  addiu      $a1, $zero, 0x1
    /* 1CE4C 8002C64C 5800A4AF */  sw         $a0, 0x58($sp)
  .L8002C650:
    /* 1CE50 8002C650 4000A7AF */  sw         $a3, 0x40($sp)
  .L8002C654:
    /* 1CE54 8002C654 0100E724 */  addiu      $a3, $a3, 0x1
  .L8002C658:
    /* 1CE58 8002C658 4800A98F */  lw         $t1, 0x48($sp)
    /* 1CE5C 8002C65C 00000000 */  nop
    /* 1CE60 8002C660 2A102701 */  slt        $v0, $t1, $a3
    /* 1CE64 8002C664 03004014 */  bnez       $v0, .L8002C674
    /* 1CE68 8002C668 01008424 */   addiu     $a0, $a0, 0x1
    /* 1CE6C 8002C66C 3A00A010 */  beqz       $a1, .L8002C758
    /* 1CE70 8002C670 00000000 */   nop
  .L8002C674:
    /* 1CE74 8002C674 80201600 */  sll        $a0, $s6, 2
    /* 1CE78 8002C678 80101100 */  sll        $v0, $s1, 2
    /* 1CE7C 8002C67C 21105100 */  addu       $v0, $v0, $s1
    /* 1CE80 8002C680 80800200 */  sll        $s0, $v0, 2
    /* 1CE84 8002C684 5000A88F */  lw         $t0, 0x50($sp)
    /* 1CE88 8002C688 00000000 */  nop
    /* 1CE8C 8002C68C 1000A8AF */  sw         $t0, 0x10($sp)
    /* 1CE90 8002C690 0480093C */  lui        $t1, %hi(D_80046F1C)
    /* 1CE94 8002C694 1C6F2925 */  addiu      $t1, $t1, %lo(D_80046F1C)
    /* 1CE98 8002C698 21208900 */  addu       $a0, $a0, $t1
    /* 1CE9C 8002C69C 21280902 */  addu       $a1, $s0, $t1
    /* 1CEA0 8002C6A0 4000A78F */  lw         $a3, 0x40($sp)
    /* 1CEA4 8002C6A4 CBB0000C */  jal        func_8002C32C
    /* 1CEA8 8002C6A8 21306002 */   addu      $a2, $s3, $zero
    /* 1CEAC 8002C6AC 0D008012 */  beqz       $s4, .L8002C6E4
    /* 1CEB0 8002C6B0 00000000 */   nop
    /* 1CEB4 8002C6B4 3000A88F */  lw         $t0, 0x30($sp)
    /* 1CEB8 8002C6B8 00000000 */  nop
    /* 1CEBC 8002C6BC 21101501 */  addu       $v0, $t0, $s5
    /* 1CEC0 8002C6C0 0480013C */  lui        $at, %hi(D_80046F26)
    /* 1CEC4 8002C6C4 21083000 */  addu       $at, $at, $s0
    /* 1CEC8 8002C6C8 266F22A4 */  sh         $v0, %lo(D_80046F26)($at)
    /* 1CECC 8002C6CC 3800A98F */  lw         $t1, 0x38($sp)
    /* 1CED0 8002C6D0 00000000 */  nop
    /* 1CED4 8002C6D4 21103501 */  addu       $v0, $t1, $s5
    /* 1CED8 8002C6D8 0480013C */  lui        $at, %hi(D_80046F28)
    /* 1CEDC 8002C6DC 21083000 */  addu       $at, $at, $s0
    /* 1CEE0 8002C6E0 286F22A0 */  sb         $v0, %lo(D_80046F28)($at)
  .L8002C6E4:
    /* 1CEE4 8002C6E4 2000A88F */  lw         $t0, 0x20($sp)
    /* 1CEE8 8002C6E8 00000000 */  nop
    /* 1CEEC 8002C6EC 0C000011 */  beqz       $t0, .L8002C720
    /* 1CEF0 8002C6F0 00000000 */   nop
    /* 1CEF4 8002C6F4 0580043C */  lui        $a0, %hi(D_800564A8)
    /* 1CEF8 8002C6F8 A8648424 */  addiu      $a0, $a0, %lo(D_800564A8)
    /* 1CEFC 8002C6FC 5CAD000C */  jal        func_8002B570
    /* 1CF00 8002C700 21282002 */   addu      $a1, $s1, $zero
    /* 1CF04 8002C704 80201100 */  sll        $a0, $s1, 2
    /* 1CF08 8002C708 21209100 */  addu       $a0, $a0, $s1
    /* 1CF0C 8002C70C 80200400 */  sll        $a0, $a0, 2
    /* 1CF10 8002C710 0480093C */  lui        $t1, %hi(D_80046F1C)
    /* 1CF14 8002C714 1C6F2925 */  addiu      $t1, $t1, %lo(D_80046F1C)
    /* 1CF18 8002C718 62AD000C */  jal        func_8002B588
    /* 1CF1C 8002C71C 21208900 */   addu      $a0, $a0, $t1
  .L8002C720:
    /* 1CF20 8002C720 5800A88F */  lw         $t0, 0x58($sp)
    /* 1CF24 8002C724 00000000 */  nop
    /* 1CF28 8002C728 01000425 */  addiu      $a0, $t0, 0x1
    /* 1CF2C 8002C72C 5800A4AF */  sw         $a0, 0x58($sp)
    /* 1CF30 8002C730 21988000 */  addu       $s3, $a0, $zero
    /* 1CF34 8002C734 21380000 */  addu       $a3, $zero, $zero
    /* 1CF38 8002C738 01003126 */  addiu      $s1, $s1, 0x1
    /* 1CF3C 8002C73C 0100DE27 */  addiu      $fp, $fp, 0x1
    /* 1CF40 8002C740 01001424 */  addiu      $s4, $zero, 0x1
    /* 1CF44 8002C744 4004222A */  slti       $v0, $s1, 0x440
    /* 1CF48 8002C748 03004014 */  bnez       $v0, .L8002C758
    /* 1CF4C 8002C74C 1000B526 */   addiu     $s5, $s5, 0x10
    /* 1CF50 8002C750 3F041124 */  addiu      $s1, $zero, 0x43F
    /* 1CF54 8002C754 01001724 */  addiu      $s7, $zero, 0x1
  .L8002C758:
    /* 1CF58 8002C758 00008290 */  lbu        $v0, 0x0($a0)
    /* 1CF5C 8002C75C 00000000 */  nop
    /* 1CF60 8002C760 03004010 */  beqz       $v0, .L8002C770
    /* 1CF64 8002C764 00000000 */   nop
    /* 1CF68 8002C768 A5FFE012 */  beqz       $s7, .L8002C600
    /* 1CF6C 8002C76C 00000000 */   nop
  .L8002C770:
    /* 1CF70 8002C770 80201200 */  sll        $a0, $s2, 2
    /* 1CF74 8002C774 21209200 */  addu       $a0, $a0, $s2
    /* 1CF78 8002C778 80200400 */  sll        $a0, $a0, 2
    /* 1CF7C 8002C77C 80101100 */  sll        $v0, $s1, 2
    /* 1CF80 8002C780 21105100 */  addu       $v0, $v0, $s1
    /* 1CF84 8002C784 80800200 */  sll        $s0, $v0, 2
    /* 1CF88 8002C788 5000A98F */  lw         $t1, 0x50($sp)
    /* 1CF8C 8002C78C 00000000 */  nop
    /* 1CF90 8002C790 1000A9AF */  sw         $t1, 0x10($sp)
    /* 1CF94 8002C794 0480083C */  lui        $t0, %hi(D_80046F1C)
    /* 1CF98 8002C798 1C6F0825 */  addiu      $t0, $t0, %lo(D_80046F1C)
    /* 1CF9C 8002C79C 21208800 */  addu       $a0, $a0, $t0
    /* 1CFA0 8002C7A0 21280802 */  addu       $a1, $s0, $t0
    /* 1CFA4 8002C7A4 CBB0000C */  jal        func_8002C32C
    /* 1CFA8 8002C7A8 21306002 */   addu      $a2, $s3, $zero
    /* 1CFAC 8002C7AC 0D008012 */  beqz       $s4, .L8002C7E4
    /* 1CFB0 8002C7B0 00000000 */   nop
    /* 1CFB4 8002C7B4 3000A98F */  lw         $t1, 0x30($sp)
    /* 1CFB8 8002C7B8 00000000 */  nop
    /* 1CFBC 8002C7BC 21103501 */  addu       $v0, $t1, $s5
    /* 1CFC0 8002C7C0 0480013C */  lui        $at, %hi(D_80046F26)
    /* 1CFC4 8002C7C4 21083000 */  addu       $at, $at, $s0
    /* 1CFC8 8002C7C8 266F22A4 */  sh         $v0, %lo(D_80046F26)($at)
    /* 1CFCC 8002C7CC 3800A88F */  lw         $t0, 0x38($sp)
    /* 1CFD0 8002C7D0 00000000 */  nop
    /* 1CFD4 8002C7D4 21101501 */  addu       $v0, $t0, $s5
    /* 1CFD8 8002C7D8 0480013C */  lui        $at, %hi(D_80046F28)
    /* 1CFDC 8002C7DC 21083000 */  addu       $at, $at, $s0
    /* 1CFE0 8002C7E0 286F22A0 */  sb         $v0, %lo(D_80046F28)($at)
  .L8002C7E4:
    /* 1CFE4 8002C7E4 2000A98F */  lw         $t1, 0x20($sp)
    /* 1CFE8 8002C7E8 00000000 */  nop
    /* 1CFEC 8002C7EC 0C002011 */  beqz       $t1, .L8002C820
    /* 1CFF0 8002C7F0 00000000 */   nop
    /* 1CFF4 8002C7F4 0580043C */  lui        $a0, %hi(D_800564B0)
    /* 1CFF8 8002C7F8 B0648424 */  addiu      $a0, $a0, %lo(D_800564B0)
    /* 1CFFC 8002C7FC 5CAD000C */  jal        func_8002B570
    /* 1D000 8002C800 21282002 */   addu      $a1, $s1, $zero
    /* 1D004 8002C804 80201100 */  sll        $a0, $s1, 2
    /* 1D008 8002C808 21209100 */  addu       $a0, $a0, $s1
    /* 1D00C 8002C80C 80200400 */  sll        $a0, $a0, 2
    /* 1D010 8002C810 0480083C */  lui        $t0, %hi(D_80046F1C)
    /* 1D014 8002C814 1C6F0825 */  addiu      $t0, $t0, %lo(D_80046F1C)
    /* 1D018 8002C818 62AD000C */  jal        func_8002B588
    /* 1D01C 8002C81C 21208800 */   addu      $a0, $a0, $t0
  .L8002C820:
    /* 1D020 8002C820 01003126 */  addiu      $s1, $s1, 0x1
    /* 1D024 8002C824 4004222A */  slti       $v0, $s1, 0x440
    /* 1D028 8002C828 03004014 */  bnez       $v0, .L8002C838
    /* 1D02C 8002C82C 01005226 */   addiu     $s2, $s2, 0x1
    /* 1D030 8002C830 3F041124 */  addiu      $s1, $zero, 0x43F
    /* 1D034 8002C834 01001724 */  addiu      $s7, $zero, 0x1
  .L8002C838:
    /* 1D038 8002C838 2800A98F */  lw         $t1, 0x28($sp)
    /* 1D03C 8002C83C 00000000 */  nop
    /* 1D040 8002C840 01002925 */  addiu      $t1, $t1, 0x1
    /* 1D044 8002C844 2800A9AF */  sw         $t1, 0x28($sp)
    /* 1D048 8002C848 1800A88F */  lw         $t0, 0x18($sp)
    /* 1D04C 8002C84C 00000000 */  nop
    /* 1D050 8002C850 2A102801 */  slt        $v0, $t1, $t0
    /* 1D054 8002C854 03004010 */  beqz       $v0, .L8002C864
    /* 1D058 8002C858 0100DE27 */   addiu     $fp, $fp, 0x1
    /* 1D05C 8002C85C 0EFFE012 */  beqz       $s7, .L8002C498
    /* 1D060 8002C860 80101200 */   sll       $v0, $s2, 2
  .L8002C864:
    /* 1D064 8002C864 2000A98F */  lw         $t1, 0x20($sp)
    /* 1D068 8002C868 00000000 */  nop
    /* 1D06C 8002C86C 06002011 */  beqz       $t1, .L8002C888
    /* 1D070 8002C870 0E00C22B */   slti      $v0, $fp, 0xE
    /* 1D074 8002C874 0180043C */  lui        $a0, %hi(D_800173D8)
    /* 1D078 8002C878 D8738424 */  addiu      $a0, $a0, %lo(D_800173D8)
    /* 1D07C 8002C87C 5CAD000C */  jal        func_8002B570
    /* 1D080 8002C880 2128C003 */   addu      $a1, $fp, $zero
    /* 1D084 8002C884 0E00C22B */  slti       $v0, $fp, 0xE
  .L8002C888:
    /* 1D088 8002C888 03004014 */  bnez       $v0, .L8002C898
    /* 1D08C 8002C88C 2110C003 */   addu      $v0, $fp, $zero
    /* 1D090 8002C890 0D001E24 */  addiu      $fp, $zero, 0xD
    /* 1D094 8002C894 2110C003 */  addu       $v0, $fp, $zero
  .L8002C898:
    /* 1D098 8002C898 8C00BF8F */  lw         $ra, 0x8C($sp)
    /* 1D09C 8002C89C 8800BE8F */  lw         $fp, 0x88($sp)
    /* 1D0A0 8002C8A0 8400B78F */  lw         $s7, 0x84($sp)
    /* 1D0A4 8002C8A4 8000B68F */  lw         $s6, 0x80($sp)
    /* 1D0A8 8002C8A8 7C00B58F */  lw         $s5, 0x7C($sp)
    /* 1D0AC 8002C8AC 7800B48F */  lw         $s4, 0x78($sp)
    /* 1D0B0 8002C8B0 7400B38F */  lw         $s3, 0x74($sp)
    /* 1D0B4 8002C8B4 7000B28F */  lw         $s2, 0x70($sp)
    /* 1D0B8 8002C8B8 6C00B18F */  lw         $s1, 0x6C($sp)
    /* 1D0BC 8002C8BC 6800B08F */  lw         $s0, 0x68($sp)
    /* 1D0C0 8002C8C0 9000BD27 */  addiu      $sp, $sp, 0x90
    /* 1D0C4 8002C8C4 0800E003 */  jr         $ra
    /* 1D0C8 8002C8C8 00000000 */   nop
endlabel func_8002C444
