.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009ADF8, 0x28C

glabel func_8009ADF8
    /* 8B5F8 8009ADF8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 8B5FC 8009ADFC 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 8B600 8009AE00 2800B6AF */  sw         $s6, 0x28($sp)
    /* 8B604 8009AE04 2400B5AF */  sw         $s5, 0x24($sp)
    /* 8B608 8009AE08 2000B4AF */  sw         $s4, 0x20($sp)
    /* 8B60C 8009AE0C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8B610 8009AE10 1800B2AF */  sw         $s2, 0x18($sp)
    /* 8B614 8009AE14 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8B618 8009AE18 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8B61C 8009AE1C 21A88000 */  addu       $s5, $a0, $zero
    /* 8B620 8009AE20 21B0A000 */  addu       $s6, $a1, $zero
    /* 8B624 8009AE24 2190E000 */  addu       $s2, $a3, $zero
    /* 8B628 8009AE28 4000B38F */  lw         $s3, 0x40($sp)
    /* 8B62C 8009AE2C 4A02A286 */  lh         $v0, 0x24A($s5)
    /* 8B630 8009AE30 00000000 */  nop
    /* 8B634 8009AE34 23A0C200 */  subu       $s4, $a2, $v0
    /* 8B638 8009AE38 0D006006 */  bltz       $s3, .L8009AE70
    /* 8B63C 8009AE3C 21180000 */   addu      $v1, $zero, $zero
    /* 8B640 8009AE40 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 8B644 8009AE44 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 8B648 8009AE48 00000000 */  nop
    /* 8B64C 8009AE4C 2A106202 */  slt        $v0, $s3, $v0
    /* 8B650 8009AE50 07004010 */  beqz       $v0, .L8009AE70
    /* 8B654 8009AE54 00000000 */   nop
    /* 8B658 8009AE58 05004006 */  bltz       $s2, .L8009AE70
    /* 8B65C 8009AE5C 00000000 */   nop
    /* 8B660 8009AE60 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 8B664 8009AE64 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 8B668 8009AE68 00000000 */  nop
    /* 8B66C 8009AE6C 2A184202 */  slt        $v1, $s2, $v0
  .L8009AE70:
    /* 8B670 8009AE70 79006010 */  beqz       $v1, .L8009B058
    /* 8B674 8009AE74 21204002 */   addu      $a0, $s2, $zero
    /* 8B678 8009AE78 04EE010C */  jal        func_8007B810
    /* 8B67C 8009AE7C 21286002 */   addu      $a1, $s3, $zero
    /* 8B680 8009AE80 1680033C */  lui        $v1, %hi(D_80158EE0)
    /* 8B684 8009AE84 E08E638C */  lw         $v1, %lo(D_80158EE0)($v1)
    /* 8B688 8009AE88 00000000 */  nop
    /* 8B68C 8009AE8C 19006004 */  bltz       $v1, .L8009AEF4
    /* 8B690 8009AE90 21804000 */   addu      $s0, $v0, $zero
    /* 8B694 8009AE94 1680023C */  lui        $v0, %hi(D_80158ED8)
    /* 8B698 8009AE98 D88E428C */  lw         $v0, %lo(D_80158ED8)($v0)
    /* 8B69C 8009AE9C 00000000 */  nop
    /* 8B6A0 8009AEA0 15004216 */  bne        $s2, $v0, .L8009AEF8
    /* 8B6A4 8009AEA4 21204002 */   addu      $a0, $s2, $zero
    /* 8B6A8 8009AEA8 1680023C */  lui        $v0, %hi(D_80158EDC)
    /* 8B6AC 8009AEAC DC8E428C */  lw         $v0, %lo(D_80158EDC)($v0)
    /* 8B6B0 8009AEB0 00000000 */  nop
    /* 8B6B4 8009AEB4 10006216 */  bne        $s3, $v0, .L8009AEF8
    /* 8B6B8 8009AEB8 00000000 */   nop
    /* 8B6BC 8009AEBC 61000312 */  beq        $s0, $v1, .L8009B044
    /* 8B6C0 8009AEC0 00000000 */   nop
  .L8009AEC4:
    /* 8B6C4 8009AEC4 60000006 */  bltz       $s0, .L8009B048
    /* 8B6C8 8009AEC8 2120A002 */   addu      $a0, $s5, $zero
    /* 8B6CC 8009AECC BFED010C */  jal        func_8007B6FC
    /* 8B6D0 8009AED0 21200002 */   addu      $a0, $s0, $zero
    /* 8B6D4 8009AED4 21804000 */  addu       $s0, $v0, $zero
    /* 8B6D8 8009AED8 1680023C */  lui        $v0, %hi(D_80158EE0)
    /* 8B6DC 8009AEDC E08E428C */  lw         $v0, %lo(D_80158EE0)($v0)
    /* 8B6E0 8009AEE0 00000000 */  nop
    /* 8B6E4 8009AEE4 F7FF0216 */  bne        $s0, $v0, .L8009AEC4
    /* 8B6E8 8009AEE8 00000000 */   nop
    /* 8B6EC 8009AEEC 126C0208 */  j          .L8009B048
    /* 8B6F0 8009AEF0 2120A002 */   addu      $a0, $s5, $zero
  .L8009AEF4:
    /* 8B6F4 8009AEF4 21204002 */  addu       $a0, $s2, $zero
  .L8009AEF8:
    /* 8B6F8 8009AEF8 1262020C */  jal        func_80098848
    /* 8B6FC 8009AEFC 21286002 */   addu      $a1, $s3, $zero
    /* 8B700 8009AF00 2C004004 */  bltz       $v0, .L8009AFB4
    /* 8B704 8009AF04 01000224 */   addiu     $v0, $zero, 0x1
    /* 8B708 8009AF08 1280033C */  lui        $v1, %hi(D_8011ACBC)
    /* 8B70C 8009AF0C BCAC638C */  lw         $v1, %lo(D_8011ACBC)($v1)
    /* 8B710 8009AF10 00000000 */  nop
    /* 8B714 8009AF14 50006214 */  bne        $v1, $v0, .L8009B058
    /* 8B718 8009AF18 00000000 */   nop
    /* 8B71C 8009AF1C 1680023C */  lui        $v0, %hi(D_80158872)
    /* 8B720 8009AF20 72884290 */  lbu        $v0, %lo(D_80158872)($v0)
    /* 8B724 8009AF24 00000000 */  nop
    /* 8B728 8009AF28 4B004010 */  beqz       $v0, .L8009B058
    /* 8B72C 8009AF2C 00000000 */   nop
    /* 8B730 8009AF30 1280023C */  lui        $v0, %hi(D_8011A268)
    /* 8B734 8009AF34 68A24284 */  lh         $v0, %lo(D_8011A268)($v0)
    /* 8B738 8009AF38 00000000 */  nop
    /* 8B73C 8009AF3C 0B000212 */  beq        $s0, $v0, .L8009AF6C
    /* 8B740 8009AF40 00000000 */   nop
  .L8009AF44:
    /* 8B744 8009AF44 44000006 */  bltz       $s0, .L8009B058
    /* 8B748 8009AF48 00000000 */   nop
    /* 8B74C 8009AF4C BFED010C */  jal        func_8007B6FC
    /* 8B750 8009AF50 21200002 */   addu      $a0, $s0, $zero
    /* 8B754 8009AF54 21804000 */  addu       $s0, $v0, $zero
    /* 8B758 8009AF58 1280023C */  lui        $v0, %hi(D_8011A268)
    /* 8B75C 8009AF5C 68A24284 */  lh         $v0, %lo(D_8011A268)($v0)
    /* 8B760 8009AF60 00000000 */  nop
    /* 8B764 8009AF64 F7FF0216 */  bne        $s0, $v0, .L8009AF44
    /* 8B768 8009AF68 00000000 */   nop
  .L8009AF6C:
    /* 8B76C 8009AF6C 3A000006 */  bltz       $s0, .L8009B058
    /* 8B770 8009AF70 00000000 */   nop
    /* 8B774 8009AF74 ABF9010C */  jal        func_8007E6AC
    /* 8B778 8009AF78 21200002 */   addu      $a0, $s0, $zero
    /* 8B77C 8009AF7C 36004010 */  beqz       $v0, .L8009B058
    /* 8B780 8009AF80 40101000 */   sll       $v0, $s0, 1
    /* 8B784 8009AF84 21105000 */  addu       $v0, $v0, $s0
    /* 8B788 8009AF88 80100200 */  sll        $v0, $v0, 2
    /* 8B78C 8009AF8C 21105000 */  addu       $v0, $v0, $s0
    /* 8B790 8009AF90 40100200 */  sll        $v0, $v0, 1
    /* 8B794 8009AF94 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 8B798 8009AF98 21082200 */  addu       $at, $at, $v0
    /* 8B79C 8009AF9C C3D62290 */  lbu        $v0, %lo(D_8010D6C3)($at)
    /* 8B7A0 8009AFA0 00000000 */  nop
    /* 8B7A4 8009AFA4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8B7A8 8009AFA8 0200422C */  sltiu      $v0, $v0, 0x2
    /* 8B7AC 8009AFAC 2A004014 */  bnez       $v0, .L8009B058
    /* 8B7B0 8009AFB0 00000000 */   nop
  .L8009AFB4:
    /* 8B7B4 8009AFB4 1280113C */  lui        $s1, %hi(D_8011ACB4)
    /* 8B7B8 8009AFB8 B4AC3126 */  addiu      $s1, $s1, %lo(D_8011ACB4)
    /* 8B7BC 8009AFBC 21204002 */  addu       $a0, $s2, $zero
    /* 8B7C0 8009AFC0 0000268E */  lw         $a2, 0x0($s1)
    /* 8B7C4 8009AFC4 A161020C */  jal        func_80098684
    /* 8B7C8 8009AFC8 21286002 */   addu      $a1, $s3, $zero
    /* 8B7CC 8009AFCC 21204000 */  addu       $a0, $v0, $zero
    /* 8B7D0 8009AFD0 40101000 */  sll        $v0, $s0, 1
    /* 8B7D4 8009AFD4 21105000 */  addu       $v0, $v0, $s0
    /* 8B7D8 8009AFD8 80100200 */  sll        $v0, $v0, 2
    /* 8B7DC 8009AFDC 21105000 */  addu       $v0, $v0, $s0
    /* 8B7E0 8009AFE0 40280200 */  sll        $a1, $v0, 1
    /* 8B7E4 8009AFE4 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 8B7E8 8009AFE8 21082500 */  addu       $at, $at, $a1
    /* 8B7EC 8009AFEC BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* 8B7F0 8009AFF0 00002292 */  lbu        $v0, 0x0($s1)
    /* 8B7F4 8009AFF4 00000000 */  nop
    /* 8B7F8 8009AFF8 0B006210 */  beq        $v1, $v0, .L8009B028
    /* 8B7FC 8009AFFC 00000000 */   nop
    /* 8B800 8009B000 08008010 */  beqz       $a0, .L8009B024
    /* 8B804 8009B004 21100000 */   addu      $v0, $zero, $zero
    /* 8B808 8009B008 1180013C */  lui        $at, %hi(D_8010D6BD)
    /* 8B80C 8009B00C 21082500 */  addu       $at, $at, $a1
    /* 8B810 8009B010 BDD62290 */  lbu        $v0, %lo(D_8010D6BD)($at)
    /* 8B814 8009B014 0000238E */  lw         $v1, 0x0($s1)
    /* 8B818 8009B018 00000000 */  nop
    /* 8B81C 8009B01C 07106200 */  srav       $v0, $v0, $v1
    /* 8B820 8009B020 01004230 */  andi       $v0, $v0, 0x1
  .L8009B024:
    /* 8B824 8009B024 21204000 */  addu       $a0, $v0, $zero
  .L8009B028:
    /* 8B828 8009B028 06008014 */  bnez       $a0, .L8009B044
    /* 8B82C 8009B02C 00000000 */   nop
    /* 8B830 8009B030 1280023C */  lui        $v0, %hi(D_8011A271)
    /* 8B834 8009B034 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* 8B838 8009B038 00000000 */  nop
    /* 8B83C 8009B03C 06004010 */  beqz       $v0, .L8009B058
    /* 8B840 8009B040 00000000 */   nop
  .L8009B044:
    /* 8B844 8009B044 2120A002 */  addu       $a0, $s5, $zero
  .L8009B048:
    /* 8B848 8009B048 21280002 */  addu       $a1, $s0, $zero
    /* 8B84C 8009B04C 2130C002 */  addu       $a2, $s6, $zero
    /* 8B850 8009B050 276B020C */  jal        func_8009AC9C
    /* 8B854 8009B054 21388002 */   addu      $a3, $s4, $zero
  .L8009B058:
    /* 8B858 8009B058 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 8B85C 8009B05C 2800B68F */  lw         $s6, 0x28($sp)
    /* 8B860 8009B060 2400B58F */  lw         $s5, 0x24($sp)
    /* 8B864 8009B064 2000B48F */  lw         $s4, 0x20($sp)
    /* 8B868 8009B068 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 8B86C 8009B06C 1800B28F */  lw         $s2, 0x18($sp)
    /* 8B870 8009B070 1400B18F */  lw         $s1, 0x14($sp)
    /* 8B874 8009B074 1000B08F */  lw         $s0, 0x10($sp)
    /* 8B878 8009B078 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 8B87C 8009B07C 0800E003 */  jr         $ra
    /* 8B880 8009B080 00000000 */   nop
endlabel func_8009ADF8
