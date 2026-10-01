.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DE670, 0x1C0

glabel func_800DE670
    /* CEE70 800DE670 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* CEE74 800DE674 3400BFAF */  sw         $ra, 0x34($sp)
    /* CEE78 800DE678 3000B4AF */  sw         $s4, 0x30($sp)
    /* CEE7C 800DE67C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* CEE80 800DE680 2800B2AF */  sw         $s2, 0x28($sp)
    /* CEE84 800DE684 2400B1AF */  sw         $s1, 0x24($sp)
    /* CEE88 800DE688 2000B0AF */  sw         $s0, 0x20($sp)
    /* CEE8C 800DE68C 21908000 */  addu       $s2, $a0, $zero
    /* CEE90 800DE690 FED4030C */  jal        func_800F53F8
    /* CEE94 800DE694 00040424 */   addiu     $a0, $zero, 0x400
    /* CEE98 800DE698 21A04000 */  addu       $s4, $v0, $zero
    /* CEE9C 800DE69C 7CD6030C */  jal        func_800F59F0
    /* CEEA0 800DE6A0 21208002 */   addu      $a0, $s4, $zero
    /* CEEA4 800DE6A4 21984000 */  addu       $s3, $v0, $zero
    /* CEEA8 800DE6A8 7C0D848F */  lw         $a0, %gp_rel(D_80159254)($gp)
    /* CEEAC 800DE6AC CB1A030C */  jal        func_800C6B2C
    /* CEEB0 800DE6B0 14028424 */   addiu     $a0, $a0, 0x214
    /* CEEB4 800DE6B4 1280043C */  lui        $a0, %hi(D_80121340)
    /* CEEB8 800DE6B8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* CEEBC 800DE6BC CB1A030C */  jal        func_800C6B2C
    /* CEEC0 800DE6C0 00000000 */   nop
    /* CEEC4 800DE6C4 1680043C */  lui        $a0, %hi(D_80158840)
    /* CEEC8 800DE6C8 4088848C */  lw         $a0, %lo(D_80158840)($a0)
    /* CEECC 800DE6CC 0100053C */  lui        $a1, (0x127E6 >> 16)
    /* CEED0 800DE6D0 FCA0020C */  jal        func_800A83F0
    /* CEED4 800DE6D4 E627A534 */   ori       $a1, $a1, (0x127E6 & 0xFFFF)
    /* CEED8 800DE6D8 21004014 */  bnez       $v0, .L800DE760
    /* CEEDC 800DE6DC 21880000 */   addu      $s1, $zero, $zero
  .L800DE6E0:
    /* CEEE0 800DE6E0 58A1020C */  jal        func_800A8560
    /* CEEE4 800DE6E4 00000000 */   nop
    /* CEEE8 800DE6E8 00004380 */  lb         $v1, 0x0($v0)
    /* CEEEC 800DE6EC 40000224 */  addiu      $v0, $zero, 0x40
    /* CEEF0 800DE6F0 19006210 */  beq        $v1, $v0, .L800DE758
    /* CEEF4 800DE6F4 00000000 */   nop
    /* CEEF8 800DE6F8 7C0D848F */  lw         $a0, %gp_rel(D_80159254)($gp)
    /* CEEFC 800DE6FC CB1A030C */  jal        func_800C6B2C
    /* CEF00 800DE700 14028424 */   addiu     $a0, $a0, 0x214
    /* CEF04 800DE704 7C0D848F */  lw         $a0, %gp_rel(D_80159254)($gp)
    /* CEF08 800DE708 1680053C */  lui        $a1, %hi(D_80158D40)
    /* CEF0C 800DE70C 408DA58C */  lw         $a1, %lo(D_80158D40)($a1)
    /* CEF10 800DE710 9987030C */  jal        func_800E1E64
    /* CEF14 800DE714 14028424 */   addiu     $a0, $a0, 0x214
    /* CEF18 800DE718 1680023C */  lui        $v0, %hi(D_80158D40)
    /* CEF1C 800DE71C 408D428C */  lw         $v0, %lo(D_80158D40)($v0)
    /* CEF20 800DE720 00000000 */  nop
    /* CEF24 800DE724 00004280 */  lb         $v0, 0x0($v0)
    /* CEF28 800DE728 00000000 */  nop
    /* CEF2C 800DE72C ECFF4010 */  beqz       $v0, .L800DE6E0
    /* CEF30 800DE730 21807102 */   addu      $s0, $s3, $s1
    /* CEF34 800DE734 CB1A030C */  jal        func_800C6B2C
    /* CEF38 800DE738 21200002 */   addu      $a0, $s0, $zero
    /* CEF3C 800DE73C 7C0D848F */  lw         $a0, %gp_rel(D_80159254)($gp)
    /* CEF40 800DE740 00000000 */  nop
    /* CEF44 800DE744 14028424 */  addiu      $a0, $a0, 0x214
    /* CEF48 800DE748 33AC020C */  jal        func_800AB0CC
    /* CEF4C 800DE74C 21280002 */   addu      $a1, $s0, $zero
    /* CEF50 800DE750 B8790308 */  j          .L800DE6E0
    /* CEF54 800DE754 80003126 */   addiu     $s1, $s1, 0x80
  .L800DE758:
    /* CEF58 800DE758 E9A0020C */  jal        func_800A83A4
    /* CEF5C 800DE75C 00000000 */   nop
  .L800DE760:
    /* CEF60 800DE760 480640AE */  sw         $zero, 0x648($s2)
    /* CEF64 800DE764 21880000 */  addu       $s1, $zero, $zero
  .L800DE768:
    /* CEF68 800DE768 0400222A */  slti       $v0, $s1, 0x4
    /* CEF6C 800DE76C 25004010 */  beqz       $v0, .L800DE804
    /* CEF70 800DE770 C0111100 */   sll       $v0, $s1, 7
    /* CEF74 800DE774 21806202 */  addu       $s0, $s3, $v0
    /* CEF78 800DE778 AD87030C */  jal        func_800E1EB4
    /* CEF7C 800DE77C 21200002 */   addu      $a0, $s0, $zero
    /* CEF80 800DE780 40180200 */  sll        $v1, $v0, 1
    /* CEF84 800DE784 21186200 */  addu       $v1, $v1, $v0
    /* CEF88 800DE788 40180300 */  sll        $v1, $v1, 1
    /* CEF8C 800DE78C 43180300 */  sra        $v1, $v1, 1
    /* CEF90 800DE790 A0000224 */  addiu      $v0, $zero, 0xA0
    /* CEF94 800DE794 23104300 */  subu       $v0, $v0, $v1
    /* CEF98 800DE798 1000A2A7 */  sh         $v0, 0x10($sp)
    /* CEF9C 800DE79C 40101100 */  sll        $v0, $s1, 1
    /* CEFA0 800DE7A0 21105100 */  addu       $v0, $v0, $s1
    /* CEFA4 800DE7A4 80100200 */  sll        $v0, $v0, 2
    /* CEFA8 800DE7A8 44004324 */  addiu      $v1, $v0, 0x44
    /* CEFAC 800DE7AC 1200A3A7 */  sh         $v1, 0x12($sp)
    /* CEFB0 800DE7B0 40010324 */  addiu      $v1, $zero, 0x140
    /* CEFB4 800DE7B4 1400A3A7 */  sh         $v1, 0x14($sp)
    /* CEFB8 800DE7B8 50004224 */  addiu      $v0, $v0, 0x50
    /* CEFBC 800DE7BC 1600A2A7 */  sh         $v0, 0x16($sp)
    /* CEFC0 800DE7C0 4806428E */  lw         $v0, 0x648($s2)
    /* CEFC4 800DE7C4 00000000 */  nop
    /* CEFC8 800DE7C8 07004014 */  bnez       $v0, .L800DE7E8
    /* CEFCC 800DE7CC C0291100 */   sll       $a1, $s1, 7
    /* CEFD0 800DE7D0 21200002 */  addu       $a0, $s0, $zero
    /* CEFD4 800DE7D4 1000A527 */  addiu      $a1, $sp, 0x10
    /* CEFD8 800DE7D8 DC0F040C */  jal        func_80103F70
    /* CEFDC 800DE7DC 10000624 */   addiu     $a2, $zero, 0x10
    /* CEFE0 800DE7E0 FF790308 */  j          .L800DE7FC
    /* CEFE4 800DE7E4 480642AE */   sw        $v0, 0x648($s2)
  .L800DE7E8:
    /* CEFE8 800DE7E8 4806448E */  lw         $a0, 0x648($s2)
    /* CEFEC 800DE7EC 21286502 */  addu       $a1, $s3, $a1
    /* CEFF0 800DE7F0 1000A627 */  addiu      $a2, $sp, 0x10
    /* CEFF4 800DE7F4 5511040C */  jal        func_80104554
    /* CEFF8 800DE7F8 10000724 */   addiu     $a3, $zero, 0x10
  .L800DE7FC:
    /* CEFFC 800DE7FC DA790308 */  j          .L800DE768
    /* CF000 800DE800 01003126 */   addiu     $s1, $s1, 0x1
  .L800DE804:
    /* CF004 800DE804 C6D5030C */  jal        func_800F5718
    /* CF008 800DE808 21208002 */   addu      $a0, $s4, $zero
    /* CF00C 800DE80C 3400BF8F */  lw         $ra, 0x34($sp)
    /* CF010 800DE810 3000B48F */  lw         $s4, 0x30($sp)
    /* CF014 800DE814 2C00B38F */  lw         $s3, 0x2C($sp)
    /* CF018 800DE818 2800B28F */  lw         $s2, 0x28($sp)
    /* CF01C 800DE81C 2400B18F */  lw         $s1, 0x24($sp)
    /* CF020 800DE820 2000B08F */  lw         $s0, 0x20($sp)
    /* CF024 800DE824 3800BD27 */  addiu      $sp, $sp, 0x38
    /* CF028 800DE828 0800E003 */  jr         $ra
    /* CF02C 800DE82C 00000000 */   nop
endlabel func_800DE670
