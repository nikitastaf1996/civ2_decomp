.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007E6AC, 0x108

glabel func_8007E6AC
    /* 6EEAC 8007E6AC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6EEB0 8007E6B0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 6EEB4 8007E6B4 3B008004 */  bltz       $a0, .L8007E7A4
    /* 6EEB8 8007E6B8 21380000 */   addu      $a3, $zero, $zero
    /* 6EEBC 8007E6BC 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 6EEC0 8007E6C0 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 6EEC4 8007E6C4 00000000 */  nop
    /* 6EEC8 8007E6C8 2A108200 */  slt        $v0, $a0, $v0
    /* 6EECC 8007E6CC 35004010 */  beqz       $v0, .L8007E7A4
    /* 6EED0 8007E6D0 00000000 */   nop
    /* 6EED4 8007E6D4 40100400 */  sll        $v0, $a0, 1
    /* 6EED8 8007E6D8 21104400 */  addu       $v0, $v0, $a0
    /* 6EEDC 8007E6DC 80100200 */  sll        $v0, $v0, 2
    /* 6EEE0 8007E6E0 21104400 */  addu       $v0, $v0, $a0
    /* 6EEE4 8007E6E4 40100200 */  sll        $v0, $v0, 1
    /* 6EEE8 8007E6E8 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6EEEC 8007E6EC 21082200 */  addu       $at, $at, $v0
    /* 6EEF0 8007E6F0 B4D62684 */  lh         $a2, %lo(D_8010D6B4)($at)
    /* 6EEF4 8007E6F4 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6EEF8 8007E6F8 21082200 */  addu       $at, $at, $v0
    /* 6EEFC 8007E6FC B6D62384 */  lh         $v1, %lo(D_8010D6B6)($at)
    /* 6EF00 8007E700 00000000 */  nop
    /* 6EF04 8007E704 0D006004 */  bltz       $v1, .L8007E73C
    /* 6EF08 8007E708 21280000 */   addu      $a1, $zero, $zero
    /* 6EF0C 8007E70C 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6EF10 8007E710 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6EF14 8007E714 00000000 */  nop
    /* 6EF18 8007E718 2A106200 */  slt        $v0, $v1, $v0
    /* 6EF1C 8007E71C 07004010 */  beqz       $v0, .L8007E73C
    /* 6EF20 8007E720 00000000 */   nop
    /* 6EF24 8007E724 0500C004 */  bltz       $a2, .L8007E73C
    /* 6EF28 8007E728 00000000 */   nop
    /* 6EF2C 8007E72C 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6EF30 8007E730 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6EF34 8007E734 00000000 */  nop
    /* 6EF38 8007E738 2A28C200 */  slt        $a1, $a2, $v0
  .L8007E73C:
    /* 6EF3C 8007E73C 1900A010 */  beqz       $a1, .L8007E7A4
    /* 6EF40 8007E740 00000000 */   nop
    /* 6EF44 8007E744 40100400 */  sll        $v0, $a0, 1
    /* 6EF48 8007E748 21104400 */  addu       $v0, $v0, $a0
    /* 6EF4C 8007E74C 80100200 */  sll        $v0, $v0, 2
    /* 6EF50 8007E750 21104400 */  addu       $v0, $v0, $a0
    /* 6EF54 8007E754 40280200 */  sll        $a1, $v0, 1
    /* 6EF58 8007E758 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 6EF5C 8007E75C 21082500 */  addu       $at, $at, $a1
    /* 6EF60 8007E760 BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* 6EF64 8007E764 1280023C */  lui        $v0, %hi(D_8011A26F)
    /* 6EF68 8007E768 6FA24290 */  lbu        $v0, %lo(D_8011A26F)($v0)
    /* 6EF6C 8007E76C 00000000 */  nop
    /* 6EF70 8007E770 0C006214 */  bne        $v1, $v0, .L8007E7A4
    /* 6EF74 8007E774 21380000 */   addu      $a3, $zero, $zero
    /* 6EF78 8007E778 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6EF7C 8007E77C 21082500 */  addu       $at, $at, $a1
    /* 6EF80 8007E780 C3D62290 */  lbu        $v0, %lo(D_8010D6C3)($at)
    /* 6EF84 8007E784 00000000 */  nop
    /* 6EF88 8007E788 FEFF4224 */  addiu      $v0, $v0, -0x2
    /* 6EF8C 8007E78C 0200422C */  sltiu      $v0, $v0, 0x2
    /* 6EF90 8007E790 04004014 */  bnez       $v0, .L8007E7A4
    /* 6EF94 8007E794 00000000 */   nop
    /* 6EF98 8007E798 A8ED010C */  jal        func_8007B6A0
    /* 6EF9C 8007E79C 00000000 */   nop
    /* 6EFA0 8007E7A0 2B380200 */  sltu       $a3, $zero, $v0
  .L8007E7A4:
    /* 6EFA4 8007E7A4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6EFA8 8007E7A8 2110E000 */  addu       $v0, $a3, $zero
    /* 6EFAC 8007E7AC 0800E003 */  jr         $ra
    /* 6EFB0 8007E7B0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8007E6AC
