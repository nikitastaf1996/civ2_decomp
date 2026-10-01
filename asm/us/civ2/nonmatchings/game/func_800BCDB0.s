.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BCDB0, 0x624

glabel func_800BCDB0
    /* AD5B0 800BCDB0 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* AD5B4 800BCDB4 6000B6AF */  sw         $s6, 0x60($sp)
    /* AD5B8 800BCDB8 1280163C */  lui        $s6, %hi(D_8011A258)
    /* AD5BC 800BCDBC 58A2D626 */  addiu      $s6, $s6, %lo(D_8011A258)
    /* AD5C0 800BCDC0 5400B3AF */  sw         $s3, 0x54($sp)
    /* AD5C4 800BCDC4 1280133C */  lui        $s3, %hi(D_801210C4)
    /* AD5C8 800BCDC8 C4107326 */  addiu      $s3, $s3, %lo(D_801210C4)
    /* AD5CC 800BCDCC 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* AD5D0 800BCDD0 6800BEAF */  sw         $fp, 0x68($sp)
    /* AD5D4 800BCDD4 6400B7AF */  sw         $s7, 0x64($sp)
    /* AD5D8 800BCDD8 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* AD5DC 800BCDDC 5800B4AF */  sw         $s4, 0x58($sp)
    /* AD5E0 800BCDE0 5000B2AF */  sw         $s2, 0x50($sp)
    /* AD5E4 800BCDE4 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* AD5E8 800BCDE8 4800B0AF */  sw         $s0, 0x48($sp)
    /* AD5EC 800BCDEC 0000C396 */  lhu        $v1, 0x0($s6)
    /* AD5F0 800BCDF0 00000000 */  nop
    /* AD5F4 800BCDF4 FBFF6230 */  andi       $v0, $v1, 0xFFFB
    /* AD5F8 800BCDF8 04006330 */  andi       $v1, $v1, 0x4
    /* AD5FC 800BCDFC 0000C2A6 */  sh         $v0, 0x0($s6)
    /* AD600 800BCE00 2800A3AF */  sw         $v1, 0x28($sp)
    /* AD604 800BCE04 0000758E */  lw         $s5, 0x0($s3)
    /* AD608 800BCE08 DC49020C */  jal        func_80092770
    /* AD60C 800BCE0C C0FC6426 */   addiu     $a0, $s3, -0x340
    /* AD610 800BCE10 7907040C */  jal        func_80101DE4
    /* AD614 800BCE14 01000424 */   addiu     $a0, $zero, 0x1
    /* AD618 800BCE18 1280023C */  lui        $v0, %hi(D_80120DBC)
    /* AD61C 800BCE1C BC0D428C */  lw         $v0, %lo(D_80120DBC)($v0)
    /* AD620 800BCE20 00000000 */  nop
    /* AD624 800BCE24 0400448C */  lw         $a0, 0x4($v0)
    /* AD628 800BCE28 D707040C */  jal        func_80101F5C
    /* AD62C 800BCE2C 00000000 */   nop
    /* AD630 800BCE30 1800A427 */  addiu      $a0, $sp, 0x18
    /* AD634 800BCE34 21280000 */  addu       $a1, $zero, $zero
    /* AD638 800BCE38 40010224 */  addiu      $v0, $zero, 0x140
    /* AD63C 800BCE3C 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* AD640 800BCE40 F0000224 */  addiu      $v0, $zero, 0xF0
    /* AD644 800BCE44 1800A0A7 */  sh         $zero, 0x18($sp)
    /* AD648 800BCE48 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* AD64C 800BCE4C A314020C */  jal        func_8008528C
    /* AD650 800BCE50 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* AD654 800BCE54 E8FE6426 */  addiu      $a0, $s3, -0x118
    /* AD658 800BCE58 ECFC6526 */  addiu      $a1, $s3, -0x314
    /* AD65C 800BCE5C 2000A627 */  addiu      $a2, $sp, 0x20
    /* AD660 800BCE60 1800A727 */  addiu      $a3, $sp, 0x18
    /* AD664 800BCE64 06000324 */  addiu      $v1, $zero, 0x6
    /* AD668 800BCE68 3A010824 */  addiu      $t0, $zero, 0x13A
    /* AD66C 800BCE6C D0000224 */  addiu      $v0, $zero, 0xD0
    /* AD670 800BCE70 2600A2A7 */  sh         $v0, 0x26($sp)
    /* AD674 800BCE74 10000224 */  addiu      $v0, $zero, 0x10
    /* AD678 800BCE78 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* AD67C 800BCE7C E0000224 */  addiu      $v0, $zero, 0xE0
    /* AD680 800BCE80 2000A3A7 */  sh         $v1, 0x20($sp)
    /* AD684 800BCE84 2200A0A7 */  sh         $zero, 0x22($sp)
    /* AD688 800BCE88 2400A8A7 */  sh         $t0, 0x24($sp)
    /* AD68C 800BCE8C 1800A3A7 */  sh         $v1, 0x18($sp)
    /* AD690 800BCE90 1C00A8A7 */  sh         $t0, 0x1C($sp)
    /* AD694 800BCE94 1FE4030C */  jal        func_800F907C
    /* AD698 800BCE98 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* AD69C 800BCE9C 1280023C */  lui        $v0, %hi(D_80120E5C)
    /* AD6A0 800BCEA0 5C0E428C */  lw         $v0, %lo(D_80120E5C)($v0)
    /* AD6A4 800BCEA4 1280033C */  lui        $v1, %hi(D_8012110C)
    /* AD6A8 800BCEA8 0C11638C */  lw         $v1, %lo(D_8012110C)($v1)
    /* AD6AC 800BCEAC 02005424 */  addiu      $s4, $v0, 0x2
    /* AD6B0 800BCEB0 5F006014 */  bnez       $v1, .L800BD030
    /* AD6B4 800BCEB4 AC005724 */   addiu     $s7, $v0, 0xAC
    /* AD6B8 800BCEB8 1280043C */  lui        $a0, %hi(D_80121340)
    /* AD6BC 800BCEBC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AD6C0 800BCEC0 CB1A030C */  jal        func_800C6B2C
    /* AD6C4 800BCEC4 00000000 */   nop
    /* AD6C8 800BCEC8 1680023C */  lui        $v0, %hi(D_8015894C)
    /* AD6CC 800BCECC 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* AD6D0 800BCED0 00000000 */  nop
    /* AD6D4 800BCED4 4405448C */  lw         $a0, 0x544($v0)
    /* AD6D8 800BCED8 A63A030C */  jal        func_800CEA98
    /* AD6DC 800BCEDC 00000000 */   nop
    /* AD6E0 800BCEE0 1280043C */  lui        $a0, %hi(D_80121340)
    /* AD6E4 800BCEE4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AD6E8 800BCEE8 9987030C */  jal        func_800E1E64
    /* AD6EC 800BCEEC 21284000 */   addu      $a1, $v0, $zero
    /* AD6F0 800BCEF0 1800A427 */  addiu      $a0, $sp, 0x18
    /* AD6F4 800BCEF4 1280103C */  lui        $s0, %hi(D_80121340)
    /* AD6F8 800BCEF8 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* AD6FC 800BCEFC 21280002 */  addu       $a1, $s0, $zero
    /* AD700 800BCF00 7FE6020C */  jal        func_800B99FC
    /* AD704 800BCF04 10000624 */   addiu     $a2, $zero, 0x10
    /* AD708 800BCF08 21200002 */  addu       $a0, $s0, $zero
    /* AD70C 800BCF0C 1800A527 */  addiu      $a1, $sp, 0x18
    /* AD710 800BCF10 DC0F040C */  jal        func_80103F70
    /* AD714 800BCF14 10000624 */   addiu     $a2, $zero, 0x10
    /* AD718 800BCF18 1280013C */  lui        $at, %hi(D_8012110C)
    /* AD71C 800BCF1C 0C1122AC */  sw         $v0, %lo(D_8012110C)($at)
    /* AD720 800BCF20 CB1A030C */  jal        func_800C6B2C
    /* AD724 800BCF24 21200002 */   addu      $a0, $s0, $zero
    /* AD728 800BCF28 21280000 */  addu       $a1, $zero, $zero
    /* AD72C 800BCF2C 40101500 */  sll        $v0, $s5, 1
    /* AD730 800BCF30 21105500 */  addu       $v0, $v0, $s5
    /* AD734 800BCF34 80100200 */  sll        $v0, $v0, 2
    /* AD738 800BCF38 23105500 */  subu       $v0, $v0, $s5
    /* AD73C 800BCF3C 00110200 */  sll        $v0, $v0, 4
    /* AD740 800BCF40 23105500 */  subu       $v0, $v0, $s5
    /* AD744 800BCF44 C0100200 */  sll        $v0, $v0, 3
    /* AD748 800BCF48 1180013C */  lui        $at, %hi(D_801176A7)
    /* AD74C 800BCF4C 21082200 */  addu       $at, $at, $v0
    /* AD750 800BCF50 A7762490 */  lbu        $a0, %lo(D_801176A7)($at)
    /* AD754 800BCF54 04000624 */  addiu      $a2, $zero, 0x4
    /* AD758 800BCF58 F53A030C */  jal        func_800CEBD4
    /* AD75C 800BCF5C FFFF8424 */   addiu     $a0, $a0, -0x1
    /* AD760 800BCF60 2120A002 */  addu       $a0, $s5, $zero
    /* AD764 800BCF64 5D54020C */  jal        func_80095174
    /* AD768 800BCF68 21884000 */   addu      $s1, $v0, $zero
    /* AD76C 800BCF6C 21200002 */  addu       $a0, $s0, $zero
    /* AD770 800BCF70 9987030C */  jal        func_800E1E64
    /* AD774 800BCF74 21284000 */   addu      $a1, $v0, $zero
    /* AD778 800BCF78 CD1A030C */  jal        func_800C6B34
    /* AD77C 800BCF7C 21200002 */   addu      $a0, $s0, $zero
    /* AD780 800BCF80 21200002 */  addu       $a0, $s0, $zero
    /* AD784 800BCF84 731B030C */  jal        func_800C6DCC
    /* AD788 800BCF88 48012526 */   addiu     $a1, $s1, 0x148
    /* AD78C 800BCF8C 1800A427 */  addiu      $a0, $sp, 0x18
    /* AD790 800BCF90 21280002 */  addu       $a1, $s0, $zero
    /* AD794 800BCF94 7FE6020C */  jal        func_800B99FC
    /* AD798 800BCF98 20000624 */   addiu     $a2, $zero, 0x20
    /* AD79C 800BCF9C 21280002 */  addu       $a1, $s0, $zero
    /* AD7A0 800BCFA0 1800A627 */  addiu      $a2, $sp, 0x18
    /* AD7A4 800BCFA4 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AD7A8 800BCFA8 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AD7AC 800BCFAC 5511040C */  jal        func_80104554
    /* AD7B0 800BCFB0 10000724 */   addiu     $a3, $zero, 0x10
    /* AD7B4 800BCFB4 CB1A030C */  jal        func_800C6B2C
    /* AD7B8 800BCFB8 21200002 */   addu      $a0, $s0, $zero
    /* AD7BC 800BCFBC 2554020C */  jal        func_80095094
    /* AD7C0 800BCFC0 2120A002 */   addu      $a0, $s5, $zero
    /* AD7C4 800BCFC4 21200002 */  addu       $a0, $s0, $zero
    /* AD7C8 800BCFC8 9987030C */  jal        func_800E1E64
    /* AD7CC 800BCFCC 21284000 */   addu      $a1, $v0, $zero
    /* AD7D0 800BCFD0 CD1A030C */  jal        func_800C6B34
    /* AD7D4 800BCFD4 21200002 */   addu      $a0, $s0, $zero
    /* AD7D8 800BCFD8 F853020C */  jal        func_80094FE0
    /* AD7DC 800BCFDC 2120A002 */   addu      $a0, $s5, $zero
    /* AD7E0 800BCFE0 21200002 */  addu       $a0, $s0, $zero
    /* AD7E4 800BCFE4 9987030C */  jal        func_800E1E64
    /* AD7E8 800BCFE8 21284000 */   addu      $a1, $v0, $zero
    /* AD7EC 800BCFEC 21200002 */  addu       $a0, $s0, $zero
    /* AD7F0 800BCFF0 D71A030C */  jal        func_800C6B5C
    /* AD7F4 800BCFF4 02000524 */   addiu     $a1, $zero, 0x2
    /* AD7F8 800BCFF8 1280053C */  lui        $a1, %hi(D_8011A264)
    /* AD7FC 800BCFFC 64A2A584 */  lh         $a1, %lo(D_8011A264)($a1)
    /* AD800 800BD000 AD98010C */  jal        func_800662B4
    /* AD804 800BD004 21200002 */   addu      $a0, $s0, $zero
    /* AD808 800BD008 1800A427 */  addiu      $a0, $sp, 0x18
    /* AD80C 800BD00C 21280002 */  addu       $a1, $s0, $zero
    /* AD810 800BD010 7FE6020C */  jal        func_800B99FC
    /* AD814 800BD014 30000624 */   addiu     $a2, $zero, 0x30
    /* AD818 800BD018 21280002 */  addu       $a1, $s0, $zero
    /* AD81C 800BD01C 1800A627 */  addiu      $a2, $sp, 0x18
    /* AD820 800BD020 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AD824 800BD024 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AD828 800BD028 5511040C */  jal        func_80104554
    /* AD82C 800BD02C 10000724 */   addiu     $a3, $zero, 0x10
  .L800BD030:
    /* AD830 800BD030 4800648E */  lw         $a0, 0x48($s3)
    /* AD834 800BD034 7D11040C */  jal        func_801045F4
    /* AD838 800BD038 21900000 */   addu      $s2, $zero, $zero
    /* AD83C 800BD03C 21800000 */  addu       $s0, $zero, $zero
    /* AD840 800BD040 20000224 */  addiu      $v0, $zero, 0x20
    /* AD844 800BD044 140062AE */  sw         $v0, 0x14($s3)
    /* AD848 800BD048 2310F402 */  subu       $v0, $s7, $s4
    /* AD84C 800BD04C 0C0074AE */  sw         $s4, 0xC($s3)
    /* AD850 800BD050 100062AE */  sw         $v0, 0x10($s3)
    /* AD854 800BD054 1280023C */  lui        $v0, %hi(D_8011A282)
    /* AD858 800BD058 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* AD85C 800BD05C 09001E24 */  addiu      $fp, $zero, 0x9
    /* AD860 800BD060 0E004018 */  blez       $v0, .L800BD09C
    /* AD864 800BD064 08007EAE */   sw        $fp, 0x8($s3)
    /* AD868 800BD068 2A00C386 */  lh         $v1, 0x2A($s6)
    /* AD86C 800BD06C 21200000 */  addu       $a0, $zero, $zero
  .L800BD070:
    /* AD870 800BD070 1180013C */  lui        $at, %hi(D_80113ED8)
    /* AD874 800BD074 21082400 */  addu       $at, $at, $a0
    /* AD878 800BD078 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* AD87C 800BD07C 00000000 */  nop
    /* AD880 800BD080 02005514 */  bne        $v0, $s5, .L800BD08C
    /* AD884 800BD084 00000000 */   nop
    /* AD888 800BD088 01001026 */  addiu      $s0, $s0, 0x1
  .L800BD08C:
    /* AD88C 800BD08C 01005226 */  addiu      $s2, $s2, 0x1
    /* AD890 800BD090 2A104302 */  slt        $v0, $s2, $v1
    /* AD894 800BD094 F6FF4014 */  bnez       $v0, .L800BD070
    /* AD898 800BD098 58008424 */   addiu     $a0, $a0, 0x58
  .L800BD09C:
    /* AD89C 800BD09C FFFF1026 */  addiu      $s0, $s0, -0x1
    /* AD8A0 800BD0A0 21201E02 */  addu       $a0, $s0, $fp
    /* AD8A4 800BD0A4 1A009E00 */  div        $zero, $a0, $fp
    /* AD8A8 800BD0A8 0200C017 */  bnez       $fp, .L800BD0B4
    /* AD8AC 800BD0AC 00000000 */   nop
    /* AD8B0 800BD0B0 0D000700 */  break      7
  .L800BD0B4:
    /* AD8B4 800BD0B4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* AD8B8 800BD0B8 0400C117 */  bne        $fp, $at, .L800BD0CC
    /* AD8BC 800BD0BC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AD8C0 800BD0C0 02008114 */  bne        $a0, $at, .L800BD0CC
    /* AD8C4 800BD0C4 00000000 */   nop
    /* AD8C8 800BD0C8 0D000600 */  break      6
  .L800BD0CC:
    /* AD8CC 800BD0CC 12200000 */  mflo       $a0
    /* AD8D0 800BD0D0 01000524 */  addiu      $a1, $zero, 0x1
    /* AD8D4 800BD0D4 63000624 */  addiu      $a2, $zero, 0x63
    /* AD8D8 800BD0D8 40001124 */  addiu      $s1, $zero, 0x40
    /* AD8DC 800BD0DC F53A030C */  jal        func_800CEBD4
    /* AD8E0 800BD0E0 21900000 */   addu      $s2, $zero, $zero
    /* AD8E4 800BD0E4 21200002 */  addu       $a0, $s0, $zero
    /* AD8E8 800BD0E8 21280000 */  addu       $a1, $zero, $zero
    /* AD8EC 800BD0EC E7030624 */  addiu      $a2, $zero, 0x3E7
    /* AD8F0 800BD0F0 1280103C */  lui        $s0, %hi(D_801210C0)
    /* AD8F4 800BD0F4 C0101026 */  addiu      $s0, $s0, %lo(D_801210C0)
    /* AD8F8 800BD0F8 F53A030C */  jal        func_800CEBD4
    /* AD8FC 800BD0FC 000002AE */   sw        $v0, 0x0($s0)
    /* AD900 800BD100 21280000 */  addu       $a1, $zero, $zero
    /* AD904 800BD104 1280043C */  lui        $a0, %hi(D_801210C8)
    /* AD908 800BD108 C810848C */  lw         $a0, %lo(D_801210C8)($a0)
    /* AD90C 800BD10C F53A030C */  jal        func_800CEBD4
    /* AD910 800BD110 21304000 */   addu      $a2, $v0, $zero
    /* AD914 800BD114 21B84000 */  addu       $s7, $v0, $zero
    /* AD918 800BD118 1280023C */  lui        $v0, %hi(D_80121110)
    /* AD91C 800BD11C 1011428C */  lw         $v0, %lo(D_80121110)($v0)
    /* AD920 800BD120 1280033C */  lui        $v1, %hi(D_8011A282)
    /* AD924 800BD124 82A26384 */  lh         $v1, %lo(D_8011A282)($v1)
    /* AD928 800BD128 21B00000 */  addu       $s6, $zero, $zero
    /* AD92C 800BD12C 1280013C */  lui        $at, %hi(D_801210C8)
    /* AD930 800BD130 C81037AC */  sw         $s7, %lo(D_801210C8)($at)
    /* AD934 800BD134 0100422C */  sltiu      $v0, $v0, 0x1
    /* AD938 800BD138 93006018 */  blez       $v1, .L800BD388
    /* AD93C 800BD13C 3000A2AF */   sw        $v0, 0x30($sp)
    /* AD940 800BD140 21980000 */  addu       $s3, $zero, $zero
    /* AD944 800BD144 FFFF1424 */  addiu      $s4, $zero, -0x1
  .L800BD148:
    /* AD948 800BD148 1180013C */  lui        $at, %hi(D_80113ED8)
    /* AD94C 800BD14C 21083300 */  addu       $at, $at, $s3
    /* AD950 800BD150 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* AD954 800BD154 00000000 */  nop
    /* AD958 800BD158 85005514 */  bne        $v0, $s5, .L800BD370
    /* AD95C 800BD15C 00000000 */   nop
    /* AD960 800BD160 01009426 */  addiu      $s4, $s4, 0x1
    /* AD964 800BD164 2A109702 */  slt        $v0, $s4, $s7
    /* AD968 800BD168 81004014 */  bnez       $v0, .L800BD370
    /* AD96C 800BD16C 0100D626 */   addiu     $s6, $s6, 0x1
    /* AD970 800BD170 2110FE02 */  addu       $v0, $s7, $fp
    /* AD974 800BD174 2A108202 */  slt        $v0, $s4, $v0
    /* AD978 800BD178 7D004010 */  beqz       $v0, .L800BD370
    /* AD97C 800BD17C 00000000 */   nop
    /* AD980 800BD180 0C25020C */  jal        func_80089430
    /* AD984 800BD184 21204002 */   addu      $a0, $s2, $zero
    /* AD988 800BD188 2800A98F */  lw         $t1, 0x28($sp)
    /* AD98C 800BD18C 00000000 */  nop
    /* AD990 800BD190 10002011 */  beqz       $t1, .L800BD1D4
    /* AD994 800BD194 40101500 */   sll       $v0, $s5, 1
    /* AD998 800BD198 21105500 */  addu       $v0, $v0, $s5
    /* AD99C 800BD19C 80100200 */  sll        $v0, $v0, 2
    /* AD9A0 800BD1A0 23105500 */  subu       $v0, $v0, $s5
    /* AD9A4 800BD1A4 00110200 */  sll        $v0, $v0, 4
    /* AD9A8 800BD1A8 23105500 */  subu       $v0, $v0, $s5
    /* AD9AC 800BD1AC C0100200 */  sll        $v0, $v0, 3
    /* AD9B0 800BD1B0 1180013C */  lui        $at, %hi(D_801176A7)
    /* AD9B4 800BD1B4 21082200 */  addu       $at, $at, $v0
    /* AD9B8 800BD1B8 A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* AD9BC 800BD1BC 00000000 */  nop
    /* AD9C0 800BD1C0 0500422C */  sltiu      $v0, $v0, 0x5
    /* AD9C4 800BD1C4 03004014 */  bnez       $v0, .L800BD1D4
    /* AD9C8 800BD1C8 00000000 */   nop
    /* AD9CC 800BD1CC 0C63000C */  jal        func_80018C30
    /* AD9D0 800BD1D0 01000424 */   addiu     $a0, $zero, 0x1
  .L800BD1D4:
    /* AD9D4 800BD1D4 1280033C */  lui        $v1, %hi(D_80120E58)
    /* AD9D8 800BD1D8 580E638C */  lw         $v1, %lo(D_80120E58)($v1)
    /* AD9DC 800BD1DC 0100C232 */  andi       $v0, $s6, 0x1
    /* AD9E0 800BD1E0 02004010 */  beqz       $v0, .L800BD1EC
    /* AD9E4 800BD1E4 02007024 */   addiu     $s0, $v1, 0x2
    /* AD9E8 800BD1E8 22007024 */  addiu      $s0, $v1, 0x22
  .L800BD1EC:
    /* AD9EC 800BD1EC 1280043C */  lui        $a0, %hi(D_80120D84)
    /* AD9F0 800BD1F0 840D8424 */  addiu      $a0, $a0, %lo(D_80120D84)
    /* AD9F4 800BD1F4 21284002 */  addu       $a1, $s2, $zero
    /* AD9F8 800BD1F8 21300000 */  addu       $a2, $zero, $zero
    /* AD9FC 800BD1FC 21380002 */  addu       $a3, $s0, $zero
    /* ADA00 800BD200 1000B1AF */  sw         $s1, 0x10($sp)
    /* ADA04 800BD204 17C0020C */  jal        func_800B005C
    /* ADA08 800BD208 1400A0AF */   sw        $zero, 0x14($sp)
    /* ADA0C 800BD20C 1280023C */  lui        $v0, %hi(D_80121134)
    /* ADA10 800BD210 34114284 */  lh         $v0, %lo(D_80121134)($v0)
    /* ADA14 800BD214 00000000 */  nop
    /* ADA18 800BD218 09008216 */  bne        $s4, $v0, .L800BD240
    /* ADA1C 800BD21C 21280002 */   addu      $a1, $s0, $zero
    /* ADA20 800BD220 1280043C */  lui        $a0, %hi(D_80120D84)
    /* ADA24 800BD224 840D8424 */  addiu      $a0, $a0, %lo(D_80120D84)
    /* ADA28 800BD228 FEFF2626 */  addiu      $a2, $s1, -0x2
    /* ADA2C 800BD22C 2000A724 */  addiu      $a3, $a1, 0x20
    /* ADA30 800BD230 1A002226 */  addiu      $v0, $s1, 0x1A
    /* ADA34 800BD234 1000A2AF */  sw         $v0, 0x10($sp)
    /* ADA38 800BD238 C413020C */  jal        func_80084F10
    /* ADA3C 800BD23C 1400A0AF */   sw        $zero, 0x14($sp)
  .L800BD240:
    /* ADA40 800BD240 1680033C */  lui        $v1, %hi(D_80158864)
    /* ADA44 800BD244 6488638C */  lw         $v1, %lo(D_80158864)($v1)
    /* ADA48 800BD248 00000000 */  nop
    /* ADA4C 800BD24C 57006280 */  lb         $v0, 0x57($v1)
    /* ADA50 800BD250 00000000 */  nop
    /* ADA54 800BD254 0E004014 */  bnez       $v0, .L800BD290
    /* ADA58 800BD258 00000000 */   nop
    /* ADA5C 800BD25C 09006290 */  lbu        $v0, 0x9($v1)
    /* ADA60 800BD260 56006480 */  lb         $a0, 0x56($v1)
    /* ADA64 800BD264 00160200 */  sll        $v0, $v0, 24
    /* ADA68 800BD268 031E0200 */  sra        $v1, $v0, 24
    /* ADA6C 800BD26C 23186400 */  subu       $v1, $v1, $a0
    /* ADA70 800BD270 43160200 */  sra        $v0, $v0, 25
    /* ADA74 800BD274 2A104300 */  slt        $v0, $v0, $v1
    /* ADA78 800BD278 05004014 */  bnez       $v0, .L800BD290
    /* ADA7C 800BD27C 29000424 */   addiu     $a0, $zero, 0x29
    /* ADA80 800BD280 12000524 */  addiu      $a1, $zero, 0x12
    /* ADA84 800BD284 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* ADA88 800BD288 1C80030C */  jal        func_800E0070
    /* ADA8C 800BD28C FFFF0724 */   addiu     $a3, $zero, -0x1
  .L800BD290:
    /* ADA90 800BD290 1680023C */  lui        $v0, %hi(D_80158864)
    /* ADA94 800BD294 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* ADA98 800BD298 00000000 */  nop
    /* ADA9C 800BD29C 57004380 */  lb         $v1, 0x57($v0)
    /* ADAA0 800BD2A0 56004280 */  lb         $v0, 0x56($v0)
    /* ADAA4 800BD2A4 00000000 */  nop
    /* ADAA8 800BD2A8 2A104300 */  slt        $v0, $v0, $v1
    /* ADAAC 800BD2AC 05004010 */  beqz       $v0, .L800BD2C4
    /* ADAB0 800BD2B0 6A000424 */   addiu     $a0, $zero, 0x6A
    /* ADAB4 800BD2B4 12000524 */  addiu      $a1, $zero, 0x12
    /* ADAB8 800BD2B8 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* ADABC 800BD2BC 1C80030C */  jal        func_800E0070
    /* ADAC0 800BD2C0 FFFF0724 */   addiu     $a3, $zero, -0x1
  .L800BD2C4:
    /* ADAC4 800BD2C4 48001024 */  addiu      $s0, $zero, 0x48
    /* ADAC8 800BD2C8 3000A98F */  lw         $t1, 0x30($sp)
    /* ADACC 800BD2CC 00000000 */  nop
    /* ADAD0 800BD2D0 1A002011 */  beqz       $t1, .L800BD33C
    /* ADAD4 800BD2D4 06002226 */   addiu     $v0, $s1, 0x6
    /* ADAD8 800BD2D8 1280043C */  lui        $a0, %hi(D_80121110)
    /* ADADC 800BD2DC 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ADAE0 800BD2E0 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* ADAE4 800BD2E4 48010224 */  addiu      $v0, $zero, 0x148
    /* ADAE8 800BD2E8 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* ADAEC 800BD2EC 12002226 */  addiu      $v0, $s1, 0x12
    /* ADAF0 800BD2F0 1800B0A7 */  sh         $s0, 0x18($sp)
    /* ADAF4 800BD2F4 0B008014 */  bnez       $a0, .L800BD324
    /* ADAF8 800BD2F8 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* ADAFC 800BD2FC 1180043C */  lui        $a0, %hi(D_80113EF2)
    /* ADB00 800BD300 F23E8424 */  addiu      $a0, $a0, %lo(D_80113EF2)
    /* ADB04 800BD304 21206402 */  addu       $a0, $s3, $a0
    /* ADB08 800BD308 1800A527 */  addiu      $a1, $sp, 0x18
    /* ADB0C 800BD30C DC0F040C */  jal        func_80103F70
    /* ADB10 800BD310 10000624 */   addiu     $a2, $zero, 0x10
    /* ADB14 800BD314 1280013C */  lui        $at, %hi(D_80121110)
    /* ADB18 800BD318 101122AC */  sw         $v0, %lo(D_80121110)($at)
    /* ADB1C 800BD31C D0F40208 */  j          .L800BD340
    /* ADB20 800BD320 A8000424 */   addiu     $a0, $zero, 0xA8
  .L800BD324:
    /* ADB24 800BD324 1180053C */  lui        $a1, %hi(D_80113EF2)
    /* ADB28 800BD328 F23EA524 */  addiu      $a1, $a1, %lo(D_80113EF2)
    /* ADB2C 800BD32C 21286502 */  addu       $a1, $s3, $a1
    /* ADB30 800BD330 1800A627 */  addiu      $a2, $sp, 0x18
    /* ADB34 800BD334 5511040C */  jal        func_80104554
    /* ADB38 800BD338 10000724 */   addiu     $a3, $zero, 0x10
  .L800BD33C:
    /* ADB3C 800BD33C A8000424 */  addiu      $a0, $zero, 0xA8
  .L800BD340:
    /* ADB40 800BD340 21282002 */  addu       $a1, $s1, $zero
    /* ADB44 800BD344 80000624 */  addiu      $a2, $zero, 0x80
    /* ADB48 800BD348 1180013C */  lui        $at, %hi(D_80113F26)
    /* ADB4C 800BD34C 21083300 */  addu       $at, $at, $s3
    /* ADB50 800BD350 263F2780 */  lb         $a3, %lo(D_80113F26)($at)
    /* ADB54 800BD354 1180013C */  lui        $at, %hi(D_80113F27)
    /* ADB58 800BD358 21083300 */  addu       $at, $at, $s3
    /* ADB5C 800BD35C 273F2280 */  lb         $v0, %lo(D_80113F27)($at)
    /* ADB60 800BD360 10003126 */  addiu      $s1, $s1, 0x10
    /* ADB64 800BD364 1400A0AF */  sw         $zero, 0x14($sp)
    /* ADB68 800BD368 8CF2020C */  jal        func_800BCA30
    /* ADB6C 800BD36C 1000A2AF */   sw        $v0, 0x10($sp)
  .L800BD370:
    /* ADB70 800BD370 1280023C */  lui        $v0, %hi(D_8011A282)
    /* ADB74 800BD374 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* ADB78 800BD378 01005226 */  addiu      $s2, $s2, 0x1
    /* ADB7C 800BD37C 2A104202 */  slt        $v0, $s2, $v0
    /* ADB80 800BD380 71FF4014 */  bnez       $v0, .L800BD148
    /* ADB84 800BD384 58007326 */   addiu     $s3, $s3, 0x58
  .L800BD388:
    /* ADB88 800BD388 1280043C */  lui        $a0, %hi(D_80121110)
    /* ADB8C 800BD38C 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ADB90 800BD390 7D11040C */  jal        func_801045F4
    /* ADB94 800BD394 00000000 */   nop
    /* ADB98 800BD398 1280013C */  lui        $at, %hi(D_80121136)
    /* ADB9C 800BD39C 361136A4 */  sh         $s6, %lo(D_80121136)($at)
    /* ADBA0 800BD3A0 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* ADBA4 800BD3A4 6800BE8F */  lw         $fp, 0x68($sp)
    /* ADBA8 800BD3A8 6400B78F */  lw         $s7, 0x64($sp)
    /* ADBAC 800BD3AC 6000B68F */  lw         $s6, 0x60($sp)
    /* ADBB0 800BD3B0 5C00B58F */  lw         $s5, 0x5C($sp)
    /* ADBB4 800BD3B4 5800B48F */  lw         $s4, 0x58($sp)
    /* ADBB8 800BD3B8 5400B38F */  lw         $s3, 0x54($sp)
    /* ADBBC 800BD3BC 5000B28F */  lw         $s2, 0x50($sp)
    /* ADBC0 800BD3C0 4C00B18F */  lw         $s1, 0x4C($sp)
    /* ADBC4 800BD3C4 4800B08F */  lw         $s0, 0x48($sp)
    /* ADBC8 800BD3C8 7000BD27 */  addiu      $sp, $sp, 0x70
    /* ADBCC 800BD3CC 0800E003 */  jr         $ra
    /* ADBD0 800BD3D0 00000000 */   nop
endlabel func_800BCDB0
