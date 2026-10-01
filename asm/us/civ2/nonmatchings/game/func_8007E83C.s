.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007E83C, 0x2BC

glabel func_8007E83C
    /* 6F03C 8007E83C B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 6F040 8007E840 4400BFAF */  sw         $ra, 0x44($sp)
    /* 6F044 8007E844 4000BEAF */  sw         $fp, 0x40($sp)
    /* 6F048 8007E848 3C00B7AF */  sw         $s7, 0x3C($sp)
    /* 6F04C 8007E84C 3800B6AF */  sw         $s6, 0x38($sp)
    /* 6F050 8007E850 3400B5AF */  sw         $s5, 0x34($sp)
    /* 6F054 8007E854 3000B4AF */  sw         $s4, 0x30($sp)
    /* 6F058 8007E858 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 6F05C 8007E85C 2800B2AF */  sw         $s2, 0x28($sp)
    /* 6F060 8007E860 2400B1AF */  sw         $s1, 0x24($sp)
    /* 6F064 8007E864 2000B0AF */  sw         $s0, 0x20($sp)
    /* 6F068 8007E868 21808000 */  addu       $s0, $a0, $zero
    /* 6F06C 8007E86C 0F271424 */  addiu      $s4, $zero, 0x270F
    /* 6F070 8007E870 FFFF1324 */  addiu      $s3, $zero, -0x1
    /* 6F074 8007E874 1680173C */  lui        $s7, %hi(D_80158886)
    /* 6F078 8007E878 8688F786 */  lh         $s7, %lo(D_80158886)($s7)
    /* 6F07C 8007E87C 1680153C */  lui        $s5, %hi(D_80158888)
    /* 6F080 8007E880 8888B586 */  lh         $s5, %lo(D_80158888)($s5)
    /* 6F084 8007E884 2B000006 */  bltz       $s0, .L8007E934
    /* 6F088 8007E888 FFFF1624 */   addiu     $s6, $zero, -0x1
    /* 6F08C 8007E88C 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 6F090 8007E890 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 6F094 8007E894 00000000 */  nop
    /* 6F098 8007E898 2A100202 */  slt        $v0, $s0, $v0
    /* 6F09C 8007E89C 25004010 */  beqz       $v0, .L8007E934
    /* 6F0A0 8007E8A0 40101000 */   sll       $v0, $s0, 1
    /* 6F0A4 8007E8A4 21105000 */  addu       $v0, $v0, $s0
    /* 6F0A8 8007E8A8 80100200 */  sll        $v0, $v0, 2
    /* 6F0AC 8007E8AC 21105000 */  addu       $v0, $v0, $s0
    /* 6F0B0 8007E8B0 40100200 */  sll        $v0, $v0, 1
    /* 6F0B4 8007E8B4 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 6F0B8 8007E8B8 21082200 */  addu       $at, $at, $v0
    /* 6F0BC 8007E8BC BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* 6F0C0 8007E8C0 1680023C */  lui        $v0, %hi(D_8015896C)
    /* 6F0C4 8007E8C4 6C89428C */  lw         $v0, %lo(D_8015896C)($v0)
    /* 6F0C8 8007E8C8 00000000 */  nop
    /* 6F0CC 8007E8CC 08006214 */  bne        $v1, $v0, .L8007E8F0
    /* 6F0D0 8007E8D0 00000000 */   nop
    /* 6F0D4 8007E8D4 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 6F0D8 8007E8D8 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 6F0DC 8007E8DC 00000000 */  nop
    /* 6F0E0 8007E8E0 08004014 */  bnez       $v0, .L8007E904
    /* 6F0E4 8007E8E4 40101000 */   sll       $v0, $s0, 1
    /* 6F0E8 8007E8E8 4EFA0108 */  j          .L8007E938
    /* 6F0EC 8007E8EC 21900000 */   addu      $s2, $zero, $zero
  .L8007E8F0:
    /* 6F0F0 8007E8F0 1280023C */  lui        $v0, %hi(D_8011A26F)
    /* 6F0F4 8007E8F4 6FA24280 */  lb         $v0, %lo(D_8011A26F)($v0)
    /* 6F0F8 8007E8F8 00000000 */  nop
    /* 6F0FC 8007E8FC 0D004010 */  beqz       $v0, .L8007E934
    /* 6F100 8007E900 40101000 */   sll       $v0, $s0, 1
  .L8007E904:
    /* 6F104 8007E904 21105000 */  addu       $v0, $v0, $s0
    /* 6F108 8007E908 80100200 */  sll        $v0, $v0, 2
    /* 6F10C 8007E90C 21105000 */  addu       $v0, $v0, $s0
    /* 6F110 8007E910 40100200 */  sll        $v0, $v0, 1
    /* 6F114 8007E914 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6F118 8007E918 21082200 */  addu       $at, $at, $v0
    /* 6F11C 8007E91C B4D63784 */  lh         $s7, %lo(D_8010D6B4)($at)
    /* 6F120 8007E920 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6F124 8007E924 21082200 */  addu       $at, $at, $v0
    /* 6F128 8007E928 B6D63584 */  lh         $s5, %lo(D_8010D6B6)($at)
    /* 6F12C 8007E92C 1280163C */  lui        $s6, %hi(D_8011A268)
    /* 6F130 8007E930 68A2D686 */  lh         $s6, %lo(D_8011A268)($s6)
  .L8007E934:
    /* 6F134 8007E934 21900000 */  addu       $s2, $zero, $zero
  .L8007E938:
    /* 6F138 8007E938 FFBF1E24 */  addiu      $fp, $zero, -0x4001
  .L8007E93C:
    /* 6F13C 8007E93C 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 6F140 8007E940 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 6F144 8007E944 00000000 */  nop
    /* 6F148 8007E948 3B004018 */  blez       $v0, .L8007EA38
    /* 6F14C 8007E94C 21800000 */   addu      $s0, $zero, $zero
  .L8007E950:
    /* 6F150 8007E950 ABF9010C */  jal        func_8007E6AC
    /* 6F154 8007E954 21200002 */   addu      $a0, $s0, $zero
    /* 6F158 8007E958 30004010 */  beqz       $v0, .L8007EA1C
    /* 6F15C 8007E95C 40101000 */   sll       $v0, $s0, 1
    /* 6F160 8007E960 21105000 */  addu       $v0, $v0, $s0
    /* 6F164 8007E964 80100200 */  sll        $v0, $v0, 2
    /* 6F168 8007E968 21105000 */  addu       $v0, $v0, $s0
    /* 6F16C 8007E96C 40880200 */  sll        $s1, $v0, 1
    /* 6F170 8007E970 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 6F174 8007E974 21083100 */  addu       $at, $at, $s1
    /* 6F178 8007E978 B8D62294 */  lhu        $v0, %lo(D_8010D6B8)($at)
    /* 6F17C 8007E97C 00000000 */  nop
    /* 6F180 8007E980 00404230 */  andi       $v0, $v0, 0x4000
    /* 6F184 8007E984 25004014 */  bnez       $v0, .L8007EA1C
    /* 6F188 8007E988 2120E002 */   addu      $a0, $s7, $zero
    /* 6F18C 8007E98C 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6F190 8007E990 21083100 */  addu       $at, $at, $s1
    /* 6F194 8007E994 B4D62684 */  lh         $a2, %lo(D_8010D6B4)($at)
    /* 6F198 8007E998 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6F19C 8007E99C 21083100 */  addu       $at, $at, $s1
    /* 6F1A0 8007E9A0 B6D62784 */  lh         $a3, %lo(D_8010D6B6)($at)
    /* 6F1A4 8007E9A4 A73B030C */  jal        func_800CEE9C
    /* 6F1A8 8007E9A8 2128A002 */   addu      $a1, $s5, $zero
    /* 6F1AC 8007E9AC 40280200 */  sll        $a1, $v0, 1
    /* 6F1B0 8007E9B0 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6F1B4 8007E9B4 21083100 */  addu       $at, $at, $s1
    /* 6F1B8 8007E9B8 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6F1BC 8007E9BC 00000000 */  nop
    /* 6F1C0 8007E9C0 80100300 */  sll        $v0, $v1, 2
    /* 6F1C4 8007E9C4 21104300 */  addu       $v0, $v0, $v1
    /* 6F1C8 8007E9C8 80100200 */  sll        $v0, $v0, 2
    /* 6F1CC 8007E9CC 1180013C */  lui        $at, %hi(D_8010D285)
    /* 6F1D0 8007E9D0 21082200 */  addu       $at, $at, $v0
    /* 6F1D4 8007E9D4 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* 6F1D8 8007E9D8 02000224 */  addiu      $v0, $zero, 0x2
    /* 6F1DC 8007E9DC 02006210 */  beq        $v1, $v0, .L8007E9E8
    /* 6F1E0 8007E9E0 0100A424 */   addiu     $a0, $a1, 0x1
    /* 6F1E4 8007E9E4 2120A000 */  addu       $a0, $a1, $zero
  .L8007E9E8:
    /* 6F1E8 8007E9E8 2A109400 */  slt        $v0, $a0, $s4
    /* 6F1EC 8007E9EC 03004010 */  beqz       $v0, .L8007E9FC
    /* 6F1F0 8007E9F0 00000000 */   nop
    /* 6F1F4 8007E9F4 86FA0108 */  j          .L8007EA18
    /* 6F1F8 8007E9F8 21A08000 */   addu      $s4, $a0, $zero
  .L8007E9FC:
    /* 6F1FC 8007E9FC 07009414 */  bne        $a0, $s4, .L8007EA1C
    /* 6F200 8007EA00 00000000 */   nop
    /* 6F204 8007EA04 1280023C */  lui        $v0, %hi(D_8011A268)
    /* 6F208 8007EA08 68A24284 */  lh         $v0, %lo(D_8011A268)($v0)
    /* 6F20C 8007EA0C 00000000 */  nop
    /* 6F210 8007EA10 02000216 */  bne        $s0, $v0, .L8007EA1C
    /* 6F214 8007EA14 00000000 */   nop
  .L8007EA18:
    /* 6F218 8007EA18 21980002 */  addu       $s3, $s0, $zero
  .L8007EA1C:
    /* 6F21C 8007EA1C 01001026 */  addiu      $s0, $s0, 0x1
    /* 6F220 8007EA20 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 6F224 8007EA24 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 6F228 8007EA28 00000000 */  nop
    /* 6F22C 8007EA2C 2A100202 */  slt        $v0, $s0, $v0
    /* 6F230 8007EA30 C7FF4014 */  bnez       $v0, .L8007E950
    /* 6F234 8007EA34 00000000 */   nop
  .L8007EA38:
    /* 6F238 8007EA38 22006106 */  bgez       $s3, .L8007EAC4
    /* 6F23C 8007EA3C 21106002 */   addu      $v0, $s3, $zero
    /* 6F240 8007EA40 1280023C */  lui        $v0, %hi(D_8011A280)
    /* 6F244 8007EA44 80A24284 */  lh         $v0, %lo(D_8011A280)($v0)
    /* 6F248 8007EA48 00000000 */  nop
    /* 6F24C 8007EA4C 19004018 */  blez       $v0, .L8007EAB4
    /* 6F250 8007EA50 21800000 */   addu      $s0, $zero, $zero
    /* 6F254 8007EA54 1280043C */  lui        $a0, %hi(D_8011A280)
    /* 6F258 8007EA58 80A28424 */  addiu      $a0, $a0, %lo(D_8011A280)
  .L8007EA5C:
    /* 6F25C 8007EA5C 03004016 */  bnez       $s2, .L8007EA6C
    /* 6F260 8007EA60 40101000 */   sll       $v0, $s0, 1
    /* 6F264 8007EA64 0D001612 */  beq        $s0, $s6, .L8007EA9C
    /* 6F268 8007EA68 00000000 */   nop
  .L8007EA6C:
    /* 6F26C 8007EA6C 21105000 */  addu       $v0, $v0, $s0
    /* 6F270 8007EA70 80100200 */  sll        $v0, $v0, 2
    /* 6F274 8007EA74 21105000 */  addu       $v0, $v0, $s0
    /* 6F278 8007EA78 40100200 */  sll        $v0, $v0, 1
    /* 6F27C 8007EA7C 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 6F280 8007EA80 21082200 */  addu       $at, $at, $v0
    /* 6F284 8007EA84 B8D62394 */  lhu        $v1, %lo(D_8010D6B8)($at)
    /* 6F288 8007EA88 00000000 */  nop
    /* 6F28C 8007EA8C 24187E00 */  and        $v1, $v1, $fp
    /* 6F290 8007EA90 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 6F294 8007EA94 21082200 */  addu       $at, $at, $v0
    /* 6F298 8007EA98 B8D623A4 */  sh         $v1, %lo(D_8010D6B8)($at)
  .L8007EA9C:
    /* 6F29C 8007EA9C 01001026 */  addiu      $s0, $s0, 0x1
    /* 6F2A0 8007EAA0 00008284 */  lh         $v0, 0x0($a0)
    /* 6F2A4 8007EAA4 00000000 */  nop
    /* 6F2A8 8007EAA8 2A100202 */  slt        $v0, $s0, $v0
    /* 6F2AC 8007EAAC EBFF4014 */  bnez       $v0, .L8007EA5C
    /* 6F2B0 8007EAB0 00000000 */   nop
  .L8007EAB4:
    /* 6F2B4 8007EAB4 01005226 */  addiu      $s2, $s2, 0x1
    /* 6F2B8 8007EAB8 0300422A */  slti       $v0, $s2, 0x3
    /* 6F2BC 8007EABC 9FFF4014 */  bnez       $v0, .L8007E93C
    /* 6F2C0 8007EAC0 21106002 */   addu      $v0, $s3, $zero
  .L8007EAC4:
    /* 6F2C4 8007EAC4 4400BF8F */  lw         $ra, 0x44($sp)
    /* 6F2C8 8007EAC8 4000BE8F */  lw         $fp, 0x40($sp)
    /* 6F2CC 8007EACC 3C00B78F */  lw         $s7, 0x3C($sp)
    /* 6F2D0 8007EAD0 3800B68F */  lw         $s6, 0x38($sp)
    /* 6F2D4 8007EAD4 3400B58F */  lw         $s5, 0x34($sp)
    /* 6F2D8 8007EAD8 3000B48F */  lw         $s4, 0x30($sp)
    /* 6F2DC 8007EADC 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 6F2E0 8007EAE0 2800B28F */  lw         $s2, 0x28($sp)
    /* 6F2E4 8007EAE4 2400B18F */  lw         $s1, 0x24($sp)
    /* 6F2E8 8007EAE8 2000B08F */  lw         $s0, 0x20($sp)
    /* 6F2EC 8007EAEC 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 6F2F0 8007EAF0 0800E003 */  jr         $ra
    /* 6F2F4 8007EAF4 00000000 */   nop
endlabel func_8007E83C
