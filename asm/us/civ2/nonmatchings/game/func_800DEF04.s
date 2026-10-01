.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DEF04, 0xAC

glabel func_800DEF04
    /* CF704 800DEF04 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* CF708 800DEF08 1400BFAF */  sw         $ra, 0x14($sp)
    /* CF70C 800DEF0C 1000B0AF */  sw         $s0, 0x10($sp)
    /* CF710 800DEF10 21808000 */  addu       $s0, $a0, $zero
    /* CF714 800DEF14 2120A000 */  addu       $a0, $a1, $zero
    /* CF718 800DEF18 14000224 */  addiu      $v0, $zero, 0x14
    /* CF71C 800DEF1C 0D008214 */  bne        $a0, $v0, .L800DEF54
    /* CF720 800DEF20 00000000 */   nop
    /* CF724 800DEF24 1280023C */  lui        $v0, %hi(D_8011A25A)
    /* CF728 800DEF28 5AA24294 */  lhu        $v0, %lo(D_8011A25A)($v0)
    /* CF72C 800DEF2C 00000000 */  nop
    /* CF730 800DEF30 80004230 */  andi       $v0, $v0, 0x80
    /* CF734 800DEF34 07004010 */  beqz       $v0, .L800DEF54
    /* CF738 800DEF38 00000000 */   nop
    /* CF73C 800DEF3C 1280023C */  lui        $v0, %hi(D_8011A390)
    /* CF740 800DEF40 90A34294 */  lhu        $v0, %lo(D_8011A390)($v0)
    /* CF744 800DEF44 00000000 */  nop
    /* CF748 800DEF48 01004230 */  andi       $v0, $v0, 0x1
    /* CF74C 800DEF4C 13004014 */  bnez       $v0, .L800DEF9C
    /* CF750 800DEF50 21100000 */   addu      $v0, $zero, $zero
  .L800DEF54:
    /* CF754 800DEF54 B17B030C */  jal        func_800DEEC4
    /* CF758 800DEF58 00000000 */   nop
    /* CF75C 800DEF5C 21184000 */  addu       $v1, $v0, $zero
    /* CF760 800DEF60 03006104 */  bgez       $v1, .L800DEF70
    /* CF764 800DEF64 40100300 */   sll       $v0, $v1, 1
    /* CF768 800DEF68 E77B0308 */  j          .L800DEF9C
    /* CF76C 800DEF6C 21100000 */   addu      $v0, $zero, $zero
  .L800DEF70:
    /* CF770 800DEF70 21104300 */  addu       $v0, $v0, $v1
    /* CF774 800DEF74 80100200 */  sll        $v0, $v0, 2
    /* CF778 800DEF78 23104300 */  subu       $v0, $v0, $v1
    /* CF77C 800DEF7C C0100200 */  sll        $v0, $v0, 3
    /* CF780 800DEF80 1180013C */  lui        $at, %hi(D_80113ED8)
    /* CF784 800DEF84 21082200 */  addu       $at, $at, $v0
    /* CF788 800DEF88 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* CF78C 800DEF8C 001E1000 */  sll        $v1, $s0, 24
    /* CF790 800DEF90 031E0300 */  sra        $v1, $v1, 24
    /* CF794 800DEF94 26104300 */  xor        $v0, $v0, $v1
    /* CF798 800DEF98 0100422C */  sltiu      $v0, $v0, 0x1
  .L800DEF9C:
    /* CF79C 800DEF9C 1400BF8F */  lw         $ra, 0x14($sp)
    /* CF7A0 800DEFA0 1000B08F */  lw         $s0, 0x10($sp)
    /* CF7A4 800DEFA4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* CF7A8 800DEFA8 0800E003 */  jr         $ra
    /* CF7AC 800DEFAC 00000000 */   nop
endlabel func_800DEF04
