.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AA668, 0x74C

glabel func_800AA668
    /* 9AE68 800AA668 70FEBD27 */  addiu      $sp, $sp, -0x190
    /* 9AE6C 800AA66C 8C01BFAF */  sw         $ra, 0x18C($sp)
    /* 9AE70 800AA670 8801B6AF */  sw         $s6, 0x188($sp)
    /* 9AE74 800AA674 8401B5AF */  sw         $s5, 0x184($sp)
    /* 9AE78 800AA678 8001B4AF */  sw         $s4, 0x180($sp)
    /* 9AE7C 800AA67C 7C01B3AF */  sw         $s3, 0x17C($sp)
    /* 9AE80 800AA680 7801B2AF */  sw         $s2, 0x178($sp)
    /* 9AE84 800AA684 7401B1AF */  sw         $s1, 0x174($sp)
    /* 9AE88 800AA688 7001B0AF */  sw         $s0, 0x170($sp)
    /* 9AE8C 800AA68C 21988000 */  addu       $s3, $a0, $zero
    /* 9AE90 800AA690 9AE0030C */  jal        func_800F8268
    /* 9AE94 800AA694 2000A427 */   addiu     $a0, $sp, 0x20
    /* 9AE98 800AA698 FCEC030C */  jal        func_800FB3F0
    /* 9AE9C 800AA69C 5000A427 */   addiu     $a0, $sp, 0x50
    /* 9AEA0 800AA6A0 E800A727 */  addiu      $a3, $sp, 0xE8
    /* 9AEA4 800AA6A4 0180063C */  lui        $a2, %hi(D_80011E70)
    /* 9AEA8 800AA6A8 701EC624 */  addiu      $a2, $a2, %lo(D_80011E70)
    /* 9AEAC 800AA6AC 2510E600 */  or         $v0, $a3, $a2
    /* 9AEB0 800AA6B0 03004230 */  andi       $v0, $v0, 0x3
    /* 9AEB4 800AA6B4 16004010 */  beqz       $v0, .L800AA710
    /* 9AEB8 800AA6B8 4000C824 */   addiu     $t0, $a2, 0x40
  .L800AA6BC:
    /* 9AEBC 800AA6BC 0300C288 */  lwl        $v0, 0x3($a2)
    /* 9AEC0 800AA6C0 0000C298 */  lwr        $v0, 0x0($a2)
    /* 9AEC4 800AA6C4 0700C388 */  lwl        $v1, 0x7($a2)
    /* 9AEC8 800AA6C8 0400C398 */  lwr        $v1, 0x4($a2)
    /* 9AECC 800AA6CC 0B00C488 */  lwl        $a0, 0xB($a2)
    /* 9AED0 800AA6D0 0800C498 */  lwr        $a0, 0x8($a2)
    /* 9AED4 800AA6D4 0F00C588 */  lwl        $a1, 0xF($a2)
    /* 9AED8 800AA6D8 0C00C598 */  lwr        $a1, 0xC($a2)
    /* 9AEDC 800AA6DC 0300E2A8 */  swl        $v0, 0x3($a3)
    /* 9AEE0 800AA6E0 0000E2B8 */  swr        $v0, 0x0($a3)
    /* 9AEE4 800AA6E4 0700E3A8 */  swl        $v1, 0x7($a3)
    /* 9AEE8 800AA6E8 0400E3B8 */  swr        $v1, 0x4($a3)
    /* 9AEEC 800AA6EC 0B00E4A8 */  swl        $a0, 0xB($a3)
    /* 9AEF0 800AA6F0 0800E4B8 */  swr        $a0, 0x8($a3)
    /* 9AEF4 800AA6F4 0F00E5A8 */  swl        $a1, 0xF($a3)
    /* 9AEF8 800AA6F8 0C00E5B8 */  swr        $a1, 0xC($a3)
    /* 9AEFC 800AA6FC 1000C624 */  addiu      $a2, $a2, 0x10
    /* 9AF00 800AA700 EEFFC814 */  bne        $a2, $t0, .L800AA6BC
    /* 9AF04 800AA704 1000E724 */   addiu     $a3, $a3, 0x10
    /* 9AF08 800AA708 D0A90208 */  j          .L800AA740
    /* 9AF0C 800AA70C 2801A727 */   addiu     $a3, $sp, 0x128
  .L800AA710:
    /* 9AF10 800AA710 0000C28C */  lw         $v0, 0x0($a2)
    /* 9AF14 800AA714 0400C38C */  lw         $v1, 0x4($a2)
    /* 9AF18 800AA718 0800C48C */  lw         $a0, 0x8($a2)
    /* 9AF1C 800AA71C 0C00C58C */  lw         $a1, 0xC($a2)
    /* 9AF20 800AA720 0000E2AC */  sw         $v0, 0x0($a3)
    /* 9AF24 800AA724 0400E3AC */  sw         $v1, 0x4($a3)
    /* 9AF28 800AA728 0800E4AC */  sw         $a0, 0x8($a3)
    /* 9AF2C 800AA72C 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 9AF30 800AA730 1000C624 */  addiu      $a2, $a2, 0x10
    /* 9AF34 800AA734 F6FFC814 */  bne        $a2, $t0, .L800AA710
    /* 9AF38 800AA738 1000E724 */   addiu     $a3, $a3, 0x10
    /* 9AF3C 800AA73C 2801A727 */  addiu      $a3, $sp, 0x128
  .L800AA740:
    /* 9AF40 800AA740 0180063C */  lui        $a2, %hi(D_80011EB0)
    /* 9AF44 800AA744 B01EC624 */  addiu      $a2, $a2, %lo(D_80011EB0)
    /* 9AF48 800AA748 2510E600 */  or         $v0, $a3, $a2
    /* 9AF4C 800AA74C 03004230 */  andi       $v0, $v0, 0x3
    /* 9AF50 800AA750 16004010 */  beqz       $v0, .L800AA7AC
    /* 9AF54 800AA754 3000C824 */   addiu     $t0, $a2, 0x30
  .L800AA758:
    /* 9AF58 800AA758 0300C288 */  lwl        $v0, 0x3($a2)
    /* 9AF5C 800AA75C 0000C298 */  lwr        $v0, 0x0($a2)
    /* 9AF60 800AA760 0700C388 */  lwl        $v1, 0x7($a2)
    /* 9AF64 800AA764 0400C398 */  lwr        $v1, 0x4($a2)
    /* 9AF68 800AA768 0B00C488 */  lwl        $a0, 0xB($a2)
    /* 9AF6C 800AA76C 0800C498 */  lwr        $a0, 0x8($a2)
    /* 9AF70 800AA770 0F00C588 */  lwl        $a1, 0xF($a2)
    /* 9AF74 800AA774 0C00C598 */  lwr        $a1, 0xC($a2)
    /* 9AF78 800AA778 0300E2A8 */  swl        $v0, 0x3($a3)
    /* 9AF7C 800AA77C 0000E2B8 */  swr        $v0, 0x0($a3)
    /* 9AF80 800AA780 0700E3A8 */  swl        $v1, 0x7($a3)
    /* 9AF84 800AA784 0400E3B8 */  swr        $v1, 0x4($a3)
    /* 9AF88 800AA788 0B00E4A8 */  swl        $a0, 0xB($a3)
    /* 9AF8C 800AA78C 0800E4B8 */  swr        $a0, 0x8($a3)
    /* 9AF90 800AA790 0F00E5A8 */  swl        $a1, 0xF($a3)
    /* 9AF94 800AA794 0C00E5B8 */  swr        $a1, 0xC($a3)
    /* 9AF98 800AA798 1000C624 */  addiu      $a2, $a2, 0x10
    /* 9AF9C 800AA79C EEFFC814 */  bne        $a2, $t0, .L800AA758
    /* 9AFA0 800AA7A0 1000E724 */   addiu     $a3, $a3, 0x10
    /* 9AFA4 800AA7A4 F6A90208 */  j          .L800AA7D8
    /* 9AFA8 800AA7A8 00000000 */   nop
  .L800AA7AC:
    /* 9AFAC 800AA7AC 0000C28C */  lw         $v0, 0x0($a2)
    /* 9AFB0 800AA7B0 0400C38C */  lw         $v1, 0x4($a2)
    /* 9AFB4 800AA7B4 0800C48C */  lw         $a0, 0x8($a2)
    /* 9AFB8 800AA7B8 0C00C58C */  lw         $a1, 0xC($a2)
    /* 9AFBC 800AA7BC 0000E2AC */  sw         $v0, 0x0($a3)
    /* 9AFC0 800AA7C0 0400E3AC */  sw         $v1, 0x4($a3)
    /* 9AFC4 800AA7C4 0800E4AC */  sw         $a0, 0x8($a3)
    /* 9AFC8 800AA7C8 0C00E5AC */  sw         $a1, 0xC($a3)
    /* 9AFCC 800AA7CC 1000C624 */  addiu      $a2, $a2, 0x10
    /* 9AFD0 800AA7D0 F6FFC814 */  bne        $a2, $t0, .L800AA7AC
    /* 9AFD4 800AA7D4 1000E724 */   addiu     $a3, $a3, 0x10
  .L800AA7D8:
    /* 9AFD8 800AA7D8 0300C288 */  lwl        $v0, 0x3($a2)
    /* 9AFDC 800AA7DC 0000C298 */  lwr        $v0, 0x0($a2)
    /* 9AFE0 800AA7E0 0700C388 */  lwl        $v1, 0x7($a2)
    /* 9AFE4 800AA7E4 0400C398 */  lwr        $v1, 0x4($a2)
    /* 9AFE8 800AA7E8 0300E2A8 */  swl        $v0, 0x3($a3)
    /* 9AFEC 800AA7EC 0000E2B8 */  swr        $v0, 0x0($a3)
    /* 9AFF0 800AA7F0 0700E3A8 */  swl        $v1, 0x7($a3)
    /* 9AFF4 800AA7F4 0400E3B8 */  swr        $v1, 0x4($a3)
    /* 9AFF8 800AA7F8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9AFFC 800AA7FC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9B000 800AA800 CB1A030C */  jal        func_800C6B2C
    /* 9B004 800AA804 00000000 */   nop
    /* 9B008 800AA808 C41060A6 */  sh         $zero, 0x10C4($s3)
    /* 9B00C 800AA80C 2000A427 */  addiu      $a0, $sp, 0x20
    /* 9B010 800AA810 64000524 */  addiu      $a1, $zero, 0x64
    /* 9B014 800AA814 0A000624 */  addiu      $a2, $zero, 0xA
    /* 9B018 800AA818 44E3030C */  jal        func_800F8D10
    /* 9B01C 800AA81C EC000724 */   addiu     $a3, $zero, 0xEC
    /* 9B020 800AA820 09004014 */  bnez       $v0, .L800AA848
    /* 9B024 800AA824 5000B027 */   addiu     $s0, $sp, 0x50
  .L800AA828:
    /* 9B028 800AA828 5000A427 */  addiu      $a0, $sp, 0x50
    /* 9B02C 800AA82C 12ED030C */  jal        func_800FB448
    /* 9B030 800AA830 02000524 */   addiu     $a1, $zero, 0x2
    /* 9B034 800AA834 2000A427 */  addiu      $a0, $sp, 0x20
    /* 9B038 800AA838 4CE1030C */  jal        func_800F8530
    /* 9B03C 800AA83C 02000524 */   addiu     $a1, $zero, 0x2
    /* 9B040 800AA840 62AB0208 */  j          .L800AAD88
    /* 9B044 800AA844 21100000 */   addu      $v0, $zero, $zero
  .L800AA848:
    /* 9B048 800AA848 1000A0AF */  sw         $zero, 0x10($sp)
    /* 9B04C 800AA84C D4000224 */  addiu      $v0, $zero, 0xD4
    /* 9B050 800AA850 1400A2AF */  sw         $v0, 0x14($sp)
    /* 9B054 800AA854 9F000224 */  addiu      $v0, $zero, 0x9F
    /* 9B058 800AA858 1800A2AF */  sw         $v0, 0x18($sp)
    /* 9B05C 800AA85C 21200002 */  addu       $a0, $s0, $zero
    /* 9B060 800AA860 2000A527 */  addiu      $a1, $sp, 0x20
    /* 9B064 800AA864 09000624 */  addiu      $a2, $zero, 0x9
    /* 9B068 800AA868 67ED030C */  jal        func_800FB59C
    /* 9B06C 800AA86C 21380000 */   addu      $a3, $zero, $zero
    /* 9B070 800AA870 28000224 */  addiu      $v0, $zero, 0x28
    /* 9B074 800AA874 1000A2AF */  sw         $v0, 0x10($sp)
    /* 9B078 800AA878 6001A427 */  addiu      $a0, $sp, 0x160
    /* 9B07C 800AA87C 21280002 */  addu       $a1, $s0, $zero
    /* 9B080 800AA880 90006626 */  addiu      $a2, $s3, 0x90
    /* 9B084 800AA884 89EE030C */  jal        func_800FBA24
    /* 9B088 800AA888 36000724 */   addiu     $a3, $zero, 0x36
    /* 9B08C 800AA88C 2000A427 */  addiu      $a0, $sp, 0x20
    /* 9B090 800AA890 21280000 */  addu       $a1, $zero, $zero
    /* 9B094 800AA894 A9E0030C */  jal        func_800F82A4
    /* 9B098 800AA898 21300000 */   addu      $a2, $zero, $zero
    /* 9B09C 800AA89C 060E6286 */  lh         $v0, 0xE06($s3)
    /* 9B0A0 800AA8A0 00000000 */  nop
    /* 9B0A4 800AA8A4 90004014 */  bnez       $v0, .L800AAAE8
    /* 9B0A8 800AA8A8 21900000 */   addu      $s2, $zero, $zero
    /* 9B0AC 800AA8AC 5000B527 */  addiu      $s5, $sp, 0x50
    /* 9B0B0 800AA8B0 5555143C */  lui        $s4, (0x55555556 >> 16)
    /* 9B0B4 800AA8B4 56559436 */  ori        $s4, $s4, (0x55555556 & 0xFFFF)
  .L800AA8B8:
    /* 9B0B8 800AA8B8 00141200 */  sll        $v0, $s2, 16
    /* 9B0BC 800AA8BC 03240200 */  sra        $a0, $v0, 16
    /* 9B0C0 800AA8C0 08008228 */  slti       $v0, $a0, 0x8
    /* 9B0C4 800AA8C4 15014010 */  beqz       $v0, .L800AAD1C
    /* 9B0C8 800AA8C8 00000000 */   nop
    /* 9B0CC 800AA8CC 8C006386 */  lh         $v1, 0x8C($s3)
    /* 9B0D0 800AA8D0 00000000 */  nop
    /* 9B0D4 800AA8D4 40100300 */  sll        $v0, $v1, 1
    /* 9B0D8 800AA8D8 21104300 */  addu       $v0, $v0, $v1
    /* 9B0DC 800AA8DC 80100200 */  sll        $v0, $v0, 2
    /* 9B0E0 800AA8E0 23104300 */  subu       $v0, $v0, $v1
    /* 9B0E4 800AA8E4 00110200 */  sll        $v0, $v0, 4
    /* 9B0E8 800AA8E8 23104300 */  subu       $v0, $v0, $v1
    /* 9B0EC 800AA8EC C0100200 */  sll        $v0, $v0, 3
    /* 9B0F0 800AA8F0 1180033C */  lui        $v1, %hi(D_80117A67)
    /* 9B0F4 800AA8F4 677A6324 */  addiu      $v1, $v1, %lo(D_80117A67)
    /* 9B0F8 800AA8F8 21104300 */  addu       $v0, $v0, $v1
    /* 9B0FC 800AA8FC 21104400 */  addu       $v0, $v0, $a0
    /* 9B100 800AA900 00004290 */  lbu        $v0, 0x0($v0)
    /* 9B104 800AA904 00000000 */  nop
    /* 9B108 800AA908 0400422C */  sltiu      $v0, $v0, 0x4
    /* 9B10C 800AA90C 74004010 */  beqz       $v0, .L800AAAE0
    /* 9B110 800AA910 AA004526 */   addiu     $a1, $s2, 0xAA
    /* 9B114 800AA914 002C0500 */  sll        $a1, $a1, 16
    /* 9B118 800AA918 2000A427 */  addiu      $a0, $sp, 0x20
    /* 9B11C 800AA91C 032C0500 */  sra        $a1, $a1, 16
    /* 9B120 800AA920 0A000624 */  addiu      $a2, $zero, 0xA
    /* 9B124 800AA924 44E3030C */  jal        func_800F8D10
    /* 9B128 800AA928 EC000724 */   addiu     $a3, $zero, 0xEC
    /* 9B12C 800AA92C BEFF4010 */  beqz       $v0, .L800AA828
    /* 9B130 800AA930 008C1200 */   sll       $s1, $s2, 16
    /* 9B134 800AA934 038C1100 */  sra        $s1, $s1, 16
    /* 9B138 800AA938 C0101100 */  sll        $v0, $s1, 3
    /* 9B13C 800AA93C E800B027 */  addiu      $s0, $sp, 0xE8
    /* 9B140 800AA940 21800202 */  addu       $s0, $s0, $v0
    /* 9B144 800AA944 00000796 */  lhu        $a3, 0x0($s0)
    /* 9B148 800AA948 00000000 */  nop
    /* 9B14C 800AA94C 003C0700 */  sll        $a3, $a3, 16
    /* 9B150 800AA950 03140700 */  sra        $v0, $a3, 16
    /* 9B154 800AA954 18005400 */  mult       $v0, $s4
    /* 9B158 800AA958 C33F0700 */  sra        $a3, $a3, 31
    /* 9B15C 800AA95C 10480000 */  mfhi       $t1
    /* 9B160 800AA960 23382701 */  subu       $a3, $t1, $a3
    /* 9B164 800AA964 003C0700 */  sll        $a3, $a3, 16
    /* 9B168 800AA968 02000296 */  lhu        $v0, 0x2($s0)
    /* 9B16C 800AA96C 00000000 */  nop
    /* 9B170 800AA970 00140200 */  sll        $v0, $v0, 16
    /* 9B174 800AA974 031C0200 */  sra        $v1, $v0, 16
    /* 9B178 800AA978 18007400 */  mult       $v1, $s4
    /* 9B17C 800AA97C C3170200 */  sra        $v0, $v0, 31
    /* 9B180 800AA980 10480000 */  mfhi       $t1
    /* 9B184 800AA984 23102201 */  subu       $v0, $t1, $v0
    /* 9B188 800AA988 00140200 */  sll        $v0, $v0, 16
    /* 9B18C 800AA98C 03140200 */  sra        $v0, $v0, 16
    /* 9B190 800AA990 1000A2AF */  sw         $v0, 0x10($sp)
    /* 9B194 800AA994 04000296 */  lhu        $v0, 0x4($s0)
    /* 9B198 800AA998 00000000 */  nop
    /* 9B19C 800AA99C 00140200 */  sll        $v0, $v0, 16
    /* 9B1A0 800AA9A0 031C0200 */  sra        $v1, $v0, 16
    /* 9B1A4 800AA9A4 18007400 */  mult       $v1, $s4
    /* 9B1A8 800AA9A8 C3170200 */  sra        $v0, $v0, 31
    /* 9B1AC 800AA9AC 10480000 */  mfhi       $t1
    /* 9B1B0 800AA9B0 23102201 */  subu       $v0, $t1, $v0
    /* 9B1B4 800AA9B4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9B1B8 800AA9B8 00140200 */  sll        $v0, $v0, 16
    /* 9B1BC 800AA9BC 03140200 */  sra        $v0, $v0, 16
    /* 9B1C0 800AA9C0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 9B1C4 800AA9C4 06000296 */  lhu        $v0, 0x6($s0)
    /* 9B1C8 800AA9C8 00000000 */  nop
    /* 9B1CC 800AA9CC 00140200 */  sll        $v0, $v0, 16
    /* 9B1D0 800AA9D0 031C0200 */  sra        $v1, $v0, 16
    /* 9B1D4 800AA9D4 18007400 */  mult       $v1, $s4
    /* 9B1D8 800AA9D8 C3170200 */  sra        $v0, $v0, 31
    /* 9B1DC 800AA9DC 10480000 */  mfhi       $t1
    /* 9B1E0 800AA9E0 23102201 */  subu       $v0, $t1, $v0
    /* 9B1E4 800AA9E4 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9B1E8 800AA9E8 00140200 */  sll        $v0, $v0, 16
    /* 9B1EC 800AA9EC 03140200 */  sra        $v0, $v0, 16
    /* 9B1F0 800AA9F0 1800A2AF */  sw         $v0, 0x18($sp)
    /* 9B1F4 800AA9F4 2120A002 */  addu       $a0, $s5, $zero
    /* 9B1F8 800AA9F8 2000A527 */  addiu      $a1, $sp, 0x20
    /* 9B1FC 800AA9FC 09000624 */  addiu      $a2, $zero, 0x9
    /* 9B200 800AAA00 67ED030C */  jal        func_800FB59C
    /* 9B204 800AAA04 033C0700 */   sra       $a3, $a3, 16
    /* 9B208 800AAA08 00000796 */  lhu        $a3, 0x0($s0)
    /* 9B20C 800AAA0C 00000000 */  nop
    /* 9B210 800AAA10 003C0700 */  sll        $a3, $a3, 16
    /* 9B214 800AAA14 03140700 */  sra        $v0, $a3, 16
    /* 9B218 800AAA18 18005400 */  mult       $v0, $s4
    /* 9B21C 800AAA1C C33F0700 */  sra        $a3, $a3, 31
    /* 9B220 800AAA20 10480000 */  mfhi       $t1
    /* 9B224 800AAA24 23382701 */  subu       $a3, $t1, $a3
    /* 9B228 800AAA28 3600E724 */  addiu      $a3, $a3, 0x36
    /* 9B22C 800AAA2C 003C0700 */  sll        $a3, $a3, 16
    /* 9B230 800AAA30 02000296 */  lhu        $v0, 0x2($s0)
    /* 9B234 800AAA34 00000000 */  nop
    /* 9B238 800AAA38 00140200 */  sll        $v0, $v0, 16
    /* 9B23C 800AAA3C 031C0200 */  sra        $v1, $v0, 16
    /* 9B240 800AAA40 18007400 */  mult       $v1, $s4
    /* 9B244 800AAA44 C3170200 */  sra        $v0, $v0, 31
    /* 9B248 800AAA48 10480000 */  mfhi       $t1
    /* 9B24C 800AAA4C 23102201 */  subu       $v0, $t1, $v0
    /* 9B250 800AAA50 28004224 */  addiu      $v0, $v0, 0x28
    /* 9B254 800AAA54 00140200 */  sll        $v0, $v0, 16
    /* 9B258 800AAA58 03140200 */  sra        $v0, $v0, 16
    /* 9B25C 800AAA5C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 9B260 800AAA60 6801A427 */  addiu      $a0, $sp, 0x168
    /* 9B264 800AAA64 2128A002 */  addu       $a1, $s5, $zero
    /* 9B268 800AAA68 90006626 */  addiu      $a2, $s3, 0x90
    /* 9B26C 800AAA6C 89EE030C */  jal        func_800FBA24
    /* 9B270 800AAA70 033C0700 */   sra       $a3, $a3, 16
    /* 9B274 800AAA74 2000A427 */  addiu      $a0, $sp, 0x20
    /* 9B278 800AAA78 21280000 */  addu       $a1, $zero, $zero
    /* 9B27C 800AAA7C A9E0030C */  jal        func_800F82A4
    /* 9B280 800AAA80 21300000 */   addu      $a2, $zero, $zero
    /* 9B284 800AAA84 40281100 */  sll        $a1, $s1, 1
    /* 9B288 800AAA88 2128B100 */  addu       $a1, $a1, $s1
    /* 9B28C 800AAA8C 80280500 */  sll        $a1, $a1, 2
    /* 9B290 800AAA90 1280023C */  lui        $v0, %hi(D_8011FC44)
    /* 9B294 800AAA94 44FC4224 */  addiu      $v0, $v0, %lo(D_8011FC44)
    /* 9B298 800AAA98 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9B29C 800AAA9C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9B2A0 800AAAA0 9987030C */  jal        func_800E1E64
    /* 9B2A4 800AAAA4 2128A200 */   addu      $a1, $a1, $v0
    /* 9B2A8 800AAAA8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9B2AC 800AAAAC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9B2B0 800AAAB0 1680053C */  lui        $a1, %hi(D_80158D50)
    /* 9B2B4 800AAAB4 508DA524 */  addiu      $a1, $a1, %lo(D_80158D50)
    /* 9B2B8 800AAAB8 9987030C */  jal        func_800E1E64
    /* 9B2BC 800AAABC 00000000 */   nop
    /* 9B2C0 800AAAC0 C4106296 */  lhu        $v0, 0x10C4($s3)
    /* 9B2C4 800AAAC4 00000000 */  nop
    /* 9B2C8 800AAAC8 01004324 */  addiu      $v1, $v0, 0x1
    /* 9B2CC 800AAACC C41063A6 */  sh         $v1, 0x10C4($s3)
    /* 9B2D0 800AAAD0 00140200 */  sll        $v0, $v0, 16
    /* 9B2D4 800AAAD4 C3130200 */  sra        $v0, $v0, 15
    /* 9B2D8 800AAAD8 21105300 */  addu       $v0, $v0, $s3
    /* 9B2DC 800AAADC B41052A4 */  sh         $s2, 0x10B4($v0)
  .L800AAAE0:
    /* 9B2E0 800AAAE0 2EAA0208 */  j          .L800AA8B8
    /* 9B2E4 800AAAE4 01005226 */   addiu     $s2, $s2, 0x1
  .L800AAAE8:
    /* 9B2E8 800AAAE8 8C006386 */  lh         $v1, 0x8C($s3)
    /* 9B2EC 800AAAEC 00000000 */  nop
    /* 9B2F0 800AAAF0 40100300 */  sll        $v0, $v1, 1
    /* 9B2F4 800AAAF4 21104300 */  addu       $v0, $v0, $v1
    /* 9B2F8 800AAAF8 80100200 */  sll        $v0, $v0, 2
    /* 9B2FC 800AAAFC 23104300 */  subu       $v0, $v0, $v1
    /* 9B300 800AAB00 00110200 */  sll        $v0, $v0, 4
    /* 9B304 800AAB04 23104300 */  subu       $v0, $v0, $v1
    /* 9B308 800AAB08 C0100200 */  sll        $v0, $v0, 3
    /* 9B30C 800AAB0C 1180013C */  lui        $at, %hi(D_80117A6F)
    /* 9B310 800AAB10 21082200 */  addu       $at, $at, $v0
    /* 9B314 800AAB14 6F7A3690 */  lbu        $s6, %lo(D_80117A6F)($at)
    /* 9B318 800AAB18 5000B527 */  addiu      $s5, $sp, 0x50
    /* 9B31C 800AAB1C 5555143C */  lui        $s4, (0x55555556 >> 16)
    /* 9B320 800AAB20 56559436 */  ori        $s4, $s4, (0x55555556 & 0xFFFF)
  .L800AAB24:
    /* 9B324 800AAB24 00141200 */  sll        $v0, $s2, 16
    /* 9B328 800AAB28 031C0200 */  sra        $v1, $v0, 16
    /* 9B32C 800AAB2C 07006228 */  slti       $v0, $v1, 0x7
    /* 9B330 800AAB30 7A004010 */  beqz       $v0, .L800AAD1C
    /* 9B334 800AAB34 FF00C232 */   andi      $v0, $s6, 0xFF
    /* 9B338 800AAB38 07106200 */  srav       $v0, $v0, $v1
    /* 9B33C 800AAB3C 01004230 */  andi       $v0, $v0, 0x1
    /* 9B340 800AAB40 74004014 */  bnez       $v0, .L800AAD14
    /* 9B344 800AAB44 B2004526 */   addiu     $a1, $s2, 0xB2
    /* 9B348 800AAB48 002C0500 */  sll        $a1, $a1, 16
    /* 9B34C 800AAB4C 2000A427 */  addiu      $a0, $sp, 0x20
    /* 9B350 800AAB50 032C0500 */  sra        $a1, $a1, 16
    /* 9B354 800AAB54 0A000624 */  addiu      $a2, $zero, 0xA
    /* 9B358 800AAB58 44E3030C */  jal        func_800F8D10
    /* 9B35C 800AAB5C EC000724 */   addiu     $a3, $zero, 0xEC
    /* 9B360 800AAB60 31FF4010 */  beqz       $v0, .L800AA828
    /* 9B364 800AAB64 008C1200 */   sll       $s1, $s2, 16
    /* 9B368 800AAB68 038C1100 */  sra        $s1, $s1, 16
    /* 9B36C 800AAB6C C0101100 */  sll        $v0, $s1, 3
    /* 9B370 800AAB70 2801B027 */  addiu      $s0, $sp, 0x128
    /* 9B374 800AAB74 21800202 */  addu       $s0, $s0, $v0
    /* 9B378 800AAB78 00000796 */  lhu        $a3, 0x0($s0)
    /* 9B37C 800AAB7C 00000000 */  nop
    /* 9B380 800AAB80 003C0700 */  sll        $a3, $a3, 16
    /* 9B384 800AAB84 03140700 */  sra        $v0, $a3, 16
    /* 9B388 800AAB88 18005400 */  mult       $v0, $s4
    /* 9B38C 800AAB8C C33F0700 */  sra        $a3, $a3, 31
    /* 9B390 800AAB90 10480000 */  mfhi       $t1
    /* 9B394 800AAB94 23382701 */  subu       $a3, $t1, $a3
    /* 9B398 800AAB98 003C0700 */  sll        $a3, $a3, 16
    /* 9B39C 800AAB9C 02000296 */  lhu        $v0, 0x2($s0)
    /* 9B3A0 800AABA0 00000000 */  nop
    /* 9B3A4 800AABA4 00140200 */  sll        $v0, $v0, 16
    /* 9B3A8 800AABA8 031C0200 */  sra        $v1, $v0, 16
    /* 9B3AC 800AABAC 18007400 */  mult       $v1, $s4
    /* 9B3B0 800AABB0 C3170200 */  sra        $v0, $v0, 31
    /* 9B3B4 800AABB4 10480000 */  mfhi       $t1
    /* 9B3B8 800AABB8 23102201 */  subu       $v0, $t1, $v0
    /* 9B3BC 800AABBC 00140200 */  sll        $v0, $v0, 16
    /* 9B3C0 800AABC0 03140200 */  sra        $v0, $v0, 16
    /* 9B3C4 800AABC4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 9B3C8 800AABC8 04000296 */  lhu        $v0, 0x4($s0)
    /* 9B3CC 800AABCC 00000000 */  nop
    /* 9B3D0 800AABD0 00140200 */  sll        $v0, $v0, 16
    /* 9B3D4 800AABD4 031C0200 */  sra        $v1, $v0, 16
    /* 9B3D8 800AABD8 18007400 */  mult       $v1, $s4
    /* 9B3DC 800AABDC C3170200 */  sra        $v0, $v0, 31
    /* 9B3E0 800AABE0 10480000 */  mfhi       $t1
    /* 9B3E4 800AABE4 23102201 */  subu       $v0, $t1, $v0
    /* 9B3E8 800AABE8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9B3EC 800AABEC 00140200 */  sll        $v0, $v0, 16
    /* 9B3F0 800AABF0 03140200 */  sra        $v0, $v0, 16
    /* 9B3F4 800AABF4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 9B3F8 800AABF8 06000296 */  lhu        $v0, 0x6($s0)
    /* 9B3FC 800AABFC 00000000 */  nop
    /* 9B400 800AAC00 00140200 */  sll        $v0, $v0, 16
    /* 9B404 800AAC04 031C0200 */  sra        $v1, $v0, 16
    /* 9B408 800AAC08 18007400 */  mult       $v1, $s4
    /* 9B40C 800AAC0C C3170200 */  sra        $v0, $v0, 31
    /* 9B410 800AAC10 10480000 */  mfhi       $t1
    /* 9B414 800AAC14 23102201 */  subu       $v0, $t1, $v0
    /* 9B418 800AAC18 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 9B41C 800AAC1C 00140200 */  sll        $v0, $v0, 16
    /* 9B420 800AAC20 03140200 */  sra        $v0, $v0, 16
    /* 9B424 800AAC24 1800A2AF */  sw         $v0, 0x18($sp)
    /* 9B428 800AAC28 2120A002 */  addu       $a0, $s5, $zero
    /* 9B42C 800AAC2C 2000A527 */  addiu      $a1, $sp, 0x20
    /* 9B430 800AAC30 09000624 */  addiu      $a2, $zero, 0x9
    /* 9B434 800AAC34 67ED030C */  jal        func_800FB59C
    /* 9B438 800AAC38 033C0700 */   sra       $a3, $a3, 16
    /* 9B43C 800AAC3C 00000796 */  lhu        $a3, 0x0($s0)
    /* 9B440 800AAC40 00000000 */  nop
    /* 9B444 800AAC44 003C0700 */  sll        $a3, $a3, 16
    /* 9B448 800AAC48 03140700 */  sra        $v0, $a3, 16
    /* 9B44C 800AAC4C 18005400 */  mult       $v0, $s4
    /* 9B450 800AAC50 C33F0700 */  sra        $a3, $a3, 31
    /* 9B454 800AAC54 10480000 */  mfhi       $t1
    /* 9B458 800AAC58 23382701 */  subu       $a3, $t1, $a3
    /* 9B45C 800AAC5C 3600E724 */  addiu      $a3, $a3, 0x36
    /* 9B460 800AAC60 003C0700 */  sll        $a3, $a3, 16
    /* 9B464 800AAC64 02000296 */  lhu        $v0, 0x2($s0)
    /* 9B468 800AAC68 00000000 */  nop
    /* 9B46C 800AAC6C 00140200 */  sll        $v0, $v0, 16
    /* 9B470 800AAC70 031C0200 */  sra        $v1, $v0, 16
    /* 9B474 800AAC74 18007400 */  mult       $v1, $s4
    /* 9B478 800AAC78 C3170200 */  sra        $v0, $v0, 31
    /* 9B47C 800AAC7C 10480000 */  mfhi       $t1
    /* 9B480 800AAC80 23102201 */  subu       $v0, $t1, $v0
    /* 9B484 800AAC84 28004224 */  addiu      $v0, $v0, 0x28
    /* 9B488 800AAC88 00140200 */  sll        $v0, $v0, 16
    /* 9B48C 800AAC8C 03140200 */  sra        $v0, $v0, 16
    /* 9B490 800AAC90 1000A2AF */  sw         $v0, 0x10($sp)
    /* 9B494 800AAC94 6801A427 */  addiu      $a0, $sp, 0x168
    /* 9B498 800AAC98 2128A002 */  addu       $a1, $s5, $zero
    /* 9B49C 800AAC9C 90006626 */  addiu      $a2, $s3, 0x90
    /* 9B4A0 800AACA0 89EE030C */  jal        func_800FBA24
    /* 9B4A4 800AACA4 033C0700 */   sra       $a3, $a3, 16
    /* 9B4A8 800AACA8 2000A427 */  addiu      $a0, $sp, 0x20
    /* 9B4AC 800AACAC 21280000 */  addu       $a1, $zero, $zero
    /* 9B4B0 800AACB0 A9E0030C */  jal        func_800F82A4
    /* 9B4B4 800AACB4 21300000 */   addu      $a2, $zero, $zero
    /* 9B4B8 800AACB8 40281100 */  sll        $a1, $s1, 1
    /* 9B4BC 800AACBC 2128B100 */  addu       $a1, $a1, $s1
    /* 9B4C0 800AACC0 80280500 */  sll        $a1, $a1, 2
    /* 9B4C4 800AACC4 1280023C */  lui        $v0, %hi(D_8011FCA4)
    /* 9B4C8 800AACC8 A4FC4224 */  addiu      $v0, $v0, %lo(D_8011FCA4)
    /* 9B4CC 800AACCC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9B4D0 800AACD0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9B4D4 800AACD4 9987030C */  jal        func_800E1E64
    /* 9B4D8 800AACD8 2128A200 */   addu      $a1, $a1, $v0
    /* 9B4DC 800AACDC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9B4E0 800AACE0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9B4E4 800AACE4 1680053C */  lui        $a1, %hi(D_80158D50)
    /* 9B4E8 800AACE8 508DA524 */  addiu      $a1, $a1, %lo(D_80158D50)
    /* 9B4EC 800AACEC 9987030C */  jal        func_800E1E64
    /* 9B4F0 800AACF0 00000000 */   nop
    /* 9B4F4 800AACF4 C4106296 */  lhu        $v0, 0x10C4($s3)
    /* 9B4F8 800AACF8 00000000 */  nop
    /* 9B4FC 800AACFC 01004324 */  addiu      $v1, $v0, 0x1
    /* 9B500 800AAD00 C41063A6 */  sh         $v1, 0x10C4($s3)
    /* 9B504 800AAD04 00140200 */  sll        $v0, $v0, 16
    /* 9B508 800AAD08 C3130200 */  sra        $v0, $v0, 15
    /* 9B50C 800AAD0C 21105300 */  addu       $v0, $v0, $s3
    /* 9B510 800AAD10 B41052A4 */  sh         $s2, 0x10B4($v0)
  .L800AAD14:
    /* 9B514 800AAD14 C9AA0208 */  j          .L800AAB24
    /* 9B518 800AAD18 01005226 */   addiu     $s2, $s2, 0x1
  .L800AAD1C:
    /* 9B51C 800AAD1C B010648E */  lw         $a0, 0x10B0($s3)
    /* 9B520 800AAD20 00000000 */  nop
    /* 9B524 800AAD24 04008010 */  beqz       $a0, .L800AAD38
    /* 9B528 800AAD28 08000224 */   addiu     $v0, $zero, 0x8
    /* 9B52C 800AAD2C E511040C */  jal        func_80104794
    /* 9B530 800AAD30 00000000 */   nop
    /* 9B534 800AAD34 08000224 */  addiu      $v0, $zero, 0x8
  .L800AAD38:
    /* 9B538 800AAD38 6801A2A7 */  sh         $v0, 0x168($sp)
    /* 9B53C 800AAD3C 28000224 */  addiu      $v0, $zero, 0x28
    /* 9B540 800AAD40 6A01A2A7 */  sh         $v0, 0x16A($sp)
    /* 9B544 800AAD44 36000224 */  addiu      $v0, $zero, 0x36
    /* 9B548 800AAD48 6C01A2A7 */  sh         $v0, 0x16C($sp)
    /* 9B54C 800AAD4C F0000224 */  addiu      $v0, $zero, 0xF0
    /* 9B550 800AAD50 6E01A2A7 */  sh         $v0, 0x16E($sp)
    /* 9B554 800AAD54 1280043C */  lui        $a0, %hi(D_80121340)
    /* 9B558 800AAD58 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 9B55C 800AAD5C 6801A527 */  addiu      $a1, $sp, 0x168
    /* 9B560 800AAD60 DC0F040C */  jal        func_80103F70
    /* 9B564 800AAD64 21300000 */   addu      $a2, $zero, $zero
    /* 9B568 800AAD68 B01062AE */  sw         $v0, 0x10B0($s3)
    /* 9B56C 800AAD6C 5000A427 */  addiu      $a0, $sp, 0x50
    /* 9B570 800AAD70 12ED030C */  jal        func_800FB448
    /* 9B574 800AAD74 02000524 */   addiu     $a1, $zero, 0x2
    /* 9B578 800AAD78 2000A427 */  addiu      $a0, $sp, 0x20
    /* 9B57C 800AAD7C 4CE1030C */  jal        func_800F8530
    /* 9B580 800AAD80 02000524 */   addiu     $a1, $zero, 0x2
    /* 9B584 800AAD84 01000224 */  addiu      $v0, $zero, 0x1
  .L800AAD88:
    /* 9B588 800AAD88 8C01BF8F */  lw         $ra, 0x18C($sp)
    /* 9B58C 800AAD8C 8801B68F */  lw         $s6, 0x188($sp)
    /* 9B590 800AAD90 8401B58F */  lw         $s5, 0x184($sp)
    /* 9B594 800AAD94 8001B48F */  lw         $s4, 0x180($sp)
    /* 9B598 800AAD98 7C01B38F */  lw         $s3, 0x17C($sp)
    /* 9B59C 800AAD9C 7801B28F */  lw         $s2, 0x178($sp)
    /* 9B5A0 800AADA0 7401B18F */  lw         $s1, 0x174($sp)
    /* 9B5A4 800AADA4 7001B08F */  lw         $s0, 0x170($sp)
    /* 9B5A8 800AADA8 9001BD27 */  addiu      $sp, $sp, 0x190
    /* 9B5AC 800AADAC 0800E003 */  jr         $ra
    /* 9B5B0 800AADB0 00000000 */   nop
endlabel func_800AA668
