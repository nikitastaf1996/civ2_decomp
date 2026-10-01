.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004CE60, 0xED4

glabel func_8004CE60
    /* 3D660 8004CE60 78FCBD27 */  addiu      $sp, $sp, -0x388
    /* 3D664 8004CE64 8403BFAF */  sw         $ra, 0x384($sp)
    /* 3D668 8004CE68 8003BEAF */  sw         $fp, 0x380($sp)
    /* 3D66C 8004CE6C 7C03B7AF */  sw         $s7, 0x37C($sp)
    /* 3D670 8004CE70 7803B6AF */  sw         $s6, 0x378($sp)
    /* 3D674 8004CE74 7403B5AF */  sw         $s5, 0x374($sp)
    /* 3D678 8004CE78 7003B4AF */  sw         $s4, 0x370($sp)
    /* 3D67C 8004CE7C 6C03B3AF */  sw         $s3, 0x36C($sp)
    /* 3D680 8004CE80 6803B2AF */  sw         $s2, 0x368($sp)
    /* 3D684 8004CE84 6403B1AF */  sw         $s1, 0x364($sp)
    /* 3D688 8004CE88 6003B0AF */  sw         $s0, 0x360($sp)
    /* 3D68C 8004CE8C 21988000 */  addu       $s3, $a0, $zero
    /* 3D690 8004CE90 2190A000 */  addu       $s2, $a1, $zero
    /* 3D694 8004CE94 1803A6AF */  sw         $a2, 0x318($sp)
    /* 3D698 8004CE98 2003A7AF */  sw         $a3, 0x320($sp)
    /* 3D69C 8004CE9C 9803BE8F */  lw         $fp, 0x398($sp)
    /* 3D6A0 8004CEA0 7800A427 */  addiu      $a0, $sp, 0x78
    /* 3D6A4 8004CEA4 ADC5020C */  jal        func_800B16B4
    /* 3D6A8 8004CEA8 00200524 */   addiu     $a1, $zero, 0x2000
    /* 3D6AC 8004CEAC 40101200 */  sll        $v0, $s2, 1
    /* 3D6B0 8004CEB0 21105200 */  addu       $v0, $v0, $s2
    /* 3D6B4 8004CEB4 80100200 */  sll        $v0, $v0, 2
    /* 3D6B8 8004CEB8 23105200 */  subu       $v0, $v0, $s2
    /* 3D6BC 8004CEBC 00110200 */  sll        $v0, $v0, 4
    /* 3D6C0 8004CEC0 23105200 */  subu       $v0, $v0, $s2
    /* 3D6C4 8004CEC4 C0100200 */  sll        $v0, $v0, 3
    /* 3D6C8 8004CEC8 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 3D6CC 8004CECC B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 3D6D0 8004CED0 80181300 */  sll        $v1, $s3, 2
    /* 3D6D4 8004CED4 21104400 */  addu       $v0, $v0, $a0
    /* 3D6D8 8004CED8 21186200 */  addu       $v1, $v1, $v0
    /* 3D6DC 8004CEDC 0000628C */  lw         $v0, 0x0($v1)
    /* 3D6E0 8004CEE0 00000000 */  nop
    /* 3D6E4 8004CEE4 C2100200 */  srl        $v0, $v0, 3
    /* 3D6E8 8004CEE8 4803A2AF */  sw         $v0, 0x348($sp)
    /* 3D6EC 8004CEEC 21504000 */  addu       $t2, $v0, $zero
    /* 3D6F0 8004CEF0 01004A31 */  andi       $t2, $t2, 0x1
    /* 3D6F4 8004CEF4 4803AAAF */  sw         $t2, 0x348($sp)
  .L8004CEF8:
    /* 3D6F8 8004CEF8 4003A0AF */  sw         $zero, 0x340($sp)
    /* 3D6FC 8004CEFC 3803A0AF */  sw         $zero, 0x338($sp)
    /* 3D700 8004CF00 21B00000 */  addu       $s6, $zero, $zero
    /* 3D704 8004CF04 3003A0AF */  sw         $zero, 0x330($sp)
    /* 3D708 8004CF08 2803A0AF */  sw         $zero, 0x328($sp)
    /* 3D70C 8004CF0C FFFF1724 */  addiu      $s7, $zero, -0x1
    /* 3D710 8004CF10 FFFF1524 */  addiu      $s5, $zero, -0x1
    /* 3D714 8004CF14 C00F95AF */  sw         $s5, %gp_rel(D_80159498)($gp)
    /* 3D718 8004CF18 B80F95AF */  sw         $s5, %gp_rel(D_80159490)($gp)
    /* 3D71C 8004CF1C BC0F95AF */  sw         $s5, %gp_rel(D_80159494)($gp)
    /* 3D720 8004CF20 21800000 */  addu       $s0, $zero, $zero
    /* 3D724 8004CF24 40101300 */  sll        $v0, $s3, 1
    /* 3D728 8004CF28 21105300 */  addu       $v0, $v0, $s3
    /* 3D72C 8004CF2C 80100200 */  sll        $v0, $v0, 2
    /* 3D730 8004CF30 5003A2AF */  sw         $v0, 0x350($sp)
    /* 3D734 8004CF34 21206002 */  addu       $a0, $s3, $zero
  .L8004CF38:
    /* 3D738 8004CF38 8ACA010C */  jal        func_80072A28
    /* 3D73C 8004CF3C 21280002 */   addu      $a1, $s0, $zero
    /* 3D740 8004CF40 21884000 */  addu       $s1, $v0, $zero
    /* 3D744 8004CF44 21204002 */  addu       $a0, $s2, $zero
    /* 3D748 8004CF48 8ACA010C */  jal        func_80072A28
    /* 3D74C 8004CF4C 21280002 */   addu      $a1, $s0, $zero
    /* 3D750 8004CF50 07002012 */  beqz       $s1, .L8004CF70
    /* 3D754 8004CF54 21A04000 */   addu      $s4, $v0, $zero
    /* 3D758 8004CF58 2803AB8F */  lw         $t3, 0x328($sp)
    /* 3D75C 8004CF5C 00000000 */  nop
    /* 3D760 8004CF60 01006B25 */  addiu      $t3, $t3, 0x1
    /* 3D764 8004CF64 0200A106 */  bgez       $s5, .L8004CF70
    /* 3D768 8004CF68 2803ABAF */   sw        $t3, 0x328($sp)
    /* 3D76C 8004CF6C 21A80002 */  addu       $s5, $s0, $zero
  .L8004CF70:
    /* 3D770 8004CF70 62008012 */  beqz       $s4, .L8004D0FC
    /* 3D774 8004CF74 00000000 */   nop
    /* 3D778 8004CF78 3003AA8F */  lw         $t2, 0x330($sp)
    /* 3D77C 8004CF7C 00000000 */  nop
    /* 3D780 8004CF80 01004A25 */  addiu      $t2, $t2, 0x1
    /* 3D784 8004CF84 5F002016 */  bnez       $s1, .L8004D104
    /* 3D788 8004CF88 3003AAAF */   sw        $t2, 0x330($sp)
    /* 3D78C 8004CF8C 21280000 */  addu       $a1, $zero, $zero
    /* 3D790 8004CF90 5003AB8F */  lw         $t3, 0x350($sp)
    /* 3D794 8004CF94 00000000 */  nop
    /* 3D798 8004CF98 23107301 */  subu       $v0, $t3, $s3
    /* 3D79C 8004CF9C 00110200 */  sll        $v0, $v0, 4
    /* 3D7A0 8004CFA0 23105300 */  subu       $v0, $v0, $s3
    /* 3D7A4 8004CFA4 C0100200 */  sll        $v0, $v0, 3
    /* 3D7A8 8004CFA8 1180033C */  lui        $v1, %hi(D_801176A9)
    /* 3D7AC 8004CFAC A9766324 */  addiu      $v1, $v1, %lo(D_801176A9)
    /* 3D7B0 8004CFB0 21484300 */  addu       $t1, $v0, $v1
    /* 3D7B4 8004CFB4 40101200 */  sll        $v0, $s2, 1
    /* 3D7B8 8004CFB8 21105200 */  addu       $v0, $v0, $s2
    /* 3D7BC 8004CFBC 80100200 */  sll        $v0, $v0, 2
    /* 3D7C0 8004CFC0 23105200 */  subu       $v0, $v0, $s2
    /* 3D7C4 8004CFC4 00110200 */  sll        $v0, $v0, 4
    /* 3D7C8 8004CFC8 23105200 */  subu       $v0, $v0, $s2
    /* 3D7CC 8004CFCC C0100200 */  sll        $v0, $v0, 3
    /* 3D7D0 8004CFD0 21404300 */  addu       $t0, $v0, $v1
    /* 3D7D4 8004CFD4 2700A624 */  addiu      $a2, $a1, 0x27
  .L8004CFD8:
    /* 3D7D8 8004CFD8 C0100600 */  sll        $v0, $a2, 3
    /* 3D7DC 8004CFDC 1180013C */  lui        $at, %hi(D_8010D06A)
    /* 3D7E0 8004CFE0 21082200 */  addu       $at, $at, $v0
    /* 3D7E4 8004CFE4 6AD02280 */  lb         $v0, %lo(D_8010D06A)($at)
    /* 3D7E8 8004CFE8 00000000 */  nop
    /* 3D7EC 8004CFEC 36005014 */  bne        $v0, $s0, .L8004D0C8
    /* 3D7F0 8004CFF0 40100500 */   sll       $v0, $a1, 1
    /* 3D7F4 8004CFF4 12800A3C */  lui        $t2, %hi(D_8011A342)
    /* 3D7F8 8004CFF8 42A34A25 */  addiu      $t2, $t2, %lo(D_8011A342)
    /* 3D7FC 8004CFFC 21104A00 */  addu       $v0, $v0, $t2
    /* 3D800 8004D000 00004384 */  lh         $v1, 0x0($v0)
    /* 3D804 8004D004 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3D808 8004D008 2F006214 */  bne        $v1, $v0, .L8004D0C8
    /* 3D80C 8004D00C 4992023C */   lui       $v0, (0x92492493 >> 16)
    /* 3D810 8004D010 93244234 */  ori        $v0, $v0, (0x92492493 & 0xFFFF)
    /* 3D814 8004D014 1800A200 */  mult       $a1, $v0
    /* 3D818 8004D018 10580000 */  mfhi       $t3
    /* 3D81C 8004D01C 21106501 */  addu       $v0, $t3, $a1
    /* 3D820 8004D020 83100200 */  sra        $v0, $v0, 2
    /* 3D824 8004D024 C31F0500 */  sra        $v1, $a1, 31
    /* 3D828 8004D028 23104300 */  subu       $v0, $v0, $v1
    /* 3D82C 8004D02C 21182201 */  addu       $v1, $t1, $v0
    /* 3D830 8004D030 21100201 */  addu       $v0, $t0, $v0
    /* 3D834 8004D034 00006390 */  lbu        $v1, 0x0($v1)
    /* 3D838 8004D038 00004290 */  lbu        $v0, 0x0($v0)
    /* 3D83C 8004D03C 00000000 */  nop
    /* 3D840 8004D040 2B104300 */  sltu       $v0, $v0, $v1
    /* 3D844 8004D044 20004010 */  beqz       $v0, .L8004D0C8
    /* 3D848 8004D048 00000000 */   nop
    /* 3D84C 8004D04C 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 3D850 8004D050 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 3D854 8004D054 00000000 */  nop
    /* 3D858 8004D058 1B004018 */  blez       $v0, .L8004D0C8
    /* 3D85C 8004D05C 21200000 */   addu      $a0, $zero, $zero
    /* 3D860 8004D060 23380600 */  negu       $a3, $a2
    /* 3D864 8004D064 1280063C */  lui        $a2, %hi(D_8011A282)
    /* 3D868 8004D068 82A2C684 */  lh         $a2, %lo(D_8011A282)($a2)
    /* 3D86C 8004D06C 40100400 */  sll        $v0, $a0, 1
  .L8004D070:
    /* 3D870 8004D070 21104400 */  addu       $v0, $v0, $a0
    /* 3D874 8004D074 80100200 */  sll        $v0, $v0, 2
    /* 3D878 8004D078 23104400 */  subu       $v0, $v0, $a0
    /* 3D87C 8004D07C C0180200 */  sll        $v1, $v0, 3
    /* 3D880 8004D080 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 3D884 8004D084 21082300 */  addu       $at, $at, $v1
    /* 3D888 8004D088 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* 3D88C 8004D08C 00000000 */  nop
    /* 3D890 8004D090 09005214 */  bne        $v0, $s2, .L8004D0B8
    /* 3D894 8004D094 00000000 */   nop
    /* 3D898 8004D098 1180013C */  lui        $at, %hi(D_80113F0D)
    /* 3D89C 8004D09C 21082300 */  addu       $at, $at, $v1
    /* 3D8A0 8004D0A0 0D3F2280 */  lb         $v0, %lo(D_80113F0D)($at)
    /* 3D8A4 8004D0A4 00000000 */  nop
    /* 3D8A8 8004D0A8 03004714 */  bne        $v0, $a3, .L8004D0B8
    /* 3D8AC 8004D0AC 00000000 */   nop
    /* 3D8B0 8004D0B0 32340108 */  j          .L8004D0C8
    /* 3D8B4 8004D0B4 21B8A000 */   addu      $s7, $a1, $zero
  .L8004D0B8:
    /* 3D8B8 8004D0B8 01008424 */  addiu      $a0, $a0, 0x1
    /* 3D8BC 8004D0BC 2A108600 */  slt        $v0, $a0, $a2
    /* 3D8C0 8004D0C0 EBFF4014 */  bnez       $v0, .L8004D070
    /* 3D8C4 8004D0C4 40100400 */   sll       $v0, $a0, 1
  .L8004D0C8:
    /* 3D8C8 8004D0C8 0100A524 */  addiu      $a1, $a1, 0x1
    /* 3D8CC 8004D0CC 1C00A228 */  slti       $v0, $a1, 0x1C
    /* 3D8D0 8004D0D0 C1FF4014 */  bnez       $v0, .L8004CFD8
    /* 3D8D4 8004D0D4 2700A624 */   addiu     $a2, $a1, 0x27
    /* 3D8D8 8004D0D8 21206002 */  addu       $a0, $s3, $zero
    /* 3D8DC 8004D0DC DBCA010C */  jal        func_80072B6C
    /* 3D8E0 8004D0E0 21280002 */   addu      $a1, $s0, $zero
    /* 3D8E4 8004D0E4 21184000 */  addu       $v1, $v0, $zero
    /* 3D8E8 8004D0E8 2A107600 */  slt        $v0, $v1, $s6
    /* 3D8EC 8004D0EC 03004014 */  bnez       $v0, .L8004D0FC
    /* 3D8F0 8004D0F0 00000000 */   nop
    /* 3D8F4 8004D0F4 21B06000 */  addu       $s6, $v1, $zero
    /* 3D8F8 8004D0F8 BC0F90AF */  sw         $s0, %gp_rel(D_80159494)($gp)
  .L8004D0FC:
    /* 3D8FC 8004D0FC 1E002012 */  beqz       $s1, .L8004D178
    /* 3D900 8004D100 00000000 */   nop
  .L8004D104:
    /* 3D904 8004D104 1C008016 */  bnez       $s4, .L8004D178
    /* 3D908 8004D108 21204002 */   addu      $a0, $s2, $zero
    /* 3D90C 8004D10C DBCA010C */  jal        func_80072B6C
    /* 3D910 8004D110 21280002 */   addu      $a1, $s0, $zero
    /* 3D914 8004D114 21184000 */  addu       $v1, $v0, $zero
    /* 3D918 8004D118 3803AA8F */  lw         $t2, 0x338($sp)
    /* 3D91C 8004D11C 00000000 */  nop
    /* 3D920 8004D120 2A106A00 */  slt        $v0, $v1, $t2
    /* 3D924 8004D124 0D004014 */  bnez       $v0, .L8004D15C
    /* 3D928 8004D128 00000000 */   nop
    /* 3D92C 8004D12C B80F828F */  lw         $v0, %gp_rel(D_80159490)($gp)
    /* 3D930 8004D130 00000000 */  nop
    /* 3D934 8004D134 05004004 */  bltz       $v0, .L8004D14C
    /* 3D938 8004D138 00000000 */   nop
    /* 3D93C 8004D13C C00F82AF */  sw         $v0, %gp_rel(D_80159498)($gp)
    /* 3D940 8004D140 3803AB8F */  lw         $t3, 0x338($sp)
    /* 3D944 8004D144 00000000 */  nop
    /* 3D948 8004D148 4003ABAF */  sw         $t3, 0x340($sp)
  .L8004D14C:
    /* 3D94C 8004D14C 3803A3AF */  sw         $v1, 0x338($sp)
    /* 3D950 8004D150 B80F90AF */  sw         $s0, %gp_rel(D_80159490)($gp)
    /* 3D954 8004D154 5F340108 */  j          .L8004D17C
    /* 3D958 8004D158 01001026 */   addiu     $s0, $s0, 0x1
  .L8004D15C:
    /* 3D95C 8004D15C 4003AA8F */  lw         $t2, 0x340($sp)
    /* 3D960 8004D160 00000000 */  nop
    /* 3D964 8004D164 2A106A00 */  slt        $v0, $v1, $t2
    /* 3D968 8004D168 03004014 */  bnez       $v0, .L8004D178
    /* 3D96C 8004D16C 00000000 */   nop
    /* 3D970 8004D170 4003A3AF */  sw         $v1, 0x340($sp)
    /* 3D974 8004D174 C00F90AF */  sw         $s0, %gp_rel(D_80159498)($gp)
  .L8004D178:
    /* 3D978 8004D178 01001026 */  addiu      $s0, $s0, 0x1
  .L8004D17C:
    /* 3D97C 8004D17C 5D00022A */  slti       $v0, $s0, 0x5D
    /* 3D980 8004D180 6DFF4014 */  bnez       $v0, .L8004CF38
    /* 3D984 8004D184 21206002 */   addu      $a0, $s3, $zero
    /* 3D988 8004D188 9C03AB8F */  lw         $t3, 0x39C($sp)
    /* 3D98C 8004D18C 00000000 */  nop
    /* 3D990 8004D190 9A026015 */  bnez       $t3, .L8004DBFC
    /* 3D994 8004D194 00000000 */   nop
    /* 3D998 8004D198 4130010C */  jal        func_8004C104
    /* 3D99C 8004D19C 21284002 */   addu      $a1, $s2, $zero
    /* 3D9A0 8004D1A0 8A54020C */  jal        func_80095228
    /* 3D9A4 8004D1A4 21204002 */   addu      $a0, $s2, $zero
    /* 3D9A8 8004D1A8 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 3D9AC 8004D1AC 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 3D9B0 8004D1B0 A587030C */  jal        func_800E1E94
    /* 3D9B4 8004D1B4 21284000 */   addu      $a1, $v0, $zero
    /* 3D9B8 8004D1B8 4803AA8F */  lw         $t2, 0x348($sp)
    /* 3D9BC 8004D1BC 00000000 */  nop
    /* 3D9C0 8004D1C0 7E004015 */  bnez       $t2, .L8004D3BC
    /* 3D9C4 8004D1C4 40101200 */   sll       $v0, $s2, 1
    /* 3D9C8 8004D1C8 21105200 */  addu       $v0, $v0, $s2
    /* 3D9CC 8004D1CC 80100200 */  sll        $v0, $v0, 2
    /* 3D9D0 8004D1D0 23105200 */  subu       $v0, $v0, $s2
    /* 3D9D4 8004D1D4 00110200 */  sll        $v0, $v0, 4
    /* 3D9D8 8004D1D8 23105200 */  subu       $v0, $v0, $s2
    /* 3D9DC 8004D1DC C0100200 */  sll        $v0, $v0, 3
    /* 3D9E0 8004D1E0 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 3D9E4 8004D1E4 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 3D9E8 8004D1E8 80181300 */  sll        $v1, $s3, 2
    /* 3D9EC 8004D1EC 21104400 */  addu       $v0, $v0, $a0
    /* 3D9F0 8004D1F0 21186200 */  addu       $v1, $v1, $v0
    /* 3D9F4 8004D1F4 0000628C */  lw         $v0, 0x0($v1)
    /* 3D9F8 8004D1F8 00000000 */  nop
    /* 3D9FC 8004D1FC 10004230 */  andi       $v0, $v0, 0x10
    /* 3DA00 8004D200 13004014 */  bnez       $v0, .L8004D250
    /* 3DA04 8004D204 40101300 */   sll       $v0, $s3, 1
    /* 3DA08 8004D208 21105300 */  addu       $v0, $v0, $s3
    /* 3DA0C 8004D20C 80100200 */  sll        $v0, $v0, 2
    /* 3DA10 8004D210 23105300 */  subu       $v0, $v0, $s3
    /* 3DA14 8004D214 00110200 */  sll        $v0, $v0, 4
    /* 3DA18 8004D218 23105300 */  subu       $v0, $v0, $s3
    /* 3DA1C 8004D21C C0100200 */  sll        $v0, $v0, 3
    /* 3DA20 8004D220 80181200 */  sll        $v1, $s2, 2
    /* 3DA24 8004D224 21104400 */  addu       $v0, $v0, $a0
    /* 3DA28 8004D228 21186200 */  addu       $v1, $v1, $v0
    /* 3DA2C 8004D22C 0000628C */  lw         $v0, 0x0($v1)
    /* 3DA30 8004D230 00000000 */  nop
    /* 3DA34 8004D234 00104230 */  andi       $v0, $v0, 0x1000
    /* 3DA38 8004D238 05004014 */  bnez       $v0, .L8004D250
    /* 3DA3C 8004D23C 00000000 */   nop
    /* 3DA40 8004D240 E00F828F */  lw         $v0, %gp_rel(D_801594B8)($gp)
    /* 3DA44 8004D244 00000000 */  nop
    /* 3DA48 8004D248 1F004010 */  beqz       $v0, .L8004D2C8
    /* 3DA4C 8004D24C 40101200 */   sll       $v0, $s2, 1
  .L8004D250:
    /* 3DA50 8004D250 6B02C017 */  bnez       $fp, .L8004DC00
    /* 3DA54 8004D254 7800A427 */   addiu     $a0, $sp, 0x78
    /* 3DA58 8004D258 21200000 */  addu       $a0, $zero, $zero
    /* 3DA5C 8004D25C 7253020C */  jal        func_80094DC8
    /* 3DA60 8004D260 02000524 */   addiu     $a1, $zero, 0x2
    /* 3DA64 8004D264 00140200 */  sll        $v0, $v0, 16
    /* 3DA68 8004D268 0A004010 */  beqz       $v0, .L8004D294
    /* 3DA6C 8004D26C 00000000 */   nop
    /* 3DA70 8004D270 AF8D020C */  jal        func_800A36BC
    /* 3DA74 8004D274 04000424 */   addiu     $a0, $zero, 0x4
    /* 3DA78 8004D278 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3DA7C 8004D27C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3DA80 8004D280 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3DA84 8004D284 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3DA88 8004D288 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3DA8C 8004D28C AD340108 */  j          .L8004D2B4
    /* 3DA90 8004D290 0B4E0524 */   addiu     $a1, $zero, 0x4E0B
  .L8004D294:
    /* 3DA94 8004D294 AF8D020C */  jal        func_800A36BC
    /* 3DA98 8004D298 03000424 */   addiu     $a0, $zero, 0x3
    /* 3DA9C 8004D29C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3DAA0 8004D2A0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3DAA4 8004D2A4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3DAA8 8004D2A8 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3DAAC 8004D2AC F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3DAB0 8004D2B0 964E0524 */  addiu      $a1, $zero, 0x4E96
  .L8004D2B4:
    /* 3DAB4 8004D2B4 21300000 */  addu       $a2, $zero, $zero
    /* 3DAB8 8004D2B8 B4E2020C */  jal        func_800B8AD0
    /* 3DABC 8004D2BC 21380000 */   addu      $a3, $zero, $zero
    /* 3DAC0 8004D2C0 00370108 */  j          .L8004DC00
    /* 3DAC4 8004D2C4 7800A427 */   addiu     $a0, $sp, 0x78
  .L8004D2C8:
    /* 3DAC8 8004D2C8 21105200 */  addu       $v0, $v0, $s2
    /* 3DACC 8004D2CC 80100200 */  sll        $v0, $v0, 2
    /* 3DAD0 8004D2D0 23105200 */  subu       $v0, $v0, $s2
    /* 3DAD4 8004D2D4 00110200 */  sll        $v0, $v0, 4
    /* 3DAD8 8004D2D8 23105200 */  subu       $v0, $v0, $s2
    /* 3DADC 8004D2DC C0100200 */  sll        $v0, $v0, 3
    /* 3DAE0 8004D2E0 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 3DAE4 8004D2E4 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 3DAE8 8004D2E8 80181300 */  sll        $v1, $s3, 2
    /* 3DAEC 8004D2EC 21104400 */  addu       $v0, $v0, $a0
    /* 3DAF0 8004D2F0 21186200 */  addu       $v1, $v1, $v0
    /* 3DAF4 8004D2F4 0000628C */  lw         $v0, 0x0($v1)
    /* 3DAF8 8004D2F8 00000000 */  nop
    /* 3DAFC 8004D2FC 00024230 */  andi       $v0, $v0, 0x200
    /* 3DB00 8004D300 10004014 */  bnez       $v0, .L8004D344
    /* 3DB04 8004D304 00000000 */   nop
    /* 3DB08 8004D308 900F828F */  lw         $v0, %gp_rel(D_80159468)($gp)
    /* 3DB0C 8004D30C 00000000 */  nop
    /* 3DB10 8004D310 06004010 */  beqz       $v0, .L8004D32C
    /* 3DB14 8004D314 00000000 */   nop
    /* 3DB18 8004D318 3003AB8F */  lw         $t3, 0x330($sp)
    /* 3DB1C 8004D31C 00000000 */  nop
    /* 3DB20 8004D320 06006229 */  slti       $v0, $t3, 0x6
    /* 3DB24 8004D324 07004010 */  beqz       $v0, .L8004D344
    /* 3DB28 8004D328 00000000 */   nop
  .L8004D32C:
    /* 3DB2C 8004D32C 7C01848F */  lw         $a0, %gp_rel(D_80158654)($gp)
    /* 3DB30 8004D330 0B76030C */  jal        func_800DD82C
    /* 3DB34 8004D334 00000000 */   nop
    /* 3DB38 8004D338 06004228 */  slti       $v0, $v0, 0x6
    /* 3DB3C 8004D33C 1F004014 */  bnez       $v0, .L8004D3BC
    /* 3DB40 8004D340 00000000 */   nop
  .L8004D344:
    /* 3DB44 8004D344 2E02C017 */  bnez       $fp, .L8004DC00
    /* 3DB48 8004D348 7800A427 */   addiu     $a0, $sp, 0x78
    /* 3DB4C 8004D34C 21200000 */  addu       $a0, $zero, $zero
    /* 3DB50 8004D350 7253020C */  jal        func_80094DC8
    /* 3DB54 8004D354 02000524 */   addiu     $a1, $zero, 0x2
    /* 3DB58 8004D358 00140200 */  sll        $v0, $v0, 16
    /* 3DB5C 8004D35C 0A004010 */  beqz       $v0, .L8004D388
    /* 3DB60 8004D360 00000000 */   nop
    /* 3DB64 8004D364 AF8D020C */  jal        func_800A36BC
    /* 3DB68 8004D368 04000424 */   addiu     $a0, $zero, 0x4
    /* 3DB6C 8004D36C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3DB70 8004D370 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3DB74 8004D374 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3DB78 8004D378 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3DB7C 8004D37C F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3DB80 8004D380 EA340108 */  j          .L8004D3A8
    /* 3DB84 8004D384 0B4E0524 */   addiu     $a1, $zero, 0x4E0B
  .L8004D388:
    /* 3DB88 8004D388 AF8D020C */  jal        func_800A36BC
    /* 3DB8C 8004D38C 03000424 */   addiu     $a0, $zero, 0x3
    /* 3DB90 8004D390 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3DB94 8004D394 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3DB98 8004D398 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3DB9C 8004D39C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3DBA0 8004D3A0 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3DBA4 8004D3A4 964E0524 */  addiu      $a1, $zero, 0x4E96
  .L8004D3A8:
    /* 3DBA8 8004D3A8 21300000 */  addu       $a2, $zero, $zero
    /* 3DBAC 8004D3AC B4E2020C */  jal        func_800B8AD0
    /* 3DBB0 8004D3B0 21380000 */   addu      $a3, $zero, $zero
    /* 3DBB4 8004D3B4 00370108 */  j          .L8004DC00
    /* 3DBB8 8004D3B8 7800A427 */   addiu     $a0, $sp, 0x78
  .L8004D3BC:
    /* 3DBBC 8004D3BC 1B00E006 */  bltz       $s7, .L8004D42C
    /* 3DBC0 8004D3C0 00000000 */   nop
    /* 3DBC4 8004D3C4 1280023C */  lui        $v0, %hi(D_8011A272)
    /* 3DBC8 8004D3C8 72A24290 */  lbu        $v0, %lo(D_8011A272)($v0)
    /* 3DBCC 8004D3CC 00000000 */  nop
    /* 3DBD0 8004D3D0 0400422C */  sltiu      $v0, $v0, 0x4
    /* 3DBD4 8004D3D4 15004014 */  bnez       $v0, .L8004D42C
    /* 3DBD8 8004D3D8 00000000 */   nop
    /* 3DBDC 8004D3DC 0802C017 */  bnez       $fp, .L8004DC00
    /* 3DBE0 8004D3E0 7800A427 */   addiu     $a0, $sp, 0x78
    /* 3DBE4 8004D3E4 2700E626 */  addiu      $a2, $s7, 0x27
    /* 3DBE8 8004D3E8 C0100600 */  sll        $v0, $a2, 3
    /* 3DBEC 8004D3EC 1180013C */  lui        $at, %hi(D_8010D064)
    /* 3DBF0 8004D3F0 21082200 */  addu       $at, $at, $v0
    /* 3DBF4 8004D3F4 64D0258C */  lw         $a1, %lo(D_8010D064)($at)
    /* 3DBF8 8004D3F8 ABAC020C */  jal        func_800AB2AC
    /* 3DBFC 8004D3FC 01000424 */   addiu     $a0, $zero, 0x1
    /* 3DC00 8004D400 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3DC04 8004D404 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3DC08 8004D408 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3DC0C 8004D40C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3DC10 8004D410 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3DC14 8004D414 5E4F0524 */  addiu      $a1, $zero, 0x4F5E
    /* 3DC18 8004D418 21300000 */  addu       $a2, $zero, $zero
    /* 3DC1C 8004D41C B4E2020C */  jal        func_800B8AD0
    /* 3DC20 8004D420 21380000 */   addu      $a3, $zero, $zero
    /* 3DC24 8004D424 00370108 */  j          .L8004DC00
    /* 3DC28 8004D428 7800A427 */   addiu     $a0, $sp, 0x78
  .L8004D42C:
    /* 3DC2C 8004D42C 2803AA8F */  lw         $t2, 0x328($sp)
    /* 3DC30 8004D430 3003AB8F */  lw         $t3, 0x330($sp)
    /* 3DC34 8004D434 00000000 */  nop
    /* 3DC38 8004D438 2A104B01 */  slt        $v0, $t2, $t3
    /* 3DC3C 8004D43C 3A004010 */  beqz       $v0, .L8004D528
    /* 3DC40 8004D440 01000224 */   addiu     $v0, $zero, 0x1
    /* 3DC44 8004D444 EE01C213 */  beq        $fp, $v0, .L8004DC00
    /* 3DC48 8004D448 7800A427 */   addiu     $a0, $sp, 0x78
    /* 3DC4C 8004D44C 7C01848F */  lw         $a0, %gp_rel(D_80158654)($gp)
    /* 3DC50 8004D450 0B76030C */  jal        func_800DD82C
    /* 3DC54 8004D454 00000000 */   nop
    /* 3DC58 8004D458 21284000 */  addu       $a1, $v0, $zero
    /* 3DC5C 8004D45C 40101200 */  sll        $v0, $s2, 1
    /* 3DC60 8004D460 21105200 */  addu       $v0, $v0, $s2
    /* 3DC64 8004D464 80100200 */  sll        $v0, $v0, 2
    /* 3DC68 8004D468 23105200 */  subu       $v0, $v0, $s2
    /* 3DC6C 8004D46C 00110200 */  sll        $v0, $v0, 4
    /* 3DC70 8004D470 23105200 */  subu       $v0, $v0, $s2
    /* 3DC74 8004D474 C0100200 */  sll        $v0, $v0, 3
    /* 3DC78 8004D478 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 3DC7C 8004D47C B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 3DC80 8004D480 80181300 */  sll        $v1, $s3, 2
    /* 3DC84 8004D484 21104400 */  addu       $v0, $v0, $a0
    /* 3DC88 8004D488 21186200 */  addu       $v1, $v1, $v0
    /* 3DC8C 8004D48C 0000628C */  lw         $v0, 0x0($v1)
    /* 3DC90 8004D490 00000000 */  nop
    /* 3DC94 8004D494 04004230 */  andi       $v0, $v0, 0x4
    /* 3DC98 8004D498 02004014 */  bnez       $v0, .L8004D4A4
    /* 3DC9C 8004D49C 0600A228 */   slti      $v0, $a1, 0x6
    /* 3DCA0 8004D4A0 0500A228 */  slti       $v0, $a1, 0x5
  .L8004D4A4:
    /* 3DCA4 8004D4A4 01004238 */  xori       $v0, $v0, 0x1
    /* 3DCA8 8004D4A8 1F004010 */  beqz       $v0, .L8004D528
    /* 3DCAC 8004D4AC 00000000 */   nop
    /* 3DCB0 8004D4B0 4803AA8F */  lw         $t2, 0x348($sp)
    /* 3DCB4 8004D4B4 00000000 */  nop
    /* 3DCB8 8004D4B8 1B004015 */  bnez       $t2, .L8004D528
    /* 3DCBC 8004D4BC 21206002 */   addu      $a0, $s3, $zero
    /* 3DCC0 8004D4C0 21284002 */  addu       $a1, $s2, $zero
    /* 3DCC4 8004D4C4 7F32010C */  jal        func_8004C9FC
    /* 3DCC8 8004D4C8 2130C003 */   addu      $a2, $fp, $zero
    /* 3DCCC 8004D4CC 05014014 */  bnez       $v0, .L8004D8E4
    /* 3DCD0 8004D4D0 7800A427 */   addiu     $a0, $sp, 0x78
    /* 3DCD4 8004D4D4 CA01C017 */  bnez       $fp, .L8004DC00
    /* 3DCD8 8004D4D8 00000000 */   nop
    /* 3DCDC 8004D4DC 8A54020C */  jal        func_80095228
    /* 3DCE0 8004D4E0 21206002 */   addu      $a0, $s3, $zero
    /* 3DCE4 8004D4E4 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 3DCE8 8004D4E8 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 3DCEC 8004D4EC A587030C */  jal        func_800E1E94
    /* 3DCF0 8004D4F0 21284000 */   addu      $a1, $v0, $zero
    /* 3DCF4 8004D4F4 AF8D020C */  jal        func_800A36BC
    /* 3DCF8 8004D4F8 03000424 */   addiu     $a0, $zero, 0x3
    /* 3DCFC 8004D4FC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3DD00 8004D500 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3DD04 8004D504 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3DD08 8004D508 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3DD0C 8004D50C F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3DD10 8004D510 964E0524 */  addiu      $a1, $zero, 0x4E96
    /* 3DD14 8004D514 21300000 */  addu       $a2, $zero, $zero
    /* 3DD18 8004D518 B4E2020C */  jal        func_800B8AD0
    /* 3DD1C 8004D51C 21380000 */   addu      $a3, $zero, $zero
    /* 3DD20 8004D520 00370108 */  j          .L8004DC00
    /* 3DD24 8004D524 7800A427 */   addiu     $a0, $sp, 0x78
  .L8004D528:
    /* 3DD28 8004D528 1280013C */  lui        $at, %hi(D_8011A37E)
    /* 3DD2C 8004D52C 21083300 */  addu       $at, $at, $s3
    /* 3DD30 8004D530 7EA32390 */  lbu        $v1, %lo(D_8011A37E)($at)
    /* 3DD34 8004D534 07000224 */  addiu      $v0, $zero, 0x7
    /* 3DD38 8004D538 63006214 */  bne        $v1, $v0, .L8004D6C8
    /* 3DD3C 8004D53C 40101300 */   sll       $v0, $s3, 1
    /* 3DD40 8004D540 21105300 */  addu       $v0, $v0, $s3
    /* 3DD44 8004D544 80100200 */  sll        $v0, $v0, 2
    /* 3DD48 8004D548 23105300 */  subu       $v0, $v0, $s3
    /* 3DD4C 8004D54C 00110200 */  sll        $v0, $v0, 4
    /* 3DD50 8004D550 23105300 */  subu       $v0, $v0, $s3
    /* 3DD54 8004D554 C0100200 */  sll        $v0, $v0, 3
    /* 3DD58 8004D558 1180013C */  lui        $at, %hi(D_801176FA)
    /* 3DD5C 8004D55C 21082200 */  addu       $at, $at, $v0
    /* 3DD60 8004D560 FA762284 */  lh         $v0, %lo(D_801176FA)($at)
    /* 3DD64 8004D564 00000000 */  nop
    /* 3DD68 8004D568 05004228 */  slti       $v0, $v0, 0x5
    /* 3DD6C 8004D56C 56004014 */  bnez       $v0, .L8004D6C8
    /* 3DD70 8004D570 00000000 */   nop
    /* 3DD74 8004D574 4803AB8F */  lw         $t3, 0x348($sp)
    /* 3DD78 8004D578 00000000 */  nop
    /* 3DD7C 8004D57C 52006015 */  bnez       $t3, .L8004D6C8
    /* 3DD80 8004D580 00000000 */   nop
    /* 3DD84 8004D584 1280023C */  lui        $v0, %hi(D_8011A262)
    /* 3DD88 8004D588 62A24284 */  lh         $v0, %lo(D_8011A262)($v0)
    /* 3DD8C 8004D58C 00000000 */  nop
    /* 3DD90 8004D590 C9004228 */  slti       $v0, $v0, 0xC9
    /* 3DD94 8004D594 02004014 */  bnez       $v0, .L8004D5A0
    /* 3DD98 8004D598 03001024 */   addiu     $s0, $zero, 0x3
    /* 3DD9C 8004D59C 02001024 */  addiu      $s0, $zero, 0x2
  .L8004D5A0:
    /* 3DDA0 8004D5A0 7C01848F */  lw         $a0, %gp_rel(D_80158654)($gp)
    /* 3DDA4 8004D5A4 0B76030C */  jal        func_800DD82C
    /* 3DDA8 8004D5A8 00000000 */   nop
    /* 3DDAC 8004D5AC 21284000 */  addu       $a1, $v0, $zero
    /* 3DDB0 8004D5B0 40101200 */  sll        $v0, $s2, 1
    /* 3DDB4 8004D5B4 21105200 */  addu       $v0, $v0, $s2
    /* 3DDB8 8004D5B8 80100200 */  sll        $v0, $v0, 2
    /* 3DDBC 8004D5BC 23105200 */  subu       $v0, $v0, $s2
    /* 3DDC0 8004D5C0 00110200 */  sll        $v0, $v0, 4
    /* 3DDC4 8004D5C4 23105200 */  subu       $v0, $v0, $s2
    /* 3DDC8 8004D5C8 C0100200 */  sll        $v0, $v0, 3
    /* 3DDCC 8004D5CC 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 3DDD0 8004D5D0 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 3DDD4 8004D5D4 80181300 */  sll        $v1, $s3, 2
    /* 3DDD8 8004D5D8 21104400 */  addu       $v0, $v0, $a0
    /* 3DDDC 8004D5DC 21186200 */  addu       $v1, $v1, $v0
    /* 3DDE0 8004D5E0 0000628C */  lw         $v0, 0x0($v1)
    /* 3DDE4 8004D5E4 00000000 */  nop
    /* 3DDE8 8004D5E8 04004230 */  andi       $v0, $v0, 0x4
    /* 3DDEC 8004D5EC 03004010 */  beqz       $v0, .L8004D5FC
    /* 3DDF0 8004D5F0 01000226 */   addiu     $v0, $s0, 0x1
    /* 3DDF4 8004D5F4 80350108 */  j          .L8004D600
    /* 3DDF8 8004D5F8 2A104500 */   slt       $v0, $v0, $a1
  .L8004D5FC:
    /* 3DDFC 8004D5FC 2A100502 */  slt        $v0, $s0, $a1
  .L8004D600:
    /* 3DE00 8004D600 31004010 */  beqz       $v0, .L8004D6C8
    /* 3DE04 8004D604 00000000 */   nop
    /* 3DE08 8004D608 1180043C */  lui        $a0, %hi(D_8010D447)
    /* 3DE0C 8004D60C 47D48424 */  addiu      $a0, $a0, %lo(D_8010D447)
    /* 3DE10 8004D610 00008280 */  lb         $v0, 0x0($a0)
    /* 3DE14 8004D614 B80F838F */  lw         $v1, %gp_rel(D_80159490)($gp)
    /* 3DE18 8004D618 00000000 */  nop
    /* 3DE1C 8004D61C 2A006210 */  beq        $v1, $v0, .L8004D6C8
    /* 3DE20 8004D620 00000000 */   nop
    /* 3DE24 8004D624 ECFF8280 */  lb         $v0, -0x14($a0)
    /* 3DE28 8004D628 00000000 */  nop
    /* 3DE2C 8004D62C 26006210 */  beq        $v1, $v0, .L8004D6C8
    /* 3DE30 8004D630 00000000 */   nop
    /* 3DE34 8004D634 3C008280 */  lb         $v0, 0x3C($a0)
    /* 3DE38 8004D638 00000000 */  nop
    /* 3DE3C 8004D63C 22006210 */  beq        $v1, $v0, .L8004D6C8
    /* 3DE40 8004D640 00000000 */   nop
    /* 3DE44 8004D644 50008280 */  lb         $v0, 0x50($a0)
    /* 3DE48 8004D648 00000000 */  nop
    /* 3DE4C 8004D64C 1E006210 */  beq        $v1, $v0, .L8004D6C8
    /* 3DE50 8004D650 00000000 */   nop
    /* 3DE54 8004D654 24FF8280 */  lb         $v0, -0xDC($a0)
    /* 3DE58 8004D658 00000000 */  nop
    /* 3DE5C 8004D65C 1A006210 */  beq        $v1, $v0, .L8004D6C8
    /* 3DE60 8004D660 00000000 */   nop
    /* 3DE64 8004D664 D4FE8280 */  lb         $v0, -0x12C($a0)
    /* 3DE68 8004D668 00000000 */  nop
    /* 3DE6C 8004D66C 16006210 */  beq        $v1, $v0, .L8004D6C8
    /* 3DE70 8004D670 22000224 */   addiu     $v0, $zero, 0x22
    /* 3DE74 8004D674 14006210 */  beq        $v1, $v0, .L8004D6C8
    /* 3DE78 8004D678 01000224 */   addiu     $v0, $zero, 0x1
    /* 3DE7C 8004D67C 5F01C213 */  beq        $fp, $v0, .L8004DBFC
    /* 3DE80 8004D680 21206002 */   addu      $a0, $s3, $zero
    /* 3DE84 8004D684 21284002 */  addu       $a1, $s2, $zero
    /* 3DE88 8004D688 7F32010C */  jal        func_8004C9FC
    /* 3DE8C 8004D68C 2130C003 */   addu      $a2, $fp, $zero
    /* 3DE90 8004D690 94004014 */  bnez       $v0, .L8004D8E4
    /* 3DE94 8004D694 7800A427 */   addiu     $a0, $sp, 0x78
    /* 3DE98 8004D698 5901C017 */  bnez       $fp, .L8004DC00
    /* 3DE9C 8004D69C 0F500524 */   addiu     $a1, $zero, 0x500F
    /* 3DEA0 8004D6A0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3DEA4 8004D6A4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3DEA8 8004D6A8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3DEAC 8004D6AC 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3DEB0 8004D6B0 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3DEB4 8004D6B4 21300000 */  addu       $a2, $zero, $zero
    /* 3DEB8 8004D6B8 B4E2020C */  jal        func_800B8AD0
    /* 3DEBC 8004D6BC 21380000 */   addu      $a3, $zero, $zero
    /* 3DEC0 8004D6C0 00370108 */  j          .L8004DC00
    /* 3DEC4 8004D6C4 7800A427 */   addiu     $a0, $sp, 0x78
  .L8004D6C8:
    /* 3DEC8 8004D6C8 B80F828F */  lw         $v0, %gp_rel(D_80159490)($gp)
    /* 3DECC 8004D6CC 00000000 */  nop
    /* 3DED0 8004D6D0 74004104 */  bgez       $v0, .L8004D8A4
    /* 3DED4 8004D6D4 00000000 */   nop
    /* 3DED8 8004D6D8 BC0F828F */  lw         $v0, %gp_rel(D_80159494)($gp)
    /* 3DEDC 8004D6DC 00000000 */  nop
    /* 3DEE0 8004D6E0 78004004 */  bltz       $v0, .L8004D8C4
    /* 3DEE4 8004D6E4 40101200 */   sll       $v0, $s2, 1
    /* 3DEE8 8004D6E8 21105200 */  addu       $v0, $v0, $s2
    /* 3DEEC 8004D6EC 80100200 */  sll        $v0, $v0, 2
    /* 3DEF0 8004D6F0 23105200 */  subu       $v0, $v0, $s2
    /* 3DEF4 8004D6F4 00110200 */  sll        $v0, $v0, 4
    /* 3DEF8 8004D6F8 23105200 */  subu       $v0, $v0, $s2
    /* 3DEFC 8004D6FC C0A00200 */  sll        $s4, $v0, 3
    /* 3DF00 8004D700 1180023C */  lui        $v0, %hi(D_801176B4)
    /* 3DF04 8004D704 B4764224 */  addiu      $v0, $v0, %lo(D_801176B4)
    /* 3DF08 8004D708 80181300 */  sll        $v1, $s3, 2
    /* 3DF0C 8004D70C 21108202 */  addu       $v0, $s4, $v0
    /* 3DF10 8004D710 21186200 */  addu       $v1, $v1, $v0
    /* 3DF14 8004D714 0000628C */  lw         $v0, 0x0($v1)
    /* 3DF18 8004D718 00000000 */  nop
    /* 3DF1C 8004D71C 08004230 */  andi       $v0, $v0, 0x8
    /* 3DF20 8004D720 60004010 */  beqz       $v0, .L8004D8A4
    /* 3DF24 8004D724 40101300 */   sll       $v0, $s3, 1
    /* 3DF28 8004D728 1180013C */  lui        $at, %hi(D_801176A2)
    /* 3DF2C 8004D72C 21083400 */  addu       $at, $at, $s4
    /* 3DF30 8004D730 A2763190 */  lbu        $s1, %lo(D_801176A2)($at)
    /* 3DF34 8004D734 21105300 */  addu       $v0, $v0, $s3
    /* 3DF38 8004D738 80100200 */  sll        $v0, $v0, 2
    /* 3DF3C 8004D73C 23105300 */  subu       $v0, $v0, $s3
    /* 3DF40 8004D740 00110200 */  sll        $v0, $v0, 4
    /* 3DF44 8004D744 23105300 */  subu       $v0, $v0, $s3
    /* 3DF48 8004D748 C0100200 */  sll        $v0, $v0, 3
    /* 3DF4C 8004D74C 1180013C */  lui        $at, %hi(D_801176A2)
    /* 3DF50 8004D750 21082200 */  addu       $at, $at, $v0
    /* 3DF54 8004D754 A2763090 */  lbu        $s0, %lo(D_801176A2)($at)
    /* 3DF58 8004D758 1180013C */  lui        $at, %hi(D_80117698)
    /* 3DF5C 8004D75C 21083400 */  addu       $at, $at, $s4
    /* 3DF60 8004D760 98762384 */  lh         $v1, %lo(D_80117698)($at)
    /* 3DF64 8004D764 00000000 */  nop
    /* 3DF68 8004D768 40100300 */  sll        $v0, $v1, 1
    /* 3DF6C 8004D76C 21104300 */  addu       $v0, $v0, $v1
    /* 3DF70 8004D770 00110200 */  sll        $v0, $v0, 4
    /* 3DF74 8004D774 1180013C */  lui        $at, %hi(D_80116AD2)
    /* 3DF78 8004D778 21082200 */  addu       $at, $at, $v0
    /* 3DF7C 8004D77C D26A2280 */  lb         $v0, %lo(D_80116AD2)($at)
    /* 3DF80 8004D780 00000000 */  nop
    /* 3DF84 8004D784 FAFF4224 */  addiu      $v0, $v0, -0x6
    /* 3DF88 8004D788 23800202 */  subu       $s0, $s0, $v0
    /* 3DF8C 8004D78C AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 3DF90 8004D790 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 3DF94 8004D794 19002202 */  multu      $s1, $v0
    /* 3DF98 8004D798 10500000 */  mfhi       $t2
    /* 3DF9C 8004D79C C2200A00 */  srl        $a0, $t2, 3
    /* 3DFA0 8004D7A0 FF008430 */  andi       $a0, $a0, 0xFF
    /* 3DFA4 8004D7A4 21280000 */  addu       $a1, $zero, $zero
    /* 3DFA8 8004D7A8 F53A030C */  jal        func_800CEBD4
    /* 3DFAC 8004D7AC 05000624 */   addiu     $a2, $zero, 0x5
    /* 3DFB0 8004D7B0 23800202 */  subu       $s0, $s0, $v0
    /* 3DFB4 8004D7B4 2A801102 */  slt        $s0, $s0, $s1
    /* 3DFB8 8004D7B8 3A000012 */  beqz       $s0, .L8004D8A4
    /* 3DFBC 8004D7BC 00000000 */   nop
    /* 3DFC0 8004D7C0 1180013C */  lui        $at, %hi(D_801176B1)
    /* 3DFC4 8004D7C4 21083400 */  addu       $at, $at, $s4
    /* 3DFC8 8004D7C8 B1762280 */  lb         $v0, %lo(D_801176B1)($at)
    /* 3DFCC 8004D7CC 00000000 */  nop
    /* 3DFD0 8004D7D0 02004228 */  slti       $v0, $v0, 0x2
    /* 3DFD4 8004D7D4 03004014 */  bnez       $v0, .L8004D7E4
    /* 3DFD8 8004D7D8 03000224 */   addiu     $v0, $zero, 0x3
    /* 3DFDC 8004D7DC 3100C217 */  bne        $fp, $v0, .L8004D8A4
    /* 3DFE0 8004D7E0 00000000 */   nop
  .L8004D7E4:
    /* 3DFE4 8004D7E4 BC0F828F */  lw         $v0, %gp_rel(D_80159494)($gp)
    /* 3DFE8 8004D7E8 00000000 */  nop
    /* 3DFEC 8004D7EC 00110200 */  sll        $v0, $v0, 4
    /* 3DFF0 8004D7F0 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* 3DFF4 8004D7F4 21082200 */  addu       $at, $at, $v0
    /* 3DFF8 8004D7F8 A0C2258C */  lw         $a1, %lo(D_8010C2A0)($at)
    /* 3DFFC 8004D7FC ABAC020C */  jal        func_800AB2AC
    /* 3E000 8004D800 01000424 */   addiu     $a0, $zero, 0x1
    /* 3E004 8004D804 AF8D020C */  jal        func_800A36BC
    /* 3E008 8004D808 03000424 */   addiu     $a0, $zero, 0x3
    /* 3E00C 8004D80C 0200C22B */  slti       $v0, $fp, 0x2
    /* 3E010 8004D810 07004010 */  beqz       $v0, .L8004D830
    /* 3E014 8004D814 86500524 */   addiu     $a1, $zero, 0x5086
    /* 3E018 8004D818 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3E01C 8004D81C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3E020 8004D820 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3E024 8004D824 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3E028 8004D828 12360108 */  j          .L8004D848
    /* 3E02C 8004D82C 1800A0AF */   sw        $zero, 0x18($sp)
  .L8004D830:
    /* 3E030 8004D830 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3E034 8004D834 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3E038 8004D838 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3E03C 8004D83C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3E040 8004D840 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3E044 8004D844 5B510524 */  addiu      $a1, $zero, 0x515B
  .L8004D848:
    /* 3E048 8004D848 21300000 */  addu       $a2, $zero, $zero
    /* 3E04C 8004D84C B4E2020C */  jal        func_800B8AD0
    /* 3E050 8004D850 21380000 */   addu      $a3, $zero, $zero
    /* 3E054 8004D854 21206002 */  addu       $a0, $s3, $zero
    /* 3E058 8004D858 BC0F858F */  lw         $a1, %gp_rel(D_80159494)($gp)
    /* 3E05C 8004D85C F5CF010C */  jal        func_80073FD4
    /* 3E060 8004D860 21304002 */   addu      $a2, $s2, $zero
    /* 3E064 8004D864 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3E068 8004D868 BC0F82AF */  sw         $v0, %gp_rel(D_80159494)($gp)
    /* 3E06C 8004D86C 0200C22B */  slti       $v0, $fp, 0x2
    /* 3E070 8004D870 1F014010 */  beqz       $v0, .L8004DCF0
    /* 3E074 8004D874 40101200 */   sll       $v0, $s2, 1
    /* 3E078 8004D878 21105200 */  addu       $v0, $v0, $s2
    /* 3E07C 8004D87C 80100200 */  sll        $v0, $v0, 2
    /* 3E080 8004D880 23105200 */  subu       $v0, $v0, $s2
    /* 3E084 8004D884 00110200 */  sll        $v0, $v0, 4
    /* 3E088 8004D888 23105200 */  subu       $v0, $v0, $s2
    /* 3E08C 8004D88C C0100200 */  sll        $v0, $v0, 3
    /* 3E090 8004D890 1180013C */  lui        $at, %hi(D_801176B1)
    /* 3E094 8004D894 21082200 */  addu       $at, $at, $v0
    /* 3E098 8004D898 B1762390 */  lbu        $v1, %lo(D_801176B1)($at)
    /* 3E09C 8004D89C FC360108 */  j          .L8004DBF0
    /* 3E0A0 8004D8A0 02006324 */   addiu     $v1, $v1, 0x2
  .L8004D8A4:
    /* 3E0A4 8004D8A4 BC0F828F */  lw         $v0, %gp_rel(D_80159494)($gp)
    /* 3E0A8 8004D8A8 00000000 */  nop
    /* 3E0AC 8004D8AC 06004004 */  bltz       $v0, .L8004D8C8
    /* 3E0B0 8004D8B0 01000224 */   addiu     $v0, $zero, 0x1
    /* 3E0B4 8004D8B4 B80F828F */  lw         $v0, %gp_rel(D_80159490)($gp)
    /* 3E0B8 8004D8B8 00000000 */  nop
    /* 3E0BC 8004D8BC 19004104 */  bgez       $v0, .L8004D924
    /* 3E0C0 8004D8C0 0200C22B */   slti      $v0, $fp, 0x2
  .L8004D8C4:
    /* 3E0C4 8004D8C4 01000224 */  addiu      $v0, $zero, 0x1
  .L8004D8C8:
    /* 3E0C8 8004D8C8 CC00C213 */  beq        $fp, $v0, .L8004DBFC
    /* 3E0CC 8004D8CC 21206002 */   addu      $a0, $s3, $zero
    /* 3E0D0 8004D8D0 21284002 */  addu       $a1, $s2, $zero
    /* 3E0D4 8004D8D4 7F32010C */  jal        func_8004C9FC
    /* 3E0D8 8004D8D8 2130C003 */   addu      $a2, $fp, $zero
    /* 3E0DC 8004D8DC 05004010 */  beqz       $v0, .L8004D8F4
    /* 3E0E0 8004D8E0 7800A427 */   addiu     $a0, $sp, 0x78
  .L8004D8E4:
    /* 3E0E4 8004D8E4 0AC7020C */  jal        func_800B1C28
    /* 3E0E8 8004D8E8 02000524 */   addiu     $a1, $zero, 0x2
    /* 3E0EC 8004D8EC 40370108 */  j          .L8004DD00
    /* 3E0F0 8004D8F0 2110C003 */   addu      $v0, $fp, $zero
  .L8004D8F4:
    /* 3E0F4 8004D8F4 C200C017 */  bnez       $fp, .L8004DC00
    /* 3E0F8 8004D8F8 0F500524 */   addiu     $a1, $zero, 0x500F
    /* 3E0FC 8004D8FC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3E100 8004D900 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3E104 8004D904 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3E108 8004D908 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3E10C 8004D90C F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3E110 8004D910 21300000 */  addu       $a2, $zero, $zero
    /* 3E114 8004D914 B4E2020C */  jal        func_800B8AD0
    /* 3E118 8004D918 21380000 */   addu      $a3, $zero, $zero
    /* 3E11C 8004D91C 00370108 */  j          .L8004DC00
    /* 3E120 8004D920 7800A427 */   addiu     $a0, $sp, 0x78
  .L8004D924:
    /* 3E124 8004D924 B5004010 */  beqz       $v0, .L8004DBFC
    /* 3E128 8004D928 21206002 */   addu      $a0, $s3, $zero
    /* 3E12C 8004D92C 1803A68F */  lw         $a2, 0x318($sp)
    /* 3E130 8004D930 2003A78F */  lw         $a3, 0x320($sp)
    /* 3E134 8004D934 7831010C */  jal        func_8004C5E0
    /* 3E138 8004D938 21284002 */   addu      $a1, $s2, $zero
    /* 3E13C 8004D93C AF004010 */  beqz       $v0, .L8004DBFC
    /* 3E140 8004D940 00000000 */   nop
    /* 3E144 8004D944 BC0F828F */  lw         $v0, %gp_rel(D_80159494)($gp)
    /* 3E148 8004D948 00000000 */  nop
    /* 3E14C 8004D94C 00110200 */  sll        $v0, $v0, 4
    /* 3E150 8004D950 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* 3E154 8004D954 21082200 */  addu       $at, $at, $v0
    /* 3E158 8004D958 A0C2258C */  lw         $a1, %lo(D_8010C2A0)($at)
    /* 3E15C 8004D95C ABAC020C */  jal        func_800AB2AC
    /* 3E160 8004D960 01000424 */   addiu     $a0, $zero, 0x1
    /* 3E164 8004D964 8A54020C */  jal        func_80095228
    /* 3E168 8004D968 21206002 */   addu      $a0, $s3, $zero
    /* 3E16C 8004D96C 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* 3E170 8004D970 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* 3E174 8004D974 A587030C */  jal        func_800E1E94
    /* 3E178 8004D978 21284000 */   addu      $a1, $v0, $zero
    /* 3E17C 8004D97C B80F828F */  lw         $v0, %gp_rel(D_80159490)($gp)
    /* 3E180 8004D980 00000000 */  nop
    /* 3E184 8004D984 00110200 */  sll        $v0, $v0, 4
    /* 3E188 8004D988 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* 3E18C 8004D98C 21082200 */  addu       $at, $at, $v0
    /* 3E190 8004D990 A0C2258C */  lw         $a1, %lo(D_8010C2A0)($at)
    /* 3E194 8004D994 ABAC020C */  jal        func_800AB2AC
    /* 3E198 8004D998 03000424 */   addiu     $a0, $zero, 0x3
    /* 3E19C 8004D99C C00F828F */  lw         $v0, %gp_rel(D_80159498)($gp)
    /* 3E1A0 8004D9A0 00000000 */  nop
    /* 3E1A4 8004D9A4 03004104 */  bgez       $v0, .L8004D9B4
    /* 3E1A8 8004D9A8 00110200 */   sll       $v0, $v0, 4
    /* 3E1AC 8004D9AC 0600A006 */  bltz       $s5, .L8004D9C8
    /* 3E1B0 8004D9B0 00111500 */   sll       $v0, $s5, 4
  .L8004D9B4:
    /* 3E1B4 8004D9B4 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* 3E1B8 8004D9B8 21082200 */  addu       $at, $at, $v0
    /* 3E1BC 8004D9BC A0C2258C */  lw         $a1, %lo(D_8010C2A0)($at)
    /* 3E1C0 8004D9C0 ABAC020C */  jal        func_800AB2AC
    /* 3E1C4 8004D9C4 04000424 */   addiu     $a0, $zero, 0x4
  .L8004D9C8:
    /* 3E1C8 8004D9C8 02C5020C */  jal        func_800B1408
    /* 3E1CC 8004D9CC 7800A427 */   addiu     $a0, $sp, 0x78
    /* 3E1D0 8004D9D0 0B00C017 */  bnez       $fp, .L8004DA00
    /* 3E1D4 8004D9D4 00000000 */   nop
    /* 3E1D8 8004D9D8 900F828F */  lw         $v0, %gp_rel(D_80159468)($gp)
    /* 3E1DC 8004D9DC 00000000 */  nop
    /* 3E1E0 8004D9E0 07004014 */  bnez       $v0, .L8004DA00
    /* 3E1E4 8004D9E4 00000000 */   nop
    /* 3E1E8 8004D9E8 7C01848F */  lw         $a0, %gp_rel(D_80158654)($gp)
    /* 3E1EC 8004D9EC 0B76030C */  jal        func_800DD82C
    /* 3E1F0 8004D9F0 00000000 */   nop
    /* 3E1F4 8004D9F4 05004228 */  slti       $v0, $v0, 0x5
    /* 3E1F8 8004D9F8 0B004014 */  bnez       $v0, .L8004DA28
    /* 3E1FC 8004D9FC 7800A427 */   addiu     $a0, $sp, 0x78
  .L8004DA00:
    /* 3E200 8004DA00 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3E204 8004DA04 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3E208 8004DA08 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3E20C 8004DA0C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3E210 8004DA10 2000A0AF */  sw         $zero, 0x20($sp)
    /* 3E214 8004DA14 7800A427 */  addiu      $a0, $sp, 0x78
    /* 3E218 8004DA18 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* 3E21C 8004DA1C F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* 3E220 8004DA20 92360108 */  j          .L8004DA48
    /* 3E224 8004DA24 C0540624 */   addiu     $a2, $zero, 0x54C0
  .L8004DA28:
    /* 3E228 8004DA28 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3E22C 8004DA2C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3E230 8004DA30 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3E234 8004DA34 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3E238 8004DA38 2000A0AF */  sw         $zero, 0x20($sp)
    /* 3E23C 8004DA3C 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* 3E240 8004DA40 F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* 3E244 8004DA44 D9550624 */  addiu      $a2, $zero, 0x55D9
  .L8004DA48:
    /* 3E248 8004DA48 2CE0020C */  jal        func_800B80B0
    /* 3E24C 8004DA4C 21380000 */   addu      $a3, $zero, $zero
    /* 3E250 8004DA50 C00F838F */  lw         $v1, %gp_rel(D_80159498)($gp)
    /* 3E254 8004DA54 00000000 */  nop
    /* 3E258 8004DA58 14006004 */  bltz       $v1, .L8004DAAC
    /* 3E25C 8004DA5C 7800A427 */   addiu     $a0, $sp, 0x78
    /* 3E260 8004DA60 B80F828F */  lw         $v0, %gp_rel(D_80159490)($gp)
    /* 3E264 8004DA64 00000000 */  nop
    /* 3E268 8004DA68 10006210 */  beq        $v1, $v0, .L8004DAAC
    /* 3E26C 8004DA6C 00000000 */   nop
    /* 3E270 8004DA70 CB1A030C */  jal        func_800C6B2C
    /* 3E274 8004DA74 2800A427 */   addiu     $a0, $sp, 0x28
    /* 3E278 8004DA78 2800A427 */  addiu      $a0, $sp, 0x28
    /* 3E27C 8004DA7C 731B030C */  jal        func_800C6DCC
    /* 3E280 8004DA80 6B000524 */   addiu     $a1, $zero, 0x6B
    /* 3E284 8004DA84 1280053C */  lui        $a1, %hi(D_80121340)
    /* 3E288 8004DA88 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 3E28C 8004DA8C 33AC020C */  jal        func_800AB0CC
    /* 3E290 8004DA90 2800A427 */   addiu     $a0, $sp, 0x28
    /* 3E294 8004DA94 7800A427 */  addiu      $a0, $sp, 0x78
    /* 3E298 8004DA98 1280053C */  lui        $a1, %hi(D_80121340)
    /* 3E29C 8004DA9C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 3E2A0 8004DAA0 A8C9020C */  jal        func_800B26A0
    /* 3E2A4 8004DAA4 02000624 */   addiu     $a2, $zero, 0x2
    /* 3E2A8 8004DAA8 7800A427 */  addiu      $a0, $sp, 0x78
  .L8004DAAC:
    /* 3E2AC 8004DAAC 52DF020C */  jal        func_800B7D48
    /* 3E2B0 8004DAB0 21280000 */   addu      $a1, $zero, $zero
    /* 3E2B4 8004DAB4 21184000 */  addu       $v1, $v0, $zero
    /* 3E2B8 8004DAB8 50006010 */  beqz       $v1, .L8004DBFC
    /* 3E2BC 8004DABC 02000224 */   addiu     $v0, $zero, 0x2
    /* 3E2C0 8004DAC0 3803AB8F */  lw         $t3, 0x338($sp)
    /* 3E2C4 8004DAC4 59006214 */  bne        $v1, $v0, .L8004DC2C
    /* 3E2C8 8004DAC8 40800B00 */   sll       $s0, $t3, 1
    /* 3E2CC 8004DACC 21800000 */  addu       $s0, $zero, $zero
    /* 3E2D0 8004DAD0 C00F858F */  lw         $a1, %gp_rel(D_80159498)($gp)
    /* 3E2D4 8004DAD4 8ACA010C */  jal        func_80072A28
    /* 3E2D8 8004DAD8 21204002 */   addu      $a0, $s2, $zero
    /* 3E2DC 8004DADC 2A004014 */  bnez       $v0, .L8004DB88
    /* 3E2E0 8004DAE0 21204002 */   addu      $a0, $s2, $zero
    /* 3E2E4 8004DAE4 C17B030C */  jal        func_800DEF04
    /* 3E2E8 8004DAE8 09000524 */   addiu     $a1, $zero, 0x9
    /* 3E2EC 8004DAEC 26004014 */  bnez       $v0, .L8004DB88
    /* 3E2F0 8004DAF0 07000224 */   addiu     $v0, $zero, 0x7
    /* 3E2F4 8004DAF4 1280013C */  lui        $at, %hi(D_8011A37E)
    /* 3E2F8 8004DAF8 21083300 */  addu       $at, $at, $s3
    /* 3E2FC 8004DAFC 7EA32390 */  lbu        $v1, %lo(D_8011A37E)($at)
    /* 3E300 8004DB00 00000000 */  nop
    /* 3E304 8004DB04 0E006214 */  bne        $v1, $v0, .L8004DB40
    /* 3E308 8004DB08 40101300 */   sll       $v0, $s3, 1
    /* 3E30C 8004DB0C 21105300 */  addu       $v0, $v0, $s3
    /* 3E310 8004DB10 80100200 */  sll        $v0, $v0, 2
    /* 3E314 8004DB14 23105300 */  subu       $v0, $v0, $s3
    /* 3E318 8004DB18 00110200 */  sll        $v0, $v0, 4
    /* 3E31C 8004DB1C 23105300 */  subu       $v0, $v0, $s3
    /* 3E320 8004DB20 C0100200 */  sll        $v0, $v0, 3
    /* 3E324 8004DB24 1180013C */  lui        $at, %hi(D_801176FA)
    /* 3E328 8004DB28 21082200 */  addu       $at, $at, $v0
    /* 3E32C 8004DB2C FA762284 */  lh         $v0, %lo(D_801176FA)($at)
    /* 3E330 8004DB30 00000000 */  nop
    /* 3E334 8004DB34 05004228 */  slti       $v0, $v0, 0x5
    /* 3E338 8004DB38 13004010 */  beqz       $v0, .L8004DB88
    /* 3E33C 8004DB3C 00000000 */   nop
  .L8004DB40:
    /* 3E340 8004DB40 4003AA8F */  lw         $t2, 0x340($sp)
    /* 3E344 8004DB44 3803AB8F */  lw         $t3, 0x338($sp)
    /* 3E348 8004DB48 00000000 */  nop
    /* 3E34C 8004DB4C 2A104B01 */  slt        $v0, $t2, $t3
    /* 3E350 8004DB50 0E004010 */  beqz       $v0, .L8004DB8C
    /* 3E354 8004DB54 00000000 */   nop
    /* 3E358 8004DB58 2803AA8F */  lw         $t2, 0x328($sp)
    /* 3E35C 8004DB5C 3003AB8F */  lw         $t3, 0x330($sp)
    /* 3E360 8004DB60 00000000 */  nop
    /* 3E364 8004DB64 2A104B01 */  slt        $v0, $t2, $t3
    /* 3E368 8004DB68 07004014 */  bnez       $v0, .L8004DB88
    /* 3E36C 8004DB6C 00000000 */   nop
    /* 3E370 8004DB70 7C01848F */  lw         $a0, %gp_rel(D_80158654)($gp)
    /* 3E374 8004DB74 0B76030C */  jal        func_800DD82C
    /* 3E378 8004DB78 00000000 */   nop
    /* 3E37C 8004DB7C 05004228 */  slti       $v0, $v0, 0x5
    /* 3E380 8004DB80 02004014 */  bnez       $v0, .L8004DB8C
    /* 3E384 8004DB84 00000000 */   nop
  .L8004DB88:
    /* 3E388 8004DB88 01001024 */  addiu      $s0, $zero, 0x1
  .L8004DB8C:
    /* 3E38C 8004DB8C 20000012 */  beqz       $s0, .L8004DC10
    /* 3E390 8004DB90 00000000 */   nop
    /* 3E394 8004DB94 AF8D020C */  jal        func_800A36BC
    /* 3E398 8004DB98 03000424 */   addiu     $a0, $zero, 0x3
    /* 3E39C 8004DB9C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3E3A0 8004DBA0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3E3A4 8004DBA4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3E3A8 8004DBA8 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3E3AC 8004DBAC F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3E3B0 8004DBB0 D6560524 */  addiu      $a1, $zero, 0x56D6
    /* 3E3B4 8004DBB4 21300000 */  addu       $a2, $zero, $zero
    /* 3E3B8 8004DBB8 B4E2020C */  jal        func_800B8AD0
    /* 3E3BC 8004DBBC 21380000 */   addu      $a3, $zero, $zero
    /* 3E3C0 8004DBC0 40101200 */  sll        $v0, $s2, 1
    /* 3E3C4 8004DBC4 21105200 */  addu       $v0, $v0, $s2
    /* 3E3C8 8004DBC8 80100200 */  sll        $v0, $v0, 2
    /* 3E3CC 8004DBCC 23105200 */  subu       $v0, $v0, $s2
    /* 3E3D0 8004DBD0 00110200 */  sll        $v0, $v0, 4
    /* 3E3D4 8004DBD4 23105200 */  subu       $v0, $v0, $s2
    /* 3E3D8 8004DBD8 C0100200 */  sll        $v0, $v0, 3
    /* 3E3DC 8004DBDC 1180013C */  lui        $at, %hi(D_801176B1)
    /* 3E3E0 8004DBE0 21082200 */  addu       $at, $at, $v0
    /* 3E3E4 8004DBE4 B1762390 */  lbu        $v1, %lo(D_801176B1)($at)
    /* 3E3E8 8004DBE8 00000000 */  nop
    /* 3E3EC 8004DBEC 01006324 */  addiu      $v1, $v1, 0x1
  .L8004DBF0:
    /* 3E3F0 8004DBF0 1180013C */  lui        $at, %hi(D_801176B1)
    /* 3E3F4 8004DBF4 21082200 */  addu       $at, $at, $v0
    /* 3E3F8 8004DBF8 B17623A0 */  sb         $v1, %lo(D_801176B1)($at)
  .L8004DBFC:
    /* 3E3FC 8004DBFC 7800A427 */  addiu      $a0, $sp, 0x78
  .L8004DC00:
    /* 3E400 8004DC00 0AC7020C */  jal        func_800B1C28
    /* 3E404 8004DC04 02000524 */   addiu     $a1, $zero, 0x2
    /* 3E408 8004DC08 40370108 */  j          .L8004DD00
    /* 3E40C 8004DC0C 21100000 */   addu      $v0, $zero, $zero
  .L8004DC10:
    /* 3E410 8004DC10 1680043C */  lui        $a0, %hi(D_80159490)
    /* 3E414 8004DC14 90948424 */  addiu      $a0, $a0, %lo(D_80159490)
    /* 3E418 8004DC18 1680053C */  lui        $a1, %hi(D_80159498)
    /* 3E41C 8004DC1C 9894A524 */  addiu      $a1, $a1, %lo(D_80159498)
    /* 3E420 8004DC20 FF3A030C */  jal        func_800CEBFC
    /* 3E424 8004DC24 00000000 */   nop
    /* 3E428 8004DC28 4003B08F */  lw         $s0, 0x340($sp)
  .L8004DC2C:
    /* 3E42C 8004DC2C 21204002 */  addu       $a0, $s2, $zero
    /* 3E430 8004DC30 B80F858F */  lw         $a1, %gp_rel(D_80159490)($gp)
    /* 3E434 8004DC34 F5CF010C */  jal        func_80073FD4
    /* 3E438 8004DC38 21306002 */   addu      $a2, $s3, $zero
    /* 3E43C 8004DC3C 21206002 */  addu       $a0, $s3, $zero
    /* 3E440 8004DC40 689A000C */  jal        func_800269A0
    /* 3E444 8004DC44 21284002 */   addu      $a1, $s2, $zero
    /* 3E448 8004DC48 C00F828F */  lw         $v0, %gp_rel(D_80159498)($gp)
    /* 3E44C 8004DC4C 00000000 */  nop
    /* 3E450 8004DC50 B80F82AF */  sw         $v0, %gp_rel(D_80159490)($gp)
    /* 3E454 8004DC54 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 3E458 8004DC58 C00F82AF */  sw         $v0, %gp_rel(D_80159498)($gp)
    /* 3E45C 8004DC5C 21204002 */  addu       $a0, $s2, $zero
    /* 3E460 8004DC60 21286002 */  addu       $a1, $s3, $zero
    /* 3E464 8004DC64 F427010C */  jal        func_80049FD0
    /* 3E468 8004DC68 23301000 */   negu      $a2, $s0
    /* 3E46C 8004DC6C 40101200 */  sll        $v0, $s2, 1
    /* 3E470 8004DC70 21105200 */  addu       $v0, $v0, $s2
    /* 3E474 8004DC74 80100200 */  sll        $v0, $v0, 2
    /* 3E478 8004DC78 23105200 */  subu       $v0, $v0, $s2
    /* 3E47C 8004DC7C 00110200 */  sll        $v0, $v0, 4
    /* 3E480 8004DC80 23105200 */  subu       $v0, $v0, $s2
    /* 3E484 8004DC84 C0100200 */  sll        $v0, $v0, 3
    /* 3E488 8004DC88 1180013C */  lui        $at, %hi(D_80117690)
    /* 3E48C 8004DC8C 21082200 */  addu       $at, $at, $v0
    /* 3E490 8004DC90 90762394 */  lhu        $v1, %lo(D_80117690)($at)
    /* 3E494 8004DC94 00000000 */  nop
    /* 3E498 8004DC98 80006334 */  ori        $v1, $v1, 0x80
    /* 3E49C 8004DC9C 1180013C */  lui        $at, %hi(D_80117690)
    /* 3E4A0 8004DCA0 21082200 */  addu       $at, $at, $v0
    /* 3E4A4 8004DCA4 907623A4 */  sh         $v1, %lo(D_80117690)($at)
    /* 3E4A8 8004DCA8 40101300 */  sll        $v0, $s3, 1
    /* 3E4AC 8004DCAC 21105300 */  addu       $v0, $v0, $s3
    /* 3E4B0 8004DCB0 80100200 */  sll        $v0, $v0, 2
    /* 3E4B4 8004DCB4 23105300 */  subu       $v0, $v0, $s3
    /* 3E4B8 8004DCB8 00110200 */  sll        $v0, $v0, 4
    /* 3E4BC 8004DCBC 23105300 */  subu       $v0, $v0, $s3
    /* 3E4C0 8004DCC0 C0100200 */  sll        $v0, $v0, 3
    /* 3E4C4 8004DCC4 1180013C */  lui        $at, %hi(D_80117690)
    /* 3E4C8 8004DCC8 21082200 */  addu       $at, $at, $v0
    /* 3E4CC 8004DCCC 90762394 */  lhu        $v1, %lo(D_80117690)($at)
    /* 3E4D0 8004DCD0 00000000 */  nop
    /* 3E4D4 8004DCD4 80006334 */  ori        $v1, $v1, 0x80
    /* 3E4D8 8004DCD8 1180013C */  lui        $at, %hi(D_80117690)
    /* 3E4DC 8004DCDC 21082200 */  addu       $at, $at, $v0
    /* 3E4E0 8004DCE0 907623A4 */  sh         $v1, %lo(D_80117690)($at)
    /* 3E4E4 8004DCE4 900F80AF */  sw         $zero, %gp_rel(D_80159468)($gp)
    /* 3E4E8 8004DCE8 83FCC017 */  bnez       $fp, .L8004CEF8
    /* 3E4EC 8004DCEC 00000000 */   nop
  .L8004DCF0:
    /* 3E4F0 8004DCF0 7800A427 */  addiu      $a0, $sp, 0x78
    /* 3E4F4 8004DCF4 0AC7020C */  jal        func_800B1C28
    /* 3E4F8 8004DCF8 02000524 */   addiu     $a1, $zero, 0x2
    /* 3E4FC 8004DCFC 01000224 */  addiu      $v0, $zero, 0x1
  .L8004DD00:
    /* 3E500 8004DD00 8403BF8F */  lw         $ra, 0x384($sp)
    /* 3E504 8004DD04 8003BE8F */  lw         $fp, 0x380($sp)
    /* 3E508 8004DD08 7C03B78F */  lw         $s7, 0x37C($sp)
    /* 3E50C 8004DD0C 7803B68F */  lw         $s6, 0x378($sp)
    /* 3E510 8004DD10 7403B58F */  lw         $s5, 0x374($sp)
    /* 3E514 8004DD14 7003B48F */  lw         $s4, 0x370($sp)
    /* 3E518 8004DD18 6C03B38F */  lw         $s3, 0x36C($sp)
    /* 3E51C 8004DD1C 6803B28F */  lw         $s2, 0x368($sp)
    /* 3E520 8004DD20 6403B18F */  lw         $s1, 0x364($sp)
    /* 3E524 8004DD24 6003B08F */  lw         $s0, 0x360($sp)
    /* 3E528 8004DD28 8803BD27 */  addiu      $sp, $sp, 0x388
    /* 3E52C 8004DD2C 0800E003 */  jr         $ra
    /* 3E530 8004DD30 00000000 */   nop
endlabel func_8004CE60
