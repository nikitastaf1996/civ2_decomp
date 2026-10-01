.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DF5B0, 0x208

glabel func_800DF5B0
    /* CFDB0 800DF5B0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* CFDB4 800DF5B4 2000BFAF */  sw         $ra, 0x20($sp)
    /* CFDB8 800DF5B8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* CFDBC 800DF5BC 1800B0AF */  sw         $s0, 0x18($sp)
    /* CFDC0 800DF5C0 1280023C */  lui        $v0, %hi(D_8011C308)
    /* CFDC4 800DF5C4 08C34224 */  addiu      $v0, $v0, %lo(D_8011C308)
    /* CFDC8 800DF5C8 00004584 */  lh         $a1, 0x0($v0)
    /* CFDCC 800DF5CC 02005184 */  lh         $s1, 0x2($v0)
    /* CFDD0 800DF5D0 1A00A500 */  div        $zero, $a1, $a1
    /* CFDD4 800DF5D4 0200A014 */  bnez       $a1, .L800DF5E0
    /* CFDD8 800DF5D8 00000000 */   nop
    /* CFDDC 800DF5DC 0D000700 */  break      7
  .L800DF5E0:
    /* CFDE0 800DF5E0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* CFDE4 800DF5E4 0400A114 */  bne        $a1, $at, .L800DF5F8
    /* CFDE8 800DF5E8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* CFDEC 800DF5EC 0200A114 */  bne        $a1, $at, .L800DF5F8
    /* CFDF0 800DF5F0 00000000 */   nop
    /* CFDF4 800DF5F4 0D000600 */  break      6
  .L800DF5F8:
    /* CFDF8 800DF5F8 12100000 */  mflo       $v0
    /* CFDFC 800DF5FC 00000000 */  nop
    /* CFE00 800DF600 341082AF */  sw         $v0, %gp_rel(D_8015950C)($gp)
    /* CFE04 800DF604 0200401C */  bgtz       $v0, .L800DF610
    /* CFE08 800DF608 21184000 */   addu      $v1, $v0, $zero
    /* CFE0C 800DF60C 01000324 */  addiu      $v1, $zero, 0x1
  .L800DF610:
    /* CFE10 800DF610 341083AF */  sw         $v1, %gp_rel(D_8015950C)($gp)
    /* CFE14 800DF614 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* CFE18 800DF618 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* CFE1C 800DF61C 00000000 */  nop
    /* CFE20 800DF620 1A002202 */  div        $zero, $s1, $v0
    /* CFE24 800DF624 02004014 */  bnez       $v0, .L800DF630
    /* CFE28 800DF628 00000000 */   nop
    /* CFE2C 800DF62C 0D000700 */  break      7
  .L800DF630:
    /* CFE30 800DF630 FFFF0124 */  addiu      $at, $zero, -0x1
    /* CFE34 800DF634 04004114 */  bne        $v0, $at, .L800DF648
    /* CFE38 800DF638 0080013C */   lui       $at, (0x80000000 >> 16)
    /* CFE3C 800DF63C 02002116 */  bne        $s1, $at, .L800DF648
    /* CFE40 800DF640 00000000 */   nop
    /* CFE44 800DF644 0D000600 */  break      6
  .L800DF648:
    /* CFE48 800DF648 12100000 */  mflo       $v0
    /* CFE4C 800DF64C 00000000 */  nop
    /* CFE50 800DF650 381082AF */  sw         $v0, %gp_rel(D_80159510)($gp)
    /* CFE54 800DF654 0200401C */  bgtz       $v0, .L800DF660
    /* CFE58 800DF658 21184000 */   addu      $v1, $v0, $zero
    /* CFE5C 800DF65C 01000324 */  addiu      $v1, $zero, 0x1
  .L800DF660:
    /* CFE60 800DF660 381083AF */  sw         $v1, %gp_rel(D_80159510)($gp)
    /* CFE64 800DF664 3410828F */  lw         $v0, %gp_rel(D_8015950C)($gp)
    /* CFE68 800DF668 00000000 */  nop
    /* CFE6C 800DF66C 40100200 */  sll        $v0, $v0, 1
    /* CFE70 800DF670 341082AF */  sw         $v0, %gp_rel(D_8015950C)($gp)
    /* CFE74 800DF674 43200200 */  sra        $a0, $v0, 1
    /* CFE78 800DF678 2320A400 */  subu       $a0, $a1, $a0
    /* CFE7C 800DF67C 1A008200 */  div        $zero, $a0, $v0
    /* CFE80 800DF680 02004014 */  bnez       $v0, .L800DF68C
    /* CFE84 800DF684 00000000 */   nop
    /* CFE88 800DF688 0D000700 */  break      7
  .L800DF68C:
    /* CFE8C 800DF68C FFFF0124 */  addiu      $at, $zero, -0x1
    /* CFE90 800DF690 04004114 */  bne        $v0, $at, .L800DF6A4
    /* CFE94 800DF694 0080013C */   lui       $at, (0x80000000 >> 16)
    /* CFE98 800DF698 02008114 */  bne        $a0, $at, .L800DF6A4
    /* CFE9C 800DF69C 00000000 */   nop
    /* CFEA0 800DF6A0 0D000600 */  break      6
  .L800DF6A4:
    /* CFEA4 800DF6A4 12200000 */  mflo       $a0
    /* CFEA8 800DF6A8 00000000 */  nop
    /* CFEAC 800DF6AC 3C1084AF */  sw         $a0, %gp_rel(D_80159514)($gp)
    /* CFEB0 800DF6B0 1A002302 */  div        $zero, $s1, $v1
    /* CFEB4 800DF6B4 02006014 */  bnez       $v1, .L800DF6C0
    /* CFEB8 800DF6B8 00000000 */   nop
    /* CFEBC 800DF6BC 0D000700 */  break      7
  .L800DF6C0:
    /* CFEC0 800DF6C0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* CFEC4 800DF6C4 04006114 */  bne        $v1, $at, .L800DF6D8
    /* CFEC8 800DF6C8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* CFECC 800DF6CC 02002116 */  bne        $s1, $at, .L800DF6D8
    /* CFED0 800DF6D0 00000000 */   nop
    /* CFED4 800DF6D4 0D000600 */  break      6
  .L800DF6D8:
    /* CFED8 800DF6D8 12100000 */  mflo       $v0
    /* CFEDC 800DF6DC 00000000 */  nop
    /* CFEE0 800DF6E0 401082AF */  sw         $v0, %gp_rel(D_80159518)($gp)
    /* CFEE4 800DF6E4 1280023C */  lui        $v0, %hi(D_8011C308)
    /* CFEE8 800DF6E8 08C34294 */  lhu        $v0, %lo(D_8011C308)($v0)
    /* CFEEC 800DF6EC 00000000 */  nop
    /* CFEF0 800DF6F0 00140200 */  sll        $v0, $v0, 16
    /* CFEF4 800DF6F4 031C0200 */  sra        $v1, $v0, 16
    /* CFEF8 800DF6F8 C2170200 */  srl        $v0, $v0, 31
    /* CFEFC 800DF6FC 21186200 */  addu       $v1, $v1, $v0
    /* CFF00 800DF700 43180300 */  sra        $v1, $v1, 1
    /* CFF04 800DF704 2A106400 */  slt        $v0, $v1, $a0
    /* CFF08 800DF708 02004010 */  beqz       $v0, .L800DF714
    /* CFF0C 800DF70C 00000000 */   nop
    /* CFF10 800DF710 21206000 */  addu       $a0, $v1, $zero
  .L800DF714:
    /* CFF14 800DF714 3C1084AF */  sw         $a0, %gp_rel(D_80159514)($gp)
    /* CFF18 800DF718 1280043C */  lui        $a0, %hi(D_8011C30A)
    /* CFF1C 800DF71C 0AC38484 */  lh         $a0, %lo(D_8011C30A)($a0)
    /* CFF20 800DF720 4010828F */  lw         $v0, %gp_rel(D_80159518)($gp)
    /* CFF24 800DF724 00000000 */  nop
    /* CFF28 800DF728 2A188200 */  slt        $v1, $a0, $v0
    /* CFF2C 800DF72C 02006010 */  beqz       $v1, .L800DF738
    /* CFF30 800DF730 00000000 */   nop
    /* CFF34 800DF734 21108000 */  addu       $v0, $a0, $zero
  .L800DF738:
    /* CFF38 800DF738 401082AF */  sw         $v0, %gp_rel(D_80159518)($gp)
    /* CFF3C 800DF73C 3C10838F */  lw         $v1, %gp_rel(D_80159514)($gp)
    /* CFF40 800DF740 3410828F */  lw         $v0, %gp_rel(D_8015950C)($gp)
    /* CFF44 800DF744 00000000 */  nop
    /* CFF48 800DF748 18006200 */  mult       $v1, $v0
    /* CFF4C 800DF74C 12380000 */  mflo       $a3
    /* CFF50 800DF750 2320A700 */  subu       $a0, $a1, $a3
    /* CFF54 800DF754 21280000 */  addu       $a1, $zero, $zero
    /* CFF58 800DF758 F53A030C */  jal        func_800CEBD4
    /* CFF5C 800DF75C E7030624 */   addiu     $a2, $zero, 0x3E7
    /* CFF60 800DF760 21804000 */  addu       $s0, $v0, $zero
    /* CFF64 800DF764 4010838F */  lw         $v1, %gp_rel(D_80159518)($gp)
    /* CFF68 800DF768 3810828F */  lw         $v0, %gp_rel(D_80159510)($gp)
    /* CFF6C 800DF76C 00000000 */  nop
    /* CFF70 800DF770 18006200 */  mult       $v1, $v0
    /* CFF74 800DF774 12380000 */  mflo       $a3
    /* CFF78 800DF778 23202702 */  subu       $a0, $s1, $a3
    /* CFF7C 800DF77C 21280000 */  addu       $a1, $zero, $zero
    /* CFF80 800DF780 F53A030C */  jal        func_800CEBD4
    /* CFF84 800DF784 E7030624 */   addiu     $a2, $zero, 0x3E7
    /* CFF88 800DF788 43801000 */  sra        $s0, $s0, 1
    /* CFF8C 800DF78C 4C1090AF */  sw         $s0, %gp_rel(D_80159524)($gp)
    /* CFF90 800DF790 43100200 */  sra        $v0, $v0, 1
    /* CFF94 800DF794 501082AF */  sw         $v0, %gp_rel(D_80159528)($gp)
    /* CFF98 800DF798 481080AF */  sw         $zero, %gp_rel(D_80159520)($gp)
    /* CFF9C 800DF79C 441080AF */  sw         $zero, %gp_rel(D_8015951C)($gp)
    /* CFFA0 800DF7A0 2000BF8F */  lw         $ra, 0x20($sp)
    /* CFFA4 800DF7A4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* CFFA8 800DF7A8 1800B08F */  lw         $s0, 0x18($sp)
    /* CFFAC 800DF7AC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* CFFB0 800DF7B0 0800E003 */  jr         $ra
    /* CFFB4 800DF7B4 00000000 */   nop
endlabel func_800DF5B0
