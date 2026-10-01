.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005EE8C, 0x8B8

glabel func_8005EE8C
    /* 4F68C 8005EE8C 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 4F690 8005EE90 7C00BFAF */  sw         $ra, 0x7C($sp)
    /* 4F694 8005EE94 7800BEAF */  sw         $fp, 0x78($sp)
    /* 4F698 8005EE98 7400B7AF */  sw         $s7, 0x74($sp)
    /* 4F69C 8005EE9C 7000B6AF */  sw         $s6, 0x70($sp)
    /* 4F6A0 8005EEA0 6C00B5AF */  sw         $s5, 0x6C($sp)
    /* 4F6A4 8005EEA4 6800B4AF */  sw         $s4, 0x68($sp)
    /* 4F6A8 8005EEA8 6400B3AF */  sw         $s3, 0x64($sp)
    /* 4F6AC 8005EEAC 6000B2AF */  sw         $s2, 0x60($sp)
    /* 4F6B0 8005EEB0 5C00B1AF */  sw         $s1, 0x5C($sp)
    /* 4F6B4 8005EEB4 5800B0AF */  sw         $s0, 0x58($sp)
    /* 4F6B8 8005EEB8 21A08000 */  addu       $s4, $a0, $zero
    /* 4F6BC 8005EEBC 21B8A000 */  addu       $s7, $a1, $zero
    /* 4F6C0 8005EEC0 21F0C000 */  addu       $fp, $a2, $zero
    /* 4F6C4 8005EEC4 40101400 */  sll        $v0, $s4, 1
    /* 4F6C8 8005EEC8 21105400 */  addu       $v0, $v0, $s4
    /* 4F6CC 8005EECC 80100200 */  sll        $v0, $v0, 2
    /* 4F6D0 8005EED0 21105400 */  addu       $v0, $v0, $s4
    /* 4F6D4 8005EED4 40100200 */  sll        $v0, $v0, 1
    /* 4F6D8 8005EED8 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4F6DC 8005EEDC 21082200 */  addu       $at, $at, $v0
    /* 4F6E0 8005EEE0 BBD63580 */  lb         $s5, %lo(D_8010D6BB)($at)
    /* 4F6E4 8005EEE4 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4F6E8 8005EEE8 21082200 */  addu       $at, $at, $v0
    /* 4F6EC 8005EEEC B4D62884 */  lh         $t0, %lo(D_8010D6B4)($at)
    /* 4F6F0 8005EEF0 00000000 */  nop
    /* 4F6F4 8005EEF4 4000A8AF */  sw         $t0, 0x40($sp)
    /* 4F6F8 8005EEF8 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4F6FC 8005EEFC 21082200 */  addu       $at, $at, $v0
    /* 4F700 8005EF00 B6D62284 */  lh         $v0, %lo(D_8010D6B6)($at)
    /* 4F704 8005EF04 00000000 */  nop
    /* 4F708 8005EF08 4800A2AF */  sw         $v0, 0x48($sp)
    /* 4F70C 8005EF0C 1280023C */  lui        $v0, %hi(D_8011A5DB)
    /* 4F710 8005EF10 DBA54290 */  lbu        $v0, %lo(D_8011A5DB)($v0)
    /* 4F714 8005EF14 1280013C */  lui        $at, %hi(D_8011FF28)
    /* 4F718 8005EF18 28FF22AC */  sw         $v0, %lo(D_8011FF28)($at)
    /* 4F71C 8005EF1C 2120E002 */  addu       $a0, $s7, $zero
    /* 4F720 8005EF20 F760020C */  jal        func_800983DC
    /* 4F724 8005EF24 2128C003 */   addu      $a1, $fp, $zero
    /* 4F728 8005EF28 0C004010 */  beqz       $v0, .L8005EF5C
    /* 4F72C 8005EF2C 2120E002 */   addu      $a0, $s7, $zero
    /* 4F730 8005EF30 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4F734 8005EF34 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4F738 8005EF38 00000000 */  nop
    /* 4F73C 8005EF3C 0710A202 */  srav       $v0, $v0, $s5
    /* 4F740 8005EF40 01004230 */  andi       $v0, $v0, 0x1
    /* 4F744 8005EF44 F2014010 */  beqz       $v0, .L8005F710
    /* 4F748 8005EF48 41EE0534 */   ori       $a1, $zero, 0xEE41
    /* 4F74C 8005EF4C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4F750 8005EF50 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4F754 8005EF54 067C0108 */  j          .L8005F018
    /* 4F758 8005EF58 21300000 */   addu      $a2, $zero, $zero
  .L8005EF5C:
    /* 4F75C 8005EF5C 3A62020C */  jal        func_800988E8
    /* 4F760 8005EF60 2128C003 */   addu      $a1, $fp, $zero
    /* 4F764 8005EF64 0E004004 */  bltz       $v0, .L8005EFA0
    /* 4F768 8005EF68 1800A2AF */   sw        $v0, 0x18($sp)
    /* 4F76C 8005EF6C 0D005510 */  beq        $v0, $s5, .L8005EFA4
    /* 4F770 8005EF70 40101400 */   sll       $v0, $s4, 1
    /* 4F774 8005EF74 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4F778 8005EF78 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4F77C 8005EF7C 00000000 */  nop
    /* 4F780 8005EF80 0710A202 */  srav       $v0, $v0, $s5
    /* 4F784 8005EF84 01004230 */  andi       $v0, $v0, 0x1
    /* 4F788 8005EF88 E1014010 */  beqz       $v0, .L8005F710
    /* 4F78C 8005EF8C D0EF0534 */   ori       $a1, $zero, 0xEFD0
    /* 4F790 8005EF90 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4F794 8005EF94 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4F798 8005EF98 067C0108 */  j          .L8005F018
    /* 4F79C 8005EF9C 21300000 */   addu      $a2, $zero, $zero
  .L8005EFA0:
    /* 4F7A0 8005EFA0 40101400 */  sll        $v0, $s4, 1
  .L8005EFA4:
    /* 4F7A4 8005EFA4 21105400 */  addu       $v0, $v0, $s4
    /* 4F7A8 8005EFA8 80100200 */  sll        $v0, $v0, 2
    /* 4F7AC 8005EFAC 21105400 */  addu       $v0, $v0, $s4
    /* 4F7B0 8005EFB0 40100200 */  sll        $v0, $v0, 1
    /* 4F7B4 8005EFB4 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4F7B8 8005EFB8 21082200 */  addu       $at, $at, $v0
    /* 4F7BC 8005EFBC B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 4F7C0 8005EFC0 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4F7C4 8005EFC4 21082200 */  addu       $at, $at, $v0
    /* 4F7C8 8005EFC8 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 4F7CC 8005EFCC 2130E002 */  addu       $a2, $s7, $zero
    /* 4F7D0 8005EFD0 653B030C */  jal        func_800CED94
    /* 4F7D4 8005EFD4 2138C003 */   addu      $a3, $fp, $zero
    /* 4F7D8 8005EFD8 1280033C */  lui        $v1, %hi(D_8011A5DB)
    /* 4F7DC 8005EFDC DBA56390 */  lbu        $v1, %lo(D_8011A5DB)($v1)
    /* 4F7E0 8005EFE0 00000000 */  nop
    /* 4F7E4 8005EFE4 2A186200 */  slt        $v1, $v1, $v0
    /* 4F7E8 8005EFE8 0F006010 */  beqz       $v1, .L8005F028
    /* 4F7EC 8005EFEC 2120E002 */   addu      $a0, $s7, $zero
    /* 4F7F0 8005EFF0 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4F7F4 8005EFF4 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4F7F8 8005EFF8 00000000 */  nop
    /* 4F7FC 8005EFFC 0710A202 */  srav       $v0, $v0, $s5
    /* 4F800 8005F000 01004230 */  andi       $v0, $v0, 0x1
    /* 4F804 8005F004 C2014010 */  beqz       $v0, .L8005F710
    /* 4F808 8005F008 F7EE0534 */   ori       $a1, $zero, 0xEEF7
    /* 4F80C 8005F00C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4F810 8005F010 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4F814 8005F014 21300000 */  addu       $a2, $zero, $zero
  .L8005F018:
    /* 4F818 8005F018 63E4020C */  jal        func_800B918C
    /* 4F81C 8005F01C 21388002 */   addu      $a3, $s4, $zero
    /* 4F820 8005F020 C47D0108 */  j          .L8005F710
    /* 4F824 8005F024 00000000 */   nop
  .L8005F028:
    /* 4F828 8005F028 0161020C */  jal        func_80098404
    /* 4F82C 8005F02C 2128C003 */   addu      $a1, $fp, $zero
    /* 4F830 8005F030 1800A2AF */  sw         $v0, 0x18($sp)
    /* 4F834 8005F034 2120E002 */  addu       $a0, $s7, $zero
    /* 4F838 8005F038 1E26020C */  jal        func_80089878
    /* 4F83C 8005F03C 2128C003 */   addu      $a1, $fp, $zero
    /* 4F840 8005F040 25004004 */  bltz       $v0, .L8005F0D8
    /* 4F844 8005F044 2000A2AF */   sw        $v0, 0x20($sp)
    /* 4F848 8005F048 1800A88F */  lw         $t0, 0x18($sp)
    /* 4F84C 8005F04C 00000000 */  nop
    /* 4F850 8005F050 21001511 */  beq        $t0, $s5, .L8005F0D8
    /* 4F854 8005F054 40101500 */   sll       $v0, $s5, 1
    /* 4F858 8005F058 21105500 */  addu       $v0, $v0, $s5
    /* 4F85C 8005F05C 80100200 */  sll        $v0, $v0, 2
    /* 4F860 8005F060 23105500 */  subu       $v0, $v0, $s5
    /* 4F864 8005F064 00110200 */  sll        $v0, $v0, 4
    /* 4F868 8005F068 23105500 */  subu       $v0, $v0, $s5
    /* 4F86C 8005F06C C0100200 */  sll        $v0, $v0, 3
    /* 4F870 8005F070 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 4F874 8005F074 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 4F878 8005F078 80180800 */  sll        $v1, $t0, 2
    /* 4F87C 8005F07C 21104400 */  addu       $v0, $v0, $a0
    /* 4F880 8005F080 21186200 */  addu       $v1, $v1, $v0
    /* 4F884 8005F084 0000628C */  lw         $v0, 0x0($v1)
    /* 4F888 8005F088 00000000 */  nop
    /* 4F88C 8005F08C 0E004230 */  andi       $v0, $v0, 0xE
    /* 4F890 8005F090 11004010 */  beqz       $v0, .L8005F0D8
    /* 4F894 8005F094 00000000 */   nop
    /* 4F898 8005F098 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4F89C 8005F09C 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4F8A0 8005F0A0 00000000 */  nop
    /* 4F8A4 8005F0A4 0710A202 */  srav       $v0, $v0, $s5
    /* 4F8A8 8005F0A8 01004230 */  andi       $v0, $v0, 0x1
    /* 4F8AC 8005F0AC 05004014 */  bnez       $v0, .L8005F0C4
    /* 4F8B0 8005F0B0 2120A002 */   addu      $a0, $s5, $zero
    /* 4F8B4 8005F0B4 BEFA010C */  jal        func_8007EAF8
    /* 4F8B8 8005F0B8 21208002 */   addu      $a0, $s4, $zero
    /* 4F8BC 8005F0BC C47D0108 */  j          .L8005F710
    /* 4F8C0 8005F0C0 00000000 */   nop
  .L8005F0C4:
    /* 4F8C4 8005F0C4 1800A58F */  lw         $a1, 0x18($sp)
    /* 4F8C8 8005F0C8 3C99000C */  jal        func_800264F0
    /* 4F8CC 8005F0CC 0E000624 */   addiu     $a2, $zero, 0xE
    /* 4F8D0 8005F0D0 8F014014 */  bnez       $v0, .L8005F710
    /* 4F8D4 8005F0D4 00000000 */   nop
  .L8005F0D8:
    /* 4F8D8 8005F0D8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 4F8DC 8005F0DC 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 4F8E0 8005F0E0 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 4F8E4 8005F0E4 00000000 */  nop
    /* 4F8E8 8005F0E8 0600A212 */  beq        $s5, $v0, .L8005F104
    /* 4F8EC 8005F0EC 21B00000 */   addu      $s6, $zero, $zero
    /* 4F8F0 8005F0F0 1280023C */  lui        $v0, %hi(D_8011A271)
    /* 4F8F4 8005F0F4 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* 4F8F8 8005F0F8 00000000 */  nop
    /* 4F8FC 8005F0FC 02004010 */  beqz       $v0, .L8005F108
    /* 4F900 8005F100 00000000 */   nop
  .L8005F104:
    /* 4F904 8005F104 01001624 */  addiu      $s6, $zero, 0x1
  .L8005F108:
    /* 4F908 8005F108 2000A88F */  lw         $t0, 0x20($sp)
    /* 4F90C 8005F10C 00000000 */  nop
    /* 4F910 8005F110 2A000005 */  bltz       $t0, .L8005F1BC
    /* 4F914 8005F114 21880000 */   addu      $s1, $zero, $zero
    /* 4F918 8005F118 1800A88F */  lw         $t0, 0x18($sp)
    /* 4F91C 8005F11C 00000000 */  nop
    /* 4F920 8005F120 26001511 */  beq        $t0, $s5, .L8005F1BC
    /* 4F924 8005F124 2120E002 */   addu      $a0, $s7, $zero
    /* 4F928 8005F128 1280103C */  lui        $s0, %hi(D_8011ACB4)
    /* 4F92C 8005F12C B4AC1026 */  addiu      $s0, $s0, %lo(D_8011ACB4)
    /* 4F930 8005F130 0000068E */  lw         $a2, 0x0($s0)
    /* 4F934 8005F134 A161020C */  jal        func_80098684
    /* 4F938 8005F138 2128C003 */   addu      $a1, $fp, $zero
    /* 4F93C 8005F13C 1F004010 */  beqz       $v0, .L8005F1BC
    /* 4F940 8005F140 21880000 */   addu      $s1, $zero, $zero
    /* 4F944 8005F144 0000038E */  lw         $v1, 0x0($s0)
    /* 4F948 8005F148 00000000 */  nop
    /* 4F94C 8005F14C 40100300 */  sll        $v0, $v1, 1
    /* 4F950 8005F150 21104300 */  addu       $v0, $v0, $v1
    /* 4F954 8005F154 80100200 */  sll        $v0, $v0, 2
    /* 4F958 8005F158 23104300 */  subu       $v0, $v0, $v1
    /* 4F95C 8005F15C 00110200 */  sll        $v0, $v0, 4
    /* 4F960 8005F160 23104300 */  subu       $v0, $v0, $v1
    /* 4F964 8005F164 C0100200 */  sll        $v0, $v0, 3
    /* 4F968 8005F168 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 4F96C 8005F16C B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 4F970 8005F170 80181500 */  sll        $v1, $s5, 2
    /* 4F974 8005F174 21204400 */  addu       $a0, $v0, $a0
    /* 4F978 8005F178 21186400 */  addu       $v1, $v1, $a0
    /* 4F97C 8005F17C 0000628C */  lw         $v0, 0x0($v1)
    /* 4F980 8005F180 00000000 */  nop
    /* 4F984 8005F184 80004230 */  andi       $v0, $v0, 0x80
    /* 4F988 8005F188 0A004014 */  bnez       $v0, .L8005F1B4
    /* 4F98C 8005F18C 00000000 */   nop
    /* 4F990 8005F190 1800A88F */  lw         $t0, 0x18($sp)
    /* 4F994 8005F194 00000000 */  nop
    /* 4F998 8005F198 80100800 */  sll        $v0, $t0, 2
    /* 4F99C 8005F19C 21104400 */  addu       $v0, $v0, $a0
    /* 4F9A0 8005F1A0 0000428C */  lw         $v0, 0x0($v0)
    /* 4F9A4 8005F1A4 00000000 */  nop
    /* 4F9A8 8005F1A8 80004230 */  andi       $v0, $v0, 0x80
    /* 4F9AC 8005F1AC 04004010 */  beqz       $v0, .L8005F1C0
    /* 4F9B0 8005F1B0 0900222A */   slti      $v0, $s1, 0x9
  .L8005F1B4:
    /* 4F9B4 8005F1B4 01001624 */  addiu      $s6, $zero, 0x1
    /* 4F9B8 8005F1B8 21880000 */  addu       $s1, $zero, $zero
  .L8005F1BC:
    /* 4F9BC 8005F1BC 0900222A */  slti       $v0, $s1, 0x9
  .L8005F1C0:
    /* 4F9C0 8005F1C0 26004010 */  beqz       $v0, .L8005F25C
    /* 4F9C4 8005F1C4 00000000 */   nop
    /* 4F9C8 8005F1C8 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 4F9CC 8005F1CC 21083100 */  addu       $at, $at, $s1
    /* 4F9D0 8005F1D0 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* 4F9D4 8005F1D4 173B030C */  jal        func_800CEC5C
    /* 4F9D8 8005F1D8 2120E402 */   addu      $a0, $s7, $a0
    /* 4F9DC 8005F1DC 21984000 */  addu       $s3, $v0, $zero
    /* 4F9E0 8005F1E0 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 4F9E4 8005F1E4 21083100 */  addu       $at, $at, $s1
    /* 4F9E8 8005F1E8 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 4F9EC 8005F1EC 00000000 */  nop
    /* 4F9F0 8005F1F0 2190C203 */  addu       $s2, $fp, $v0
    /* 4F9F4 8005F1F4 0D004006 */  bltz       $s2, .L8005F22C
    /* 4F9F8 8005F1F8 21180000 */   addu      $v1, $zero, $zero
    /* 4F9FC 8005F1FC 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 4FA00 8005F200 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 4FA04 8005F204 00000000 */  nop
    /* 4FA08 8005F208 2A104202 */  slt        $v0, $s2, $v0
    /* 4FA0C 8005F20C 07004010 */  beqz       $v0, .L8005F22C
    /* 4FA10 8005F210 00000000 */   nop
    /* 4FA14 8005F214 05006006 */  bltz       $s3, .L8005F22C
    /* 4FA18 8005F218 00000000 */   nop
    /* 4FA1C 8005F21C 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 4FA20 8005F220 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 4FA24 8005F224 00000000 */  nop
    /* 4FA28 8005F228 2A186202 */  slt        $v1, $s3, $v0
  .L8005F22C:
    /* 4FA2C 8005F22C 09006010 */  beqz       $v1, .L8005F254
    /* 4FA30 8005F230 21206002 */   addu      $a0, $s3, $zero
    /* 4FA34 8005F234 4F62020C */  jal        func_8009893C
    /* 4FA38 8005F238 21284002 */   addu      $a1, $s2, $zero
    /* 4FA3C 8005F23C 1280033C */  lui        $v1, %hi(D_8011ACB4)
    /* 4FA40 8005F240 B4AC638C */  lw         $v1, %lo(D_8011ACB4)($v1)
    /* 4FA44 8005F244 00000000 */  nop
    /* 4FA48 8005F248 02004314 */  bne        $v0, $v1, .L8005F254
    /* 4FA4C 8005F24C 00000000 */   nop
    /* 4FA50 8005F250 01001624 */  addiu      $s6, $zero, 0x1
  .L8005F254:
    /* 4FA54 8005F254 6F7C0108 */  j          .L8005F1BC
    /* 4FA58 8005F258 01003126 */   addiu     $s1, $s1, 0x1
  .L8005F25C:
    /* 4FA5C 8005F25C 4D00C012 */  beqz       $s6, .L8005F394
    /* 4FA60 8005F260 00000000 */   nop
    /* 4FA64 8005F264 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 4FA68 8005F268 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 4FA6C 8005F26C 00000000 */  nop
    /* 4FA70 8005F270 0C00A212 */  beq        $s5, $v0, .L8005F2A4
    /* 4FA74 8005F274 01000824 */   addiu     $t0, $zero, 0x1
    /* 4FA78 8005F278 1280023C */  lui        $v0, %hi(D_8011A254)
    /* 4FA7C 8005F27C 54A2428C */  lw         $v0, %lo(D_8011A254)($v0)
    /* 4FA80 8005F280 00000000 */  nop
    /* 4FA84 8005F284 00104230 */  andi       $v0, $v0, 0x1000
    /* 4FA88 8005F288 06004014 */  bnez       $v0, .L8005F2A4
    /* 4FA8C 8005F28C 00000000 */   nop
    /* 4FA90 8005F290 2000A88F */  lw         $t0, 0x20($sp)
    /* 4FA94 8005F294 00000000 */  nop
    /* 4FA98 8005F298 03000005 */  bltz       $t0, .L8005F2A8
    /* 4FA9C 8005F29C 00000000 */   nop
    /* 4FAA0 8005F2A0 01000824 */  addiu      $t0, $zero, 0x1
  .L8005F2A4:
    /* 4FAA4 8005F2A4 2800A8AF */  sw         $t0, 0x28($sp)
  .L8005F2A8:
    /* 4FAA8 8005F2A8 3A00C012 */  beqz       $s6, .L8005F394
    /* 4FAAC 8005F2AC 2120E002 */   addu      $a0, $s7, $zero
    /* 4FAB0 8005F2B0 2128C003 */  addu       $a1, $fp, $zero
    /* 4FAB4 8005F2B4 6D7C020C */  jal        func_8009F1B4
    /* 4FAB8 8005F2B8 2130A002 */   addu      $a2, $s5, $zero
    /* 4FABC 8005F2BC 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4FAC0 8005F2C0 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4FAC4 8005F2C4 00000000 */  nop
    /* 4FAC8 8005F2C8 0710A202 */  srav       $v0, $v0, $s5
    /* 4FACC 8005F2CC 01004230 */  andi       $v0, $v0, 0x1
    /* 4FAD0 8005F2D0 31004014 */  bnez       $v0, .L8005F398
    /* 4FAD4 8005F2D4 21B00000 */   addu      $s6, $zero, $zero
    /* 4FAD8 8005F2D8 8A54020C */  jal        func_80095228
    /* 4FADC 8005F2DC 2120A002 */   addu      $a0, $s5, $zero
    /* 4FAE0 8005F2E0 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 4FAE4 8005F2E4 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 4FAE8 8005F2E8 A587030C */  jal        func_800E1E94
    /* 4FAEC 8005F2EC 21284000 */   addu      $a1, $v0, $zero
    /* 4FAF0 8005F2F0 40101400 */  sll        $v0, $s4, 1
    /* 4FAF4 8005F2F4 21105400 */  addu       $v0, $v0, $s4
    /* 4FAF8 8005F2F8 80100200 */  sll        $v0, $v0, 2
    /* 4FAFC 8005F2FC 21105400 */  addu       $v0, $v0, $s4
    /* 4FB00 8005F300 40100200 */  sll        $v0, $v0, 1
    /* 4FB04 8005F304 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4FB08 8005F308 21082200 */  addu       $at, $at, $v0
    /* 4FB0C 8005F30C BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4FB10 8005F310 00000000 */  nop
    /* 4FB14 8005F314 80100300 */  sll        $v0, $v1, 2
    /* 4FB18 8005F318 21104300 */  addu       $v0, $v0, $v1
    /* 4FB1C 8005F31C 80100200 */  sll        $v0, $v0, 2
    /* 4FB20 8005F320 1180013C */  lui        $at, %hi(D_8010D27C)
    /* 4FB24 8005F324 21082200 */  addu       $at, $at, $v0
    /* 4FB28 8005F328 7CD2258C */  lw         $a1, %lo(D_8010D27C)($at)
    /* 4FB2C 8005F32C ABAC020C */  jal        func_800AB2AC
    /* 4FB30 8005F330 01000424 */   addiu     $a0, $zero, 0x1
    /* 4FB34 8005F334 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4FB38 8005F338 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4FB3C 8005F33C 2120E002 */  addu       $a0, $s7, $zero
    /* 4FB40 8005F340 2128C003 */  addu       $a1, $fp, $zero
    /* 4FB44 8005F344 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 4FB48 8005F348 6026020C */  jal        func_80089980
    /* 4FB4C 8005F34C FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 4FB50 8005F350 40280200 */  sll        $a1, $v0, 1
    /* 4FB54 8005F354 2128A200 */  addu       $a1, $a1, $v0
    /* 4FB58 8005F358 80280500 */  sll        $a1, $a1, 2
    /* 4FB5C 8005F35C 2328A200 */  subu       $a1, $a1, $v0
    /* 4FB60 8005F360 C0280500 */  sll        $a1, $a1, 3
    /* 4FB64 8005F364 1180023C */  lui        $v0, %hi(D_80113EF2)
    /* 4FB68 8005F368 F23E4224 */  addiu      $v0, $v0, %lo(D_80113EF2)
    /* 4FB6C 8005F36C 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* 4FB70 8005F370 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* 4FB74 8005F374 A587030C */  jal        func_800E1E94
    /* 4FB78 8005F378 2128A200 */   addu      $a1, $a1, $v0
    /* 4FB7C 8005F37C 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 4FB80 8005F380 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 4FB84 8005F384 5FEC0534 */  ori        $a1, $zero, 0xEC5F
    /* 4FB88 8005F388 21300000 */  addu       $a2, $zero, $zero
    /* 4FB8C 8005F38C 63E4020C */  jal        func_800B918C
    /* 4FB90 8005F390 21388002 */   addu      $a3, $s4, $zero
  .L8005F394:
    /* 4FB94 8005F394 21B00000 */  addu       $s6, $zero, $zero
  .L8005F398:
    /* 4FB98 8005F398 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 4FB9C 8005F39C 5000A8AF */  sw         $t0, 0x50($sp)
    /* 4FBA0 8005F3A0 21880000 */  addu       $s1, $zero, $zero
  .L8005F3A4:
    /* 4FBA4 8005F3A4 0800222A */  slti       $v0, $s1, 0x8
    /* 4FBA8 8005F3A8 48004010 */  beqz       $v0, .L8005F4CC
    /* 4FBAC 8005F3AC 00000000 */   nop
    /* 4FBB0 8005F3B0 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 4FBB4 8005F3B4 21083100 */  addu       $at, $at, $s1
    /* 4FBB8 8005F3B8 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* 4FBBC 8005F3BC 173B030C */  jal        func_800CEC5C
    /* 4FBC0 8005F3C0 2120E402 */   addu      $a0, $s7, $a0
    /* 4FBC4 8005F3C4 21984000 */  addu       $s3, $v0, $zero
    /* 4FBC8 8005F3C8 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 4FBCC 8005F3CC 21083100 */  addu       $at, $at, $s1
    /* 4FBD0 8005F3D0 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 4FBD4 8005F3D4 00000000 */  nop
    /* 4FBD8 8005F3D8 2190C203 */  addu       $s2, $fp, $v0
    /* 4FBDC 8005F3DC 0D004006 */  bltz       $s2, .L8005F414
    /* 4FBE0 8005F3E0 21180000 */   addu      $v1, $zero, $zero
    /* 4FBE4 8005F3E4 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 4FBE8 8005F3E8 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 4FBEC 8005F3EC 00000000 */  nop
    /* 4FBF0 8005F3F0 2A104202 */  slt        $v0, $s2, $v0
    /* 4FBF4 8005F3F4 07004010 */  beqz       $v0, .L8005F414
    /* 4FBF8 8005F3F8 00000000 */   nop
    /* 4FBFC 8005F3FC 05006006 */  bltz       $s3, .L8005F414
    /* 4FC00 8005F400 00000000 */   nop
    /* 4FC04 8005F404 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 4FC08 8005F408 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 4FC0C 8005F40C 00000000 */  nop
    /* 4FC10 8005F410 2A186202 */  slt        $v1, $s3, $v0
  .L8005F414:
    /* 4FC14 8005F414 2B006010 */  beqz       $v1, .L8005F4C4
    /* 4FC18 8005F418 00000000 */   nop
    /* 4FC1C 8005F41C E6E9030C */  jal        func_800FA798
    /* 4FC20 8005F420 00000000 */   nop
    /* 4FC24 8005F424 00140200 */  sll        $v0, $v0, 16
    /* 4FC28 8005F428 03240200 */  sra        $a0, $v0, 16
    /* 4FC2C 8005F42C AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
    /* 4FC30 8005F430 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* 4FC34 8005F434 18008300 */  mult       $a0, $v1
    /* 4FC38 8005F438 C3170200 */  sra        $v0, $v0, 31
    /* 4FC3C 8005F43C 10400000 */  mfhi       $t0
    /* 4FC40 8005F440 23100201 */  subu       $v0, $t0, $v0
    /* 4FC44 8005F444 40180200 */  sll        $v1, $v0, 1
    /* 4FC48 8005F448 21186200 */  addu       $v1, $v1, $v0
    /* 4FC4C 8005F44C 40180300 */  sll        $v1, $v1, 1
    /* 4FC50 8005F450 23208300 */  subu       $a0, $a0, $v1
    /* 4FC54 8005F454 00240400 */  sll        $a0, $a0, 16
    /* 4FC58 8005F458 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 4FC5C 8005F45C 21083100 */  addu       $at, $at, $s1
    /* 4FC60 8005F460 24AC2280 */  lb         $v0, %lo(D_8011AC24)($at)
    /* 4FC64 8005F464 00000000 */  nop
    /* 4FC68 8005F468 08004010 */  beqz       $v0, .L8005F48C
    /* 4FC6C 8005F46C 03840400 */   sra       $s0, $a0, 16
    /* 4FC70 8005F470 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 4FC74 8005F474 21083100 */  addu       $at, $at, $s1
    /* 4FC78 8005F478 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 4FC7C 8005F47C 00000000 */  nop
    /* 4FC80 8005F480 03004010 */  beqz       $v0, .L8005F490
    /* 4FC84 8005F484 21206002 */   addu      $a0, $s3, $zero
    /* 4FC88 8005F488 03001026 */  addiu      $s0, $s0, 0x3
  .L8005F48C:
    /* 4FC8C 8005F48C 21206002 */  addu       $a0, $s3, $zero
  .L8005F490:
    /* 4FC90 8005F490 4F62020C */  jal        func_8009893C
    /* 4FC94 8005F494 21284002 */   addu      $a1, $s2, $zero
    /* 4FC98 8005F498 03004104 */  bgez       $v0, .L8005F4A8
    /* 4FC9C 8005F49C 2A10D002 */   slt       $v0, $s6, $s0
    /* 4FCA0 8005F4A0 C8001026 */  addiu      $s0, $s0, 0xC8
    /* 4FCA4 8005F4A4 2A10D002 */  slt        $v0, $s6, $s0
  .L8005F4A8:
    /* 4FCA8 8005F4A8 06004010 */  beqz       $v0, .L8005F4C4
    /* 4FCAC 8005F4AC 00000000 */   nop
    /* 4FCB0 8005F4B0 21B00002 */  addu       $s6, $s0, $zero
    /* 4FCB4 8005F4B4 0400283A */  xori       $t0, $s1, 0x4
    /* 4FCB8 8005F4B8 5000A8AF */  sw         $t0, 0x50($sp)
    /* 4FCBC 8005F4BC 3000B3AF */  sw         $s3, 0x30($sp)
    /* 4FCC0 8005F4C0 3800B2AF */  sw         $s2, 0x38($sp)
  .L8005F4C4:
    /* 4FCC4 8005F4C4 E97C0108 */  j          .L8005F3A4
    /* 4FCC8 8005F4C8 01003126 */   addiu     $s1, $s1, 0x1
  .L8005F4CC:
    /* 4FCCC 8005F4CC 5000A88F */  lw         $t0, 0x50($sp)
    /* 4FCD0 8005F4D0 00000000 */  nop
    /* 4FCD4 8005F4D4 02000105 */  bgez       $t0, .L8005F4E0
    /* 4FCD8 8005F4D8 40101400 */   sll       $v0, $s4, 1
    /* 4FCDC 8005F4DC 2800A0AF */  sw         $zero, 0x28($sp)
  .L8005F4E0:
    /* 4FCE0 8005F4E0 21105400 */  addu       $v0, $v0, $s4
    /* 4FCE4 8005F4E4 80100200 */  sll        $v0, $v0, 2
    /* 4FCE8 8005F4E8 21105400 */  addu       $v0, $v0, $s4
    /* 4FCEC 8005F4EC 40800200 */  sll        $s0, $v0, 1
    /* 4FCF0 8005F4F0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4FCF4 8005F4F4 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 4FCF8 8005F4F8 21083000 */  addu       $at, $at, $s0
    /* 4FCFC 8005F4FC C3D622A0 */  sb         $v0, %lo(D_8010D6C3)($at)
    /* 4FD00 8005F500 C2F8010C */  jal        func_8007E308
    /* 4FD04 8005F504 21208002 */   addu      $a0, $s4, $zero
    /* 4FD08 8005F508 1280043C */  lui        $a0, %hi(D_8011ACB4)
    /* 4FD0C 8005F50C B4AC8424 */  addiu      $a0, $a0, %lo(D_8011ACB4)
    /* 4FD10 8005F510 0000838C */  lw         $v1, 0x0($a0)
    /* 4FD14 8005F514 00000000 */  nop
    /* 4FD18 8005F518 1500A312 */  beq        $s5, $v1, .L8005F570
    /* 4FD1C 8005F51C 00000000 */   nop
    /* 4FD20 8005F520 1280023C */  lui        $v0, %hi(D_8011A271)
    /* 4FD24 8005F524 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* 4FD28 8005F528 00000000 */  nop
    /* 4FD2C 8005F52C 10004014 */  bnez       $v0, .L8005F570
    /* 4FD30 8005F530 00000000 */   nop
    /* 4FD34 8005F534 1180013C */  lui        $at, %hi(D_8010D6BD)
    /* 4FD38 8005F538 21083000 */  addu       $at, $at, $s0
    /* 4FD3C 8005F53C BDD62290 */  lbu        $v0, %lo(D_8010D6BD)($at)
    /* 4FD40 8005F540 00000000 */  nop
    /* 4FD44 8005F544 07106200 */  srav       $v0, $v0, $v1
    /* 4FD48 8005F548 01004230 */  andi       $v0, $v0, 0x1
    /* 4FD4C 8005F54C 08004014 */  bnez       $v0, .L8005F570
    /* 4FD50 8005F550 00000000 */   nop
    /* 4FD54 8005F554 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4FD58 8005F558 21083000 */  addu       $at, $at, $s0
    /* 4FD5C 8005F55C BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* 4FD60 8005F560 00008290 */  lbu        $v0, 0x0($a0)
    /* 4FD64 8005F564 00000000 */  nop
    /* 4FD68 8005F568 05006214 */  bne        $v1, $v0, .L8005F580
    /* 4FD6C 8005F56C 00000000 */   nop
  .L8005F570:
    /* 4FD70 8005F570 4000A48F */  lw         $a0, 0x40($sp)
    /* 4FD74 8005F574 4800A58F */  lw         $a1, 0x48($sp)
    /* 4FD78 8005F578 426F020C */  jal        func_8009BD08
    /* 4FD7C 8005F57C 00000000 */   nop
  .L8005F580:
    /* 4FD80 8005F580 2800A88F */  lw         $t0, 0x28($sp)
    /* 4FD84 8005F584 00000000 */  nop
    /* 4FD88 8005F588 06000011 */  beqz       $t0, .L8005F5A4
    /* 4FD8C 8005F58C 00000000 */   nop
    /* 4FD90 8005F590 3000A58F */  lw         $a1, 0x30($sp)
    /* 4FD94 8005F594 3800A68F */  lw         $a2, 0x38($sp)
    /* 4FD98 8005F598 5000A78F */  lw         $a3, 0x50($sp)
    /* 4FD9C 8005F59C B8BD020C */  jal        func_800AF6E0
    /* 4FDA0 8005F5A0 21208002 */   addu      $a0, $s4, $zero
  .L8005F5A4:
    /* 4FDA4 8005F5A4 8BF3010C */  jal        func_8007CE2C
    /* 4FDA8 8005F5A8 21208002 */   addu      $a0, $s4, $zero
    /* 4FDAC 8005F5AC 1280023C */  lui        $v0, %hi(D_8011A268)
    /* 4FDB0 8005F5B0 68A24284 */  lh         $v0, %lo(D_8011A268)($v0)
    /* 4FDB4 8005F5B4 00000000 */  nop
    /* 4FDB8 8005F5B8 0A008216 */  bne        $s4, $v0, .L8005F5E4
    /* 4FDBC 8005F5BC 00000000 */   nop
    /* 4FDC0 8005F5C0 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 4FDC4 8005F5C4 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 4FDC8 8005F5C8 00000000 */  nop
    /* 4FDCC 8005F5CC 0600A216 */  bne        $s5, $v0, .L8005F5E8
    /* 4FDD0 8005F5D0 21208002 */   addu      $a0, $s4, $zero
    /* 4FDD4 8005F5D4 1680013C */  lui        $at, %hi(D_80158886)
    /* 4FDD8 8005F5D8 868837A4 */  sh         $s7, %lo(D_80158886)($at)
    /* 4FDDC 8005F5DC 1680013C */  lui        $at, %hi(D_80158888)
    /* 4FDE0 8005F5E0 88883EA4 */  sh         $fp, %lo(D_80158888)($at)
  .L8005F5E4:
    /* 4FDE4 8005F5E4 21208002 */  addu       $a0, $s4, $zero
  .L8005F5E8:
    /* 4FDE8 8005F5E8 2128E002 */  addu       $a1, $s7, $zero
    /* 4FDEC 8005F5EC ABEF010C */  jal        func_8007BEAC
    /* 4FDF0 8005F5F0 2130C003 */   addu      $a2, $fp, $zero
    /* 4FDF4 8005F5F4 40101400 */  sll        $v0, $s4, 1
    /* 4FDF8 8005F5F8 21105400 */  addu       $v0, $v0, $s4
    /* 4FDFC 8005F5FC 80100200 */  sll        $v0, $v0, 2
    /* 4FE00 8005F600 21105400 */  addu       $v0, $v0, $s4
    /* 4FE04 8005F604 40100200 */  sll        $v0, $v0, 1
    /* 4FE08 8005F608 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 4FE0C 8005F60C 21082200 */  addu       $at, $at, $v0
    /* 4FE10 8005F610 B8D62394 */  lhu        $v1, %lo(D_8010D6B8)($at)
    /* 4FE14 8005F614 00000000 */  nop
    /* 4FE18 8005F618 10006334 */  ori        $v1, $v1, 0x10
    /* 4FE1C 8005F61C 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 4FE20 8005F620 21082200 */  addu       $at, $at, $v0
    /* 4FE24 8005F624 B8D623A4 */  sh         $v1, %lo(D_8010D6B8)($at)
    /* 4FE28 8005F628 2000A88F */  lw         $t0, 0x20($sp)
    /* 4FE2C 8005F62C 00000000 */  nop
    /* 4FE30 8005F630 20000005 */  bltz       $t0, .L8005F6B4
    /* 4FE34 8005F634 21208002 */   addu      $a0, $s4, $zero
    /* 4FE38 8005F638 1800A88F */  lw         $t0, 0x18($sp)
    /* 4FE3C 8005F63C 00000000 */  nop
    /* 4FE40 8005F640 1C00A812 */  beq        $s5, $t0, .L8005F6B4
    /* 4FE44 8005F644 00000000 */   nop
    /* 4FE48 8005F648 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4FE4C 8005F64C 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4FE50 8005F650 00000000 */  nop
    /* 4FE54 8005F654 0710A202 */  srav       $v0, $v0, $s5
    /* 4FE58 8005F658 01004230 */  andi       $v0, $v0, 0x1
    /* 4FE5C 8005F65C 04004014 */  bnez       $v0, .L8005F670
    /* 4FE60 8005F660 40101400 */   sll       $v0, $s4, 1
    /* 4FE64 8005F664 BEFA010C */  jal        func_8007EAF8
    /* 4FE68 8005F668 21208002 */   addu      $a0, $s4, $zero
    /* 4FE6C 8005F66C 40101400 */  sll        $v0, $s4, 1
  .L8005F670:
    /* 4FE70 8005F670 21105400 */  addu       $v0, $v0, $s4
    /* 4FE74 8005F674 80100200 */  sll        $v0, $v0, 2
    /* 4FE78 8005F678 21105400 */  addu       $v0, $v0, $s4
    /* 4FE7C 8005F67C 40100200 */  sll        $v0, $v0, 1
    /* 4FE80 8005F680 1180013C */  lui        $at, %hi(D_8010D6BE)
    /* 4FE84 8005F684 21082200 */  addu       $at, $at, $v0
    /* 4FE88 8005F688 BED620A0 */  sb         $zero, %lo(D_8010D6BE)($at)
    /* 4FE8C 8005F68C 1280103C */  lui        $s0, %hi(D_8011A26A)
    /* 4FE90 8005F690 6AA21026 */  addiu      $s0, $s0, %lo(D_8011A26A)
    /* 4FE94 8005F694 000014A6 */  sh         $s4, 0x0($s0)
    /* 4FE98 8005F698 2000A48F */  lw         $a0, 0x20($sp)
    /* 4FE9C 8005F69C 2128A002 */  addu       $a1, $s5, $zero
    /* 4FEA0 8005F6A0 709E000C */  jal        func_800279C0
    /* 4FEA4 8005F6A4 21300000 */   addu      $a2, $zero, $zero
    /* 4FEA8 8005F6A8 00001486 */  lh         $s4, 0x0($s0)
    /* 4FEAC 8005F6AC 00000000 */  nop
    /* 4FEB0 8005F6B0 21208002 */  addu       $a0, $s4, $zero
  .L8005F6B4:
    /* 4FEB4 8005F6B4 FDB9000C */  jal        func_8002E7F4
    /* 4FEB8 8005F6B8 01000524 */   addiu     $a1, $zero, 0x1
    /* 4FEBC 8005F6BC 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* 4FEC0 8005F6C0 F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* 4FEC4 8005F6C4 4000A68F */  lw         $a2, 0x40($sp)
    /* 4FEC8 8005F6C8 4800A78F */  lw         $a3, 0x48($sp)
    /* 4FECC 8005F6CC AD61030C */  jal        func_800D86B4
    /* 4FED0 8005F6D0 21288002 */   addu      $a1, $s4, $zero
    /* 4FED4 8005F6D4 40101400 */  sll        $v0, $s4, 1
    /* 4FED8 8005F6D8 21105400 */  addu       $v0, $v0, $s4
    /* 4FEDC 8005F6DC 80100200 */  sll        $v0, $v0, 2
    /* 4FEE0 8005F6E0 21105400 */  addu       $v0, $v0, $s4
    /* 4FEE4 8005F6E4 40100200 */  sll        $v0, $v0, 1
    /* 4FEE8 8005F6E8 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 4FEEC 8005F6EC 21082200 */  addu       $at, $at, $v0
    /* 4FEF0 8005F6F0 B8D62394 */  lhu        $v1, %lo(D_8010D6B8)($at)
    /* 4FEF4 8005F6F4 00000000 */  nop
    /* 4FEF8 8005F6F8 FFFE6330 */  andi       $v1, $v1, 0xFEFF
    /* 4FEFC 8005F6FC 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 4FF00 8005F700 21082200 */  addu       $at, $at, $v0
    /* 4FF04 8005F704 B8D623A4 */  sh         $v1, %lo(D_8010D6B8)($at)
    /* 4FF08 8005F708 A3BF000C */  jal        func_8002FE8C
    /* 4FF0C 8005F70C 01000424 */   addiu     $a0, $zero, 0x1
  .L8005F710:
    /* 4FF10 8005F710 7C00BF8F */  lw         $ra, 0x7C($sp)
    /* 4FF14 8005F714 7800BE8F */  lw         $fp, 0x78($sp)
    /* 4FF18 8005F718 7400B78F */  lw         $s7, 0x74($sp)
    /* 4FF1C 8005F71C 7000B68F */  lw         $s6, 0x70($sp)
    /* 4FF20 8005F720 6C00B58F */  lw         $s5, 0x6C($sp)
    /* 4FF24 8005F724 6800B48F */  lw         $s4, 0x68($sp)
    /* 4FF28 8005F728 6400B38F */  lw         $s3, 0x64($sp)
    /* 4FF2C 8005F72C 6000B28F */  lw         $s2, 0x60($sp)
    /* 4FF30 8005F730 5C00B18F */  lw         $s1, 0x5C($sp)
    /* 4FF34 8005F734 5800B08F */  lw         $s0, 0x58($sp)
    /* 4FF38 8005F738 8000BD27 */  addiu      $sp, $sp, 0x80
    /* 4FF3C 8005F73C 0800E003 */  jr         $ra
    /* 4FF40 8005F740 00000000 */   nop
endlabel func_8005EE8C
