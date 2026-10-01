.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BAD58, 0xDF8

glabel func_800BAD58
    /* AB558 800BAD58 A0FEBD27 */  addiu      $sp, $sp, -0x160
    /* AB55C 800BAD5C 3801B0AF */  sw         $s0, 0x138($sp)
    /* AB560 800BAD60 1280103C */  lui        $s0, %hi(D_801210C4)
    /* AB564 800BAD64 C4101026 */  addiu      $s0, $s0, %lo(D_801210C4)
    /* AB568 800BAD68 5C01BFAF */  sw         $ra, 0x15C($sp)
    /* AB56C 800BAD6C 5801BEAF */  sw         $fp, 0x158($sp)
    /* AB570 800BAD70 5401B7AF */  sw         $s7, 0x154($sp)
    /* AB574 800BAD74 5001B6AF */  sw         $s6, 0x150($sp)
    /* AB578 800BAD78 4C01B5AF */  sw         $s5, 0x14C($sp)
    /* AB57C 800BAD7C 4801B4AF */  sw         $s4, 0x148($sp)
    /* AB580 800BAD80 4401B3AF */  sw         $s3, 0x144($sp)
    /* AB584 800BAD84 4001B2AF */  sw         $s2, 0x140($sp)
    /* AB588 800BAD88 3C01B1AF */  sw         $s1, 0x13C($sp)
    /* AB58C 800BAD8C 0000098E */  lw         $t1, 0x0($s0)
    /* AB590 800BAD90 C0FC0426 */  addiu      $a0, $s0, -0x340
    /* AB594 800BAD94 DC49020C */  jal        func_80092770
    /* AB598 800BAD98 E800A9AF */   sw        $t1, 0xE8($sp)
    /* AB59C 800BAD9C 7907040C */  jal        func_80101DE4
    /* AB5A0 800BADA0 01000424 */   addiu     $a0, $zero, 0x1
    /* AB5A4 800BADA4 1280023C */  lui        $v0, %hi(D_80120DBC)
    /* AB5A8 800BADA8 BC0D428C */  lw         $v0, %lo(D_80120DBC)($v0)
    /* AB5AC 800BADAC 00000000 */  nop
    /* AB5B0 800BADB0 0400448C */  lw         $a0, 0x4($v0)
    /* AB5B4 800BADB4 D707040C */  jal        func_80101F5C
    /* AB5B8 800BADB8 10001424 */   addiu     $s4, $zero, 0x10
    /* AB5BC 800BADBC B800B327 */  addiu      $s3, $sp, 0xB8
    /* AB5C0 800BADC0 21206002 */  addu       $a0, $s3, $zero
    /* AB5C4 800BADC4 21280000 */  addu       $a1, $zero, $zero
    /* AB5C8 800BADC8 40010224 */  addiu      $v0, $zero, 0x140
    /* AB5CC 800BADCC F0000A24 */  addiu      $t2, $zero, 0xF0
    /* AB5D0 800BADD0 B800A0A7 */  sh         $zero, 0xB8($sp)
    /* AB5D4 800BADD4 BA00A0A7 */  sh         $zero, 0xBA($sp)
    /* AB5D8 800BADD8 BC00A2A7 */  sh         $v0, 0xBC($sp)
    /* AB5DC 800BADDC A314020C */  jal        func_8008528C
    /* AB5E0 800BADE0 BE00AAA7 */   sh        $t2, 0xBE($sp)
    /* AB5E4 800BADE4 E8FE0426 */  addiu      $a0, $s0, -0x118
    /* AB5E8 800BADE8 ECFC1026 */  addiu      $s0, $s0, -0x314
    /* AB5EC 800BADEC 21280002 */  addu       $a1, $s0, $zero
    /* AB5F0 800BADF0 C000A627 */  addiu      $a2, $sp, 0xC0
    /* AB5F4 800BADF4 21386002 */  addu       $a3, $s3, $zero
    /* AB5F8 800BADF8 06000324 */  addiu      $v1, $zero, 0x6
    /* AB5FC 800BADFC 3A010824 */  addiu      $t0, $zero, 0x13A
    /* AB600 800BAE00 D0000224 */  addiu      $v0, $zero, 0xD0
    /* AB604 800BAE04 E0001724 */  addiu      $s7, $zero, 0xE0
    /* AB608 800BAE08 C000A3A7 */  sh         $v1, 0xC0($sp)
    /* AB60C 800BAE0C C200A0A7 */  sh         $zero, 0xC2($sp)
    /* AB610 800BAE10 C400A8A7 */  sh         $t0, 0xC4($sp)
    /* AB614 800BAE14 C600A2A7 */  sh         $v0, 0xC6($sp)
    /* AB618 800BAE18 B800A3A7 */  sh         $v1, 0xB8($sp)
    /* AB61C 800BAE1C BA00B4A7 */  sh         $s4, 0xBA($sp)
    /* AB620 800BAE20 BC00A8A7 */  sh         $t0, 0xBC($sp)
    /* AB624 800BAE24 1FE4030C */  jal        func_800F907C
    /* AB628 800BAE28 BE00B7A7 */   sh        $s7, 0xBE($sp)
    /* AB62C 800BAE2C 1280023C */  lui        $v0, %hi(D_80120E5C)
    /* AB630 800BAE30 5C0E428C */  lw         $v0, %lo(D_80120E5C)($v0)
    /* AB634 800BAE34 1280033C */  lui        $v1, %hi(D_8012110C)
    /* AB638 800BAE38 0C11638C */  lw         $v1, %lo(D_8012110C)($v1)
    /* AB63C 800BAE3C 02005524 */  addiu      $s5, $v0, 0x2
    /* AB640 800BAE40 72006014 */  bnez       $v1, .L800BB00C
    /* AB644 800BAE44 AC005624 */   addiu     $s6, $v0, 0xAC
    /* AB648 800BAE48 1280043C */  lui        $a0, %hi(D_80121340)
    /* AB64C 800BAE4C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AB650 800BAE50 CB1A030C */  jal        func_800C6B2C
    /* AB654 800BAE54 20001224 */   addiu     $s2, $zero, 0x20
    /* AB658 800BAE58 1680023C */  lui        $v0, %hi(D_8015894C)
    /* AB65C 800BAE5C 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* AB660 800BAE60 00000000 */  nop
    /* AB664 800BAE64 4805448C */  lw         $a0, 0x548($v0)
    /* AB668 800BAE68 A63A030C */  jal        func_800CEA98
    /* AB66C 800BAE6C 01001E24 */   addiu     $fp, $zero, 0x1
    /* AB670 800BAE70 1280043C */  lui        $a0, %hi(D_80121340)
    /* AB674 800BAE74 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AB678 800BAE78 9987030C */  jal        func_800E1E64
    /* AB67C 800BAE7C 21284000 */   addu      $a1, $v0, $zero
    /* AB680 800BAE80 1280103C */  lui        $s0, %hi(D_80121340)
    /* AB684 800BAE84 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* AB688 800BAE88 21200002 */  addu       $a0, $s0, $zero
    /* AB68C 800BAE8C 21286002 */  addu       $a1, $s3, $zero
    /* AB690 800BAE90 10000624 */  addiu      $a2, $zero, 0x10
    /* AB694 800BAE94 B0000224 */  addiu      $v0, $zero, 0xB0
    /* AB698 800BAE98 B800B4A7 */  sh         $s4, 0xB8($sp)
    /* AB69C 800BAE9C BA00B4A7 */  sh         $s4, 0xBA($sp)
    /* AB6A0 800BAEA0 BC00A2A7 */  sh         $v0, 0xBC($sp)
    /* AB6A4 800BAEA4 DC0F040C */  jal        func_80103F70
    /* AB6A8 800BAEA8 BE00B2A7 */   sh        $s2, 0xBE($sp)
    /* AB6AC 800BAEAC 1280013C */  lui        $at, %hi(D_8012110C)
    /* AB6B0 800BAEB0 0C1122AC */  sw         $v0, %lo(D_8012110C)($at)
    /* AB6B4 800BAEB4 CB1A030C */  jal        func_800C6B2C
    /* AB6B8 800BAEB8 21200002 */   addu      $a0, $s0, $zero
    /* AB6BC 800BAEBC E800A98F */  lw         $t1, 0xE8($sp)
    /* AB6C0 800BAEC0 21280000 */  addu       $a1, $zero, $zero
    /* AB6C4 800BAEC4 40100900 */  sll        $v0, $t1, 1
    /* AB6C8 800BAEC8 21104900 */  addu       $v0, $v0, $t1
    /* AB6CC 800BAECC 80100200 */  sll        $v0, $v0, 2
    /* AB6D0 800BAED0 23104900 */  subu       $v0, $v0, $t1
    /* AB6D4 800BAED4 00110200 */  sll        $v0, $v0, 4
    /* AB6D8 800BAED8 23104900 */  subu       $v0, $v0, $t1
    /* AB6DC 800BAEDC C0100200 */  sll        $v0, $v0, 3
    /* AB6E0 800BAEE0 1180013C */  lui        $at, %hi(D_801176A7)
    /* AB6E4 800BAEE4 21082200 */  addu       $at, $at, $v0
    /* AB6E8 800BAEE8 A7762490 */  lbu        $a0, %lo(D_801176A7)($at)
    /* AB6EC 800BAEEC 04000624 */  addiu      $a2, $zero, 0x4
    /* AB6F0 800BAEF0 F53A030C */  jal        func_800CEBD4
    /* AB6F4 800BAEF4 FFFF8424 */   addiu     $a0, $a0, -0x1
    /* AB6F8 800BAEF8 E800A48F */  lw         $a0, 0xE8($sp)
    /* AB6FC 800BAEFC 5D54020C */  jal        func_80095174
    /* AB700 800BAF00 21884000 */   addu      $s1, $v0, $zero
    /* AB704 800BAF04 21200002 */  addu       $a0, $s0, $zero
    /* AB708 800BAF08 9987030C */  jal        func_800E1E64
    /* AB70C 800BAF0C 21284000 */   addu      $a1, $v0, $zero
    /* AB710 800BAF10 CD1A030C */  jal        func_800C6B34
    /* AB714 800BAF14 21200002 */   addu      $a0, $s0, $zero
    /* AB718 800BAF18 21200002 */  addu       $a0, $s0, $zero
    /* AB71C 800BAF1C 731B030C */  jal        func_800C6DCC
    /* AB720 800BAF20 48012526 */   addiu     $a1, $s1, 0x148
    /* AB724 800BAF24 21280002 */  addu       $a1, $s0, $zero
    /* AB728 800BAF28 21306002 */  addu       $a2, $s3, $zero
    /* AB72C 800BAF2C 10000724 */  addiu      $a3, $zero, 0x10
    /* AB730 800BAF30 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AB734 800BAF34 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AB738 800BAF38 A0000224 */  addiu      $v0, $zero, 0xA0
    /* AB73C 800BAF3C B800A2A7 */  sh         $v0, 0xB8($sp)
    /* AB740 800BAF40 E0010224 */  addiu      $v0, $zero, 0x1E0
    /* AB744 800BAF44 BA00B4A7 */  sh         $s4, 0xBA($sp)
    /* AB748 800BAF48 BC00A2A7 */  sh         $v0, 0xBC($sp)
    /* AB74C 800BAF4C 5511040C */  jal        func_80104554
    /* AB750 800BAF50 BE00B2A7 */   sh        $s2, 0xBE($sp)
    /* AB754 800BAF54 CB1A030C */  jal        func_800C6B2C
    /* AB758 800BAF58 21200002 */   addu      $a0, $s0, $zero
    /* AB75C 800BAF5C E800A48F */  lw         $a0, 0xE8($sp)
    /* AB760 800BAF60 2554020C */  jal        func_80095094
    /* AB764 800BAF64 30001124 */   addiu     $s1, $zero, 0x30
    /* AB768 800BAF68 21200002 */  addu       $a0, $s0, $zero
    /* AB76C 800BAF6C 9987030C */  jal        func_800E1E64
    /* AB770 800BAF70 21284000 */   addu      $a1, $v0, $zero
    /* AB774 800BAF74 CD1A030C */  jal        func_800C6B34
    /* AB778 800BAF78 21200002 */   addu      $a0, $s0, $zero
    /* AB77C 800BAF7C E800A48F */  lw         $a0, 0xE8($sp)
    /* AB780 800BAF80 F853020C */  jal        func_80094FE0
    /* AB784 800BAF84 00000000 */   nop
    /* AB788 800BAF88 21200002 */  addu       $a0, $s0, $zero
    /* AB78C 800BAF8C 9987030C */  jal        func_800E1E64
    /* AB790 800BAF90 21284000 */   addu      $a1, $v0, $zero
    /* AB794 800BAF94 21280002 */  addu       $a1, $s0, $zero
    /* AB798 800BAF98 21306002 */  addu       $a2, $s3, $zero
    /* AB79C 800BAF9C 10000724 */  addiu      $a3, $zero, 0x10
    /* AB7A0 800BAFA0 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AB7A4 800BAFA4 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AB7A8 800BAFA8 B800B4A7 */  sh         $s4, 0xB8($sp)
    /* AB7AC 800BAFAC BA00B2A7 */  sh         $s2, 0xBA($sp)
    /* AB7B0 800BAFB0 BC00B7A7 */  sh         $s7, 0xBC($sp)
    /* AB7B4 800BAFB4 5511040C */  jal        func_80104554
    /* AB7B8 800BAFB8 BE00B1A7 */   sh        $s1, 0xBE($sp)
    /* AB7BC 800BAFBC CB1A030C */  jal        func_800C6B2C
    /* AB7C0 800BAFC0 21200002 */   addu      $a0, $s0, $zero
    /* AB7C4 800BAFC4 1280053C */  lui        $a1, %hi(D_8011A264)
    /* AB7C8 800BAFC8 64A2A584 */  lh         $a1, %lo(D_8011A264)($a1)
    /* AB7CC 800BAFCC AD98010C */  jal        func_800662B4
    /* AB7D0 800BAFD0 21200002 */   addu      $a0, $s0, $zero
    /* AB7D4 800BAFD4 21280002 */  addu       $a1, $s0, $zero
    /* AB7D8 800BAFD8 21306002 */  addu       $a2, $s3, $zero
    /* AB7DC 800BAFDC 10000724 */  addiu      $a3, $zero, 0x10
    /* AB7E0 800BAFE0 F0000A24 */  addiu      $t2, $zero, 0xF0
    /* AB7E4 800BAFE4 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AB7E8 800BAFE8 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AB7EC 800BAFEC 30010224 */  addiu      $v0, $zero, 0x130
    /* AB7F0 800BAFF0 B800AAA7 */  sh         $t2, 0xB8($sp)
    /* AB7F4 800BAFF4 BA00B2A7 */  sh         $s2, 0xBA($sp)
    /* AB7F8 800BAFF8 BC00A2A7 */  sh         $v0, 0xBC($sp)
    /* AB7FC 800BAFFC 5511040C */  jal        func_80104554
    /* AB800 800BB000 BE00B1A7 */   sh        $s1, 0xBE($sp)
    /* AB804 800BB004 04EC0208 */  j          .L800BB010
    /* AB808 800BB008 00000000 */   nop
  .L800BB00C:
    /* AB80C 800BB00C 21F00000 */  addu       $fp, $zero, $zero
  .L800BB010:
    /* AB810 800BB010 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AB814 800BB014 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AB818 800BB018 7D11040C */  jal        func_801045F4
    /* AB81C 800BB01C 26001124 */   addiu     $s1, $zero, 0x26
    /* AB820 800BB020 B000A327 */  addiu      $v1, $sp, 0xB0
    /* AB824 800BB024 18000924 */  addiu      $t1, $zero, 0x18
    /* AB828 800BB028 0800A226 */  addiu      $v0, $s5, 0x8
    /* AB82C 800BB02C 1280013C */  lui        $at, %hi(D_801210D0)
    /* AB830 800BB030 D01022AC */  sw         $v0, %lo(D_801210D0)($at)
    /* AB834 800BB034 2310D502 */  subu       $v0, $s6, $s5
    /* AB838 800BB038 06000A24 */  addiu      $t2, $zero, 0x6
    /* AB83C 800BB03C 1280013C */  lui        $at, %hi(D_801210D8)
    /* AB840 800BB040 D81029AC */  sw         $t1, %lo(D_801210D8)($at)
    /* AB844 800BB044 1280013C */  lui        $at, %hi(D_801210D4)
    /* AB848 800BB048 D41022AC */  sw         $v0, %lo(D_801210D4)($at)
    /* AB84C 800BB04C 1280013C */  lui        $at, %hi(D_801210CC)
    /* AB850 800BB050 CC102AAC */  sw         $t2, %lo(D_801210CC)($at)
  .L800BB054:
    /* AB854 800BB054 000060AC */  sw         $zero, 0x0($v1)
    /* AB858 800BB058 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* AB85C 800BB05C FDFF2106 */  bgez       $s1, .L800BB054
    /* AB860 800BB060 FCFF6324 */   addiu     $v1, $v1, -0x4
    /* AB864 800BB064 0801A0AF */  sw         $zero, 0x108($sp)
    /* AB868 800BB068 21B80000 */  addu       $s7, $zero, $zero
    /* AB86C 800BB06C 1280023C */  lui        $v0, %hi(D_8011A282)
    /* AB870 800BB070 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* AB874 800BB074 21980000 */  addu       $s3, $zero, $zero
    /* AB878 800BB078 F800A0AF */  sw         $zero, 0xF8($sp)
    /* AB87C 800BB07C E000A0AF */  sw         $zero, 0xE0($sp)
    /* AB880 800BB080 37004018 */  blez       $v0, .L800BB160
    /* AB884 800BB084 0001A0AF */   sw        $zero, 0x100($sp)
    /* AB888 800BB088 1800B427 */  addiu      $s4, $sp, 0x18
    /* AB88C 800BB08C 21900000 */  addu       $s2, $zero, $zero
  .L800BB090:
    /* AB890 800BB090 1180013C */  lui        $at, %hi(D_80113ED8)
    /* AB894 800BB094 21083200 */  addu       $at, $at, $s2
    /* AB898 800BB098 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* AB89C 800BB09C E800A98F */  lw         $t1, 0xE8($sp)
    /* AB8A0 800BB0A0 00000000 */  nop
    /* AB8A4 800BB0A4 28004914 */  bne        $v0, $t1, .L800BB148
    /* AB8A8 800BB0A8 00000000 */   nop
    /* AB8AC 800BB0AC 21880000 */  addu       $s1, $zero, $zero
    /* AB8B0 800BB0B0 E000AA8F */  lw         $t2, 0xE0($sp)
    /* AB8B4 800BB0B4 21808002 */  addu       $s0, $s4, $zero
    /* AB8B8 800BB0B8 01004A25 */  addiu      $t2, $t2, 0x1
    /* AB8BC 800BB0BC E000AAAF */  sw         $t2, 0xE0($sp)
  .L800BB0C0:
    /* AB8C0 800BB0C0 E800A48F */  lw         $a0, 0xE8($sp)
    /* AB8C4 800BB0C4 C875000C */  jal        func_8001D720
    /* AB8C8 800BB0C8 21282002 */   addu      $a1, $s1, $zero
    /* AB8CC 800BB0CC 09004010 */  beqz       $v0, .L800BB0F4
    /* AB8D0 800BB0D0 21206002 */   addu      $a0, $s3, $zero
    /* AB8D4 800BB0D4 C826020C */  jal        func_80089B20
    /* AB8D8 800BB0D8 21282002 */   addu      $a1, $s1, $zero
    /* AB8DC 800BB0DC 05004010 */  beqz       $v0, .L800BB0F4
    /* AB8E0 800BB0E0 00000000 */   nop
    /* AB8E4 800BB0E4 0000028E */  lw         $v0, 0x0($s0)
    /* AB8E8 800BB0E8 00000000 */  nop
    /* AB8EC 800BB0EC 01004224 */  addiu      $v0, $v0, 0x1
    /* AB8F0 800BB0F0 000002AE */  sw         $v0, 0x0($s0)
  .L800BB0F4:
    /* AB8F4 800BB0F4 01003126 */  addiu      $s1, $s1, 0x1
    /* AB8F8 800BB0F8 2700222A */  slti       $v0, $s1, 0x27
    /* AB8FC 800BB0FC F0FF4014 */  bnez       $v0, .L800BB0C0
    /* AB900 800BB100 04001026 */   addiu     $s0, $s0, 0x4
    /* AB904 800BB104 1180013C */  lui        $at, %hi(D_80113ED4)
    /* AB908 800BB108 21083200 */  addu       $at, $at, $s2
    /* AB90C 800BB10C D43E228C */  lw         $v0, %lo(D_80113ED4)($at)
    /* AB910 800BB110 00000000 */  nop
    /* AB914 800BB114 01004230 */  andi       $v0, $v0, 0x1
    /* AB918 800BB118 0B004014 */  bnez       $v0, .L800BB148
    /* AB91C 800BB11C 00000000 */   nop
    /* AB920 800BB120 1180013C */  lui        $at, %hi(D_80113F20)
    /* AB924 800BB124 21083200 */  addu       $at, $at, $s2
    /* AB928 800BB128 203F2284 */  lh         $v0, %lo(D_80113F20)($at)
    /* AB92C 800BB12C F800A98F */  lw         $t1, 0xF8($sp)
    /* AB930 800BB130 1180013C */  lui        $at, %hi(D_80113F1E)
    /* AB934 800BB134 21083200 */  addu       $at, $at, $s2
    /* AB938 800BB138 1E3F2384 */  lh         $v1, %lo(D_80113F1E)($at)
    /* AB93C 800BB13C 21482201 */  addu       $t1, $t1, $v0
    /* AB940 800BB140 21B8E302 */  addu       $s7, $s7, $v1
    /* AB944 800BB144 F800A9AF */  sw         $t1, 0xF8($sp)
  .L800BB148:
    /* AB948 800BB148 1280023C */  lui        $v0, %hi(D_8011A282)
    /* AB94C 800BB14C 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* AB950 800BB150 01007326 */  addiu      $s3, $s3, 0x1
    /* AB954 800BB154 2A106202 */  slt        $v0, $s3, $v0
    /* AB958 800BB158 CDFF4014 */  bnez       $v0, .L800BB090
    /* AB95C 800BB15C 58005226 */   addiu     $s2, $s2, 0x58
  .L800BB160:
    /* AB960 800BB160 21880000 */  addu       $s1, $zero, $zero
    /* AB964 800BB164 1800B027 */  addiu      $s0, $sp, 0x18
  .L800BB168:
    /* AB968 800BB168 0000028E */  lw         $v0, 0x0($s0)
    /* AB96C 800BB16C 00000000 */  nop
    /* AB970 800BB170 0E004010 */  beqz       $v0, .L800BB1AC
    /* AB974 800BB174 00000000 */   nop
    /* AB978 800BB178 E800A48F */  lw         $a0, 0xE8($sp)
    /* AB97C 800BB17C C875000C */  jal        func_8001D720
    /* AB980 800BB180 21282002 */   addu      $a1, $s1, $zero
    /* AB984 800BB184 0000038E */  lw         $v1, 0x0($s0)
    /* AB988 800BB188 00000000 */  nop
    /* AB98C 800BB18C 18006200 */  mult       $v1, $v0
    /* AB990 800BB190 0801AA8F */  lw         $t2, 0x108($sp)
    /* AB994 800BB194 0001A98F */  lw         $t1, 0x100($sp)
    /* AB998 800BB198 01004A25 */  addiu      $t2, $t2, 0x1
    /* AB99C 800BB19C 0801AAAF */  sw         $t2, 0x108($sp)
    /* AB9A0 800BB1A0 12500000 */  mflo       $t2
    /* AB9A4 800BB1A4 21482A01 */  addu       $t1, $t1, $t2
    /* AB9A8 800BB1A8 0001A9AF */  sw         $t1, 0x100($sp)
  .L800BB1AC:
    /* AB9AC 800BB1AC 01003126 */  addiu      $s1, $s1, 0x1
    /* AB9B0 800BB1B0 2700222A */  slti       $v0, $s1, 0x27
    /* AB9B4 800BB1B4 ECFF4014 */  bnez       $v0, .L800BB168
    /* AB9B8 800BB1B8 04001026 */   addiu     $s0, $s0, 0x4
    /* AB9BC 800BB1BC E000A98F */  lw         $t1, 0xE0($sp)
    /* AB9C0 800BB1C0 0801AA8F */  lw         $t2, 0x108($sp)
    /* AB9C4 800BB1C4 05002225 */  addiu      $v0, $t1, 0x5
    /* AB9C8 800BB1C8 21804000 */  addu       $s0, $v0, $zero
    /* AB9CC 800BB1CC 02004325 */  addiu      $v1, $t2, 0x2
    /* AB9D0 800BB1D0 2A100302 */  slt        $v0, $s0, $v1
    /* AB9D4 800BB1D4 02004010 */  beqz       $v0, .L800BB1E0
    /* AB9D8 800BB1D8 00000000 */   nop
    /* AB9DC 800BB1DC 21806000 */  addu       $s0, $v1, $zero
  .L800BB1E0:
    /* AB9E0 800BB1E0 F000B0AF */  sw         $s0, 0xF0($sp)
    /* AB9E4 800BB1E4 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* AB9E8 800BB1E8 06000426 */  addiu      $a0, $s0, 0x6
    /* AB9EC 800BB1EC 06000924 */  addiu      $t1, $zero, 0x6
    /* AB9F0 800BB1F0 1A008900 */  div        $zero, $a0, $t1
    /* AB9F4 800BB1F4 02002015 */  bnez       $t1, .L800BB200
    /* AB9F8 800BB1F8 00000000 */   nop
    /* AB9FC 800BB1FC 0D000700 */  break      7
  .L800BB200:
    /* ABA00 800BB200 FFFF0124 */  addiu      $at, $zero, -0x1
    /* ABA04 800BB204 04002115 */  bne        $t1, $at, .L800BB218
    /* ABA08 800BB208 0080013C */   lui       $at, (0x80000000 >> 16)
    /* ABA0C 800BB20C 02008114 */  bne        $a0, $at, .L800BB218
    /* ABA10 800BB210 00000000 */   nop
    /* ABA14 800BB214 0D000600 */  break      6
  .L800BB218:
    /* ABA18 800BB218 12200000 */  mflo       $a0
    /* ABA1C 800BB21C 01000524 */  addiu      $a1, $zero, 0x1
    /* ABA20 800BB220 63000624 */  addiu      $a2, $zero, 0x63
    /* ABA24 800BB224 1280143C */  lui        $s4, %hi(D_80121136)
    /* ABA28 800BB228 36119426 */  addiu      $s4, $s4, %lo(D_80121136)
    /* ABA2C 800BB22C F000AA97 */  lhu        $t2, 0xF0($sp)
    /* ABA30 800BB230 F53A030C */  jal        func_800CEBD4
    /* ABA34 800BB234 00008AA6 */   sh        $t2, 0x0($s4)
    /* ABA38 800BB238 21200002 */  addu       $a0, $s0, $zero
    /* ABA3C 800BB23C 21280000 */  addu       $a1, $zero, $zero
    /* ABA40 800BB240 1280013C */  lui        $at, %hi(D_801210C0)
    /* ABA44 800BB244 C01022AC */  sw         $v0, %lo(D_801210C0)($at)
    /* ABA48 800BB248 F53A030C */  jal        func_800CEBD4
    /* ABA4C 800BB24C E7030624 */   addiu     $a2, $zero, 0x3E7
    /* ABA50 800BB250 21280000 */  addu       $a1, $zero, $zero
    /* ABA54 800BB254 1280043C */  lui        $a0, %hi(D_801210C8)
    /* ABA58 800BB258 C810848C */  lw         $a0, %lo(D_801210C8)($a0)
    /* ABA5C 800BB25C F53A030C */  jal        func_800CEBD4
    /* ABA60 800BB260 21304000 */   addu      $a2, $v0, $zero
    /* ABA64 800BB264 D800A2AF */  sw         $v0, 0xD8($sp)
    /* ABA68 800BB268 1280013C */  lui        $at, %hi(D_801210C8)
    /* ABA6C 800BB26C C81022AC */  sw         $v0, %lo(D_801210C8)($at)
    /* ABA70 800BB270 3500C013 */  beqz       $fp, .L800BB348
    /* ABA74 800BB274 48001624 */   addiu     $s6, $zero, 0x48
    /* ABA78 800BB278 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABA7C 800BB27C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABA80 800BB280 CB1A030C */  jal        func_800C6B2C
    /* ABA84 800BB284 38001324 */   addiu     $s3, $zero, 0x38
    /* ABA88 800BB288 1680023C */  lui        $v0, %hi(D_8015894C)
    /* ABA8C 800BB28C 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* ABA90 800BB290 00000000 */  nop
    /* ABA94 800BB294 B005448C */  lw         $a0, 0x5B0($v0)
    /* ABA98 800BB298 A63A030C */  jal        func_800CEA98
    /* ABA9C 800BB29C 48001124 */   addiu     $s1, $zero, 0x48
    /* ABAA0 800BB2A0 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABAA4 800BB2A4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABAA8 800BB2A8 9987030C */  jal        func_800E1E64
    /* ABAAC 800BB2AC 21284000 */   addu      $a1, $v0, $zero
    /* ABAB0 800BB2B0 1280103C */  lui        $s0, %hi(D_80121340)
    /* ABAB4 800BB2B4 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* ABAB8 800BB2B8 21200002 */  addu       $a0, $s0, $zero
    /* ABABC 800BB2BC B800B227 */  addiu      $s2, $sp, 0xB8
    /* ABAC0 800BB2C0 21284002 */  addu       $a1, $s2, $zero
    /* ABAC4 800BB2C4 10000624 */  addiu      $a2, $zero, 0x10
    /* ABAC8 800BB2C8 18000224 */  addiu      $v0, $zero, 0x18
    /* ABACC 800BB2CC B800A2A7 */  sh         $v0, 0xB8($sp)
    /* ABAD0 800BB2D0 88000224 */  addiu      $v0, $zero, 0x88
    /* ABAD4 800BB2D4 BA00B3A7 */  sh         $s3, 0xBA($sp)
    /* ABAD8 800BB2D8 BC00A2A7 */  sh         $v0, 0xBC($sp)
    /* ABADC 800BB2DC DC0F040C */  jal        func_80103F70
    /* ABAE0 800BB2E0 BE00B1A7 */   sh        $s1, 0xBE($sp)
    /* ABAE4 800BB2E4 1280013C */  lui        $at, %hi(D_80121110)
    /* ABAE8 800BB2E8 101122AC */  sw         $v0, %lo(D_80121110)($at)
    /* ABAEC 800BB2EC CB1A030C */  jal        func_800C6B2C
    /* ABAF0 800BB2F0 21200002 */   addu      $a0, $s0, $zero
    /* ABAF4 800BB2F4 1680023C */  lui        $v0, %hi(D_8015894C)
    /* ABAF8 800BB2F8 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* ABAFC 800BB2FC 00000000 */  nop
    /* ABB00 800BB300 B405448C */  lw         $a0, 0x5B4($v0)
    /* ABB04 800BB304 A63A030C */  jal        func_800CEA98
    /* ABB08 800BB308 48001624 */   addiu     $s6, $zero, 0x48
    /* ABB0C 800BB30C 21200002 */  addu       $a0, $s0, $zero
    /* ABB10 800BB310 9987030C */  jal        func_800E1E64
    /* ABB14 800BB314 21284000 */   addu      $a1, $v0, $zero
    /* ABB18 800BB318 21280002 */  addu       $a1, $s0, $zero
    /* ABB1C 800BB31C 21304002 */  addu       $a2, $s2, $zero
    /* ABB20 800BB320 10000724 */  addiu      $a3, $zero, 0x10
    /* ABB24 800BB324 1280043C */  lui        $a0, %hi(D_80121110)
    /* ABB28 800BB328 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ABB2C 800BB32C A8000224 */  addiu      $v0, $zero, 0xA8
    /* ABB30 800BB330 B800A2A7 */  sh         $v0, 0xB8($sp)
    /* ABB34 800BB334 30010224 */  addiu      $v0, $zero, 0x130
    /* ABB38 800BB338 BA00B3A7 */  sh         $s3, 0xBA($sp)
    /* ABB3C 800BB33C BC00A2A7 */  sh         $v0, 0xBC($sp)
    /* ABB40 800BB340 5511040C */  jal        func_80104554
    /* ABB44 800BB344 BE00B1A7 */   sh        $s1, 0xBE($sp)
  .L800BB348:
    /* ABB48 800BB348 1800A927 */  addiu      $t1, $sp, 0x18
    /* ABB4C 800BB34C D800B58F */  lw         $s5, 0xD8($sp)
    /* ABB50 800BB350 54000A24 */  addiu      $t2, $zero, 0x54
    /* ABB54 800BB354 1801A9AF */  sw         $t1, 0x118($sp)
    /* ABB58 800BB358 3001AAAF */  sw         $t2, 0x130($sp)
  .L800BB35C:
    /* ABB5C 800BB35C D800A98F */  lw         $t1, 0xD8($sp)
    /* ABB60 800BB360 00000000 */  nop
    /* ABB64 800BB364 06002225 */  addiu      $v0, $t1, 0x6
    /* ABB68 800BB368 2A10A202 */  slt        $v0, $s5, $v0
    /* ABB6C 800BB36C DF014010 */  beqz       $v0, .L800BBAEC
    /* ABB70 800BB370 00000000 */   nop
    /* ABB74 800BB374 F000AA8F */  lw         $t2, 0xF0($sp)
    /* ABB78 800BB378 00000000 */  nop
    /* ABB7C 800BB37C 2A10AA02 */  slt        $v0, $s5, $t2
    /* ABB80 800BB380 D8014010 */  beqz       $v0, .L800BBAE4
    /* ABB84 800BB384 10001124 */   addiu     $s1, $zero, 0x10
    /* ABB88 800BB388 E000A98F */  lw         $t1, 0xE0($sp)
    /* ABB8C 800BB38C 21A0C002 */  addu       $s4, $s6, $zero
    /* ABB90 800BB390 2A10A902 */  slt        $v0, $s5, $t1
    /* ABB94 800BB394 B1004010 */  beqz       $v0, .L800BB65C
    /* ABB98 800BB398 1001B5AF */   sw        $s5, 0x110($sp)
    /* ABB9C 800BB39C FFFF1224 */  addiu      $s2, $zero, -0x1
    /* ABBA0 800BB3A0 21980000 */  addu       $s3, $zero, $zero
    /* ABBA4 800BB3A4 1280023C */  lui        $v0, %hi(D_8011A282)
    /* ABBA8 800BB3A8 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* ABBAC 800BB3AC 00000000 */  nop
    /* ABBB0 800BB3B0 13004018 */  blez       $v0, .L800BB400
    /* ABBB4 800BB3B4 21180000 */   addu      $v1, $zero, $zero
    /* ABBB8 800BB3B8 1280053C */  lui        $a1, %hi(D_8011A282)
    /* ABBBC 800BB3BC 82A2A584 */  lh         $a1, %lo(D_8011A282)($a1)
    /* ABBC0 800BB3C0 21200000 */  addu       $a0, $zero, $zero
  .L800BB3C4:
    /* ABBC4 800BB3C4 1180013C */  lui        $at, %hi(D_80113ED8)
    /* ABBC8 800BB3C8 21082400 */  addu       $at, $at, $a0
    /* ABBCC 800BB3CC D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* ABBD0 800BB3D0 E800AA8F */  lw         $t2, 0xE8($sp)
    /* ABBD4 800BB3D4 00000000 */  nop
    /* ABBD8 800BB3D8 05004A14 */  bne        $v0, $t2, .L800BB3F0
    /* ABBDC 800BB3DC 00000000 */   nop
    /* ABBE0 800BB3E0 1001A98F */  lw         $t1, 0x110($sp)
    /* ABBE4 800BB3E4 00000000 */  nop
    /* ABBE8 800BB3E8 7F006910 */  beq        $v1, $t1, .L800BB5E8
    /* ABBEC 800BB3EC 01006324 */   addiu     $v1, $v1, 0x1
  .L800BB3F0:
    /* ABBF0 800BB3F0 01007326 */  addiu      $s3, $s3, 0x1
    /* ABBF4 800BB3F4 2A106502 */  slt        $v0, $s3, $a1
    /* ABBF8 800BB3F8 F2FF4014 */  bnez       $v0, .L800BB3C4
    /* ABBFC 800BB3FC 58008424 */   addiu     $a0, $a0, 0x58
  .L800BB400:
    /* ABC00 800BB400 3E014006 */  bltz       $s2, .L800BB8FC
    /* ABC04 800BB404 00000000 */   nop
    /* ABC08 800BB408 0C25020C */  jal        func_80089430
    /* ABC0C 800BB40C 21204002 */   addu      $a0, $s2, $zero
    /* ABC10 800BB410 21802002 */  addu       $s0, $s1, $zero
    /* ABC14 800BB414 1280043C */  lui        $a0, %hi(D_80120D84)
    /* ABC18 800BB418 840D8424 */  addiu      $a0, $a0, %lo(D_80120D84)
    /* ABC1C 800BB41C 21284002 */  addu       $a1, $s2, $zero
    /* ABC20 800BB420 21300000 */  addu       $a2, $zero, $zero
    /* ABC24 800BB424 21380002 */  addu       $a3, $s0, $zero
    /* ABC28 800BB428 1000B6AF */  sw         $s6, 0x10($sp)
    /* ABC2C 800BB42C 17C0020C */  jal        func_800B005C
    /* ABC30 800BB430 1400A0AF */   sw        $zero, 0x14($sp)
    /* ABC34 800BB434 1400C013 */  beqz       $fp, .L800BB488
    /* ABC38 800BB438 28001126 */   addiu     $s1, $s0, 0x28
    /* ABC3C 800BB43C 40281200 */  sll        $a1, $s2, 1
    /* ABC40 800BB440 2128B200 */  addu       $a1, $a1, $s2
    /* ABC44 800BB444 80280500 */  sll        $a1, $a1, 2
    /* ABC48 800BB448 2328B200 */  subu       $a1, $a1, $s2
    /* ABC4C 800BB44C C0280500 */  sll        $a1, $a1, 3
    /* ABC50 800BB450 1180023C */  lui        $v0, %hi(D_80113EF2)
    /* ABC54 800BB454 F23E4224 */  addiu      $v0, $v0, %lo(D_80113EF2)
    /* ABC58 800BB458 2128A200 */  addu       $a1, $a1, $v0
    /* ABC5C 800BB45C B800A627 */  addiu      $a2, $sp, 0xB8
    /* ABC60 800BB460 10000724 */  addiu      $a3, $zero, 0x10
    /* ABC64 800BB464 A8000226 */  addiu      $v0, $s0, 0xA8
    /* ABC68 800BB468 1280043C */  lui        $a0, %hi(D_80121110)
    /* ABC6C 800BB46C 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ABC70 800BB470 3001AA97 */  lhu        $t2, 0x130($sp)
    /* ABC74 800BB474 B800B1A7 */  sh         $s1, 0xB8($sp)
    /* ABC78 800BB478 BA00B6A7 */  sh         $s6, 0xBA($sp)
    /* ABC7C 800BB47C BC00A2A7 */  sh         $v0, 0xBC($sp)
    /* ABC80 800BB480 5511040C */  jal        func_80104554
    /* ABC84 800BB484 BE00AAA7 */   sh        $t2, 0xBE($sp)
  .L800BB488:
    /* ABC88 800BB488 0C009426 */  addiu      $s4, $s4, 0xC
    /* ABC8C 800BB48C 40101200 */  sll        $v0, $s2, 1
    /* ABC90 800BB490 21105200 */  addu       $v0, $v0, $s2
    /* ABC94 800BB494 80100200 */  sll        $v0, $v0, 2
    /* ABC98 800BB498 23105200 */  subu       $v0, $v0, $s2
    /* ABC9C 800BB49C C0900200 */  sll        $s2, $v0, 3
    /* ABCA0 800BB4A0 1180013C */  lui        $at, %hi(D_80113ED4)
    /* ABCA4 800BB4A4 21083200 */  addu       $at, $at, $s2
    /* ABCA8 800BB4A8 D43E228C */  lw         $v0, %lo(D_80113ED4)($at)
    /* ABCAC 800BB4AC 00000000 */  nop
    /* ABCB0 800BB4B0 01004230 */  andi       $v0, $v0, 0x1
    /* ABCB4 800BB4B4 4E004014 */  bnez       $v0, .L800BB5F0
    /* ABCB8 800BB4B8 21802002 */   addu      $s0, $s1, $zero
    /* ABCBC 800BB4BC 02008226 */  addiu      $v0, $s4, 0x2
    /* ABCC0 800BB4C0 00140200 */  sll        $v0, $v0, 16
    /* ABCC4 800BB4C4 038C0200 */  sra        $s1, $v0, 16
    /* ABCC8 800BB4C8 1000B1AF */  sw         $s1, 0x10($sp)
    /* ABCCC 800BB4CC C800A427 */  addiu      $a0, $sp, 0xC8
    /* ABCD0 800BB4D0 1380053C */  lui        $a1, %hi(D_801307C4)
    /* ABCD4 800BB4D4 C407A524 */  addiu      $a1, $a1, %lo(D_801307C4)
    /* ABCD8 800BB4D8 1280063C */  lui        $a2, %hi(D_80120D84)
    /* ABCDC 800BB4DC 840DC624 */  addiu      $a2, $a2, %lo(D_80120D84)
    /* ABCE0 800BB4E0 003C1000 */  sll        $a3, $s0, 16
    /* ABCE4 800BB4E4 89EE030C */  jal        func_800FBA24
    /* ABCE8 800BB4E8 033C0700 */   sra       $a3, $a3, 16
    /* ABCEC 800BB4EC 08001026 */  addiu      $s0, $s0, 0x8
    /* ABCF0 800BB4F0 1900C013 */  beqz       $fp, .L800BB558
    /* ABCF4 800BB4F4 21988002 */   addu      $s3, $s4, $zero
    /* ABCF8 800BB4F8 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABCFC 800BB4FC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABD00 800BB500 CB1A030C */  jal        func_800C6B2C
    /* ABD04 800BB504 00000000 */   nop
    /* ABD08 800BB508 1180013C */  lui        $at, %hi(D_80113F20)
    /* ABD0C 800BB50C 21083200 */  addu       $at, $at, $s2
    /* ABD10 800BB510 203F2584 */  lh         $a1, %lo(D_80113F20)($at)
    /* ABD14 800BB514 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABD18 800BB518 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABD1C 800BB51C 9C1B030C */  jal        func_800C6E70
    /* ABD20 800BB520 00000000 */   nop
    /* ABD24 800BB524 1280053C */  lui        $a1, %hi(D_80121340)
    /* ABD28 800BB528 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* ABD2C 800BB52C B800A627 */  addiu      $a2, $sp, 0xB8
    /* ABD30 800BB530 10000724 */  addiu      $a3, $zero, 0x10
    /* ABD34 800BB534 1280043C */  lui        $a0, %hi(D_80121110)
    /* ABD38 800BB538 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ABD3C 800BB53C 30000226 */  addiu      $v0, $s0, 0x30
    /* ABD40 800BB540 BC00A2A7 */  sh         $v0, 0xBC($sp)
    /* ABD44 800BB544 0C008226 */  addiu      $v0, $s4, 0xC
    /* ABD48 800BB548 B800B0A7 */  sh         $s0, 0xB8($sp)
    /* ABD4C 800BB54C BA00B3A7 */  sh         $s3, 0xBA($sp)
    /* ABD50 800BB550 5511040C */  jal        func_80104554
    /* ABD54 800BB554 BE00A2A7 */   sh        $v0, 0xBE($sp)
  .L800BB558:
    /* ABD58 800BB558 18001026 */  addiu      $s0, $s0, 0x18
    /* ABD5C 800BB55C 1000B1AF */  sw         $s1, 0x10($sp)
    /* ABD60 800BB560 D000A427 */  addiu      $a0, $sp, 0xD0
    /* ABD64 800BB564 1380093C */  lui        $t1, %hi(D_801307C4)
    /* ABD68 800BB568 C4072925 */  addiu      $t1, $t1, %lo(D_801307C4)
    /* ABD6C 800BB56C 94002525 */  addiu      $a1, $t1, 0x94
    /* ABD70 800BB570 1280063C */  lui        $a2, %hi(D_80120D84)
    /* ABD74 800BB574 840DC624 */  addiu      $a2, $a2, %lo(D_80120D84)
    /* ABD78 800BB578 003C1000 */  sll        $a3, $s0, 16
    /* ABD7C 800BB57C 89EE030C */  jal        func_800FBA24
    /* ABD80 800BB580 033C0700 */   sra       $a3, $a3, 16
    /* ABD84 800BB584 3300C013 */  beqz       $fp, .L800BB654
    /* ABD88 800BB588 08001026 */   addiu     $s0, $s0, 0x8
    /* ABD8C 800BB58C 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABD90 800BB590 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABD94 800BB594 CB1A030C */  jal        func_800C6B2C
    /* ABD98 800BB598 00000000 */   nop
    /* ABD9C 800BB59C 1180013C */  lui        $at, %hi(D_80113F1E)
    /* ABDA0 800BB5A0 21083200 */  addu       $at, $at, $s2
    /* ABDA4 800BB5A4 1E3F2584 */  lh         $a1, %lo(D_80113F1E)($at)
    /* ABDA8 800BB5A8 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABDAC 800BB5AC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABDB0 800BB5B0 9C1B030C */  jal        func_800C6E70
    /* ABDB4 800BB5B4 00000000 */   nop
    /* ABDB8 800BB5B8 1280053C */  lui        $a1, %hi(D_80121340)
    /* ABDBC 800BB5BC 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* ABDC0 800BB5C0 B800A627 */  addiu      $a2, $sp, 0xB8
    /* ABDC4 800BB5C4 10000724 */  addiu      $a3, $zero, 0x10
    /* ABDC8 800BB5C8 1280043C */  lui        $a0, %hi(D_80121110)
    /* ABDCC 800BB5CC 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ABDD0 800BB5D0 30000226 */  addiu      $v0, $s0, 0x30
    /* ABDD4 800BB5D4 BC00A2A7 */  sh         $v0, 0xBC($sp)
    /* ABDD8 800BB5D8 0C008226 */  addiu      $v0, $s4, 0xC
    /* ABDDC 800BB5DC B800B0A7 */  sh         $s0, 0xB8($sp)
    /* ABDE0 800BB5E0 93ED0208 */  j          .L800BB64C
    /* ABDE4 800BB5E4 BA00B3A7 */   sh        $s3, 0xBA($sp)
  .L800BB5E8:
    /* ABDE8 800BB5E8 00ED0208 */  j          .L800BB400
    /* ABDEC 800BB5EC 21906002 */   addu      $s2, $s3, $zero
  .L800BB5F0:
    /* ABDF0 800BB5F0 1800C013 */  beqz       $fp, .L800BB654
    /* ABDF4 800BB5F4 00000000 */   nop
    /* ABDF8 800BB5F8 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABDFC 800BB5FC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABE00 800BB600 CB1A030C */  jal        func_800C6B2C
    /* ABE04 800BB604 00000000 */   nop
    /* ABE08 800BB608 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABE0C 800BB60C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABE10 800BB610 0180053C */  lui        $a1, %hi(D_80012400)
    /* ABE14 800BB614 0024A524 */  addiu      $a1, $a1, %lo(D_80012400)
    /* ABE18 800BB618 9987030C */  jal        func_800E1E64
    /* ABE1C 800BB61C 00000000 */   nop
    /* ABE20 800BB620 1280053C */  lui        $a1, %hi(D_80121340)
    /* ABE24 800BB624 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* ABE28 800BB628 B800A627 */  addiu      $a2, $sp, 0xB8
    /* ABE2C 800BB62C 10000724 */  addiu      $a3, $zero, 0x10
    /* ABE30 800BB630 1280043C */  lui        $a0, %hi(D_80121110)
    /* ABE34 800BB634 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* ABE38 800BB638 80000226 */  addiu      $v0, $s0, 0x80
    /* ABE3C 800BB63C BC00A2A7 */  sh         $v0, 0xBC($sp)
    /* ABE40 800BB640 0C008226 */  addiu      $v0, $s4, 0xC
    /* ABE44 800BB644 B800B0A7 */  sh         $s0, 0xB8($sp)
    /* ABE48 800BB648 BA00B4A7 */  sh         $s4, 0xBA($sp)
  .L800BB64C:
    /* ABE4C 800BB64C 5511040C */  jal        func_80104554
    /* ABE50 800BB650 BE00A2A7 */   sh        $v0, 0xBE($sp)
  .L800BB654:
    /* ABE54 800BB654 3FEE0208 */  j          .L800BB8FC
    /* ABE58 800BB658 F4FF9426 */   addiu     $s4, $s4, -0xC
  .L800BB65C:
    /* ABE5C 800BB65C E000AA8F */  lw         $t2, 0xE0($sp)
    /* ABE60 800BB660 00000000 */  nop
    /* ABE64 800BB664 01004225 */  addiu      $v0, $t2, 0x1
    /* ABE68 800BB668 2400A216 */  bne        $s5, $v0, .L800BB6FC
    /* ABE6C 800BB66C 00000000 */   nop
    /* ABE70 800BB670 A200C013 */  beqz       $fp, .L800BB8FC
    /* ABE74 800BB674 00000000 */   nop
    /* ABE78 800BB678 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABE7C 800BB67C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABE80 800BB680 CB1A030C */  jal        func_800C6B2C
    /* ABE84 800BB684 00000000 */   nop
    /* ABE88 800BB688 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABE8C 800BB68C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABE90 800BB690 731B030C */  jal        func_800C6DCC
    /* ABE94 800BB694 87000524 */   addiu     $a1, $zero, 0x87
    /* ABE98 800BB698 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABE9C 800BB69C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABEA0 800BB6A0 F71A030C */  jal        func_800C6BDC
    /* ABEA4 800BB6A4 00000000 */   nop
    /* ABEA8 800BB6A8 0001A58F */  lw         $a1, 0x100($sp)
    /* ABEAC 800BB6AC 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABEB0 800BB6B0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABEB4 800BB6B4 9C1B030C */  jal        func_800C6E70
    /* ABEB8 800BB6B8 00000000 */   nop
    /* ABEBC 800BB6BC 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABEC0 800BB6C0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABEC4 800BB6C4 B800A527 */  addiu      $a1, $sp, 0xB8
    /* ABEC8 800BB6C8 10000624 */  addiu      $a2, $zero, 0x10
    /* ABECC 800BB6CC 20000224 */  addiu      $v0, $zero, 0x20
    /* ABED0 800BB6D0 B800A2A7 */  sh         $v0, 0xB8($sp)
    /* ABED4 800BB6D4 90000224 */  addiu      $v0, $zero, 0x90
    /* ABED8 800BB6D8 3001A997 */  lhu        $t1, 0x130($sp)
    /* ABEDC 800BB6DC BA00B6A7 */  sh         $s6, 0xBA($sp)
    /* ABEE0 800BB6E0 BC00A2A7 */  sh         $v0, 0xBC($sp)
    /* ABEE4 800BB6E4 DC0F040C */  jal        func_80103F70
    /* ABEE8 800BB6E8 BE00A9A7 */   sh        $t1, 0xBE($sp)
    /* ABEEC 800BB6EC 1280013C */  lui        $at, %hi(D_80121118)
    /* ABEF0 800BB6F0 181122AC */  sw         $v0, %lo(D_80121118)($at)
    /* ABEF4 800BB6F4 3FEE0208 */  j          .L800BB8FC
    /* ABEF8 800BB6F8 00000000 */   nop
  .L800BB6FC:
    /* ABEFC 800BB6FC 02004225 */  addiu      $v0, $t2, 0x2
    /* ABF00 800BB700 1600A216 */  bne        $s5, $v0, .L800BB75C
    /* ABF04 800BB704 00000000 */   nop
    /* ABF08 800BB708 7C00C013 */  beqz       $fp, .L800BB8FC
    /* ABF0C 800BB70C 00000000 */   nop
    /* ABF10 800BB710 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABF14 800BB714 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABF18 800BB718 CB1A030C */  jal        func_800C6B2C
    /* ABF1C 800BB71C 00000000 */   nop
    /* ABF20 800BB720 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABF24 800BB724 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABF28 800BB728 731B030C */  jal        func_800C6DCC
    /* ABF2C 800BB72C 88000524 */   addiu     $a1, $zero, 0x88
    /* ABF30 800BB730 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABF34 800BB734 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABF38 800BB738 F71A030C */  jal        func_800C6BDC
    /* ABF3C 800BB73C 00000000 */   nop
    /* ABF40 800BB740 F800A58F */  lw         $a1, 0xF8($sp)
    /* ABF44 800BB744 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABF48 800BB748 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABF4C 800BB74C D31B030C */  jal        func_800C6F4C
    /* ABF50 800BB750 00000000 */   nop
    /* ABF54 800BB754 31EE0208 */  j          .L800BB8C4
    /* ABF58 800BB758 00000000 */   nop
  .L800BB75C:
    /* ABF5C 800BB75C E000AA8F */  lw         $t2, 0xE0($sp)
    /* ABF60 800BB760 00000000 */  nop
    /* ABF64 800BB764 03004225 */  addiu      $v0, $t2, 0x3
    /* ABF68 800BB768 1700A216 */  bne        $s5, $v0, .L800BB7C8
    /* ABF6C 800BB76C 00000000 */   nop
    /* ABF70 800BB770 6200C013 */  beqz       $fp, .L800BB8FC
    /* ABF74 800BB774 00000000 */   nop
    /* ABF78 800BB778 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABF7C 800BB77C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABF80 800BB780 CB1A030C */  jal        func_800C6B2C
    /* ABF84 800BB784 00000000 */   nop
    /* ABF88 800BB788 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABF8C 800BB78C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABF90 800BB790 731B030C */  jal        func_800C6DCC
    /* ABF94 800BB794 6E010524 */   addiu     $a1, $zero, 0x16E
    /* ABF98 800BB798 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABF9C 800BB79C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABFA0 800BB7A0 F71A030C */  jal        func_800C6BDC
    /* ABFA4 800BB7A4 00000000 */   nop
    /* ABFA8 800BB7A8 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABFAC 800BB7AC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABFB0 800BB7B0 9C1B030C */  jal        func_800C6E70
    /* ABFB4 800BB7B4 2128E002 */   addu      $a1, $s7, $zero
    /* ABFB8 800BB7B8 31EE0208 */  j          .L800BB8C4
    /* ABFBC 800BB7BC 00000000 */   nop
  .L800BB7C0:
    /* ABFC0 800BB7C0 55EE0208 */  j          .L800BB954
    /* ABFC4 800BB7C4 21902002 */   addu      $s2, $s1, $zero
  .L800BB7C8:
    /* ABFC8 800BB7C8 04004225 */  addiu      $v0, $t2, 0x4
    /* ABFCC 800BB7CC 4B00A216 */  bne        $s5, $v0, .L800BB8FC
    /* ABFD0 800BB7D0 00000000 */   nop
    /* ABFD4 800BB7D4 4900C013 */  beqz       $fp, .L800BB8FC
    /* ABFD8 800BB7D8 00000000 */   nop
    /* ABFDC 800BB7DC 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABFE0 800BB7E0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABFE4 800BB7E4 CB1A030C */  jal        func_800C6B2C
    /* ABFE8 800BB7E8 00000000 */   nop
    /* ABFEC 800BB7EC 1280043C */  lui        $a0, %hi(D_80121340)
    /* ABFF0 800BB7F0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* ABFF4 800BB7F4 731B030C */  jal        func_800C6DCC
    /* ABFF8 800BB7F8 89000524 */   addiu     $a1, $zero, 0x89
    /* ABFFC 800BB7FC 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC000 800BB800 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC004 800BB804 F71A030C */  jal        func_800C6BDC
    /* AC008 800BB808 00000000 */   nop
    /* AC00C 800BB80C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC010 800BB810 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC014 800BB814 1680053C */  lui        $a1, %hi(D_80158FE8)
    /* AC018 800BB818 E88FA524 */  addiu      $a1, $a1, %lo(D_80158FE8)
    /* AC01C 800BB81C 9987030C */  jal        func_800E1E64
    /* AC020 800BB820 00000000 */   nop
    /* AC024 800BB824 E800A48F */  lw         $a0, 0xE8($sp)
    /* AC028 800BB828 35DD010C */  jal        func_800774D4
    /* AC02C 800BB82C 00000000 */   nop
    /* AC030 800BB830 21284000 */  addu       $a1, $v0, $zero
    /* AC034 800BB834 2118A000 */  addu       $v1, $a1, $zero
    /* AC038 800BB838 01000424 */  addiu      $a0, $zero, 0x1
    /* AC03C 800BB83C 2A108300 */  slt        $v0, $a0, $v1
    /* AC040 800BB840 02004010 */  beqz       $v0, .L800BB84C
    /* AC044 800BB844 01000524 */   addiu     $a1, $zero, 0x1
    /* AC048 800BB848 21286000 */  addu       $a1, $v1, $zero
  .L800BB84C:
    /* AC04C 800BB84C 2118E002 */  addu       $v1, $s7, $zero
    /* AC050 800BB850 2A108300 */  slt        $v0, $a0, $v1
    /* AC054 800BB854 02004010 */  beqz       $v0, .L800BB860
    /* AC058 800BB858 01001724 */   addiu     $s7, $zero, 0x1
    /* AC05C 800BB85C 21B86000 */  addu       $s7, $v1, $zero
  .L800BB860:
    /* AC060 800BB860 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* AC064 800BB864 2128B700 */  addu       $a1, $a1, $s7
    /* AC068 800BB868 1A00B700 */  div        $zero, $a1, $s7
    /* AC06C 800BB86C 0200E016 */  bnez       $s7, .L800BB878
    /* AC070 800BB870 00000000 */   nop
    /* AC074 800BB874 0D000700 */  break      7
  .L800BB878:
    /* AC078 800BB878 FFFF0124 */  addiu      $at, $zero, -0x1
    /* AC07C 800BB87C 0400E116 */  bne        $s7, $at, .L800BB890
    /* AC080 800BB880 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AC084 800BB884 0200A114 */  bne        $a1, $at, .L800BB890
    /* AC088 800BB888 00000000 */   nop
    /* AC08C 800BB88C 0D000600 */  break      6
  .L800BB890:
    /* AC090 800BB890 12280000 */  mflo       $a1
    /* AC094 800BB894 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC098 800BB898 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC09C 800BB89C 9C1B030C */  jal        func_800C6E70
    /* AC0A0 800BB8A0 00000000 */   nop
    /* AC0A4 800BB8A4 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC0A8 800BB8A8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC0AC 800BB8AC CD1A030C */  jal        func_800C6B34
    /* AC0B0 800BB8B0 00000000 */   nop
    /* AC0B4 800BB8B4 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC0B8 800BB8B8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC0BC 800BB8BC 731B030C */  jal        func_800C6DCC
    /* AC0C0 800BB8C0 2C000524 */   addiu     $a1, $zero, 0x2C
  .L800BB8C4:
    /* AC0C4 800BB8C4 1280053C */  lui        $a1, %hi(D_80121340)
    /* AC0C8 800BB8C8 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* AC0CC 800BB8CC B800A627 */  addiu      $a2, $sp, 0xB8
    /* AC0D0 800BB8D0 10000724 */  addiu      $a3, $zero, 0x10
    /* AC0D4 800BB8D4 20000224 */  addiu      $v0, $zero, 0x20
    /* AC0D8 800BB8D8 B800A2A7 */  sh         $v0, 0xB8($sp)
    /* AC0DC 800BB8DC 90000224 */  addiu      $v0, $zero, 0x90
    /* AC0E0 800BB8E0 1280043C */  lui        $a0, %hi(D_80121110)
    /* AC0E4 800BB8E4 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AC0E8 800BB8E8 3001A997 */  lhu        $t1, 0x130($sp)
    /* AC0EC 800BB8EC BA00B6A7 */  sh         $s6, 0xBA($sp)
    /* AC0F0 800BB8F0 BC00A2A7 */  sh         $v0, 0xBC($sp)
    /* AC0F4 800BB8F4 5511040C */  jal        func_80104554
    /* AC0F8 800BB8F8 BE00A9A7 */   sh        $t1, 0xBE($sp)
  .L800BB8FC:
    /* AC0FC 800BB8FC 1001AA8F */  lw         $t2, 0x110($sp)
    /* AC100 800BB900 0801A98F */  lw         $t1, 0x108($sp)
    /* AC104 800BB904 00000000 */  nop
    /* AC108 800BB908 2A104901 */  slt        $v0, $t2, $t1
    /* AC10C 800BB90C 4D004010 */  beqz       $v0, .L800BBA44
    /* AC110 800BB910 FFFF1224 */   addiu     $s2, $zero, -0x1
    /* AC114 800BB914 21180000 */  addu       $v1, $zero, $zero
    /* AC118 800BB918 21880000 */  addu       $s1, $zero, $zero
    /* AC11C 800BB91C 1801A48F */  lw         $a0, 0x118($sp)
  .L800BB920:
    /* AC120 800BB920 00000000 */  nop
    /* AC124 800BB924 0000828C */  lw         $v0, 0x0($a0)
    /* AC128 800BB928 00000000 */  nop
    /* AC12C 800BB92C 05004010 */  beqz       $v0, .L800BB944
    /* AC130 800BB930 00000000 */   nop
    /* AC134 800BB934 1001AA8F */  lw         $t2, 0x110($sp)
    /* AC138 800BB938 00000000 */  nop
    /* AC13C 800BB93C A0FF6A10 */  beq        $v1, $t2, .L800BB7C0
    /* AC140 800BB940 01006324 */   addiu     $v1, $v1, 0x1
  .L800BB944:
    /* AC144 800BB944 01003126 */  addiu      $s1, $s1, 0x1
    /* AC148 800BB948 2700222A */  slti       $v0, $s1, 0x27
    /* AC14C 800BB94C F4FF4014 */  bnez       $v0, .L800BB920
    /* AC150 800BB950 04008424 */   addiu     $a0, $a0, 0x4
  .L800BB954:
    /* AC154 800BB954 5F004006 */  bltz       $s2, .L800BBAD4
    /* AC158 800BB958 00000000 */   nop
    /* AC15C 800BB95C 5D00C013 */  beqz       $fp, .L800BBAD4
    /* AC160 800BB960 21884002 */   addu      $s1, $s2, $zero
    /* AC164 800BB964 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC168 800BB968 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC16C 800BB96C CB1A030C */  jal        func_800C6B2C
    /* AC170 800BB970 80801100 */   sll       $s0, $s1, 2
    /* AC174 800BB974 1801A98F */  lw         $t1, 0x118($sp)
    /* AC178 800BB978 00000000 */  nop
    /* AC17C 800BB97C 21800902 */  addu       $s0, $s0, $t1
    /* AC180 800BB980 0000058E */  lw         $a1, 0x0($s0)
    /* AC184 800BB984 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC188 800BB988 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC18C 800BB98C 9C1B030C */  jal        func_800C6E70
    /* AC190 800BB990 00000000 */   nop
    /* AC194 800BB994 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC198 800BB998 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC19C 800BB99C CD1A030C */  jal        func_800C6B34
    /* AC1A0 800BB9A0 00000000 */   nop
    /* AC1A4 800BB9A4 C0101100 */  sll        $v0, $s1, 3
    /* AC1A8 800BB9A8 1180013C */  lui        $at, %hi(D_8010D064)
    /* AC1AC 800BB9AC 21082200 */  addu       $at, $at, $v0
    /* AC1B0 800BB9B0 64D0258C */  lw         $a1, %lo(D_8010D064)($at)
    /* AC1B4 800BB9B4 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC1B8 800BB9B8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC1BC 800BB9BC 651B030C */  jal        func_800C6D94
    /* AC1C0 800BB9C0 00000000 */   nop
    /* AC1C4 800BB9C4 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC1C8 800BB9C8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC1CC 800BB9CC F71A030C */  jal        func_800C6BDC
    /* AC1D0 800BB9D0 00000000 */   nop
    /* AC1D4 800BB9D4 E800A48F */  lw         $a0, 0xE8($sp)
    /* AC1D8 800BB9D8 C875000C */  jal        func_8001D720
    /* AC1DC 800BB9DC 21282002 */   addu      $a1, $s1, $zero
    /* AC1E0 800BB9E0 0000058E */  lw         $a1, 0x0($s0)
    /* AC1E4 800BB9E4 00000000 */  nop
    /* AC1E8 800BB9E8 1800A200 */  mult       $a1, $v0
    /* AC1EC 800BB9EC 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC1F0 800BB9F0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC1F4 800BB9F4 12280000 */  mflo       $a1
    /* AC1F8 800BB9F8 9C1B030C */  jal        func_800C6E70
    /* AC1FC 800BB9FC 00000000 */   nop
    /* AC200 800BBA00 1280053C */  lui        $a1, %hi(D_80121340)
    /* AC204 800BBA04 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* AC208 800BBA08 B800A627 */  addiu      $a2, $sp, 0xB8
    /* AC20C 800BBA0C 10000724 */  addiu      $a3, $zero, 0x10
    /* AC210 800BBA10 A8000924 */  addiu      $t1, $zero, 0xA8
    /* AC214 800BBA14 A8000A24 */  addiu      $t2, $zero, 0xA8
    /* AC218 800BBA18 1280043C */  lui        $a0, %hi(D_80121110)
    /* AC21C 800BBA1C 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AC220 800BBA20 80004225 */  addiu      $v0, $t2, 0x80
    /* AC224 800BBA24 BC00A2A7 */  sh         $v0, 0xBC($sp)
    /* AC228 800BBA28 18008226 */  addiu      $v0, $s4, 0x18
    /* AC22C 800BBA2C B800A9A7 */  sh         $t1, 0xB8($sp)
    /* AC230 800BBA30 BA00B4A7 */  sh         $s4, 0xBA($sp)
    /* AC234 800BBA34 5511040C */  jal        func_80104554
    /* AC238 800BBA38 BE00A2A7 */   sh        $v0, 0xBE($sp)
    /* AC23C 800BBA3C B5EE0208 */  j          .L800BBAD4
    /* AC240 800BBA40 00000000 */   nop
  .L800BBA44:
    /* AC244 800BBA44 01002225 */  addiu      $v0, $t1, 0x1
    /* AC248 800BBA48 22004215 */  bne        $t2, $v0, .L800BBAD4
    /* AC24C 800BBA4C 00000000 */   nop
    /* AC250 800BBA50 2000C013 */  beqz       $fp, .L800BBAD4
    /* AC254 800BBA54 00000000 */   nop
    /* AC258 800BBA58 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC25C 800BBA5C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC260 800BBA60 CB1A030C */  jal        func_800C6B2C
    /* AC264 800BBA64 00000000 */   nop
    /* AC268 800BBA68 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC26C 800BBA6C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC270 800BBA70 731B030C */  jal        func_800C6DCC
    /* AC274 800BBA74 87000524 */   addiu     $a1, $zero, 0x87
    /* AC278 800BBA78 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC27C 800BBA7C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC280 800BBA80 F71A030C */  jal        func_800C6BDC
    /* AC284 800BBA84 00000000 */   nop
    /* AC288 800BBA88 0001A58F */  lw         $a1, 0x100($sp)
    /* AC28C 800BBA8C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC290 800BBA90 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC294 800BBA94 9C1B030C */  jal        func_800C6E70
    /* AC298 800BBA98 00000000 */   nop
    /* AC29C 800BBA9C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AC2A0 800BBAA0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AC2A4 800BBAA4 B800A527 */  addiu      $a1, $sp, 0xB8
    /* AC2A8 800BBAA8 10000624 */  addiu      $a2, $zero, 0x10
    /* AC2AC 800BBAAC B0000224 */  addiu      $v0, $zero, 0xB0
    /* AC2B0 800BBAB0 B800A2A7 */  sh         $v0, 0xB8($sp)
    /* AC2B4 800BBAB4 20010224 */  addiu      $v0, $zero, 0x120
    /* AC2B8 800BBAB8 BC00A2A7 */  sh         $v0, 0xBC($sp)
    /* AC2BC 800BBABC 0C008226 */  addiu      $v0, $s4, 0xC
    /* AC2C0 800BBAC0 BA00B4A7 */  sh         $s4, 0xBA($sp)
    /* AC2C4 800BBAC4 DC0F040C */  jal        func_80103F70
    /* AC2C8 800BBAC8 BE00A2A7 */   sh        $v0, 0xBE($sp)
    /* AC2CC 800BBACC 1280013C */  lui        $at, %hi(D_80121114)
    /* AC2D0 800BBAD0 141122AC */  sw         $v0, %lo(D_80121114)($at)
  .L800BBAD4:
    /* AC2D4 800BBAD4 3001A98F */  lw         $t1, 0x130($sp)
    /* AC2D8 800BBAD8 1800D626 */  addiu      $s6, $s6, 0x18
    /* AC2DC 800BBADC 18002925 */  addiu      $t1, $t1, 0x18
    /* AC2E0 800BBAE0 3001A9AF */  sw         $t1, 0x130($sp)
  .L800BBAE4:
    /* AC2E4 800BBAE4 D7EC0208 */  j          .L800BB35C
    /* AC2E8 800BBAE8 0100B526 */   addiu     $s5, $s5, 0x1
  .L800BBAEC:
    /* AC2EC 800BBAEC 1280043C */  lui        $a0, %hi(D_80121110)
    /* AC2F0 800BBAF0 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AC2F4 800BBAF4 7D11040C */  jal        func_801045F4
    /* AC2F8 800BBAF8 00000000 */   nop
    /* AC2FC 800BBAFC 1280043C */  lui        $a0, %hi(D_80121114)
    /* AC300 800BBB00 1411848C */  lw         $a0, %lo(D_80121114)($a0)
    /* AC304 800BBB04 7D11040C */  jal        func_801045F4
    /* AC308 800BBB08 00000000 */   nop
    /* AC30C 800BBB0C 1280043C */  lui        $a0, %hi(D_80121118)
    /* AC310 800BBB10 1811848C */  lw         $a0, %lo(D_80121118)($a0)
    /* AC314 800BBB14 7D11040C */  jal        func_801045F4
    /* AC318 800BBB18 00000000 */   nop
    /* AC31C 800BBB1C 5C01BF8F */  lw         $ra, 0x15C($sp)
    /* AC320 800BBB20 5801BE8F */  lw         $fp, 0x158($sp)
    /* AC324 800BBB24 5401B78F */  lw         $s7, 0x154($sp)
    /* AC328 800BBB28 5001B68F */  lw         $s6, 0x150($sp)
    /* AC32C 800BBB2C 4C01B58F */  lw         $s5, 0x14C($sp)
    /* AC330 800BBB30 4801B48F */  lw         $s4, 0x148($sp)
    /* AC334 800BBB34 4401B38F */  lw         $s3, 0x144($sp)
    /* AC338 800BBB38 4001B28F */  lw         $s2, 0x140($sp)
    /* AC33C 800BBB3C 3C01B18F */  lw         $s1, 0x13C($sp)
    /* AC340 800BBB40 3801B08F */  lw         $s0, 0x138($sp)
    /* AC344 800BBB44 6001BD27 */  addiu      $sp, $sp, 0x160
    /* AC348 800BBB48 0800E003 */  jr         $ra
    /* AC34C 800BBB4C 00000000 */   nop
endlabel func_800BAD58
