.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009EF4C, 0x268

glabel func_8009EF4C
    /* 8F74C 8009EF4C B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 8F750 8009EF50 4000BFAF */  sw         $ra, 0x40($sp)
    /* 8F754 8009EF54 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 8F758 8009EF58 3800B6AF */  sw         $s6, 0x38($sp)
    /* 8F75C 8009EF5C 3400B5AF */  sw         $s5, 0x34($sp)
    /* 8F760 8009EF60 3000B4AF */  sw         $s4, 0x30($sp)
    /* 8F764 8009EF64 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 8F768 8009EF68 2800B2AF */  sw         $s2, 0x28($sp)
    /* 8F76C 8009EF6C 2400B1AF */  sw         $s1, 0x24($sp)
    /* 8F770 8009EF70 2000B0AF */  sw         $s0, 0x20($sp)
    /* 8F774 8009EF74 21908000 */  addu       $s2, $a0, $zero
    /* 8F778 8009EF78 2188A000 */  addu       $s1, $a1, $zero
    /* 8F77C 8009EF7C 21A8C000 */  addu       $s5, $a2, $zero
    /* 8F780 8009EF80 21A00000 */  addu       $s4, $zero, $zero
    /* 8F784 8009EF84 34025386 */  lh         $s3, 0x234($s2)
    /* 8F788 8009EF88 00000000 */  nop
    /* 8F78C 8009EF8C 03007326 */  addiu      $s3, $s3, 0x3
    /* 8F790 8009EF90 36025786 */  lh         $s7, 0x236($s2)
    /* 8F794 8009EF94 1280023C */  lui        $v0, %hi(D_8011A250)
    /* 8F798 8009EF98 50A24294 */  lhu        $v0, %lo(D_8011A250)($v0)
    /* 8F79C 8009EF9C 00000000 */  nop
    /* 8F7A0 8009EFA0 00804230 */  andi       $v0, $v0, 0x8000
    /* 8F7A4 8009EFA4 0F004014 */  bnez       $v0, .L8009EFE4
    /* 8F7A8 8009EFA8 0A00F726 */   addiu     $s7, $s7, 0xA
    /* 8F7AC 8009EFAC 3C024286 */  lh         $v0, 0x23C($s2)
    /* 8F7B0 8009EFB0 00000000 */  nop
    /* 8F7B4 8009EFB4 40200200 */  sll        $a0, $v0, 1
    /* 8F7B8 8009EFB8 2A109100 */  slt        $v0, $a0, $s1
    /* 8F7BC 8009EFBC 09004014 */  bnez       $v0, .L8009EFE4
    /* 8F7C0 8009EFC0 00000000 */   nop
    /* 8F7C4 8009EFC4 1280033C */  lui        $v1, %hi(D_8011C308)
    /* 8F7C8 8009EFC8 08C36384 */  lh         $v1, %lo(D_8011C308)($v1)
    /* 8F7CC 8009EFCC 00000000 */  nop
    /* 8F7D0 8009EFD0 23106400 */  subu       $v0, $v1, $a0
    /* 8F7D4 8009EFD4 2A106202 */  slt        $v0, $s3, $v0
    /* 8F7D8 8009EFD8 02004014 */  bnez       $v0, .L8009EFE4
    /* 8F7DC 8009EFDC 00000000 */   nop
    /* 8F7E0 8009EFE0 21882302 */  addu       $s1, $s1, $v1
  .L8009EFE4:
    /* 8F7E4 8009EFE4 40024286 */  lh         $v0, 0x240($s2)
    /* 8F7E8 8009EFE8 00000000 */  nop
    /* 8F7EC 8009EFEC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 8F7F0 8009EFF0 40100200 */  sll        $v0, $v0, 1
    /* 8F7F4 8009EFF4 21806202 */  addu       $s0, $s3, $v0
    /* 8F7F8 8009EFF8 FAFF1026 */  addiu      $s0, $s0, -0x6
    /* 8F7FC 8009EFFC 3A025686 */  lh         $s6, 0x23A($s2)
    /* 8F800 8009F000 58024286 */  lh         $v0, 0x258($s2)
    /* 8F804 8009F004 00000000 */  nop
    /* 8F808 8009F008 15004014 */  bnez       $v0, .L8009F060
    /* 8F80C 8009F00C FBFFD626 */   addiu     $s6, $s6, -0x5
    /* 8F810 8009F010 1280023C */  lui        $v0, %hi(D_8011A250)
    /* 8F814 8009F014 50A24294 */  lhu        $v0, %lo(D_8011A250)($v0)
    /* 8F818 8009F018 00000000 */  nop
    /* 8F81C 8009F01C 00804230 */  andi       $v0, $v0, 0x8000
    /* 8F820 8009F020 07004010 */  beqz       $v0, .L8009F040
    /* 8F824 8009F024 21202002 */   addu      $a0, $s1, $zero
    /* 8F828 8009F028 1280063C */  lui        $a2, %hi(D_8011C308)
    /* 8F82C 8009F02C 08C3C684 */  lh         $a2, %lo(D_8011C308)($a2)
    /* 8F830 8009F030 02000524 */  addiu      $a1, $zero, 0x2
    /* 8F834 8009F034 F53A030C */  jal        func_800CEBD4
    /* 8F838 8009F038 FDFFC624 */   addiu     $a2, $a2, -0x3
    /* 8F83C 8009F03C 21884000 */  addu       $s1, $v0, $zero
  .L8009F040:
    /* 8F840 8009F040 01006226 */  addiu      $v0, $s3, 0x1
    /* 8F844 8009F044 2A105100 */  slt        $v0, $v0, $s1
    /* 8F848 8009F048 04004010 */  beqz       $v0, .L8009F05C
    /* 8F84C 8009F04C FFFF0226 */   addiu     $v0, $s0, -0x1
    /* 8F850 8009F050 2A102202 */  slt        $v0, $s1, $v0
    /* 8F854 8009F054 02004014 */  bnez       $v0, .L8009F060
    /* 8F858 8009F058 00000000 */   nop
  .L8009F05C:
    /* 8F85C 8009F05C 01001424 */  addiu      $s4, $zero, 0x1
  .L8009F060:
    /* 8F860 8009F060 27008016 */  bnez       $s4, .L8009F100
    /* 8F864 8009F064 00000000 */   nop
    /* 8F868 8009F068 0C05828F */  lw         $v0, %gp_rel(D_801589E4)($gp)
    /* 8F86C 8009F06C 00000000 */  nop
    /* 8F870 8009F070 05004014 */  bnez       $v0, .L8009F088
    /* 8F874 8009F074 00000000 */   nop
    /* 8F878 8009F078 1405828F */  lw         $v0, %gp_rel(D_801589EC)($gp)
    /* 8F87C 8009F07C 00000000 */  nop
    /* 8F880 8009F080 1F004010 */  beqz       $v0, .L8009F100
    /* 8F884 8009F084 00000000 */   nop
  .L8009F088:
    /* 8F888 8009F088 1000B5AF */  sw         $s5, 0x10($sp)
    /* 8F88C 8009F08C 21204002 */  addu       $a0, $s2, $zero
    /* 8F890 8009F090 1800A527 */  addiu      $a1, $sp, 0x18
    /* 8F894 8009F094 1C00A627 */  addiu      $a2, $sp, 0x1C
    /* 8F898 8009F098 0A66020C */  jal        func_80099828
    /* 8F89C 8009F09C 21382002 */   addu      $a3, $s1, $zero
    /* 8F8A0 8009F0A0 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 8F8A4 8009F0A4 00000000 */  nop
    /* 8F8A8 8009F0A8 34004228 */  slti       $v0, $v0, 0x34
    /* 8F8AC 8009F0AC 02004010 */  beqz       $v0, .L8009F0B8
    /* 8F8B0 8009F0B0 00000000 */   nop
    /* 8F8B4 8009F0B4 01001424 */  addiu      $s4, $zero, 0x1
  .L8009F0B8:
    /* 8F8B8 8009F0B8 1405828F */  lw         $v0, %gp_rel(D_801589EC)($gp)
    /* 8F8BC 8009F0BC 00000000 */  nop
    /* 8F8C0 8009F0C0 0F004010 */  beqz       $v0, .L8009F100
    /* 8F8C4 8009F0C4 00000000 */   nop
    /* 8F8C8 8009F0C8 1800A38F */  lw         $v1, 0x18($sp)
    /* 8F8CC 8009F0CC 00000000 */  nop
    /* 8F8D0 8009F0D0 20006324 */  addiu      $v1, $v1, 0x20
    /* 8F8D4 8009F0D4 B9006328 */  slti       $v1, $v1, 0xB9
    /* 8F8D8 8009F0D8 01006338 */  xori       $v1, $v1, 0x1
    /* 8F8DC 8009F0DC 1C00A28F */  lw         $v0, 0x1C($sp)
    /* 8F8E0 8009F0E0 00000000 */  nop
    /* 8F8E4 8009F0E4 10004224 */  addiu      $v0, $v0, 0x10
    /* 8F8E8 8009F0E8 85004228 */  slti       $v0, $v0, 0x85
    /* 8F8EC 8009F0EC 01004238 */  xori       $v0, $v0, 0x1
    /* 8F8F0 8009F0F0 24186200 */  and        $v1, $v1, $v0
    /* 8F8F4 8009F0F4 02006010 */  beqz       $v1, .L8009F100
    /* 8F8F8 8009F0F8 00000000 */   nop
    /* 8F8FC 8009F0FC 01001424 */  addiu      $s4, $zero, 0x1
  .L8009F100:
    /* 8F900 8009F100 5A024286 */  lh         $v0, 0x25A($s2)
    /* 8F904 8009F104 00000000 */  nop
    /* 8F908 8009F108 0F004014 */  bnez       $v0, .L8009F148
    /* 8F90C 8009F10C 2120A002 */   addu      $a0, $s5, $zero
    /* 8F910 8009F110 1280063C */  lui        $a2, %hi(D_8011C30A)
    /* 8F914 8009F114 0AC3C684 */  lh         $a2, %lo(D_8011C30A)($a2)
    /* 8F918 8009F118 05000524 */  addiu      $a1, $zero, 0x5
    /* 8F91C 8009F11C F53A030C */  jal        func_800CEBD4
    /* 8F920 8009F120 FBFFC624 */   addiu     $a2, $a2, -0x5
    /* 8F924 8009F124 21A84000 */  addu       $s5, $v0, $zero
    /* 8F928 8009F128 0100E226 */  addiu      $v0, $s7, 0x1
    /* 8F92C 8009F12C 2A105500 */  slt        $v0, $v0, $s5
    /* 8F930 8009F130 04004010 */  beqz       $v0, .L8009F144
    /* 8F934 8009F134 FFFFC226 */   addiu     $v0, $s6, -0x1
    /* 8F938 8009F138 2A10A202 */  slt        $v0, $s5, $v0
    /* 8F93C 8009F13C 02004014 */  bnez       $v0, .L8009F148
    /* 8F940 8009F140 00000000 */   nop
  .L8009F144:
    /* 8F944 8009F144 01001424 */  addiu      $s4, $zero, 0x1
  .L8009F148:
    /* 8F948 8009F148 0D008012 */  beqz       $s4, .L8009F180
    /* 8F94C 8009F14C 01000224 */   addiu     $v0, $zero, 0x1
    /* 8F950 8009F150 1680013C */  lui        $at, %hi(D_80158876)
    /* 8F954 8009F154 768822A0 */  sb         $v0, %lo(D_80158876)($at)
    /* 8F958 8009F158 1280023C */  lui        $v0, %hi(D_8011ACBC)
    /* 8F95C 8009F15C BCAC428C */  lw         $v0, %lo(D_8011ACBC)($v0)
    /* 8F960 8009F160 00000000 */  nop
    /* 8F964 8009F164 0100422C */  sltiu      $v0, $v0, 0x1
    /* 8F968 8009F168 1680013C */  lui        $at, %hi(D_80158874)
    /* 8F96C 8009F16C 748822A0 */  sb         $v0, %lo(D_80158874)($at)
    /* 8F970 8009F170 21204002 */  addu       $a0, $s2, $zero
    /* 8F974 8009F174 21282002 */  addu       $a1, $s1, $zero
    /* 8F978 8009F178 BC7B020C */  jal        func_8009EEF0
    /* 8F97C 8009F17C 2130A002 */   addu      $a2, $s5, $zero
  .L8009F180:
    /* 8F980 8009F180 21108002 */  addu       $v0, $s4, $zero
    /* 8F984 8009F184 4000BF8F */  lw         $ra, 0x40($sp)
    /* 8F988 8009F188 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 8F98C 8009F18C 3800B68F */  lw         $s6, 0x38($sp)
    /* 8F990 8009F190 3400B58F */  lw         $s5, 0x34($sp)
    /* 8F994 8009F194 3000B48F */  lw         $s4, 0x30($sp)
    /* 8F998 8009F198 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 8F99C 8009F19C 2800B28F */  lw         $s2, 0x28($sp)
    /* 8F9A0 8009F1A0 2400B18F */  lw         $s1, 0x24($sp)
    /* 8F9A4 8009F1A4 2000B08F */  lw         $s0, 0x20($sp)
    /* 8F9A8 8009F1A8 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 8F9AC 8009F1AC 0800E003 */  jr         $ra
    /* 8F9B0 8009F1B0 00000000 */   nop
endlabel func_8009EF4C
