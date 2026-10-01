.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005A6FC, 0x5B4

glabel func_8005A6FC
    /* 4AEFC 8005A6FC 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 4AF00 8005A700 6C00BFAF */  sw         $ra, 0x6C($sp)
    /* 4AF04 8005A704 6800BEAF */  sw         $fp, 0x68($sp)
    /* 4AF08 8005A708 6400B7AF */  sw         $s7, 0x64($sp)
    /* 4AF0C 8005A70C 6000B6AF */  sw         $s6, 0x60($sp)
    /* 4AF10 8005A710 5C00B5AF */  sw         $s5, 0x5C($sp)
    /* 4AF14 8005A714 5800B4AF */  sw         $s4, 0x58($sp)
    /* 4AF18 8005A718 5400B3AF */  sw         $s3, 0x54($sp)
    /* 4AF1C 8005A71C 5000B2AF */  sw         $s2, 0x50($sp)
    /* 4AF20 8005A720 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 4AF24 8005A724 4800B0AF */  sw         $s0, 0x48($sp)
    /* 4AF28 8005A728 21888000 */  addu       $s1, $a0, $zero
    /* 4AF2C 8005A72C E7031524 */  addiu      $s5, $zero, 0x3E7
    /* 4AF30 8005A730 3000B1AF */  sw         $s1, 0x30($sp)
    /* 4AF34 8005A734 40101100 */  sll        $v0, $s1, 1
    /* 4AF38 8005A738 21105100 */  addu       $v0, $v0, $s1
    /* 4AF3C 8005A73C 80100200 */  sll        $v0, $v0, 2
    /* 4AF40 8005A740 21105100 */  addu       $v0, $v0, $s1
    /* 4AF44 8005A744 40100200 */  sll        $v0, $v0, 1
    /* 4AF48 8005A748 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4AF4C 8005A74C 21082200 */  addu       $at, $at, $v0
    /* 4AF50 8005A750 BAD63490 */  lbu        $s4, %lo(D_8010D6BA)($at)
    /* 4AF54 8005A754 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4AF58 8005A758 21082200 */  addu       $at, $at, $v0
    /* 4AF5C 8005A75C B4D63784 */  lh         $s7, %lo(D_8010D6B4)($at)
    /* 4AF60 8005A760 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4AF64 8005A764 21082200 */  addu       $at, $at, $v0
    /* 4AF68 8005A768 B6D63684 */  lh         $s6, %lo(D_8010D6B6)($at)
    /* 4AF6C 8005A76C 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4AF70 8005A770 21082200 */  addu       $at, $at, $v0
    /* 4AF74 8005A774 BBD63E80 */  lb         $fp, %lo(D_8010D6BB)($at)
    /* 4AF78 8005A778 80101400 */  sll        $v0, $s4, 2
    /* 4AF7C 8005A77C 21105400 */  addu       $v0, $v0, $s4
    /* 4AF80 8005A780 80100200 */  sll        $v0, $v0, 2
    /* 4AF84 8005A784 1180013C */  lui        $at, %hi(D_8010D285)
    /* 4AF88 8005A788 21082200 */  addu       $at, $at, $v0
    /* 4AF8C 8005A78C 85D22280 */  lb         $v0, %lo(D_8010D285)($at)
    /* 4AF90 8005A790 00000000 */  nop
    /* 4AF94 8005A794 05004014 */  bnez       $v0, .L8005A7AC
    /* 4AF98 8005A798 FFFF1024 */   addiu     $s0, $zero, -0x1
    /* 4AF9C 8005A79C 2120E002 */  addu       $a0, $s7, $zero
    /* 4AFA0 8005A7A0 2561020C */  jal        func_80098494
    /* 4AFA4 8005A7A4 2128C002 */   addu      $a1, $s6, $zero
    /* 4AFA8 8005A7A8 21804000 */  addu       $s0, $v0, $zero
  .L8005A7AC:
    /* 4AFAC 8005A7AC 0F270224 */  addiu      $v0, $zero, 0x270F
    /* 4AFB0 8005A7B0 1680013C */  lui        $at, %hi(D_80158824)
    /* 4AFB4 8005A7B4 248822AC */  sw         $v0, %lo(D_80158824)($at)
    /* 4AFB8 8005A7B8 FFFF1324 */  addiu      $s3, $zero, -0x1
    /* 4AFBC 8005A7BC 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 4AFC0 8005A7C0 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 4AFC4 8005A7C4 00000000 */  nop
    /* 4AFC8 8005A7C8 36004018 */  blez       $v0, .L8005A8A4
    /* 4AFCC 8005A7CC 21900000 */   addu      $s2, $zero, $zero
    /* 4AFD0 8005A7D0 40101200 */  sll        $v0, $s2, 1
  .L8005A7D4:
    /* 4AFD4 8005A7D4 21105200 */  addu       $v0, $v0, $s2
    /* 4AFD8 8005A7D8 80100200 */  sll        $v0, $v0, 2
    /* 4AFDC 8005A7DC 23105200 */  subu       $v0, $v0, $s2
    /* 4AFE0 8005A7E0 C0180200 */  sll        $v1, $v0, 3
    /* 4AFE4 8005A7E4 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 4AFE8 8005A7E8 21082300 */  addu       $at, $at, $v1
    /* 4AFEC 8005A7EC D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* 4AFF0 8005A7F0 00000000 */  nop
    /* 4AFF4 8005A7F4 24005E14 */  bne        $v0, $fp, .L8005A888
    /* 4AFF8 8005A7F8 00000000 */   nop
    /* 4AFFC 8005A7FC 0B000006 */  bltz       $s0, .L8005A82C
    /* 4B000 8005A800 40101200 */   sll       $v0, $s2, 1
    /* 4B004 8005A804 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 4B008 8005A808 21082300 */  addu       $at, $at, $v1
    /* 4B00C 8005A80C D03E2484 */  lh         $a0, %lo(D_80113ED0)($at)
    /* 4B010 8005A810 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 4B014 8005A814 21082300 */  addu       $at, $at, $v1
    /* 4B018 8005A818 D23E2584 */  lh         $a1, %lo(D_80113ED2)($at)
    /* 4B01C 8005A81C 2561020C */  jal        func_80098494
    /* 4B020 8005A820 00000000 */   nop
    /* 4B024 8005A824 18005014 */  bne        $v0, $s0, .L8005A888
    /* 4B028 8005A828 40101200 */   sll       $v0, $s2, 1
  .L8005A82C:
    /* 4B02C 8005A82C 21105200 */  addu       $v0, $v0, $s2
    /* 4B030 8005A830 80100200 */  sll        $v0, $v0, 2
    /* 4B034 8005A834 23105200 */  subu       $v0, $v0, $s2
    /* 4B038 8005A838 C0100200 */  sll        $v0, $v0, 3
    /* 4B03C 8005A83C 2120E002 */  addu       $a0, $s7, $zero
    /* 4B040 8005A840 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 4B044 8005A844 21082200 */  addu       $at, $at, $v0
    /* 4B048 8005A848 D03E2684 */  lh         $a2, %lo(D_80113ED0)($at)
    /* 4B04C 8005A84C 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 4B050 8005A850 21082200 */  addu       $at, $at, $v0
    /* 4B054 8005A854 D23E2784 */  lh         $a3, %lo(D_80113ED2)($at)
    /* 4B058 8005A858 653B030C */  jal        func_800CED94
    /* 4B05C 8005A85C 2128C002 */   addu      $a1, $s6, $zero
    /* 4B060 8005A860 21184000 */  addu       $v1, $v0, $zero
    /* 4B064 8005A864 1680023C */  lui        $v0, %hi(D_80158824)
    /* 4B068 8005A868 2488428C */  lw         $v0, %lo(D_80158824)($v0)
    /* 4B06C 8005A86C 00000000 */  nop
    /* 4B070 8005A870 2A106200 */  slt        $v0, $v1, $v0
    /* 4B074 8005A874 04004010 */  beqz       $v0, .L8005A888
    /* 4B078 8005A878 00000000 */   nop
    /* 4B07C 8005A87C 21984002 */  addu       $s3, $s2, $zero
    /* 4B080 8005A880 1680013C */  lui        $at, %hi(D_80158824)
    /* 4B084 8005A884 248823AC */  sw         $v1, %lo(D_80158824)($at)
  .L8005A888:
    /* 4B088 8005A888 01005226 */  addiu      $s2, $s2, 0x1
    /* 4B08C 8005A88C 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 4B090 8005A890 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 4B094 8005A894 00000000 */  nop
    /* 4B098 8005A898 2A104202 */  slt        $v0, $s2, $v0
    /* 4B09C 8005A89C CDFF4014 */  bnez       $v0, .L8005A7D4
    /* 4B0A0 8005A8A0 40101200 */   sll       $v0, $s2, 1
  .L8005A8A4:
    /* 4B0A4 8005A8A4 40101100 */  sll        $v0, $s1, 1
    /* 4B0A8 8005A8A8 21105100 */  addu       $v0, $v0, $s1
    /* 4B0AC 8005A8AC 80100200 */  sll        $v0, $v0, 2
    /* 4B0B0 8005A8B0 21105100 */  addu       $v0, $v0, $s1
    /* 4B0B4 8005A8B4 40100200 */  sll        $v0, $v0, 1
    /* 4B0B8 8005A8B8 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4B0BC 8005A8BC 21082200 */  addu       $at, $at, $v0
    /* 4B0C0 8005A8C0 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4B0C4 8005A8C4 00000000 */  nop
    /* 4B0C8 8005A8C8 80100300 */  sll        $v0, $v1, 2
    /* 4B0CC 8005A8CC 21104300 */  addu       $v0, $v0, $v1
    /* 4B0D0 8005A8D0 80100200 */  sll        $v0, $v0, 2
    /* 4B0D4 8005A8D4 1180013C */  lui        $at, %hi(D_8010D285)
    /* 4B0D8 8005A8D8 21082200 */  addu       $at, $at, $v0
    /* 4B0DC 8005A8DC 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* 4B0E0 8005A8E0 01000224 */  addiu      $v0, $zero, 0x1
    /* 4B0E4 8005A8E4 64006214 */  bne        $v1, $v0, .L8005AA78
    /* 4B0E8 8005A8E8 21906002 */   addu      $s2, $s3, $zero
    /* 4B0EC 8005A8EC 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 4B0F0 8005A8F0 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 4B0F4 8005A8F4 00000000 */  nop
    /* 4B0F8 8005A8F8 49004018 */  blez       $v0, .L8005AA20
    /* 4B0FC 8005A8FC 21880000 */   addu      $s1, $zero, $zero
    /* 4B100 8005A900 80101400 */  sll        $v0, $s4, 2
    /* 4B104 8005A904 21105400 */  addu       $v0, $v0, $s4
    /* 4B108 8005A908 80980200 */  sll        $s3, $v0, 2
    /* 4B10C 8005A90C 40101100 */  sll        $v0, $s1, 1
  .L8005A910:
    /* 4B110 8005A910 21105100 */  addu       $v0, $v0, $s1
    /* 4B114 8005A914 80100200 */  sll        $v0, $v0, 2
    /* 4B118 8005A918 21105100 */  addu       $v0, $v0, $s1
    /* 4B11C 8005A91C 40180200 */  sll        $v1, $v0, 1
    /* 4B120 8005A920 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4B124 8005A924 21082300 */  addu       $at, $at, $v1
    /* 4B128 8005A928 BBD62280 */  lb         $v0, %lo(D_8010D6BB)($at)
    /* 4B12C 8005A92C 00000000 */  nop
    /* 4B130 8005A930 34005E14 */  bne        $v0, $fp, .L8005AA04
    /* 4B134 8005A934 00000000 */   nop
    /* 4B138 8005A938 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4B13C 8005A93C 21082300 */  addu       $at, $at, $v1
    /* 4B140 8005A940 BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* 4B144 8005A944 00000000 */  nop
    /* 4B148 8005A948 80180200 */  sll        $v1, $v0, 2
    /* 4B14C 8005A94C 21186200 */  addu       $v1, $v1, $v0
    /* 4B150 8005A950 80180300 */  sll        $v1, $v1, 2
    /* 4B154 8005A954 1180013C */  lui        $at, %hi(D_8010D280)
    /* 4B158 8005A958 21082300 */  addu       $at, $at, $v1
    /* 4B15C 8005A95C 80D2238C */  lw         $v1, %lo(D_8010D280)($at)
    /* 4B160 8005A960 00000000 */  nop
    /* 4B164 8005A964 80006230 */  andi       $v0, $v1, 0x80
    /* 4B168 8005A968 0A004014 */  bnez       $v0, .L8005A994
    /* 4B16C 8005A96C 40101100 */   sll       $v0, $s1, 1
    /* 4B170 8005A970 1180013C */  lui        $at, %hi(D_8010D280)
    /* 4B174 8005A974 21083300 */  addu       $at, $at, $s3
    /* 4B178 8005A978 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 4B17C 8005A97C 00000000 */  nop
    /* 4B180 8005A980 00104230 */  andi       $v0, $v0, 0x1000
    /* 4B184 8005A984 1F004010 */  beqz       $v0, .L8005AA04
    /* 4B188 8005A988 08006230 */   andi      $v0, $v1, 0x8
    /* 4B18C 8005A98C 1D004010 */  beqz       $v0, .L8005AA04
    /* 4B190 8005A990 40101100 */   sll       $v0, $s1, 1
  .L8005A994:
    /* 4B194 8005A994 21105100 */  addu       $v0, $v0, $s1
    /* 4B198 8005A998 80100200 */  sll        $v0, $v0, 2
    /* 4B19C 8005A99C 21105100 */  addu       $v0, $v0, $s1
    /* 4B1A0 8005A9A0 40800200 */  sll        $s0, $v0, 1
    /* 4B1A4 8005A9A4 2120E002 */  addu       $a0, $s7, $zero
    /* 4B1A8 8005A9A8 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4B1AC 8005A9AC 21083000 */  addu       $at, $at, $s0
    /* 4B1B0 8005A9B0 B4D62684 */  lh         $a2, %lo(D_8010D6B4)($at)
    /* 4B1B4 8005A9B4 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4B1B8 8005A9B8 21083000 */  addu       $at, $at, $s0
    /* 4B1BC 8005A9BC B6D62784 */  lh         $a3, %lo(D_8010D6B6)($at)
    /* 4B1C0 8005A9C0 653B030C */  jal        func_800CED94
    /* 4B1C4 8005A9C4 2128C002 */   addu      $a1, $s6, $zero
    /* 4B1C8 8005A9C8 21184000 */  addu       $v1, $v0, $zero
    /* 4B1CC 8005A9CC 2A107500 */  slt        $v0, $v1, $s5
    /* 4B1D0 8005A9D0 0C004010 */  beqz       $v0, .L8005AA04
    /* 4B1D4 8005A9D4 00000000 */   nop
    /* 4B1D8 8005A9D8 21A86000 */  addu       $s5, $v1, $zero
    /* 4B1DC 8005A9DC 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 4B1E0 8005A9E0 21083000 */  addu       $at, $at, $s0
    /* 4B1E4 8005A9E4 B4D62884 */  lh         $t0, %lo(D_8010D6B4)($at)
    /* 4B1E8 8005A9E8 00000000 */  nop
    /* 4B1EC 8005A9EC 1000A8AF */  sw         $t0, 0x10($sp)
    /* 4B1F0 8005A9F0 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 4B1F4 8005A9F4 21083000 */  addu       $at, $at, $s0
    /* 4B1F8 8005A9F8 B6D63084 */  lh         $s0, %lo(D_8010D6B6)($at)
    /* 4B1FC 8005A9FC 00000000 */  nop
    /* 4B200 8005AA00 1800B0AF */  sw         $s0, 0x18($sp)
  .L8005AA04:
    /* 4B204 8005AA04 01003126 */  addiu      $s1, $s1, 0x1
    /* 4B208 8005AA08 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 4B20C 8005AA0C 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 4B210 8005AA10 00000000 */  nop
    /* 4B214 8005AA14 2A102202 */  slt        $v0, $s1, $v0
    /* 4B218 8005AA18 BDFF4014 */  bnez       $v0, .L8005A910
    /* 4B21C 8005AA1C 40101100 */   sll       $v0, $s1, 1
  .L8005AA20:
    /* 4B220 8005AA20 1680043C */  lui        $a0, %hi(D_80158824)
    /* 4B224 8005AA24 2488848C */  lw         $a0, %lo(D_80158824)($a0)
    /* 4B228 8005AA28 00000000 */  nop
    /* 4B22C 8005AA2C 2A109500 */  slt        $v0, $a0, $s5
    /* 4B230 8005AA30 02004010 */  beqz       $v0, .L8005AA3C
    /* 4B234 8005AA34 2118A002 */   addu      $v1, $s5, $zero
    /* 4B238 8005AA38 21188000 */  addu       $v1, $a0, $zero
  .L8005AA3C:
    /* 4B23C 8005AA3C 3000B18F */  lw         $s1, 0x30($sp)
    /* 4B240 8005AA40 2120E002 */  addu       $a0, $s7, $zero
    /* 4B244 8005AA44 2662020C */  jal        func_80098898
    /* 4B248 8005AA48 2128C002 */   addu      $a1, $s6, $zero
    /* 4B24C 8005AA4C 0B004004 */  bltz       $v0, .L8005AA7C
    /* 4B250 8005AA50 E7030324 */   addiu     $v1, $zero, 0x3E7
    /* 4B254 8005AA54 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4B258 8005AA58 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4B25C 8005AA5C 00000000 */  nop
    /* 4B260 8005AA60 0710C203 */  srav       $v0, $v0, $fp
    /* 4B264 8005AA64 01004230 */  andi       $v0, $v0, 0x1
    /* 4B268 8005AA68 72004010 */  beqz       $v0, .L8005AC34
    /* 4B26C 8005AA6C 00000000 */   nop
    /* 4B270 8005AA70 1F6B0108 */  j          .L8005AC7C
    /* 4B274 8005AA74 00000000 */   nop
  .L8005AA78:
    /* 4B278 8005AA78 E7030324 */  addiu      $v1, $zero, 0x3E7
  .L8005AA7C:
    /* 4B27C 8005AA7C 21A0E002 */  addu       $s4, $s7, $zero
    /* 4B280 8005AA80 1680043C */  lui        $a0, %hi(D_80158824)
    /* 4B284 8005AA84 2488848C */  lw         $a0, %lo(D_80158824)($a0)
    /* 4B288 8005AA88 00000000 */  nop
    /* 4B28C 8005AA8C E7038228 */  slti       $v0, $a0, 0x3E7
    /* 4B290 8005AA90 0D004010 */  beqz       $v0, .L8005AAC8
    /* 4B294 8005AA94 2198C002 */   addu      $s3, $s6, $zero
    /* 4B298 8005AA98 40101200 */  sll        $v0, $s2, 1
    /* 4B29C 8005AA9C 21105200 */  addu       $v0, $v0, $s2
    /* 4B2A0 8005AAA0 80100200 */  sll        $v0, $v0, 2
    /* 4B2A4 8005AAA4 23105200 */  subu       $v0, $v0, $s2
    /* 4B2A8 8005AAA8 C0100200 */  sll        $v0, $v0, 3
    /* 4B2AC 8005AAAC 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 4B2B0 8005AAB0 21082200 */  addu       $at, $at, $v0
    /* 4B2B4 8005AAB4 D03E3484 */  lh         $s4, %lo(D_80113ED0)($at)
    /* 4B2B8 8005AAB8 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 4B2BC 8005AABC 21082200 */  addu       $at, $at, $v0
    /* 4B2C0 8005AAC0 D23E3384 */  lh         $s3, %lo(D_80113ED2)($at)
    /* 4B2C4 8005AAC4 21188000 */  addu       $v1, $a0, $zero
  .L8005AAC8:
    /* 4B2C8 8005AAC8 2A10A302 */  slt        $v0, $s5, $v1
    /* 4B2CC 8005AACC 04004010 */  beqz       $v0, .L8005AAE0
    /* 4B2D0 8005AAD0 E7030824 */   addiu     $t0, $zero, 0x3E7
    /* 4B2D4 8005AAD4 1000B48F */  lw         $s4, 0x10($sp)
    /* 4B2D8 8005AAD8 1800B38F */  lw         $s3, 0x18($sp)
    /* 4B2DC 8005AADC 2118A002 */  addu       $v1, $s5, $zero
  .L8005AAE0:
    /* 4B2E0 8005AAE0 2A100301 */  slt        $v0, $t0, $v1
    /* 4B2E4 8005AAE4 05004010 */  beqz       $v0, .L8005AAFC
    /* 4B2E8 8005AAE8 E7036228 */   slti      $v0, $v1, 0x3E7
    /* 4B2EC 8005AAEC 2000B48F */  lw         $s4, 0x20($sp)
    /* 4B2F0 8005AAF0 2800B38F */  lw         $s3, 0x28($sp)
    /* 4B2F4 8005AAF4 E7030324 */  addiu      $v1, $zero, 0x3E7
    /* 4B2F8 8005AAF8 E7036228 */  slti       $v0, $v1, 0x3E7
  .L8005AAFC:
    /* 4B2FC 8005AAFC 5F004010 */  beqz       $v0, .L8005AC7C
    /* 4B300 8005AB00 00000000 */   nop
    /* 4B304 8005AB04 3000B18F */  lw         $s1, 0x30($sp)
    /* 4B308 8005AB08 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 4B30C 8005AB0C 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 4B310 8005AB10 00000000 */  nop
    /* 4B314 8005AB14 0710C203 */  srav       $v0, $v0, $fp
    /* 4B318 8005AB18 01004230 */  andi       $v0, $v0, 0x1
    /* 4B31C 8005AB1C 41004010 */  beqz       $v0, .L8005AC24
    /* 4B320 8005AB20 40101100 */   sll       $v0, $s1, 1
    /* 4B324 8005AB24 21105100 */  addu       $v0, $v0, $s1
    /* 4B328 8005AB28 80100200 */  sll        $v0, $v0, 2
    /* 4B32C 8005AB2C 21105100 */  addu       $v0, $v0, $s1
    /* 4B330 8005AB30 40900200 */  sll        $s2, $v0, 1
    /* 4B334 8005AB34 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4B338 8005AB38 21083200 */  addu       $at, $at, $s2
    /* 4B33C 8005AB3C BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4B340 8005AB40 00000000 */  nop
    /* 4B344 8005AB44 80100300 */  sll        $v0, $v1, 2
    /* 4B348 8005AB48 21104300 */  addu       $v0, $v0, $v1
    /* 4B34C 8005AB4C 80100200 */  sll        $v0, $v0, 2
    /* 4B350 8005AB50 1180013C */  lui        $at, %hi(D_8010D287)
    /* 4B354 8005AB54 21082200 */  addu       $at, $at, $v0
    /* 4B358 8005AB58 87D22280 */  lb         $v0, %lo(D_8010D287)($at)
    /* 4B35C 8005AB5C 00000000 */  nop
    /* 4B360 8005AB60 30004010 */  beqz       $v0, .L8005AC24
    /* 4B364 8005AB64 00000000 */   nop
    /* 4B368 8005AB68 A8ED010C */  jal        func_8007B6A0
    /* 4B36C 8005AB6C 21202002 */   addu      $a0, $s1, $zero
    /* 4B370 8005AB70 21804000 */  addu       $s0, $v0, $zero
    /* 4B374 8005AB74 F2EC010C */  jal        func_8007B3C8
    /* 4B378 8005AB78 21202002 */   addu      $a0, $s1, $zero
    /* 4B37C 8005AB7C 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4B380 8005AB80 21083200 */  addu       $at, $at, $s2
    /* 4B384 8005AB84 BAD62490 */  lbu        $a0, %lo(D_8010D6BA)($at)
    /* 4B388 8005AB88 00000000 */  nop
    /* 4B38C 8005AB8C 80180400 */  sll        $v1, $a0, 2
    /* 4B390 8005AB90 21186400 */  addu       $v1, $v1, $a0
    /* 4B394 8005AB94 80180300 */  sll        $v1, $v1, 2
    /* 4B398 8005AB98 1180013C */  lui        $at, %hi(D_8010D287)
    /* 4B39C 8005AB9C 21082300 */  addu       $at, $at, $v1
    /* 4B3A0 8005ABA0 87D22380 */  lb         $v1, %lo(D_8010D287)($at)
    /* 4B3A4 8005ABA4 00000000 */  nop
    /* 4B3A8 8005ABA8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 4B3AC 8005ABAC 1180013C */  lui        $at, %hi(D_8010D6C1)
    /* 4B3B0 8005ABB0 21083200 */  addu       $at, $at, $s2
    /* 4B3B4 8005ABB4 C1D62480 */  lb         $a0, %lo(D_8010D6C1)($at)
    /* 4B3B8 8005ABB8 00000000 */  nop
    /* 4B3BC 8005ABBC 23186400 */  subu       $v1, $v1, $a0
    /* 4B3C0 8005ABC0 18004300 */  mult       $v0, $v1
    /* 4B3C4 8005ABC4 12400000 */  mflo       $t0
    /* 4B3C8 8005ABC8 21800802 */  addu       $s0, $s0, $t0
    /* 4B3CC 8005ABCC 1280023C */  lui        $v0, %hi(D_8011A5C8)
    /* 4B3D0 8005ABD0 C8A54290 */  lbu        $v0, %lo(D_8011A5C8)($v0)
    /* 4B3D4 8005ABD4 00000000 */  nop
    /* 4B3D8 8005ABD8 1A000202 */  div        $zero, $s0, $v0
    /* 4B3DC 8005ABDC 02004014 */  bnez       $v0, .L8005ABE8
    /* 4B3E0 8005ABE0 00000000 */   nop
    /* 4B3E4 8005ABE4 0D000700 */  break      7
  .L8005ABE8:
    /* 4B3E8 8005ABE8 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 4B3EC 8005ABEC 04004114 */  bne        $v0, $at, .L8005AC00
    /* 4B3F0 8005ABF0 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 4B3F4 8005ABF4 02000116 */  bne        $s0, $at, .L8005AC00
    /* 4B3F8 8005ABF8 00000000 */   nop
    /* 4B3FC 8005ABFC 0D000600 */  break      6
  .L8005AC00:
    /* 4B400 8005AC00 12800000 */  mflo       $s0
    /* 4B404 8005AC04 2120E002 */  addu       $a0, $s7, $zero
    /* 4B408 8005AC08 2128C002 */  addu       $a1, $s6, $zero
    /* 4B40C 8005AC0C 21308002 */  addu       $a2, $s4, $zero
    /* 4B410 8005AC10 653B030C */  jal        func_800CED94
    /* 4B414 8005AC14 21386002 */   addu      $a3, $s3, $zero
    /* 4B418 8005AC18 2A800202 */  slt        $s0, $s0, $v0
    /* 4B41C 8005AC1C 17000016 */  bnez       $s0, .L8005AC7C
    /* 4B420 8005AC20 00000000 */   nop
  .L8005AC24:
    /* 4B424 8005AC24 0700F416 */  bne        $s7, $s4, .L8005AC44
    /* 4B428 8005AC28 40101100 */   sll       $v0, $s1, 1
    /* 4B42C 8005AC2C 0600D316 */  bne        $s6, $s3, .L8005AC48
    /* 4B430 8005AC30 21105100 */   addu      $v0, $v0, $s1
  .L8005AC34:
    /* 4B434 8005AC34 BEFA010C */  jal        func_8007EAF8
    /* 4B438 8005AC38 21202002 */   addu      $a0, $s1, $zero
    /* 4B43C 8005AC3C 1F6B0108 */  j          .L8005AC7C
    /* 4B440 8005AC40 00000000 */   nop
  .L8005AC44:
    /* 4B444 8005AC44 21105100 */  addu       $v0, $v0, $s1
  .L8005AC48:
    /* 4B448 8005AC48 80100200 */  sll        $v0, $v0, 2
    /* 4B44C 8005AC4C 21105100 */  addu       $v0, $v0, $s1
    /* 4B450 8005AC50 40100200 */  sll        $v0, $v0, 1
    /* 4B454 8005AC54 0B000324 */  addiu      $v1, $zero, 0xB
    /* 4B458 8005AC58 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 4B45C 8005AC5C 21082200 */  addu       $at, $at, $v0
    /* 4B460 8005AC60 C3D623A0 */  sb         $v1, %lo(D_8010D6C3)($at)
    /* 4B464 8005AC64 1180013C */  lui        $at, %hi(D_8010D6C6)
    /* 4B468 8005AC68 21082200 */  addu       $at, $at, $v0
    /* 4B46C 8005AC6C C6D634A4 */  sh         $s4, %lo(D_8010D6C6)($at)
    /* 4B470 8005AC70 1180013C */  lui        $at, %hi(D_8010D6C8)
    /* 4B474 8005AC74 21082200 */  addu       $at, $at, $v0
    /* 4B478 8005AC78 C8D633A4 */  sh         $s3, %lo(D_8010D6C8)($at)
  .L8005AC7C:
    /* 4B47C 8005AC7C 6C00BF8F */  lw         $ra, 0x6C($sp)
    /* 4B480 8005AC80 6800BE8F */  lw         $fp, 0x68($sp)
    /* 4B484 8005AC84 6400B78F */  lw         $s7, 0x64($sp)
    /* 4B488 8005AC88 6000B68F */  lw         $s6, 0x60($sp)
    /* 4B48C 8005AC8C 5C00B58F */  lw         $s5, 0x5C($sp)
    /* 4B490 8005AC90 5800B48F */  lw         $s4, 0x58($sp)
    /* 4B494 8005AC94 5400B38F */  lw         $s3, 0x54($sp)
    /* 4B498 8005AC98 5000B28F */  lw         $s2, 0x50($sp)
    /* 4B49C 8005AC9C 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 4B4A0 8005ACA0 4800B08F */  lw         $s0, 0x48($sp)
    /* 4B4A4 8005ACA4 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 4B4A8 8005ACA8 0800E003 */  jr         $ra
    /* 4B4AC 8005ACAC 00000000 */   nop
endlabel func_8005A6FC
