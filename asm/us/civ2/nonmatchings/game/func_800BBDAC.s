.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BBDAC, 0x858

glabel func_800BBDAC
    /* AC5AC 800BBDAC 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* AC5B0 800BBDB0 7800B4AF */  sw         $s4, 0x78($sp)
    /* AC5B4 800BBDB4 1280143C */  lui        $s4, %hi(D_80120FC8)
    /* AC5B8 800BBDB8 C80F9426 */  addiu      $s4, $s4, %lo(D_80120FC8)
    /* AC5BC 800BBDBC 8C00BFAF */  sw         $ra, 0x8C($sp)
    /* AC5C0 800BBDC0 8800BEAF */  sw         $fp, 0x88($sp)
    /* AC5C4 800BBDC4 8400B7AF */  sw         $s7, 0x84($sp)
    /* AC5C8 800BBDC8 8000B6AF */  sw         $s6, 0x80($sp)
    /* AC5CC 800BBDCC 7C00B5AF */  sw         $s5, 0x7C($sp)
    /* AC5D0 800BBDD0 7400B3AF */  sw         $s3, 0x74($sp)
    /* AC5D4 800BBDD4 7000B2AF */  sw         $s2, 0x70($sp)
    /* AC5D8 800BBDD8 6C00B1AF */  sw         $s1, 0x6C($sp)
    /* AC5DC 800BBDDC 6800B0AF */  sw         $s0, 0x68($sp)
    /* AC5E0 800BBDE0 0000828E */  lw         $v0, 0x0($s4)
    /* AC5E4 800BBDE4 00000000 */  nop
    /* AC5E8 800BBDE8 F9014010 */  beqz       $v0, .L800BC5D0
    /* AC5EC 800BBDEC 00000000 */   nop
    /* AC5F0 800BBDF0 7907040C */  jal        func_80101DE4
    /* AC5F4 800BBDF4 01000424 */   addiu     $a0, $zero, 0x1
    /* AC5F8 800BBDF8 1280023C */  lui        $v0, %hi(D_80120DBC)
    /* AC5FC 800BBDFC BC0D428C */  lw         $v0, %lo(D_80120DBC)($v0)
    /* AC600 800BBE00 00000000 */  nop
    /* AC604 800BBE04 0400448C */  lw         $a0, 0x4($v0)
    /* AC608 800BBE08 D707040C */  jal        func_80101F5C
    /* AC60C 800BBE0C 10001524 */   addiu     $s5, $zero, 0x10
    /* AC610 800BBE10 1280093C */  lui        $t1, %hi(D_801210C4)
    /* AC614 800BBE14 C410298D */  lw         $t1, %lo(D_801210C4)($t1)
    /* AC618 800BBE18 BCFD8426 */  addiu      $a0, $s4, -0x244
    /* AC61C 800BBE1C DC49020C */  jal        func_80092770
    /* AC620 800BBE20 5000A9AF */   sw        $t1, 0x50($sp)
    /* AC624 800BBE24 1800A427 */  addiu      $a0, $sp, 0x18
    /* AC628 800BBE28 21280000 */  addu       $a1, $zero, $zero
    /* AC62C 800BBE2C 40010224 */  addiu      $v0, $zero, 0x140
    /* AC630 800BBE30 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* AC634 800BBE34 F0000224 */  addiu      $v0, $zero, 0xF0
    /* AC638 800BBE38 1800A0A7 */  sh         $zero, 0x18($sp)
    /* AC63C 800BBE3C 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* AC640 800BBE40 A314020C */  jal        func_8008528C
    /* AC644 800BBE44 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* AC648 800BBE48 E4FF8426 */  addiu      $a0, $s4, -0x1C
    /* AC64C 800BBE4C E8FD8526 */  addiu      $a1, $s4, -0x218
    /* AC650 800BBE50 2000A627 */  addiu      $a2, $sp, 0x20
    /* AC654 800BBE54 1800A727 */  addiu      $a3, $sp, 0x18
    /* AC658 800BBE58 06000324 */  addiu      $v1, $zero, 0x6
    /* AC65C 800BBE5C 3A010824 */  addiu      $t0, $zero, 0x13A
    /* AC660 800BBE60 D0000224 */  addiu      $v0, $zero, 0xD0
    /* AC664 800BBE64 2600A2A7 */  sh         $v0, 0x26($sp)
    /* AC668 800BBE68 E0000224 */  addiu      $v0, $zero, 0xE0
    /* AC66C 800BBE6C 2000A3A7 */  sh         $v1, 0x20($sp)
    /* AC670 800BBE70 2200A0A7 */  sh         $zero, 0x22($sp)
    /* AC674 800BBE74 2400A8A7 */  sh         $t0, 0x24($sp)
    /* AC678 800BBE78 1800A3A7 */  sh         $v1, 0x18($sp)
    /* AC67C 800BBE7C 1A00B5A7 */  sh         $s5, 0x1A($sp)
    /* AC680 800BBE80 1C00A8A7 */  sh         $t0, 0x1C($sp)
    /* AC684 800BBE84 1FE4030C */  jal        func_800F907C
    /* AC688 800BBE88 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* AC68C 800BBE8C 1980030C */  jal        func_800E0064
    /* AC690 800BBE90 21200000 */   addu      $a0, $zero, $zero
    /* AC694 800BBE94 1280023C */  lui        $v0, %hi(D_8012110C)
    /* AC698 800BBE98 0C11428C */  lw         $v0, %lo(D_8012110C)($v0)
    /* AC69C 800BBE9C 00000000 */  nop
    /* AC6A0 800BBEA0 68004014 */  bnez       $v0, .L800BC044
    /* AC6A4 800BBEA4 00000000 */   nop
    /* AC6A8 800BBEA8 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC6AC 800BBEAC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC6B0 800BBEB0 CB1A030C */  jal        func_800C6B2C
    /* AC6B4 800BBEB4 20001224 */   addiu     $s2, $zero, 0x20
    /* AC6B8 800BBEB8 1680023C */  lui        $v0, %hi(D_8015894C)
    /* AC6BC 800BBEBC 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* AC6C0 800BBEC0 00000000 */  nop
    /* AC6C4 800BBEC4 3805448C */  lw         $a0, 0x538($v0)
    /* AC6C8 800BBEC8 A63A030C */  jal        func_800CEA98
    /* AC6CC 800BBECC 30011324 */   addiu     $s3, $zero, 0x130
    /* AC6D0 800BBED0 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC6D4 800BBED4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC6D8 800BBED8 9987030C */  jal        func_800E1E64
    /* AC6DC 800BBEDC 21284000 */   addu      $a1, $v0, $zero
    /* AC6E0 800BBEE0 1280103C */  lui        $s0, %hi(D_80121340)
    /* AC6E4 800BBEE4 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* AC6E8 800BBEE8 21200002 */  addu       $a0, $s0, $zero
    /* AC6EC 800BBEEC 1800A527 */  addiu      $a1, $sp, 0x18
    /* AC6F0 800BBEF0 10000624 */  addiu      $a2, $zero, 0x10
    /* AC6F4 800BBEF4 A8000224 */  addiu      $v0, $zero, 0xA8
    /* AC6F8 800BBEF8 1800B2A7 */  sh         $s2, 0x18($sp)
    /* AC6FC 800BBEFC 1A00B5A7 */  sh         $s5, 0x1A($sp)
    /* AC700 800BBF00 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* AC704 800BBF04 DC0F040C */  jal        func_80103F70
    /* AC708 800BBF08 1E00B2A7 */   sh        $s2, 0x1E($sp)
    /* AC70C 800BBF0C 1280013C */  lui        $at, %hi(D_8012110C)
    /* AC710 800BBF10 0C1122AC */  sw         $v0, %lo(D_8012110C)($at)
    /* AC714 800BBF14 CB1A030C */  jal        func_800C6B2C
    /* AC718 800BBF18 21200002 */   addu      $a0, $s0, $zero
    /* AC71C 800BBF1C 1280053C */  lui        $a1, %hi(D_8011A264)
    /* AC720 800BBF20 64A2A584 */  lh         $a1, %lo(D_8011A264)($a1)
    /* AC724 800BBF24 AD98010C */  jal        func_800662B4
    /* AC728 800BBF28 21200002 */   addu      $a0, $s0, $zero
    /* AC72C 800BBF2C 21280002 */  addu       $a1, $s0, $zero
    /* AC730 800BBF30 1800A627 */  addiu      $a2, $sp, 0x18
    /* AC734 800BBF34 10000724 */  addiu      $a3, $zero, 0x10
    /* AC738 800BBF38 C0000224 */  addiu      $v0, $zero, 0xC0
    /* AC73C 800BBF3C 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AC740 800BBF40 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AC744 800BBF44 1800A2A7 */  sh         $v0, 0x18($sp)
    /* AC748 800BBF48 1A00B5A7 */  sh         $s5, 0x1A($sp)
    /* AC74C 800BBF4C 1C00B3A7 */  sh         $s3, 0x1C($sp)
    /* AC750 800BBF50 5511040C */  jal        func_80104554
    /* AC754 800BBF54 1E00B2A7 */   sh        $s2, 0x1E($sp)
    /* AC758 800BBF58 CB1A030C */  jal        func_800C6B2C
    /* AC75C 800BBF5C 21200002 */   addu      $a0, $s0, $zero
    /* AC760 800BBF60 5000AA8F */  lw         $t2, 0x50($sp)
    /* AC764 800BBF64 21280000 */  addu       $a1, $zero, $zero
    /* AC768 800BBF68 40100A00 */  sll        $v0, $t2, 1
    /* AC76C 800BBF6C 21104A00 */  addu       $v0, $v0, $t2
    /* AC770 800BBF70 80100200 */  sll        $v0, $v0, 2
    /* AC774 800BBF74 23104A00 */  subu       $v0, $v0, $t2
    /* AC778 800BBF78 00110200 */  sll        $v0, $v0, 4
    /* AC77C 800BBF7C 23104A00 */  subu       $v0, $v0, $t2
    /* AC780 800BBF80 C0100200 */  sll        $v0, $v0, 3
    /* AC784 800BBF84 1180013C */  lui        $at, %hi(D_801176A7)
    /* AC788 800BBF88 21082200 */  addu       $at, $at, $v0
    /* AC78C 800BBF8C A7762490 */  lbu        $a0, %lo(D_801176A7)($at)
    /* AC790 800BBF90 04000624 */  addiu      $a2, $zero, 0x4
    /* AC794 800BBF94 F53A030C */  jal        func_800CEBD4
    /* AC798 800BBF98 FFFF8424 */   addiu     $a0, $a0, -0x1
    /* AC79C 800BBF9C 5000A48F */  lw         $a0, 0x50($sp)
    /* AC7A0 800BBFA0 5D54020C */  jal        func_80095174
    /* AC7A4 800BBFA4 21884000 */   addu      $s1, $v0, $zero
    /* AC7A8 800BBFA8 21200002 */  addu       $a0, $s0, $zero
    /* AC7AC 800BBFAC 9987030C */  jal        func_800E1E64
    /* AC7B0 800BBFB0 21284000 */   addu      $a1, $v0, $zero
    /* AC7B4 800BBFB4 CD1A030C */  jal        func_800C6B34
    /* AC7B8 800BBFB8 21200002 */   addu      $a0, $s0, $zero
    /* AC7BC 800BBFBC 21200002 */  addu       $a0, $s0, $zero
    /* AC7C0 800BBFC0 731B030C */  jal        func_800C6DCC
    /* AC7C4 800BBFC4 48012526 */   addiu     $a1, $s1, 0x148
    /* AC7C8 800BBFC8 21280002 */  addu       $a1, $s0, $zero
    /* AC7CC 800BBFCC 1800A627 */  addiu      $a2, $sp, 0x18
    /* AC7D0 800BBFD0 10000724 */  addiu      $a3, $zero, 0x10
    /* AC7D4 800BBFD4 90000224 */  addiu      $v0, $zero, 0x90
    /* AC7D8 800BBFD8 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AC7DC 800BBFDC 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AC7E0 800BBFE0 30001124 */  addiu      $s1, $zero, 0x30
    /* AC7E4 800BBFE4 1800B5A7 */  sh         $s5, 0x18($sp)
    /* AC7E8 800BBFE8 1A00B2A7 */  sh         $s2, 0x1A($sp)
    /* AC7EC 800BBFEC 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* AC7F0 800BBFF0 5511040C */  jal        func_80104554
    /* AC7F4 800BBFF4 1E00B1A7 */   sh        $s1, 0x1E($sp)
    /* AC7F8 800BBFF8 CB1A030C */  jal        func_800C6B2C
    /* AC7FC 800BBFFC 21200002 */   addu      $a0, $s0, $zero
    /* AC800 800BC000 5000A48F */  lw         $a0, 0x50($sp)
    /* AC804 800BC004 F853020C */  jal        func_80094FE0
    /* AC808 800BC008 00000000 */   nop
    /* AC80C 800BC00C 21200002 */  addu       $a0, $s0, $zero
    /* AC810 800BC010 9987030C */  jal        func_800E1E64
    /* AC814 800BC014 21284000 */   addu      $a1, $v0, $zero
    /* AC818 800BC018 21280002 */  addu       $a1, $s0, $zero
    /* AC81C 800BC01C 1800A627 */  addiu      $a2, $sp, 0x18
    /* AC820 800BC020 10000724 */  addiu      $a3, $zero, 0x10
    /* AC824 800BC024 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AC828 800BC028 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AC82C 800BC02C B0000224 */  addiu      $v0, $zero, 0xB0
    /* AC830 800BC030 1800A2A7 */  sh         $v0, 0x18($sp)
    /* AC834 800BC034 1A00B2A7 */  sh         $s2, 0x1A($sp)
    /* AC838 800BC038 1C00B3A7 */  sh         $s3, 0x1C($sp)
    /* AC83C 800BC03C 5511040C */  jal        func_80104554
    /* AC840 800BC040 1E00B1A7 */   sh        $s1, 0x1E($sp)
  .L800BC044:
    /* AC844 800BC044 4401848E */  lw         $a0, 0x144($s4)
    /* AC848 800BC048 7D11040C */  jal        func_801045F4
    /* AC84C 800BC04C 21A80000 */   addu      $s5, $zero, $zero
    /* AC850 800BC050 04000424 */  addiu      $a0, $zero, 0x4
    /* AC854 800BC054 01000524 */  addiu      $a1, $zero, 0x1
    /* AC858 800BC058 63000624 */  addiu      $a2, $zero, 0x63
    /* AC85C 800BC05C 2C000924 */  addiu      $t1, $zero, 0x2C
    /* AC860 800BC060 38001024 */  addiu      $s0, $zero, 0x38
    /* AC864 800BC064 B8000224 */  addiu      $v0, $zero, 0xB8
    /* AC868 800BC068 100189AE */  sw         $t1, 0x110($s4)
    /* AC86C 800BC06C 080190AE */  sw         $s0, 0x108($s4)
    /* AC870 800BC070 F53A030C */  jal        func_800CEBD4
    /* AC874 800BC074 0C0182AE */   sw        $v0, 0x10C($s4)
    /* AC878 800BC078 1280033C */  lui        $v1, %hi(D_8011A282)
    /* AC87C 800BC07C 82A26384 */  lh         $v1, %lo(D_8011A282)($v1)
    /* AC880 800BC080 21880000 */  addu       $s1, $zero, $zero
    /* AC884 800BC084 4000A2AF */  sw         $v0, 0x40($sp)
    /* AC888 800BC088 0F006018 */  blez       $v1, .L800BC0C8
    /* AC88C 800BC08C 040182AE */   sw        $v0, 0x104($s4)
    /* AC890 800BC090 21206000 */  addu       $a0, $v1, $zero
    /* AC894 800BC094 21180000 */  addu       $v1, $zero, $zero
  .L800BC098:
    /* AC898 800BC098 1180013C */  lui        $at, %hi(D_80113ED8)
    /* AC89C 800BC09C 21082300 */  addu       $at, $at, $v1
    /* AC8A0 800BC0A0 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* AC8A4 800BC0A4 5000AA8F */  lw         $t2, 0x50($sp)
    /* AC8A8 800BC0A8 00000000 */  nop
    /* AC8AC 800BC0AC 02004A14 */  bne        $v0, $t2, .L800BC0B8
    /* AC8B0 800BC0B0 00000000 */   nop
    /* AC8B4 800BC0B4 01003126 */  addiu      $s1, $s1, 0x1
  .L800BC0B8:
    /* AC8B8 800BC0B8 0100B526 */  addiu      $s5, $s5, 0x1
    /* AC8BC 800BC0BC 2A10A402 */  slt        $v0, $s5, $a0
    /* AC8C0 800BC0C0 F5FF4014 */  bnez       $v0, .L800BC098
    /* AC8C4 800BC0C4 58006324 */   addiu     $v1, $v1, 0x58
  .L800BC0C8:
    /* AC8C8 800BC0C8 4000A98F */  lw         $t1, 0x40($sp)
    /* AC8CC 800BC0CC FFFF3126 */  addiu      $s1, $s1, -0x1
    /* AC8D0 800BC0D0 21202902 */  addu       $a0, $s1, $t1
    /* AC8D4 800BC0D4 1A008900 */  div        $zero, $a0, $t1
    /* AC8D8 800BC0D8 02002015 */  bnez       $t1, .L800BC0E4
    /* AC8DC 800BC0DC 00000000 */   nop
    /* AC8E0 800BC0E0 0D000700 */  break      7
  .L800BC0E4:
    /* AC8E4 800BC0E4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* AC8E8 800BC0E8 04002115 */  bne        $t1, $at, .L800BC0FC
    /* AC8EC 800BC0EC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AC8F0 800BC0F0 02008114 */  bne        $a0, $at, .L800BC0FC
    /* AC8F4 800BC0F4 00000000 */   nop
    /* AC8F8 800BC0F8 0D000600 */  break      6
  .L800BC0FC:
    /* AC8FC 800BC0FC 12200000 */  mflo       $a0
    /* AC900 800BC100 01000524 */  addiu      $a1, $zero, 0x1
    /* AC904 800BC104 63000624 */  addiu      $a2, $zero, 0x63
    /* AC908 800BC108 21F00000 */  addu       $fp, $zero, $zero
    /* AC90C 800BC10C 21A00002 */  addu       $s4, $s0, $zero
    /* AC910 800BC110 1280103C */  lui        $s0, %hi(D_801210C0)
    /* AC914 800BC114 C0101026 */  addiu      $s0, $s0, %lo(D_801210C0)
    /* AC918 800BC118 1280173C */  lui        $s7, %hi(D_80121340)
    /* AC91C 800BC11C 4013F726 */  addiu      $s7, $s7, %lo(D_80121340)
    /* AC920 800BC120 F53A030C */  jal        func_800CEBD4
    /* AC924 800BC124 21A80000 */   addu      $s5, $zero, $zero
    /* AC928 800BC128 21202002 */  addu       $a0, $s1, $zero
    /* AC92C 800BC12C 21280000 */  addu       $a1, $zero, $zero
    /* AC930 800BC130 E7030624 */  addiu      $a2, $zero, 0x3E7
    /* AC934 800BC134 F53A030C */  jal        func_800CEBD4
    /* AC938 800BC138 000002AE */   sw        $v0, 0x0($s0)
    /* AC93C 800BC13C 21280000 */  addu       $a1, $zero, $zero
    /* AC940 800BC140 1280043C */  lui        $a0, %hi(D_801210C8)
    /* AC944 800BC144 C810848C */  lw         $a0, %lo(D_801210C8)($a0)
    /* AC948 800BC148 F53A030C */  jal        func_800CEBD4
    /* AC94C 800BC14C 21304000 */   addu      $a2, $v0, $zero
    /* AC950 800BC150 1280033C */  lui        $v1, %hi(D_80121110)
    /* AC954 800BC154 1011638C */  lw         $v1, %lo(D_80121110)($v1)
    /* AC958 800BC158 21980000 */  addu       $s3, $zero, $zero
    /* AC95C 800BC15C 4800A2AF */  sw         $v0, 0x48($sp)
    /* AC960 800BC160 1280013C */  lui        $at, %hi(D_801210C8)
    /* AC964 800BC164 C81022AC */  sw         $v0, %lo(D_801210C8)($at)
    /* AC968 800BC168 0100632C */  sltiu      $v1, $v1, 0x1
    /* AC96C 800BC16C 5800A3AF */  sw         $v1, 0x58($sp)
  .L800BC170:
    /* AC970 800BC170 1280023C */  lui        $v0, %hi(D_8011A282)
    /* AC974 800BC174 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* AC978 800BC178 00000000 */  nop
    /* AC97C 800BC17C 2A10A202 */  slt        $v0, $s5, $v0
    /* AC980 800BC180 0D014010 */  beqz       $v0, .L800BC5B8
    /* AC984 800BC184 00000000 */   nop
    /* AC988 800BC188 1180013C */  lui        $at, %hi(D_80113ED8)
    /* AC98C 800BC18C 21083300 */  addu       $at, $at, $s3
    /* AC990 800BC190 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* AC994 800BC194 5000AA8F */  lw         $t2, 0x50($sp)
    /* AC998 800BC198 00000000 */  nop
    /* AC99C 800BC19C 03014A14 */  bne        $v0, $t2, .L800BC5AC
    /* AC9A0 800BC1A0 00000000 */   nop
    /* AC9A4 800BC1A4 0100DE27 */  addiu      $fp, $fp, 0x1
    /* AC9A8 800BC1A8 4800A98F */  lw         $t1, 0x48($sp)
    /* AC9AC 800BC1AC FFFFD127 */  addiu      $s1, $fp, -0x1
    /* AC9B0 800BC1B0 2A102902 */  slt        $v0, $s1, $t1
    /* AC9B4 800BC1B4 FD004014 */  bnez       $v0, .L800BC5AC
    /* AC9B8 800BC1B8 00000000 */   nop
    /* AC9BC 800BC1BC 4000AA8F */  lw         $t2, 0x40($sp)
    /* AC9C0 800BC1C0 00000000 */  nop
    /* AC9C4 800BC1C4 21102A01 */  addu       $v0, $t1, $t2
    /* AC9C8 800BC1C8 2A102202 */  slt        $v0, $s1, $v0
    /* AC9CC 800BC1CC F7004010 */  beqz       $v0, .L800BC5AC
    /* AC9D0 800BC1D0 2128A002 */   addu      $a1, $s5, $zero
    /* AC9D4 800BC1D4 1280043C */  lui        $a0, %hi(D_80120D84)
    /* AC9D8 800BC1D8 840D8424 */  addiu      $a0, $a0, %lo(D_80120D84)
    /* AC9DC 800BC1DC 21300000 */  addu       $a2, $zero, $zero
    /* AC9E0 800BC1E0 1280103C */  lui        $s0, %hi(D_80120E58)
    /* AC9E4 800BC1E4 580E108E */  lw         $s0, %lo(D_80120E58)($s0)
    /* AC9E8 800BC1E8 06008226 */  addiu      $v0, $s4, 0x6
    /* AC9EC 800BC1EC 1000A2AF */  sw         $v0, 0x10($sp)
    /* AC9F0 800BC1F0 1400A0AF */  sw         $zero, 0x14($sp)
    /* AC9F4 800BC1F4 17C0020C */  jal        func_800B005C
    /* AC9F8 800BC1F8 12000726 */   addiu     $a3, $s0, 0x12
    /* AC9FC 800BC1FC 1280023C */  lui        $v0, %hi(D_80121134)
    /* ACA00 800BC200 34114284 */  lh         $v0, %lo(D_80121134)($v0)
    /* ACA04 800BC204 00000000 */  nop
    /* ACA08 800BC208 09002216 */  bne        $s1, $v0, .L800BC230
    /* ACA0C 800BC20C 0C000526 */   addiu     $a1, $s0, 0xC
    /* ACA10 800BC210 1280043C */  lui        $a0, %hi(D_80120D84)
    /* ACA14 800BC214 840D8424 */  addiu      $a0, $a0, %lo(D_80120D84)
    /* ACA18 800BC218 21308002 */  addu       $a2, $s4, $zero
    /* ACA1C 800BC21C 38000726 */  addiu      $a3, $s0, 0x38
    /* ACA20 800BC220 24008226 */  addiu      $v0, $s4, 0x24
    /* ACA24 800BC224 1000A2AF */  sw         $v0, 0x10($sp)
    /* ACA28 800BC228 C413020C */  jal        func_80084F10
    /* ACA2C 800BC22C 1400A0AF */   sw        $zero, 0x14($sp)
  .L800BC230:
    /* ACA30 800BC230 5800A98F */  lw         $t1, 0x58($sp)
    /* ACA34 800BC234 00000000 */  nop
    /* ACA38 800BC238 5C002011 */  beqz       $t1, .L800BC3AC
    /* ACA3C 800BC23C 21B08002 */   addu      $s6, $s4, $zero
    /* ACA40 800BC240 1280043C */  lui        $a0, %hi(D_80121110)
    /* ACA44 800BC244 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ACA48 800BC248 40000224 */  addiu      $v0, $zero, 0x40
    /* ACA4C 800BC24C 1800A2A7 */  sh         $v0, 0x18($sp)
    /* ACA50 800BC250 C0000224 */  addiu      $v0, $zero, 0xC0
    /* ACA54 800BC254 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* ACA58 800BC258 0C008226 */  addiu      $v0, $s4, 0xC
    /* ACA5C 800BC25C 1A00B4A7 */  sh         $s4, 0x1A($sp)
    /* ACA60 800BC260 0B008014 */  bnez       $a0, .L800BC290
    /* ACA64 800BC264 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* ACA68 800BC268 1180043C */  lui        $a0, %hi(D_80113EF2)
    /* ACA6C 800BC26C F23E8424 */  addiu      $a0, $a0, %lo(D_80113EF2)
    /* ACA70 800BC270 21206402 */  addu       $a0, $s3, $a0
    /* ACA74 800BC274 1800A527 */  addiu      $a1, $sp, 0x18
    /* ACA78 800BC278 DC0F040C */  jal        func_80103F70
    /* ACA7C 800BC27C 10000624 */   addiu     $a2, $zero, 0x10
    /* ACA80 800BC280 1280013C */  lui        $at, %hi(D_80121110)
    /* ACA84 800BC284 101122AC */  sw         $v0, %lo(D_80121110)($at)
    /* ACA88 800BC288 AAF00208 */  j          .L800BC2A8
    /* ACA8C 800BC28C 00000000 */   nop
  .L800BC290:
    /* ACA90 800BC290 1180053C */  lui        $a1, %hi(D_80113EF2)
    /* ACA94 800BC294 F23EA524 */  addiu      $a1, $a1, %lo(D_80113EF2)
    /* ACA98 800BC298 21286502 */  addu       $a1, $s3, $a1
    /* ACA9C 800BC29C 1800A627 */  addiu      $a2, $sp, 0x18
    /* ACAA0 800BC2A0 5511040C */  jal        func_80104554
    /* ACAA4 800BC2A4 10000724 */   addiu     $a3, $zero, 0x10
  .L800BC2A8:
    /* ACAA8 800BC2A8 5800AA8F */  lw         $t2, 0x58($sp)
    /* ACAAC 800BC2AC 00000000 */  nop
    /* ACAB0 800BC2B0 3E004011 */  beqz       $t2, .L800BC3AC
    /* ACAB4 800BC2B4 00000000 */   nop
    /* ACAB8 800BC2B8 1280043C */  lui        $a0, %hi(D_80121340)
    /* ACABC 800BC2BC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ACAC0 800BC2C0 CB1A030C */  jal        func_800C6B2C
    /* ACAC4 800BC2C4 0C00D126 */   addiu     $s1, $s6, 0xC
    /* ACAC8 800BC2C8 1180013C */  lui        $at, %hi(D_80113F24)
    /* ACACC 800BC2CC 21083300 */  addu       $at, $at, $s3
    /* ACAD0 800BC2D0 243F2590 */  lbu        $a1, %lo(D_80113F24)($at)
    /* ACAD4 800BC2D4 1280043C */  lui        $a0, %hi(D_80121340)
    /* ACAD8 800BC2D8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ACADC 800BC2DC 9C1B030C */  jal        func_800C6E70
    /* ACAE0 800BC2E0 1800D026 */   addiu     $s0, $s6, 0x18
    /* ACAE4 800BC2E4 2128E002 */  addu       $a1, $s7, $zero
    /* ACAE8 800BC2E8 1800A627 */  addiu      $a2, $sp, 0x18
    /* ACAEC 800BC2EC 10000724 */  addiu      $a3, $zero, 0x10
    /* ACAF0 800BC2F0 58000224 */  addiu      $v0, $zero, 0x58
    /* ACAF4 800BC2F4 1800A2A7 */  sh         $v0, 0x18($sp)
    /* ACAF8 800BC2F8 70000224 */  addiu      $v0, $zero, 0x70
    /* ACAFC 800BC2FC 1280043C */  lui        $a0, %hi(D_80121110)
    /* ACB00 800BC300 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ACB04 800BC304 1A00B1A7 */  sh         $s1, 0x1A($sp)
    /* ACB08 800BC308 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* ACB0C 800BC30C 5511040C */  jal        func_80104554
    /* ACB10 800BC310 1E00B0A7 */   sh        $s0, 0x1E($sp)
    /* ACB14 800BC314 CB1A030C */  jal        func_800C6B2C
    /* ACB18 800BC318 2120E002 */   addu      $a0, $s7, $zero
    /* ACB1C 800BC31C 1180013C */  lui        $at, %hi(D_80113F25)
    /* ACB20 800BC320 21083300 */  addu       $at, $at, $s3
    /* ACB24 800BC324 253F2590 */  lbu        $a1, %lo(D_80113F25)($at)
    /* ACB28 800BC328 9C1B030C */  jal        func_800C6E70
    /* ACB2C 800BC32C 2120E002 */   addu      $a0, $s7, $zero
    /* ACB30 800BC330 2128E002 */  addu       $a1, $s7, $zero
    /* ACB34 800BC334 1800A627 */  addiu      $a2, $sp, 0x18
    /* ACB38 800BC338 10000724 */  addiu      $a3, $zero, 0x10
    /* ACB3C 800BC33C 1280043C */  lui        $a0, %hi(D_80121110)
    /* ACB40 800BC340 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ACB44 800BC344 A0000224 */  addiu      $v0, $zero, 0xA0
    /* ACB48 800BC348 1800A2A7 */  sh         $v0, 0x18($sp)
    /* ACB4C 800BC34C B8000224 */  addiu      $v0, $zero, 0xB8
    /* ACB50 800BC350 1A00B1A7 */  sh         $s1, 0x1A($sp)
    /* ACB54 800BC354 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* ACB58 800BC358 5511040C */  jal        func_80104554
    /* ACB5C 800BC35C 1E00B0A7 */   sh        $s0, 0x1E($sp)
    /* ACB60 800BC360 CB1A030C */  jal        func_800C6B2C
    /* ACB64 800BC364 2120E002 */   addu      $a0, $s7, $zero
    /* ACB68 800BC368 1180013C */  lui        $at, %hi(D_80113F22)
    /* ACB6C 800BC36C 21083300 */  addu       $at, $at, $s3
    /* ACB70 800BC370 223F2584 */  lh         $a1, %lo(D_80113F22)($at)
    /* ACB74 800BC374 9C1B030C */  jal        func_800C6E70
    /* ACB78 800BC378 2120E002 */   addu      $a0, $s7, $zero
    /* ACB7C 800BC37C 2128E002 */  addu       $a1, $s7, $zero
    /* ACB80 800BC380 1800A627 */  addiu      $a2, $sp, 0x18
    /* ACB84 800BC384 10000724 */  addiu      $a3, $zero, 0x10
    /* ACB88 800BC388 1280043C */  lui        $a0, %hi(D_80121110)
    /* ACB8C 800BC38C 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ACB90 800BC390 E8000224 */  addiu      $v0, $zero, 0xE8
    /* ACB94 800BC394 1800A2A7 */  sh         $v0, 0x18($sp)
    /* ACB98 800BC398 00010224 */  addiu      $v0, $zero, 0x100
    /* ACB9C 800BC39C 1A00B1A7 */  sh         $s1, 0x1A($sp)
    /* ACBA0 800BC3A0 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* ACBA4 800BC3A4 5511040C */  jal        func_80104554
    /* ACBA8 800BC3A8 1E00B0A7 */   sh        $s0, 0x1E($sp)
  .L800BC3AC:
    /* ACBAC 800BC3AC 2800A427 */  addiu      $a0, $sp, 0x28
    /* ACBB0 800BC3B0 1380053C */  lui        $a1, %hi(D_8013044C)
    /* ACBB4 800BC3B4 4C04A524 */  addiu      $a1, $a1, %lo(D_8013044C)
    /* ACBB8 800BC3B8 1280063C */  lui        $a2, %hi(D_80120D84)
    /* ACBBC 800BC3BC 840DC624 */  addiu      $a2, $a2, %lo(D_80120D84)
    /* ACBC0 800BC3C0 40000724 */  addiu      $a3, $zero, 0x40
    /* ACBC4 800BC3C4 0C00D026 */  addiu      $s0, $s6, 0xC
    /* ACBC8 800BC3C8 00841000 */  sll        $s0, $s0, 16
    /* ACBCC 800BC3CC 03841000 */  sra        $s0, $s0, 16
    /* ACBD0 800BC3D0 89EE030C */  jal        func_800FBA24
    /* ACBD4 800BC3D4 1000B0AF */   sw        $s0, 0x10($sp)
    /* ACBD8 800BC3D8 3000A427 */  addiu      $a0, $sp, 0x30
    /* ACBDC 800BC3DC 1380093C */  lui        $t1, %hi(D_8013044C)
    /* ACBE0 800BC3E0 4C042925 */  addiu      $t1, $t1, %lo(D_8013044C)
    /* ACBE4 800BC3E4 28012525 */  addiu      $a1, $t1, 0x128
    /* ACBE8 800BC3E8 1280063C */  lui        $a2, %hi(D_80120D84)
    /* ACBEC 800BC3EC 840DC624 */  addiu      $a2, $a2, %lo(D_80120D84)
    /* ACBF0 800BC3F0 88000724 */  addiu      $a3, $zero, 0x88
    /* ACBF4 800BC3F4 89EE030C */  jal        func_800FBA24
    /* ACBF8 800BC3F8 1000B0AF */   sw        $s0, 0x10($sp)
    /* ACBFC 800BC3FC 3800A427 */  addiu      $a0, $sp, 0x38
    /* ACC00 800BC400 13800A3C */  lui        $t2, %hi(D_8013044C)
    /* ACC04 800BC404 4C044A25 */  addiu      $t2, $t2, %lo(D_8013044C)
    /* ACC08 800BC408 50024525 */  addiu      $a1, $t2, 0x250
    /* ACC0C 800BC40C 1280063C */  lui        $a2, %hi(D_80120D84)
    /* ACC10 800BC410 840DC624 */  addiu      $a2, $a2, %lo(D_80120D84)
    /* ACC14 800BC414 D0000724 */  addiu      $a3, $zero, 0xD0
    /* ACC18 800BC418 89EE030C */  jal        func_800FBA24
    /* ACC1C 800BC41C 1000B0AF */   sw        $s0, 0x10($sp)
    /* ACC20 800BC420 1280043C */  lui        $a0, %hi(D_80121340)
    /* ACC24 800BC424 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ACC28 800BC428 CB1A030C */  jal        func_800C6B2C
    /* ACC2C 800BC42C 00000000 */   nop
    /* ACC30 800BC430 1180013C */  lui        $at, %hi(D_80113F0D)
    /* ACC34 800BC434 21083300 */  addu       $at, $at, $s3
    /* ACC38 800BC438 0D3F3080 */  lb         $s0, %lo(D_80113F0D)($at)
    /* ACC3C 800BC43C 00000000 */  nop
    /* ACC40 800BC440 18000006 */  bltz       $s0, .L800BC4A4
    /* ACC44 800BC444 7A000424 */   addiu     $a0, $zero, 0x7A
    /* ACC48 800BC448 0A000524 */  addiu      $a1, $zero, 0xA
    /* ACC4C 800BC44C FFFF0624 */  addiu      $a2, $zero, -0x1
    /* ACC50 800BC450 1C80030C */  jal        func_800E0070
    /* ACC54 800BC454 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* ACC58 800BC458 1180013C */  lui        $at, %hi(D_80113F0D)
    /* ACC5C 800BC45C 21083300 */  addu       $at, $at, $s3
    /* ACC60 800BC460 0D3F2280 */  lb         $v0, %lo(D_80113F0D)($at)
    /* ACC64 800BC464 00000000 */  nop
    /* ACC68 800BC468 80800200 */  sll        $s0, $v0, 2
    /* ACC6C 800BC46C 21800202 */  addu       $s0, $s0, $v0
    /* ACC70 800BC470 80801000 */  sll        $s0, $s0, 2
    /* ACC74 800BC474 1180013C */  lui        $at, %hi(D_8010D27C)
    /* ACC78 800BC478 21083000 */  addu       $at, $at, $s0
    /* ACC7C 800BC47C 7CD2258C */  lw         $a1, %lo(D_8010D27C)($at)
    /* ACC80 800BC480 1280043C */  lui        $a0, %hi(D_80121340)
    /* ACC84 800BC484 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ACC88 800BC488 651B030C */  jal        func_800C6D94
    /* ACC8C 800BC48C 00000000 */   nop
    /* ACC90 800BC490 1180013C */  lui        $at, %hi(D_8010D28C)
    /* ACC94 800BC494 21083000 */  addu       $at, $at, $s0
    /* ACC98 800BC498 8CD23280 */  lb         $s2, %lo(D_8010D28C)($at)
    /* ACC9C 800BC49C 3BF10208 */  j          .L800BC4EC
    /* ACCA0 800BC4A0 00000000 */   nop
  .L800BC4A4:
    /* ACCA4 800BC4A4 23801000 */  negu       $s0, $s0
    /* ACCA8 800BC4A8 C0881000 */  sll        $s1, $s0, 3
    /* ACCAC 800BC4AC 1180013C */  lui        $at, %hi(D_8010D064)
    /* ACCB0 800BC4B0 21083100 */  addu       $at, $at, $s1
    /* ACCB4 800BC4B4 64D0258C */  lw         $a1, %lo(D_8010D064)($at)
    /* ACCB8 800BC4B8 1280043C */  lui        $a0, %hi(D_80121340)
    /* ACCBC 800BC4BC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ACCC0 800BC4C0 651B030C */  jal        func_800C6D94
    /* ACCC4 800BC4C4 2700102A */   slti      $s0, $s0, 0x27
    /* ACCC8 800BC4C8 05000016 */  bnez       $s0, .L800BC4E0
    /* ACCCC 800BC4CC 5E000424 */   addiu     $a0, $zero, 0x5E
    /* ACCD0 800BC4D0 0A000524 */  addiu      $a1, $zero, 0xA
    /* ACCD4 800BC4D4 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* ACCD8 800BC4D8 1C80030C */  jal        func_800E0070
    /* ACCDC 800BC4DC FFFF0724 */   addiu     $a3, $zero, -0x1
  .L800BC4E0:
    /* ACCE0 800BC4E0 1180013C */  lui        $at, %hi(D_8010D068)
    /* ACCE4 800BC4E4 21083100 */  addu       $at, $at, $s1
    /* ACCE8 800BC4E8 68D03290 */  lbu        $s2, %lo(D_8010D068)($at)
  .L800BC4EC:
    /* ACCEC 800BC4EC 5800A98F */  lw         $t1, 0x58($sp)
    /* ACCF0 800BC4F0 00000000 */  nop
    /* ACCF4 800BC4F4 2C002011 */  beqz       $t1, .L800BC5A8
    /* ACCF8 800BC4F8 2128E002 */   addu      $a1, $s7, $zero
    /* ACCFC 800BC4FC 1800A627 */  addiu      $a2, $sp, 0x18
    /* ACD00 800BC500 10000724 */  addiu      $a3, $zero, 0x10
    /* ACD04 800BC504 40000224 */  addiu      $v0, $zero, 0x40
    /* ACD08 800BC508 1800D126 */  addiu      $s1, $s6, 0x18
    /* ACD0C 800BC50C 1800A2A7 */  sh         $v0, 0x18($sp)
    /* ACD10 800BC510 F0000224 */  addiu      $v0, $zero, 0xF0
    /* ACD14 800BC514 1280043C */  lui        $a0, %hi(D_80121110)
    /* ACD18 800BC518 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ACD1C 800BC51C 2400D026 */  addiu      $s0, $s6, 0x24
    /* ACD20 800BC520 1A00B1A7 */  sh         $s1, 0x1A($sp)
    /* ACD24 800BC524 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* ACD28 800BC528 5511040C */  jal        func_80104554
    /* ACD2C 800BC52C 1E00B0A7 */   sh        $s0, 0x1E($sp)
    /* ACD30 800BC530 CB1A030C */  jal        func_800C6B2C
    /* ACD34 800BC534 2120E002 */   addu      $a0, $s7, $zero
    /* ACD38 800BC538 1180013C */  lui        $at, %hi(D_80113EEE)
    /* ACD3C 800BC53C 21083300 */  addu       $at, $at, $s3
    /* ACD40 800BC540 EE3E2584 */  lh         $a1, %lo(D_80113EEE)($at)
    /* ACD44 800BC544 9C1B030C */  jal        func_800C6E70
    /* ACD48 800BC548 2120E002 */   addu      $a0, $s7, $zero
    /* ACD4C 800BC54C 1680053C */  lui        $a1, %hi(D_80158FF0)
    /* ACD50 800BC550 F08FA524 */  addiu      $a1, $a1, %lo(D_80158FF0)
    /* ACD54 800BC554 9987030C */  jal        func_800E1E64
    /* ACD58 800BC558 2120E002 */   addu      $a0, $s7, $zero
    /* ACD5C 800BC55C 1280053C */  lui        $a1, %hi(D_8011A5CC)
    /* ACD60 800BC560 CCA5A590 */  lbu        $a1, %lo(D_8011A5CC)($a1)
    /* ACD64 800BC564 00000000 */  nop
    /* ACD68 800BC568 18004502 */  mult       $s2, $a1
    /* ACD6C 800BC56C 12280000 */  mflo       $a1
    /* ACD70 800BC570 9C1B030C */  jal        func_800C6E70
    /* ACD74 800BC574 2120E002 */   addu      $a0, $s7, $zero
    /* ACD78 800BC578 2128E002 */  addu       $a1, $s7, $zero
    /* ACD7C 800BC57C 1800A627 */  addiu      $a2, $sp, 0x18
    /* ACD80 800BC580 10000724 */  addiu      $a3, $zero, 0x10
    /* ACD84 800BC584 1280043C */  lui        $a0, %hi(D_80121110)
    /* ACD88 800BC588 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ACD8C 800BC58C F8000224 */  addiu      $v0, $zero, 0xF8
    /* ACD90 800BC590 1800A2A7 */  sh         $v0, 0x18($sp)
    /* ACD94 800BC594 30010224 */  addiu      $v0, $zero, 0x130
    /* ACD98 800BC598 1A00B1A7 */  sh         $s1, 0x1A($sp)
    /* ACD9C 800BC59C 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* ACDA0 800BC5A0 5511040C */  jal        func_80104554
    /* ACDA4 800BC5A4 1E00B0A7 */   sh        $s0, 0x1E($sp)
  .L800BC5A8:
    /* ACDA8 800BC5A8 2C009426 */  addiu      $s4, $s4, 0x2C
  .L800BC5AC:
    /* ACDAC 800BC5AC 58007326 */  addiu      $s3, $s3, 0x58
    /* ACDB0 800BC5B0 5CF00208 */  j          .L800BC170
    /* ACDB4 800BC5B4 0100B526 */   addiu     $s5, $s5, 0x1
  .L800BC5B8:
    /* ACDB8 800BC5B8 1280043C */  lui        $a0, %hi(D_80121110)
    /* ACDBC 800BC5BC 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ACDC0 800BC5C0 7D11040C */  jal        func_801045F4
    /* ACDC4 800BC5C4 00000000 */   nop
    /* ACDC8 800BC5C8 1280013C */  lui        $at, %hi(D_80121136)
    /* ACDCC 800BC5CC 36113EA4 */  sh         $fp, %lo(D_80121136)($at)
  .L800BC5D0:
    /* ACDD0 800BC5D0 8C00BF8F */  lw         $ra, 0x8C($sp)
    /* ACDD4 800BC5D4 8800BE8F */  lw         $fp, 0x88($sp)
    /* ACDD8 800BC5D8 8400B78F */  lw         $s7, 0x84($sp)
    /* ACDDC 800BC5DC 8000B68F */  lw         $s6, 0x80($sp)
    /* ACDE0 800BC5E0 7C00B58F */  lw         $s5, 0x7C($sp)
    /* ACDE4 800BC5E4 7800B48F */  lw         $s4, 0x78($sp)
    /* ACDE8 800BC5E8 7400B38F */  lw         $s3, 0x74($sp)
    /* ACDEC 800BC5EC 7000B28F */  lw         $s2, 0x70($sp)
    /* ACDF0 800BC5F0 6C00B18F */  lw         $s1, 0x6C($sp)
    /* ACDF4 800BC5F4 6800B08F */  lw         $s0, 0x68($sp)
    /* ACDF8 800BC5F8 9000BD27 */  addiu      $sp, $sp, 0x90
    /* ACDFC 800BC5FC 0800E003 */  jr         $ra
    /* ACE00 800BC600 00000000 */   nop
endlabel func_800BBDAC
