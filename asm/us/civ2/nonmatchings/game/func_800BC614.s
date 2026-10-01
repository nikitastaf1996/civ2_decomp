.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BC614, 0x350

glabel func_800BC614
    /* ACE14 800BC614 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* ACE18 800BC618 00240400 */  sll        $a0, $a0, 16
    /* ACE1C 800BC61C 03240400 */  sra        $a0, $a0, 16
    /* ACE20 800BC620 A8000224 */  addiu      $v0, $zero, 0xA8
    /* ACE24 800BC624 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* ACE28 800BC628 3800B4AF */  sw         $s4, 0x38($sp)
    /* ACE2C 800BC62C 3400B3AF */  sw         $s3, 0x34($sp)
    /* ACE30 800BC630 3000B2AF */  sw         $s2, 0x30($sp)
    /* ACE34 800BC634 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* ACE38 800BC638 0F008210 */  beq        $a0, $v0, .L800BC678
    /* ACE3C 800BC63C 2800B0AF */   sw        $s0, 0x28($sp)
    /* ACE40 800BC640 A9008228 */  slti       $v0, $a0, 0xA9
    /* ACE44 800BC644 05004010 */  beqz       $v0, .L800BC65C
    /* ACE48 800BC648 A2000224 */   addiu     $v0, $zero, 0xA2
    /* ACE4C 800BC64C 23008210 */  beq        $a0, $v0, .L800BC6DC
    /* ACE50 800BC650 00000000 */   nop
    /* ACE54 800BC654 50F20208 */  j          .L800BC940
    /* ACE58 800BC658 00000000 */   nop
  .L800BC65C:
    /* ACE5C 800BC65C D0000224 */  addiu      $v0, $zero, 0xD0
    /* ACE60 800BC660 40008210 */  beq        $a0, $v0, .L800BC764
    /* ACE64 800BC664 D2000224 */   addiu     $v0, $zero, 0xD2
    /* ACE68 800BC668 AD008210 */  beq        $a0, $v0, .L800BC920
    /* ACE6C 800BC66C 68000424 */   addiu     $a0, $zero, 0x68
    /* ACE70 800BC670 50F20208 */  j          .L800BC940
    /* ACE74 800BC674 00000000 */   nop
  .L800BC678:
    /* ACE78 800BC678 1280103C */  lui        $s0, %hi(D_80121134)
    /* ACE7C 800BC67C 34111026 */  addiu      $s0, $s0, %lo(D_80121134)
    /* ACE80 800BC680 00000286 */  lh         $v0, 0x0($s0)
    /* ACE84 800BC684 00000000 */  nop
    /* ACE88 800BC688 AD004018 */  blez       $v0, .L800BC940
    /* ACE8C 800BC68C 5E000424 */   addiu     $a0, $zero, 0x5E
    /* ACE90 800BC690 21280000 */  addu       $a1, $zero, $zero
    /* ACE94 800BC694 21300000 */  addu       $a2, $zero, $zero
    /* ACE98 800BC698 2B9D020C */  jal        func_800A74AC
    /* ACE9C 800BC69C 21380000 */   addu      $a3, $zero, $zero
    /* ACEA0 800BC6A0 00000296 */  lhu        $v0, 0x0($s0)
    /* ACEA4 800BC6A4 00000000 */  nop
    /* ACEA8 800BC6A8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* ACEAC 800BC6AC 000002A6 */  sh         $v0, 0x0($s0)
    /* ACEB0 800BC6B0 00140200 */  sll        $v0, $v0, 16
    /* ACEB4 800BC6B4 1280033C */  lui        $v1, %hi(D_801210C8)
    /* ACEB8 800BC6B8 C810638C */  lw         $v1, %lo(D_801210C8)($v1)
    /* ACEBC 800BC6BC 03140200 */  sra        $v0, $v0, 16
    /* ACEC0 800BC6C0 2A184300 */  slt        $v1, $v0, $v1
    /* ACEC4 800BC6C4 9E006010 */  beqz       $v1, .L800BC940
    /* ACEC8 800BC6C8 00000000 */   nop
    /* ACECC 800BC6CC 1280043C */  lui        $a0, %hi(D_80121110)
    /* ACED0 800BC6D0 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ACED4 800BC6D4 D1F10208 */  j          .L800BC744
    /* ACED8 800BC6D8 00000000 */   nop
  .L800BC6DC:
    /* ACEDC 800BC6DC 1280103C */  lui        $s0, %hi(D_80121134)
    /* ACEE0 800BC6E0 34111026 */  addiu      $s0, $s0, %lo(D_80121134)
    /* ACEE4 800BC6E4 1280023C */  lui        $v0, %hi(D_80121136)
    /* ACEE8 800BC6E8 36114284 */  lh         $v0, %lo(D_80121136)($v0)
    /* ACEEC 800BC6EC 00000386 */  lh         $v1, 0x0($s0)
    /* ACEF0 800BC6F0 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* ACEF4 800BC6F4 2A186200 */  slt        $v1, $v1, $v0
    /* ACEF8 800BC6F8 91006010 */  beqz       $v1, .L800BC940
    /* ACEFC 800BC6FC 5E000424 */   addiu     $a0, $zero, 0x5E
    /* ACF00 800BC700 21280000 */  addu       $a1, $zero, $zero
    /* ACF04 800BC704 21300000 */  addu       $a2, $zero, $zero
    /* ACF08 800BC708 2B9D020C */  jal        func_800A74AC
    /* ACF0C 800BC70C 21380000 */   addu      $a3, $zero, $zero
    /* ACF10 800BC710 00000296 */  lhu        $v0, 0x0($s0)
    /* ACF14 800BC714 1280033C */  lui        $v1, %hi(D_801210C8)
    /* ACF18 800BC718 C810638C */  lw         $v1, %lo(D_801210C8)($v1)
    /* ACF1C 800BC71C 01004224 */  addiu      $v0, $v0, 0x1
    /* ACF20 800BC720 03006324 */  addiu      $v1, $v1, 0x3
    /* ACF24 800BC724 000002A6 */  sh         $v0, 0x0($s0)
    /* ACF28 800BC728 00140200 */  sll        $v0, $v0, 16
    /* ACF2C 800BC72C 03140200 */  sra        $v0, $v0, 16
    /* ACF30 800BC730 2A186200 */  slt        $v1, $v1, $v0
    /* ACF34 800BC734 82006010 */  beqz       $v1, .L800BC940
    /* ACF38 800BC738 FDFF4224 */   addiu     $v0, $v0, -0x3
    /* ACF3C 800BC73C 1280043C */  lui        $a0, %hi(D_80121110)
    /* ACF40 800BC740 1011848C */  lw         $a0, %lo(D_80121110)($a0)
  .L800BC744:
    /* ACF44 800BC744 1280013C */  lui        $at, %hi(D_801210C8)
    /* ACF48 800BC748 C81022AC */  sw         $v0, %lo(D_801210C8)($at)
    /* ACF4C 800BC74C E511040C */  jal        func_80104794
    /* ACF50 800BC750 00000000 */   nop
    /* ACF54 800BC754 1280013C */  lui        $at, %hi(D_80121110)
    /* ACF58 800BC758 101120AC */  sw         $zero, %lo(D_80121110)($at)
    /* ACF5C 800BC75C 50F20208 */  j          .L800BC940
    /* ACF60 800BC760 00000000 */   nop
  .L800BC764:
    /* ACF64 800BC764 68000424 */  addiu      $a0, $zero, 0x68
    /* ACF68 800BC768 21280000 */  addu       $a1, $zero, $zero
    /* ACF6C 800BC76C 21300000 */  addu       $a2, $zero, $zero
    /* ACF70 800BC770 2B9D020C */  jal        func_800A74AC
    /* ACF74 800BC774 21380000 */   addu      $a3, $zero, $zero
    /* ACF78 800BC778 21900000 */  addu       $s2, $zero, $zero
    /* ACF7C 800BC77C 1280023C */  lui        $v0, %hi(D_8011A282)
    /* ACF80 800BC780 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* ACF84 800BC784 00000000 */  nop
    /* ACF88 800BC788 6D004018 */  blez       $v0, .L800BC940
    /* ACF8C 800BC78C 21880000 */   addu      $s1, $zero, $zero
    /* ACF90 800BC790 1280053C */  lui        $a1, %hi(D_801210C4)
    /* ACF94 800BC794 C410A524 */  addiu      $a1, $a1, %lo(D_801210C4)
    /* ACF98 800BC798 0000A78C */  lw         $a3, 0x0($a1)
    /* ACF9C 800BC79C 21304000 */  addu       $a2, $v0, $zero
    /* ACFA0 800BC7A0 21200000 */  addu       $a0, $zero, $zero
  .L800BC7A4:
    /* ACFA4 800BC7A4 1180013C */  lui        $at, %hi(D_80113ED8)
    /* ACFA8 800BC7A8 21082400 */  addu       $at, $at, $a0
    /* ACFAC 800BC7AC D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* ACFB0 800BC7B0 00000000 */  nop
    /* ACFB4 800BC7B4 06004714 */  bne        $v0, $a3, .L800BC7D0
    /* ACFB8 800BC7B8 00000000 */   nop
    /* ACFBC 800BC7BC 01003126 */  addiu      $s1, $s1, 0x1
    /* ACFC0 800BC7C0 7000A384 */  lh         $v1, 0x70($a1)
    /* ACFC4 800BC7C4 FFFF2226 */  addiu      $v0, $s1, -0x1
    /* ACFC8 800BC7C8 05004310 */  beq        $v0, $v1, .L800BC7E0
    /* ACFCC 800BC7CC 00000000 */   nop
  .L800BC7D0:
    /* ACFD0 800BC7D0 01005226 */  addiu      $s2, $s2, 0x1
    /* ACFD4 800BC7D4 2A104602 */  slt        $v0, $s2, $a2
    /* ACFD8 800BC7D8 F2FF4014 */  bnez       $v0, .L800BC7A4
    /* ACFDC 800BC7DC 58008424 */   addiu     $a0, $a0, 0x58
  .L800BC7E0:
    /* ACFE0 800BC7E0 1280023C */  lui        $v0, %hi(D_8011A282)
    /* ACFE4 800BC7E4 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* ACFE8 800BC7E8 00000000 */  nop
    /* ACFEC 800BC7EC 2A104202 */  slt        $v0, $s2, $v0
    /* ACFF0 800BC7F0 53004010 */  beqz       $v0, .L800BC940
    /* ACFF4 800BC7F4 1800A427 */   addiu     $a0, $sp, 0x18
    /* ACFF8 800BC7F8 401F0724 */  addiu      $a3, $zero, 0x1F40
    /* ACFFC 800BC7FC 21880000 */  addu       $s1, $zero, $zero
    /* AD000 800BC800 1280033C */  lui        $v1, %hi(D_80120E58)
    /* AD004 800BC804 580E638C */  lw         $v1, %lo(D_80120E58)($v1)
    /* AD008 800BC808 08000224 */  addiu      $v0, $zero, 0x8
    /* AD00C 800BC80C 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* AD010 800BC810 40010224 */  addiu      $v0, $zero, 0x140
    /* AD014 800BC814 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* AD018 800BC818 E8000224 */  addiu      $v0, $zero, 0xE8
    /* AD01C 800BC81C 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* AD020 800BC820 1280023C */  lui        $v0, %hi(D_801210C8)
    /* AD024 800BC824 C810428C */  lw         $v0, %lo(D_801210C8)($v0)
    /* AD028 800BC828 1280103C */  lui        $s0, %hi(D_8012110C)
    /* AD02C 800BC82C 0C111026 */  addiu      $s0, $s0, %lo(D_8012110C)
    /* AD030 800BC830 1800A0A7 */  sh         $zero, 0x18($sp)
    /* AD034 800BC834 1000A0AF */  sw         $zero, 0x10($sp)
    /* AD038 800BC838 25007424 */  addiu      $s4, $v1, 0x25
    /* AD03C 800BC83C 1280033C */  lui        $v1, %hi(D_80121134)
    /* AD040 800BC840 34116384 */  lh         $v1, %lo(D_80121134)($v1)
    /* AD044 800BC844 21288002 */  addu       $a1, $s4, $zero
    /* AD048 800BC848 23186200 */  subu       $v1, $v1, $v0
    /* AD04C 800BC84C 40100300 */  sll        $v0, $v1, 1
    /* AD050 800BC850 21104300 */  addu       $v0, $v0, $v1
    /* AD054 800BC854 80100200 */  sll        $v0, $v0, 2
    /* AD058 800BC858 23104300 */  subu       $v0, $v0, $v1
    /* AD05C 800BC85C 80100200 */  sll        $v0, $v0, 2
    /* AD060 800BC860 4A005324 */  addiu      $s3, $v0, 0x4A
    /* AD064 800BC864 7D1C040C */  jal        func_801071F4
    /* AD068 800BC868 21306002 */   addu      $a2, $s3, $zero
    /* AD06C 800BC86C B31E040C */  jal        func_80107ACC
    /* AD070 800BC870 00000000 */   nop
  .L800BC874:
    /* AD074 800BC874 0000048E */  lw         $a0, 0x0($s0)
    /* AD078 800BC878 E511040C */  jal        func_80104794
    /* AD07C 800BC87C 01003126 */   addiu     $s1, $s1, 0x1
    /* AD080 800BC880 000000AE */  sw         $zero, 0x0($s0)
    /* AD084 800BC884 0200222A */  slti       $v0, $s1, 0x2
    /* AD088 800BC888 FAFF4014 */  bnez       $v0, .L800BC874
    /* AD08C 800BC88C 04001026 */   addiu     $s0, $s0, 0x4
    /* AD090 800BC890 1280043C */  lui        $a0, %hi(D_80120FAC)
    /* AD094 800BC894 AC0F8424 */  addiu      $a0, $a0, %lo(D_80120FAC)
    /* AD098 800BC898 21280000 */  addu       $a1, $zero, $zero
    /* AD09C 800BC89C A9E0030C */  jal        func_800F82A4
    /* AD0A0 800BC8A0 21300000 */   addu      $a2, $zero, $zero
    /* AD0A4 800BC8A4 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* AD0A8 800BC8A8 F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* AD0AC 800BC8AC 21284002 */  addu       $a1, $s2, $zero
    /* AD0B0 800BC8B0 EA5D030C */  jal        func_800D77A8
    /* AD0B4 800BC8B4 21300000 */   addu      $a2, $zero, $zero
    /* AD0B8 800BC8B8 21880000 */  addu       $s1, $zero, $zero
    /* AD0BC 800BC8BC 1280103C */  lui        $s0, %hi(D_8012110C)
    /* AD0C0 800BC8C0 0C111026 */  addiu      $s0, $s0, %lo(D_8012110C)
  .L800BC8C4:
    /* AD0C4 800BC8C4 0000048E */  lw         $a0, 0x0($s0)
    /* AD0C8 800BC8C8 E511040C */  jal        func_80104794
    /* AD0CC 800BC8CC 01003126 */   addiu     $s1, $s1, 0x1
    /* AD0D0 800BC8D0 000000AE */  sw         $zero, 0x0($s0)
    /* AD0D4 800BC8D4 0200222A */  slti       $v0, $s1, 0x2
    /* AD0D8 800BC8D8 FAFF4014 */  bnez       $v0, .L800BC8C4
    /* AD0DC 800BC8DC 04001026 */   addiu     $s0, $s0, 0x4
    /* AD0E0 800BC8E0 1280043C */  lui        $a0, %hi(D_80120FAC)
    /* AD0E4 800BC8E4 AC0F8424 */  addiu      $a0, $a0, %lo(D_80120FAC)
    /* AD0E8 800BC8E8 32000524 */  addiu      $a1, $zero, 0x32
    /* AD0EC 800BC8EC 0A000624 */  addiu      $a2, $zero, 0xA
    /* AD0F0 800BC8F0 44E3030C */  jal        func_800F8D10
    /* AD0F4 800BC8F4 C0000724 */   addiu     $a3, $zero, 0xC0
    /* AD0F8 800BC8F8 1000A0AF */  sw         $zero, 0x10($sp)
    /* AD0FC 800BC8FC 1800A427 */  addiu      $a0, $sp, 0x18
    /* AD100 800BC900 21288002 */  addu       $a1, $s4, $zero
    /* AD104 800BC904 21306002 */  addu       $a2, $s3, $zero
    /* AD108 800BC908 011D040C */  jal        func_80107404
    /* AD10C 800BC90C 401F0724 */   addiu     $a3, $zero, 0x1F40
    /* AD110 800BC910 B31E040C */  jal        func_80107ACC
    /* AD114 800BC914 00000000 */   nop
    /* AD118 800BC918 50F20208 */  j          .L800BC940
    /* AD11C 800BC91C 00000000 */   nop
  .L800BC920:
    /* AD120 800BC920 21280000 */  addu       $a1, $zero, $zero
    /* AD124 800BC924 21300000 */  addu       $a2, $zero, $zero
    /* AD128 800BC928 2B9D020C */  jal        func_800A74AC
    /* AD12C 800BC92C 21380000 */   addu      $a3, $zero, $zero
    /* AD130 800BC930 1280043C */  lui        $a0, %hi(D_80120D84)
    /* AD134 800BC934 840D8424 */  addiu      $a0, $a0, %lo(D_80120D84)
    /* AD138 800BC938 29E5020C */  jal        func_800B94A4
    /* AD13C 800BC93C 00000000 */   nop
  .L800BC940:
    /* AD140 800BC940 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* AD144 800BC944 3800B48F */  lw         $s4, 0x38($sp)
    /* AD148 800BC948 3400B38F */  lw         $s3, 0x34($sp)
    /* AD14C 800BC94C 3000B28F */  lw         $s2, 0x30($sp)
    /* AD150 800BC950 2C00B18F */  lw         $s1, 0x2C($sp)
    /* AD154 800BC954 2800B08F */  lw         $s0, 0x28($sp)
    /* AD158 800BC958 4000BD27 */  addiu      $sp, $sp, 0x40
    /* AD15C 800BC95C 0800E003 */  jr         $ra
    /* AD160 800BC960 00000000 */   nop
endlabel func_800BC614
