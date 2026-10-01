.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007EFE0, 0x740

glabel func_8007EFE0
    /* 6F7E0 8007EFE0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 6F7E4 8007EFE4 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 6F7E8 8007EFE8 3800B6AF */  sw         $s6, 0x38($sp)
    /* 6F7EC 8007EFEC 3400B5AF */  sw         $s5, 0x34($sp)
    /* 6F7F0 8007EFF0 3000B4AF */  sw         $s4, 0x30($sp)
    /* 6F7F4 8007EFF4 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 6F7F8 8007EFF8 2800B2AF */  sw         $s2, 0x28($sp)
    /* 6F7FC 8007EFFC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 6F800 8007F000 2000B0AF */  sw         $s0, 0x20($sp)
    /* 6F804 8007F004 2188C000 */  addu       $s1, $a2, $zero
    /* 6F808 8007F008 5000B58F */  lw         $s5, 0x50($sp)
    /* 6F80C 8007F00C 5400B68F */  lw         $s6, 0x54($sp)
    /* 6F810 8007F010 00000000 */  nop
    /* 6F814 8007F014 1000B6AF */  sw         $s6, 0x10($sp)
    /* 6F818 8007F018 EC02828F */  lw         $v0, %gp_rel(D_801587C4)($gp)
    /* 6F81C 8007F01C 00000000 */  nop
    /* 6F820 8007F020 1400A2AF */  sw         $v0, 0x14($sp)
    /* 6F824 8007F024 2120A000 */  addu       $a0, $a1, $zero
    /* 6F828 8007F028 21282002 */  addu       $a1, $s1, $zero
    /* 6F82C 8007F02C 04000624 */  addiu      $a2, $zero, 0x4
    /* 6F830 8007F030 4CBB020C */  jal        func_800AED30
    /* 6F834 8007F034 0200A726 */   addiu     $a3, $s5, 0x2
    /* 6F838 8007F038 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 6F83C 8007F03C 21180000 */  addu       $v1, $zero, $zero
    /* 6F840 8007F040 21900000 */  addu       $s2, $zero, $zero
    /* 6F844 8007F044 1180043C */  lui        $a0, %hi(D_8010C0B4)
    /* 6F848 8007F048 B4C08424 */  addiu      $a0, $a0, %lo(D_8010C0B4)
    /* 6F84C 8007F04C FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 6F850 8007F050 80101200 */  sll        $v0, $s2, 2
  .L8007F054:
    /* 6F854 8007F054 21104400 */  addu       $v0, $v0, $a0
    /* 6F858 8007F058 0000428C */  lw         $v0, 0x0($v0)
    /* 6F85C 8007F05C 00000000 */  nop
    /* 6F860 8007F060 26005110 */  beq        $v0, $s1, .L8007F0FC
    /* 6F864 8007F064 00000000 */   nop
    /* 6F868 8007F068 04004614 */  bne        $v0, $a2, .L8007F07C
    /* 6F86C 8007F06C 80101200 */   sll       $v0, $s2, 2
    /* 6F870 8007F070 21284002 */  addu       $a1, $s2, $zero
    /* 6F874 8007F074 3BFC0108 */  j          .L8007F0EC
    /* 6F878 8007F078 0F270324 */   addiu     $v1, $zero, 0x270F
  .L8007F07C:
    /* 6F87C 8007F07C 21104400 */  addu       $v0, $v0, $a0
    /* 6F880 8007F080 0000428C */  lw         $v0, 0x0($v0)
    /* 6F884 8007F084 00000000 */  nop
    /* 6F888 8007F088 23102202 */  subu       $v0, $s1, $v0
    /* 6F88C 8007F08C 05004018 */  blez       $v0, .L8007F0A4
    /* 6F890 8007F090 2A106200 */   slt       $v0, $v1, $v0
    /* 6F894 8007F094 0D004014 */  bnez       $v0, .L8007F0CC
    /* 6F898 8007F098 80101200 */   sll       $v0, $s2, 2
    /* 6F89C 8007F09C 3CFC0108 */  j          .L8007F0F0
    /* 6F8A0 8007F0A0 01005226 */   addiu     $s2, $s2, 0x1
  .L8007F0A4:
    /* 6F8A4 8007F0A4 80101200 */  sll        $v0, $s2, 2
    /* 6F8A8 8007F0A8 21104400 */  addu       $v0, $v0, $a0
    /* 6F8AC 8007F0AC 0000428C */  lw         $v0, 0x0($v0)
    /* 6F8B0 8007F0B0 00000000 */  nop
    /* 6F8B4 8007F0B4 23102202 */  subu       $v0, $s1, $v0
    /* 6F8B8 8007F0B8 27100200 */  nor        $v0, $zero, $v0
    /* 6F8BC 8007F0BC 01004224 */  addiu      $v0, $v0, 0x1
    /* 6F8C0 8007F0C0 2A106200 */  slt        $v0, $v1, $v0
    /* 6F8C4 8007F0C4 09004010 */  beqz       $v0, .L8007F0EC
    /* 6F8C8 8007F0C8 80101200 */   sll       $v0, $s2, 2
  .L8007F0CC:
    /* 6F8CC 8007F0CC 21104400 */  addu       $v0, $v0, $a0
    /* 6F8D0 8007F0D0 0000428C */  lw         $v0, 0x0($v0)
    /* 6F8D4 8007F0D4 00000000 */  nop
    /* 6F8D8 8007F0D8 23182202 */  subu       $v1, $s1, $v0
    /* 6F8DC 8007F0DC 0300601C */  bgtz       $v1, .L8007F0EC
    /* 6F8E0 8007F0E0 21284002 */   addu      $a1, $s2, $zero
    /* 6F8E4 8007F0E4 27180300 */  nor        $v1, $zero, $v1
    /* 6F8E8 8007F0E8 01006324 */  addiu      $v1, $v1, 0x1
  .L8007F0EC:
    /* 6F8EC 8007F0EC 01005226 */  addiu      $s2, $s2, 0x1
  .L8007F0F0:
    /* 6F8F0 8007F0F0 0800422A */  slti       $v0, $s2, 0x8
    /* 6F8F4 8007F0F4 D7FF4014 */  bnez       $v0, .L8007F054
    /* 6F8F8 8007F0F8 80101200 */   sll       $v0, $s2, 2
  .L8007F0FC:
    /* 6F8FC 8007F0FC 0800422A */  slti       $v0, $s2, 0x8
    /* 6F900 8007F100 12004014 */  bnez       $v0, .L8007F14C
    /* 6F904 8007F104 80101200 */   sll       $v0, $s2, 2
    /* 6F908 8007F108 2190A000 */  addu       $s2, $a1, $zero
    /* 6F90C 8007F10C 1180033C */  lui        $v1, %hi(D_8010C094)
    /* 6F910 8007F110 94C06324 */  addiu      $v1, $v1, %lo(D_8010C094)
    /* 6F914 8007F114 80101200 */  sll        $v0, $s2, 2
    /* 6F918 8007F118 21804300 */  addu       $s0, $v0, $v1
    /* 6F91C 8007F11C 0000048E */  lw         $a0, 0x0($s0)
    /* 6F920 8007F120 00000000 */  nop
    /* 6F924 8007F124 05008010 */  beqz       $a0, .L8007F13C
    /* 6F928 8007F128 00000000 */   nop
    /* 6F92C 8007F12C E511040C */  jal        func_80104794
    /* 6F930 8007F130 00000000 */   nop
    /* 6F934 8007F134 000000AE */  sw         $zero, 0x0($s0)
    /* 6F938 8007F138 80101200 */  sll        $v0, $s2, 2
  .L8007F13C:
    /* 6F93C 8007F13C 1180013C */  lui        $at, %hi(D_8010C0B4)
    /* 6F940 8007F140 21082200 */  addu       $at, $at, $v0
    /* 6F944 8007F144 B4C031AC */  sw         $s1, %lo(D_8010C0B4)($at)
    /* 6F948 8007F148 80101200 */  sll        $v0, $s2, 2
  .L8007F14C:
    /* 6F94C 8007F14C 1180013C */  lui        $at, %hi(D_8010C094)
    /* 6F950 8007F150 21082200 */  addu       $at, $at, $v0
    /* 6F954 8007F154 94C0228C */  lw         $v0, %lo(D_8010C094)($at)
    /* 6F958 8007F158 00000000 */  nop
    /* 6F95C 8007F15C 5A014014 */  bnez       $v0, .L8007F6C8
    /* 6F960 8007F160 00000000 */   nop
    /* 6F964 8007F164 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6F968 8007F168 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6F96C 8007F16C CB1A030C */  jal        func_800C6B2C
    /* 6F970 8007F170 40801100 */   sll       $s0, $s1, 1
    /* 6F974 8007F174 21801102 */  addu       $s0, $s0, $s1
    /* 6F978 8007F178 80801000 */  sll        $s0, $s0, 2
    /* 6F97C 8007F17C 21801102 */  addu       $s0, $s0, $s1
    /* 6F980 8007F180 40801000 */  sll        $s0, $s0, 1
    /* 6F984 8007F184 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6F988 8007F188 21083000 */  addu       $at, $at, $s0
    /* 6F98C 8007F18C BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6F990 8007F190 00000000 */  nop
    /* 6F994 8007F194 80100300 */  sll        $v0, $v1, 2
    /* 6F998 8007F198 21104300 */  addu       $v0, $v0, $v1
    /* 6F99C 8007F19C 80100200 */  sll        $v0, $v0, 2
    /* 6F9A0 8007F1A0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6F9A4 8007F1A4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6F9A8 8007F1A8 1180013C */  lui        $at, %hi(D_8010D27C)
    /* 6F9AC 8007F1AC 21082200 */  addu       $at, $at, $v0
    /* 6F9B0 8007F1B0 7CD2258C */  lw         $a1, %lo(D_8010D27C)($at)
    /* 6F9B4 8007F1B4 651B030C */  jal        func_800C6D94
    /* 6F9B8 8007F1B8 00000000 */   nop
    /* 6F9BC 8007F1BC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6F9C0 8007F1C0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6F9C4 8007F1C4 CD1A030C */  jal        func_800C6B34
    /* 6F9C8 8007F1C8 00000000 */   nop
    /* 6F9CC 8007F1CC 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 6F9D0 8007F1D0 21083000 */  addu       $at, $at, $s0
    /* 6F9D4 8007F1D4 B8D62294 */  lhu        $v0, %lo(D_8010D6B8)($at)
    /* 6F9D8 8007F1D8 00000000 */  nop
    /* 6F9DC 8007F1DC 00204230 */  andi       $v0, $v0, 0x2000
    /* 6F9E0 8007F1E0 0C004010 */  beqz       $v0, .L8007F214
    /* 6F9E4 8007F1E4 40101100 */   sll       $v0, $s1, 1
    /* 6F9E8 8007F1E8 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6F9EC 8007F1EC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6F9F0 8007F1F0 1680053C */  lui        $a1, %hi(D_801587C8)
    /* 6F9F4 8007F1F4 C887A524 */  addiu      $a1, $a1, %lo(D_801587C8)
    /* 6F9F8 8007F1F8 9987030C */  jal        func_800E1E64
    /* 6F9FC 8007F1FC 00000000 */   nop
    /* 6FA00 8007F200 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FA04 8007F204 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FA08 8007F208 CD1A030C */  jal        func_800C6B34
    /* 6FA0C 8007F20C 00000000 */   nop
    /* 6FA10 8007F210 40101100 */  sll        $v0, $s1, 1
  .L8007F214:
    /* 6FA14 8007F214 21105100 */  addu       $v0, $v0, $s1
    /* 6FA18 8007F218 80100200 */  sll        $v0, $v0, 2
    /* 6FA1C 8007F21C 21105100 */  addu       $v0, $v0, $s1
    /* 6FA20 8007F220 40800200 */  sll        $s0, $v0, 1
    /* 6FA24 8007F224 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 6FA28 8007F228 21083000 */  addu       $at, $at, $s0
    /* 6FA2C 8007F22C BBD62480 */  lb         $a0, %lo(D_8010D6BB)($at)
    /* 6FA30 8007F230 8A54020C */  jal        func_80095228
    /* 6FA34 8007F234 00000000 */   nop
    /* 6FA38 8007F238 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FA3C 8007F23C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FA40 8007F240 801B030C */  jal        func_800C6E00
    /* 6FA44 8007F244 21284000 */   addu      $a1, $v0, $zero
    /* 6FA48 8007F248 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FA4C 8007F24C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FA50 8007F250 CD1A030C */  jal        func_800C6B34
    /* 6FA54 8007F254 00000000 */   nop
    /* 6FA58 8007F258 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FA5C 8007F25C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FA60 8007F260 151B030C */  jal        func_800C6C54
    /* 6FA64 8007F264 00000000 */   nop
    /* 6FA68 8007F268 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* 6FA6C 8007F26C 21083000 */  addu       $at, $at, $s0
    /* 6FA70 8007F270 C4D62380 */  lb         $v1, %lo(D_8010D6C4)($at)
    /* 6FA74 8007F274 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6FA78 8007F278 04006210 */  beq        $v1, $v0, .L8007F28C
    /* 6FA7C 8007F27C FFFF0524 */   addiu     $a1, $zero, -0x1
    /* 6FA80 8007F280 1180013C */  lui        $at, %hi(D_8010D6C4)
    /* 6FA84 8007F284 21083000 */  addu       $at, $at, $s0
    /* 6FA88 8007F288 C4D62590 */  lbu        $a1, %lo(D_8010D6C4)($at)
  .L8007F28C:
    /* 6FA8C 8007F28C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FA90 8007F290 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FA94 8007F294 A331020C */  jal        func_8008C68C
    /* 6FA98 8007F298 00000000 */   nop
    /* 6FA9C 8007F29C 40101100 */  sll        $v0, $s1, 1
    /* 6FAA0 8007F2A0 21105100 */  addu       $v0, $v0, $s1
    /* 6FAA4 8007F2A4 80100200 */  sll        $v0, $v0, 2
    /* 6FAA8 8007F2A8 21105100 */  addu       $v0, $v0, $s1
    /* 6FAAC 8007F2AC 40800200 */  sll        $s0, $v0, 1
    /* 6FAB0 8007F2B0 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6FAB4 8007F2B4 21083000 */  addu       $at, $at, $s0
    /* 6FAB8 8007F2B8 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6FABC 8007F2BC 00000000 */  nop
    /* 6FAC0 8007F2C0 80100300 */  sll        $v0, $v1, 2
    /* 6FAC4 8007F2C4 21104300 */  addu       $v0, $v0, $v1
    /* 6FAC8 8007F2C8 80100200 */  sll        $v0, $v0, 2
    /* 6FACC 8007F2CC 1180013C */  lui        $at, %hi(D_8010D28E)
    /* 6FAD0 8007F2D0 21082200 */  addu       $at, $at, $v0
    /* 6FAD4 8007F2D4 8ED22380 */  lb         $v1, %lo(D_8010D28E)($at)
    /* 6FAD8 8007F2D8 07000224 */  addiu      $v0, $zero, 0x7
    /* 6FADC 8007F2DC 19006214 */  bne        $v1, $v0, .L8007F344
    /* 6FAE0 8007F2E0 00000000 */   nop
    /* 6FAE4 8007F2E4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FAE8 8007F2E8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FAEC 8007F2EC ED1A030C */  jal        func_800C6BB4
    /* 6FAF0 8007F2F0 00000000 */   nop
    /* 6FAF4 8007F2F4 1180013C */  lui        $at, %hi(D_8010D6C1)
    /* 6FAF8 8007F2F8 21083000 */  addu       $at, $at, $s0
    /* 6FAFC 8007F2FC C1D62280 */  lb         $v0, %lo(D_8010D6C1)($at)
    /* 6FB00 8007F300 00000000 */  nop
    /* 6FB04 8007F304 08004004 */  bltz       $v0, .L8007F328
    /* 6FB08 8007F308 80100200 */   sll       $v0, $v0, 2
    /* 6FB0C 8007F30C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FB10 8007F310 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FB14 8007F314 1280013C */  lui        $at, %hi(D_8011A6B0)
    /* 6FB18 8007F318 21082200 */  addu       $at, $at, $v0
    /* 6FB1C 8007F31C B0A6258C */  lw         $a1, %lo(D_8011A6B0)($at)
    /* 6FB20 8007F320 CFFC0108 */  j          .L8007F33C
    /* 6FB24 8007F324 00000000 */   nop
  .L8007F328:
    /* 6FB28 8007F328 1680023C */  lui        $v0, %hi(D_8015894C)
    /* 6FB2C 8007F32C 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* 6FB30 8007F330 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FB34 8007F334 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FB38 8007F338 0003458C */  lw         $a1, 0x300($v0)
  .L8007F33C:
    /* 6FB3C 8007F33C 651B030C */  jal        func_800C6D94
    /* 6FB40 8007F340 00000000 */   nop
  .L8007F344:
    /* 6FB44 8007F344 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FB48 8007F348 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FB4C 8007F34C 1F1B030C */  jal        func_800C6C7C
    /* 6FB50 8007F350 40801100 */   sll       $s0, $s1, 1
    /* 6FB54 8007F354 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FB58 8007F358 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FB5C 8007F35C 1680053C */  lui        $a1, %hi(D_801587D0)
    /* 6FB60 8007F360 D087A524 */  addiu      $a1, $a1, %lo(D_801587D0)
    /* 6FB64 8007F364 9987030C */  jal        func_800E1E64
    /* 6FB68 8007F368 21801102 */   addu      $s0, $s0, $s1
    /* 6FB6C 8007F36C 80801000 */  sll        $s0, $s0, 2
    /* 6FB70 8007F370 21801102 */  addu       $s0, $s0, $s1
    /* 6FB74 8007F374 40801000 */  sll        $s0, $s0, 1
    /* 6FB78 8007F378 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6FB7C 8007F37C 21083000 */  addu       $at, $at, $s0
    /* 6FB80 8007F380 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6FB84 8007F384 00000000 */  nop
    /* 6FB88 8007F388 80100300 */  sll        $v0, $v1, 2
    /* 6FB8C 8007F38C 21104300 */  addu       $v0, $v0, $v1
    /* 6FB90 8007F390 80100200 */  sll        $v0, $v0, 2
    /* 6FB94 8007F394 1180013C */  lui        $at, %hi(D_8010D28A)
    /* 6FB98 8007F398 21082200 */  addu       $at, $at, $v0
    /* 6FB9C 8007F39C 8AD22280 */  lb         $v0, %lo(D_8010D28A)($at)
    /* 6FBA0 8007F3A0 1180013C */  lui        $at, %hi(D_8010D6BE)
    /* 6FBA4 8007F3A4 21083000 */  addu       $at, $at, $s0
    /* 6FBA8 8007F3A8 BED62590 */  lbu        $a1, %lo(D_8010D6BE)($at)
    /* 6FBAC 8007F3AC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FBB0 8007F3B0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FBB4 8007F3B4 9C1B030C */  jal        func_800C6E70
    /* 6FBB8 8007F3B8 23284500 */   subu      $a1, $v0, $a1
    /* 6FBBC 8007F3BC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FBC0 8007F3C0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FBC4 8007F3C4 1680053C */  lui        $a1, %hi(D_801587D8)
    /* 6FBC8 8007F3C8 D887A524 */  addiu      $a1, $a1, %lo(D_801587D8)
    /* 6FBCC 8007F3CC 9987030C */  jal        func_800E1E64
    /* 6FBD0 8007F3D0 00000000 */   nop
    /* 6FBD4 8007F3D4 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6FBD8 8007F3D8 21083000 */  addu       $at, $at, $s0
    /* 6FBDC 8007F3DC BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6FBE0 8007F3E0 00000000 */  nop
    /* 6FBE4 8007F3E4 80100300 */  sll        $v0, $v1, 2
    /* 6FBE8 8007F3E8 21104300 */  addu       $v0, $v0, $v1
    /* 6FBEC 8007F3EC 80100200 */  sll        $v0, $v0, 2
    /* 6FBF0 8007F3F0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FBF4 8007F3F4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FBF8 8007F3F8 1180013C */  lui        $at, %hi(D_8010D28A)
    /* 6FBFC 8007F3FC 21082200 */  addu       $at, $at, $v0
    /* 6FC00 8007F400 8AD22580 */  lb         $a1, %lo(D_8010D28A)($at)
    /* 6FC04 8007F404 9C1B030C */  jal        func_800C6E70
    /* 6FC08 8007F408 00000000 */   nop
    /* 6FC0C 8007F40C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FC10 8007F410 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FC14 8007F414 CD1A030C */  jal        func_800C6B34
    /* 6FC18 8007F418 00000000 */   nop
    /* 6FC1C 8007F41C 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6FC20 8007F420 21083000 */  addu       $at, $at, $s0
    /* 6FC24 8007F424 C3D62380 */  lb         $v1, %lo(D_8010D6C3)($at)
    /* 6FC28 8007F428 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 6FC2C 8007F42C 03006210 */  beq        $v1, $v0, .L8007F43C
    /* 6FC30 8007F430 10006228 */   slti      $v0, $v1, 0x10
    /* 6FC34 8007F434 92004014 */  bnez       $v0, .L8007F680
    /* 6FC38 8007F438 00000000 */   nop
  .L8007F43C:
    /* 6FC3C 8007F43C F2EC010C */  jal        func_8007B3C8
    /* 6FC40 8007F440 21202002 */   addu      $a0, $s1, $zero
    /* 6FC44 8007F444 40181100 */  sll        $v1, $s1, 1
    /* 6FC48 8007F448 21187100 */  addu       $v1, $v1, $s1
    /* 6FC4C 8007F44C 80180300 */  sll        $v1, $v1, 2
    /* 6FC50 8007F450 21187100 */  addu       $v1, $v1, $s1
    /* 6FC54 8007F454 40180300 */  sll        $v1, $v1, 1
    /* 6FC58 8007F458 1180013C */  lui        $at, %hi(D_8010D6BC)
    /* 6FC5C 8007F45C 21082300 */  addu       $at, $at, $v1
    /* 6FC60 8007F460 BCD62390 */  lbu        $v1, %lo(D_8010D6BC)($at)
    /* 6FC64 8007F464 00000000 */  nop
    /* 6FC68 8007F468 23804300 */  subu       $s0, $v0, $v1
    /* 6FC6C 8007F46C 0900001E */  bgtz       $s0, .L8007F494
    /* 6FC70 8007F470 00000000 */   nop
    /* 6FC74 8007F474 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FC78 8007F478 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FC7C 8007F47C 0180053C */  lui        $a1, %hi(D_80010D94)
    /* 6FC80 8007F480 940DA524 */  addiu      $a1, $a1, %lo(D_80010D94)
    /* 6FC84 8007F484 9987030C */  jal        func_800E1E64
    /* 6FC88 8007F488 00000000 */   nop
    /* 6FC8C 8007F48C A3FD0108 */  j          .L8007F68C
    /* 6FC90 8007F490 2400A226 */   addiu     $v0, $s5, 0x24
  .L8007F494:
    /* 6FC94 8007F494 1280143C */  lui        $s4, %hi(D_8011A5C8)
    /* 6FC98 8007F498 C8A59426 */  addiu      $s4, $s4, %lo(D_8011A5C8)
    /* 6FC9C 8007F49C 00008292 */  lbu        $v0, 0x0($s4)
    /* 6FCA0 8007F4A0 00000000 */  nop
    /* 6FCA4 8007F4A4 1A000202 */  div        $zero, $s0, $v0
    /* 6FCA8 8007F4A8 02004014 */  bnez       $v0, .L8007F4B4
    /* 6FCAC 8007F4AC 00000000 */   nop
    /* 6FCB0 8007F4B0 0D000700 */  break      7
  .L8007F4B4:
    /* 6FCB4 8007F4B4 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 6FCB8 8007F4B8 04004114 */  bne        $v0, $at, .L8007F4CC
    /* 6FCBC 8007F4BC 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 6FCC0 8007F4C0 02000116 */  bne        $s0, $at, .L8007F4CC
    /* 6FCC4 8007F4C4 00000000 */   nop
    /* 6FCC8 8007F4C8 0D000600 */  break      6
  .L8007F4CC:
    /* 6FCCC 8007F4CC 12800000 */  mflo       $s0
    /* 6FCD0 8007F4D0 10980000 */  mfhi       $s3
    /* 6FCD4 8007F4D4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FCD8 8007F4D8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FCDC 8007F4DC 731B030C */  jal        func_800C6DCC
    /* 6FCE0 8007F4E0 0C000524 */   addiu     $a1, $zero, 0xC
    /* 6FCE4 8007F4E4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FCE8 8007F4E8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FCEC 8007F4EC F71A030C */  jal        func_800C6BDC
    /* 6FCF0 8007F4F0 00000000 */   nop
    /* 6FCF4 8007F4F4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FCF8 8007F4F8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FCFC 8007F4FC 9C1B030C */  jal        func_800C6E70
    /* 6FD00 8007F500 21280002 */   addu      $a1, $s0, $zero
    /* 6FD04 8007F504 15006012 */  beqz       $s3, .L8007F55C
    /* 6FD08 8007F508 40101100 */   sll       $v0, $s1, 1
    /* 6FD0C 8007F50C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FD10 8007F510 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FD14 8007F514 CD1A030C */  jal        func_800C6B34
    /* 6FD18 8007F518 00000000 */   nop
    /* 6FD1C 8007F51C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FD20 8007F520 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FD24 8007F524 9C1B030C */  jal        func_800C6E70
    /* 6FD28 8007F528 21286002 */   addu      $a1, $s3, $zero
    /* 6FD2C 8007F52C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FD30 8007F530 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FD34 8007F534 1680053C */  lui        $a1, %hi(D_801587D8)
    /* 6FD38 8007F538 D887A524 */  addiu      $a1, $a1, %lo(D_801587D8)
    /* 6FD3C 8007F53C 9987030C */  jal        func_800E1E64
    /* 6FD40 8007F540 00000000 */   nop
    /* 6FD44 8007F544 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FD48 8007F548 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FD4C 8007F54C 00008592 */  lbu        $a1, 0x0($s4)
    /* 6FD50 8007F550 9C1B030C */  jal        func_800C6E70
    /* 6FD54 8007F554 00000000 */   nop
    /* 6FD58 8007F558 40101100 */  sll        $v0, $s1, 1
  .L8007F55C:
    /* 6FD5C 8007F55C 21105100 */  addu       $v0, $v0, $s1
    /* 6FD60 8007F560 80100200 */  sll        $v0, $v0, 2
    /* 6FD64 8007F564 21105100 */  addu       $v0, $v0, $s1
    /* 6FD68 8007F568 40800200 */  sll        $s0, $v0, 1
    /* 6FD6C 8007F56C 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6FD70 8007F570 21083000 */  addu       $at, $at, $s0
    /* 6FD74 8007F574 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6FD78 8007F578 00000000 */  nop
    /* 6FD7C 8007F57C 80100300 */  sll        $v0, $v1, 2
    /* 6FD80 8007F580 21104300 */  addu       $v0, $v0, $v1
    /* 6FD84 8007F584 80100200 */  sll        $v0, $v0, 2
    /* 6FD88 8007F588 1180013C */  lui        $at, %hi(D_8010D287)
    /* 6FD8C 8007F58C 21082200 */  addu       $at, $at, $v0
    /* 6FD90 8007F590 87D22280 */  lb         $v0, %lo(D_8010D287)($at)
    /* 6FD94 8007F594 00000000 */  nop
    /* 6FD98 8007F598 3C004018 */  blez       $v0, .L8007F68C
    /* 6FD9C 8007F59C 2400A226 */   addiu     $v0, $s5, 0x24
    /* 6FDA0 8007F5A0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FDA4 8007F5A4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FDA8 8007F5A8 CD1A030C */  jal        func_800C6B34
    /* 6FDAC 8007F5AC 00000000 */   nop
    /* 6FDB0 8007F5B0 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FDB4 8007F5B4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FDB8 8007F5B8 151B030C */  jal        func_800C6C54
    /* 6FDBC 8007F5BC 00000000 */   nop
    /* 6FDC0 8007F5C0 F2EC010C */  jal        func_8007B3C8
    /* 6FDC4 8007F5C4 21202002 */   addu      $a0, $s1, $zero
    /* 6FDC8 8007F5C8 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6FDCC 8007F5CC 21083000 */  addu       $at, $at, $s0
    /* 6FDD0 8007F5D0 BAD62490 */  lbu        $a0, %lo(D_8010D6BA)($at)
    /* 6FDD4 8007F5D4 00000000 */  nop
    /* 6FDD8 8007F5D8 80180400 */  sll        $v1, $a0, 2
    /* 6FDDC 8007F5DC 21186400 */  addu       $v1, $v1, $a0
    /* 6FDE0 8007F5E0 80180300 */  sll        $v1, $v1, 2
    /* 6FDE4 8007F5E4 1180013C */  lui        $at, %hi(D_8010D287)
    /* 6FDE8 8007F5E8 21082300 */  addu       $at, $at, $v1
    /* 6FDEC 8007F5EC 87D22580 */  lb         $a1, %lo(D_8010D287)($at)
    /* 6FDF0 8007F5F0 1180013C */  lui        $at, %hi(D_8010D6C1)
    /* 6FDF4 8007F5F4 21083000 */  addu       $at, $at, $s0
    /* 6FDF8 8007F5F8 C1D62380 */  lb         $v1, %lo(D_8010D6C1)($at)
    /* 6FDFC 8007F5FC 00000000 */  nop
    /* 6FE00 8007F600 2328A300 */  subu       $a1, $a1, $v1
    /* 6FE04 8007F604 1800A200 */  mult       $a1, $v0
    /* 6FE08 8007F608 12280000 */  mflo       $a1
    /* 6FE0C 8007F60C 1180013C */  lui        $at, %hi(D_8010D6BC)
    /* 6FE10 8007F610 21083000 */  addu       $at, $at, $s0
    /* 6FE14 8007F614 BCD62290 */  lbu        $v0, %lo(D_8010D6BC)($at)
    /* 6FE18 8007F618 00000000 */  nop
    /* 6FE1C 8007F61C 2328A200 */  subu       $a1, $a1, $v0
    /* 6FE20 8007F620 1280023C */  lui        $v0, %hi(D_8011A5C8)
    /* 6FE24 8007F624 C8A54290 */  lbu        $v0, %lo(D_8011A5C8)($v0)
    /* 6FE28 8007F628 00000000 */  nop
    /* 6FE2C 8007F62C 1A00A200 */  div        $zero, $a1, $v0
    /* 6FE30 8007F630 02004014 */  bnez       $v0, .L8007F63C
    /* 6FE34 8007F634 00000000 */   nop
    /* 6FE38 8007F638 0D000700 */  break      7
  .L8007F63C:
    /* 6FE3C 8007F63C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 6FE40 8007F640 04004114 */  bne        $v0, $at, .L8007F654
    /* 6FE44 8007F644 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 6FE48 8007F648 0200A114 */  bne        $a1, $at, .L8007F654
    /* 6FE4C 8007F64C 00000000 */   nop
    /* 6FE50 8007F650 0D000600 */  break      6
  .L8007F654:
    /* 6FE54 8007F654 12280000 */  mflo       $a1
    /* 6FE58 8007F658 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FE5C 8007F65C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FE60 8007F660 9C1B030C */  jal        func_800C6E70
    /* 6FE64 8007F664 00000000 */   nop
    /* 6FE68 8007F668 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FE6C 8007F66C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FE70 8007F670 1F1B030C */  jal        func_800C6C7C
    /* 6FE74 8007F674 00000000 */   nop
    /* 6FE78 8007F678 A3FD0108 */  j          .L8007F68C
    /* 6FE7C 8007F67C 2400A226 */   addiu     $v0, $s5, 0x24
  .L8007F680:
    /* 6FE80 8007F680 FABE000C */  jal        func_8002FBE8
    /* 6FE84 8007F684 21202002 */   addu      $a0, $s1, $zero
    /* 6FE88 8007F688 2400A226 */  addiu      $v0, $s5, 0x24
  .L8007F68C:
    /* 6FE8C 8007F68C 1800A2A7 */  sh         $v0, 0x18($sp)
    /* 6FE90 8007F690 1A00B6A7 */  sh         $s6, 0x1A($sp)
    /* 6FE94 8007F694 40010224 */  addiu      $v0, $zero, 0x140
    /* 6FE98 8007F698 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* 6FE9C 8007F69C 18000224 */  addiu      $v0, $zero, 0x18
    /* 6FEA0 8007F6A0 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* 6FEA4 8007F6A4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6FEA8 8007F6A8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6FEAC 8007F6AC 1800A527 */  addiu      $a1, $sp, 0x18
    /* 6FEB0 8007F6B0 DC0F040C */  jal        func_80103F70
    /* 6FEB4 8007F6B4 10000624 */   addiu     $a2, $zero, 0x10
    /* 6FEB8 8007F6B8 80181200 */  sll        $v1, $s2, 2
    /* 6FEBC 8007F6BC 1180013C */  lui        $at, %hi(D_8010C094)
    /* 6FEC0 8007F6C0 21082300 */  addu       $at, $at, $v1
    /* 6FEC4 8007F6C4 94C022AC */  sw         $v0, %lo(D_8010C094)($at)
  .L8007F6C8:
    /* 6FEC8 8007F6C8 1180023C */  lui        $v0, %hi(D_8010C094)
    /* 6FECC 8007F6CC 94C04224 */  addiu      $v0, $v0, %lo(D_8010C094)
    /* 6FED0 8007F6D0 80801200 */  sll        $s0, $s2, 2
    /* 6FED4 8007F6D4 21800202 */  addu       $s0, $s0, $v0
    /* 6FED8 8007F6D8 0000048E */  lw         $a0, 0x0($s0)
    /* 6FEDC 8007F6DC 2400A526 */  addiu      $a1, $s5, 0x24
    /* 6FEE0 8007F6E0 9911040C */  jal        func_80104664
    /* 6FEE4 8007F6E4 2130C002 */   addu      $a2, $s6, $zero
    /* 6FEE8 8007F6E8 0000048E */  lw         $a0, 0x0($s0)
    /* 6FEEC 8007F6EC 7D11040C */  jal        func_801045F4
    /* 6FEF0 8007F6F0 00000000 */   nop
    /* 6FEF4 8007F6F4 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 6FEF8 8007F6F8 3800B68F */  lw         $s6, 0x38($sp)
    /* 6FEFC 8007F6FC 3400B58F */  lw         $s5, 0x34($sp)
    /* 6FF00 8007F700 3000B48F */  lw         $s4, 0x30($sp)
    /* 6FF04 8007F704 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 6FF08 8007F708 2800B28F */  lw         $s2, 0x28($sp)
    /* 6FF0C 8007F70C 2400B18F */  lw         $s1, 0x24($sp)
    /* 6FF10 8007F710 2000B08F */  lw         $s0, 0x20($sp)
    /* 6FF14 8007F714 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 6FF18 8007F718 0800E003 */  jr         $ra
    /* 6FF1C 8007F71C 00000000 */   nop
endlabel func_8007EFE0
