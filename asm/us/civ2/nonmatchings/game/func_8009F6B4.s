.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009F6B4, 0x100

glabel func_8009F6B4
    /* 8FEB4 8009F6B4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8FEB8 8009F6B8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8FEBC 8009F6BC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8FEC0 8009F6C0 1680023C */  lui        $v0, %hi(D_80158500)
    /* 8FEC4 8009F6C4 0085428C */  lw         $v0, %lo(D_80158500)($v0)
    /* 8FEC8 8009F6C8 00000000 */  nop
    /* 8FECC 8009F6CC 34004014 */  bnez       $v0, .L8009F7A0
    /* 8FED0 8009F6D0 00000000 */   nop
    /* 8FED4 8009F6D4 35DE030C */  jal        func_800F78D4
    /* 8FED8 8009F6D8 00000000 */   nop
    /* 8FEDC 8009F6DC 02004014 */  bnez       $v0, .L8009F6E8
    /* 8FEE0 8009F6E0 D4FF5024 */   addiu     $s0, $v0, -0x2C
    /* 8FEE4 8009F6E4 21800000 */  addu       $s0, $zero, $zero
  .L8009F6E8:
    /* 8FEE8 8009F6E8 637D020C */  jal        func_8009F58C
    /* 8FEEC 8009F6EC 00000000 */   nop
    /* 8FEF0 8009F6F0 1280033C */  lui        $v1, %hi(D_8011ACBC)
    /* 8FEF4 8009F6F4 BCAC638C */  lw         $v1, %lo(D_8011ACBC)($v1)
    /* 8FEF8 8009F6F8 01000224 */  addiu      $v0, $zero, 0x1
    /* 8FEFC 8009F6FC 28006214 */  bne        $v1, $v0, .L8009F7A0
    /* 8FF00 8009F700 00000000 */   nop
    /* 8FF04 8009F704 397E020C */  jal        func_8009F8E4
    /* 8FF08 8009F708 00000000 */   nop
    /* 8FF0C 8009F70C 24004014 */  bnez       $v0, .L8009F7A0
    /* 8FF10 8009F710 00000000 */   nop
    /* 8FF14 8009F714 28020286 */  lh         $v0, 0x228($s0)
    /* 8FF18 8009F718 00000000 */  nop
    /* 8FF1C 8009F71C 700582AF */  sw         $v0, %gp_rel(D_80158A48)($gp)
    /* 8FF20 8009F720 C912040C */  jal        func_80104B24
    /* 8FF24 8009F724 10000424 */   addiu     $a0, $zero, 0x10
    /* 8FF28 8009F728 02120200 */  srl        $v0, $v0, 8
    /* 8FF2C 8009F72C FF004230 */  andi       $v0, $v0, 0xFF
    /* 8FF30 8009F730 14004010 */  beqz       $v0, .L8009F784
    /* 8FF34 8009F734 90010524 */   addiu     $a1, $zero, 0x190
    /* 8FF38 8009F738 7005828F */  lw         $v0, %gp_rel(D_80158A48)($gp)
    /* 8FF3C 8009F73C 00000000 */  nop
    /* 8FF40 8009F740 40200200 */  sll        $a0, $v0, 1
    /* 8FF44 8009F744 21208200 */  addu       $a0, $a0, $v0
    /* 8FF48 8009F748 80200400 */  sll        $a0, $a0, 2
    /* 8FF4C 8009F74C 23208200 */  subu       $a0, $a0, $v0
    /* 8FF50 8009F750 80210400 */  sll        $a0, $a0, 6
    /* 8FF54 8009F754 FE010224 */  addiu      $v0, $zero, 0x1FE
    /* 8FF58 8009F758 1280013C */  lui        $at, %hi(D_8011E990)
    /* 8FF5C 8009F75C 21082400 */  addu       $at, $at, $a0
    /* 8FF60 8009F760 90E922A4 */  sh         $v0, %lo(D_8011E990)($at)
    /* 8FF64 8009F764 1280023C */  lui        $v0, %hi(D_8011E758)
    /* 8FF68 8009F768 58E74224 */  addiu      $v0, $v0, %lo(D_8011E758)
    /* 8FF6C 8009F76C E9EA030C */  jal        func_800FABA4
    /* 8FF70 8009F770 21208200 */   addu      $a0, $a0, $v0
    /* 8FF74 8009F774 4F1B040C */  jal        func_80106D3C
    /* 8FF78 8009F778 21204000 */   addu      $a0, $v0, $zero
    /* 8FF7C 8009F77C E87D0208 */  j          .L8009F7A0
    /* 8FF80 8009F780 00000000 */   nop
  .L8009F784:
    /* 8FF84 8009F784 0A80043C */  lui        $a0, %hi(func_8009F630)
    /* 8FF88 8009F788 30F68424 */  addiu      $a0, $a0, %lo(func_8009F630)
    /* 8FF8C 8009F78C 5AF3030C */  jal        func_800FCD68
    /* 8FF90 8009F790 01000624 */   addiu     $a2, $zero, 0x1
    /* 8FF94 8009F794 00140200 */  sll        $v0, $v0, 16
    /* 8FF98 8009F798 03140200 */  sra        $v0, $v0, 16
    /* 8FF9C 8009F79C 6C0582AF */  sw         $v0, %gp_rel(D_80158A44)($gp)
  .L8009F7A0:
    /* 8FFA0 8009F7A0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8FFA4 8009F7A4 1000B08F */  lw         $s0, 0x10($sp)
    /* 8FFA8 8009F7A8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8FFAC 8009F7AC 0800E003 */  jr         $ra
    /* 8FFB0 8009F7B0 00000000 */   nop
endlabel func_8009F6B4
