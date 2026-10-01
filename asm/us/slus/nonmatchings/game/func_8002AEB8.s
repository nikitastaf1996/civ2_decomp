.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002AEB8, 0x338

glabel func_8002AEB8
    /* 1B6B8 8002AEB8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1B6BC 8002AEBC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 1B6C0 8002AEC0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1B6C4 8002AEC4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1B6C8 8002AEC8 307B000C */  jal        func_8001ECC0
    /* 1B6CC 8002AECC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1B6D0 8002AED0 7F000424 */  addiu      $a0, $zero, 0x7F
    /* 1B6D4 8002AED4 8BF7000C */  jal        SsSetMVol
    /* 1B6D8 8002AED8 7F000524 */   addiu     $a1, $zero, 0x7F
    /* 1B6DC 8002AEDC CE6D000C */  jal        func_8001B738
    /* 1B6E0 8002AEE0 0C000424 */   addiu     $a0, $zero, 0xC
    /* 1B6E4 8002AEE4 B40B80A7 */  sh         $zero, %gp_rel(D_800552C4)($gp)
    /* 1B6E8 8002AEE8 B60B80A7 */  sh         $zero, %gp_rel(D_800552C6)($gp)
    /* 1B6EC 8002AEEC B80B80A7 */  sh         $zero, %gp_rel(D_800552C8)($gp)
    /* 1B6F0 8002AEF0 BA0B80A3 */  sb         $zero, %gp_rel(D_800552CA)($gp)
    /* 1B6F4 8002AEF4 BB0B80A3 */  sb         $zero, %gp_rel(D_800552CB)($gp)
    /* 1B6F8 8002AEF8 BC0B80A3 */  sb         $zero, %gp_rel(D_800552CC)($gp)
    /* 1B6FC 8002AEFC 21800000 */  addu       $s0, $zero, $zero
    /* 1B700 8002AF00 21900000 */  addu       $s2, $zero, $zero
    /* 1B704 8002AF04 1380113C */  lui        $s1, %hi(D_8012A0E0)
    /* 1B708 8002AF08 E0A03126 */  addiu      $s1, $s1, %lo(D_8012A0E0)
    /* 1B70C 8002AF0C 02001026 */  addiu      $s0, $s0, 0x2
  .L8002AF10:
    /* 1B710 8002AF10 7E0130A2 */  sb         $s0, 0x17E($s1)
    /* 1B714 8002AF14 7D0130A2 */  sb         $s0, 0x17D($s1)
    /* 1B718 8002AF18 1380013C */  lui        $at, %hi(D_8012A25C)
    /* 1B71C 8002AF1C 5CA230A0 */  sb         $s0, %lo(D_8012A25C)($at)
    /* 1B720 8002AF20 A20130A2 */  sb         $s0, 0x1A2($s1)
    /* 1B724 8002AF24 A10130A2 */  sb         $s0, 0x1A1($s1)
    /* 1B728 8002AF28 1380013C */  lui        $at, %hi(D_8012A280)
    /* 1B72C 8002AF2C 80A230A0 */  sb         $s0, %lo(D_8012A280)($at)
    /* 1B730 8002AF30 E976000C */  jal        func_8001DBA4
    /* 1B734 8002AF34 01000424 */   addiu     $a0, $zero, 0x1
    /* 1B738 8002AF38 01004226 */  addiu      $v0, $s2, 0x1
    /* 1B73C 8002AF3C 21904000 */  addu       $s2, $v0, $zero
    /* 1B740 8002AF40 00140200 */  sll        $v0, $v0, 16
    /* 1B744 8002AF44 03140200 */  sra        $v0, $v0, 16
    /* 1B748 8002AF48 40004228 */  slti       $v0, $v0, 0x40
    /* 1B74C 8002AF4C F0FF4014 */  bnez       $v0, .L8002AF10
    /* 1B750 8002AF50 02001026 */   addiu     $s0, $s0, 0x2
    /* 1B754 8002AF54 21800000 */  addu       $s0, $zero, $zero
    /* 1B758 8002AF58 21900000 */  addu       $s2, $zero, $zero
    /* 1B75C 8002AF5C 1380113C */  lui        $s1, %hi(D_8012A0E0)
    /* 1B760 8002AF60 E0A03126 */  addiu      $s1, $s1, %lo(D_8012A0E0)
    /* 1B764 8002AF64 01001026 */  addiu      $s0, $s0, 0x1
  .L8002AF68:
    /* 1B768 8002AF68 C60130A2 */  sb         $s0, 0x1C6($s1)
    /* 1B76C 8002AF6C C50130A2 */  sb         $s0, 0x1C5($s1)
    /* 1B770 8002AF70 1380013C */  lui        $at, %hi(D_8012A2A4)
    /* 1B774 8002AF74 A4A230A0 */  sb         $s0, %lo(D_8012A2A4)($at)
    /* 1B778 8002AF78 E976000C */  jal        func_8001DBA4
    /* 1B77C 8002AF7C 01000424 */   addiu     $a0, $zero, 0x1
    /* 1B780 8002AF80 01004226 */  addiu      $v0, $s2, 0x1
    /* 1B784 8002AF84 21904000 */  addu       $s2, $v0, $zero
    /* 1B788 8002AF88 00140200 */  sll        $v0, $v0, 16
    /* 1B78C 8002AF8C 03140200 */  sra        $v0, $v0, 16
    /* 1B790 8002AF90 80004228 */  slti       $v0, $v0, 0x80
    /* 1B794 8002AF94 F4FF4014 */  bnez       $v0, .L8002AF68
    /* 1B798 8002AF98 01001026 */   addiu     $s0, $s0, 0x1
    /* 1B79C 8002AF9C 21800000 */  addu       $s0, $zero, $zero
    /* 1B7A0 8002AFA0 21900000 */  addu       $s2, $zero, $zero
    /* 1B7A4 8002AFA4 1380113C */  lui        $s1, %hi(D_8012A0E0)
    /* 1B7A8 8002AFA8 E0A03126 */  addiu      $s1, $s1, %lo(D_8012A0E0)
    /* 1B7AC 8002AFAC 01001026 */  addiu      $s0, $s0, 0x1
  .L8002AFB0:
    /* 1B7B0 8002AFB0 EA0130A2 */  sb         $s0, 0x1EA($s1)
    /* 1B7B4 8002AFB4 E90130A2 */  sb         $s0, 0x1E9($s1)
    /* 1B7B8 8002AFB8 1380013C */  lui        $at, %hi(D_8012A2C8)
    /* 1B7BC 8002AFBC C8A230A0 */  sb         $s0, %lo(D_8012A2C8)($at)
    /* 1B7C0 8002AFC0 0E0230A2 */  sb         $s0, 0x20E($s1)
    /* 1B7C4 8002AFC4 0D0230A2 */  sb         $s0, 0x20D($s1)
    /* 1B7C8 8002AFC8 1380013C */  lui        $at, %hi(D_8012A2EC)
    /* 1B7CC 8002AFCC ECA230A0 */  sb         $s0, %lo(D_8012A2EC)($at)
    /* 1B7D0 8002AFD0 320230A2 */  sb         $s0, 0x232($s1)
    /* 1B7D4 8002AFD4 310230A2 */  sb         $s0, 0x231($s1)
    /* 1B7D8 8002AFD8 1380013C */  lui        $at, %hi(D_8012A310)
    /* 1B7DC 8002AFDC 10A330A0 */  sb         $s0, %lo(D_8012A310)($at)
    /* 1B7E0 8002AFE0 560230A2 */  sb         $s0, 0x256($s1)
    /* 1B7E4 8002AFE4 550230A2 */  sb         $s0, 0x255($s1)
    /* 1B7E8 8002AFE8 1380013C */  lui        $at, %hi(D_8012A334)
    /* 1B7EC 8002AFEC 34A330A0 */  sb         $s0, %lo(D_8012A334)($at)
    /* 1B7F0 8002AFF0 E976000C */  jal        func_8001DBA4
    /* 1B7F4 8002AFF4 01000424 */   addiu     $a0, $zero, 0x1
    /* 1B7F8 8002AFF8 01004226 */  addiu      $v0, $s2, 0x1
    /* 1B7FC 8002AFFC 21904000 */  addu       $s2, $v0, $zero
    /* 1B800 8002B000 00140200 */  sll        $v0, $v0, 16
    /* 1B804 8002B004 03140200 */  sra        $v0, $v0, 16
    /* 1B808 8002B008 80004228 */  slti       $v0, $v0, 0x80
    /* 1B80C 8002B00C E8FF4014 */  bnez       $v0, .L8002AFB0
    /* 1B810 8002B010 01001026 */   addiu     $s0, $s0, 0x1
    /* 1B814 8002B014 0580033C */  lui        $v1, %hi(D_8005650C)
    /* 1B818 8002B018 0C656394 */  lhu        $v1, %lo(D_8005650C)($v1)
    /* 1B81C 8002B01C 02000224 */  addiu      $v0, $zero, 0x2
    /* 1B820 8002B020 17006214 */  bne        $v1, $v0, .L8002B080
    /* 1B824 8002B024 FFFF1026 */   addiu     $s0, $s0, -0x1
    /* 1B828 8002B028 2E7C000C */  jal        func_8001F0B8
    /* 1B82C 8002B02C 01000424 */   addiu     $a0, $zero, 0x1
    /* 1B830 8002B030 21200000 */  addu       $a0, $zero, $zero
    /* 1B834 8002B034 03000524 */  addiu      $a1, $zero, 0x3
    /* 1B838 8002B038 A07A000C */  jal        func_8001EA80
    /* 1B83C 8002B03C 08000624 */   addiu     $a2, $zero, 0x8
    /* 1B840 8002B040 600B828F */  lw         $v0, %gp_rel(D_80055270)($gp)
    /* 1B844 8002B044 00000000 */  nop
    /* 1B848 8002B048 05004010 */  beqz       $v0, .L8002B060
    /* 1B84C 8002B04C FF000224 */   addiu     $v0, $zero, 0xFF
    /* 1B850 8002B050 0580033C */  lui        $v1, %hi(D_80056514)
    /* 1B854 8002B054 1465638C */  lw         $v1, %lo(D_80056514)($v1)
    /* 1B858 8002B058 71AC0008 */  j          .L8002B1C4
    /* 1B85C 8002B05C 040062A4 */   sh        $v0, 0x4($v1)
  .L8002B060:
    /* 1B860 8002B060 03000424 */  addiu      $a0, $zero, 0x3
    /* 1B864 8002B064 04000524 */  addiu      $a1, $zero, 0x4
    /* 1B868 8002B068 A07A000C */  jal        func_8001EA80
    /* 1B86C 8002B06C 08000624 */   addiu     $a2, $zero, 0x8
    /* 1B870 8002B070 1E7E000C */  jal        func_8001F878
    /* 1B874 8002B074 01000424 */   addiu     $a0, $zero, 0x1
    /* 1B878 8002B078 30AC0008 */  j          .L8002B0C0
    /* 1B87C 8002B07C 00000000 */   nop
  .L8002B080:
    /* 1B880 8002B080 2E7C000C */  jal        func_8001F0B8
    /* 1B884 8002B084 01000424 */   addiu     $a0, $zero, 0x1
    /* 1B888 8002B088 21200000 */  addu       $a0, $zero, $zero
    /* 1B88C 8002B08C 03000524 */  addiu      $a1, $zero, 0x3
    /* 1B890 8002B090 A07A000C */  jal        func_8001EA80
    /* 1B894 8002B094 08000624 */   addiu     $a2, $zero, 0x8
    /* 1B898 8002B098 1E7E000C */  jal        func_8001F878
    /* 1B89C 8002B09C 01000424 */   addiu     $a0, $zero, 0x1
    /* 1B8A0 8002B0A0 600B828F */  lw         $v0, %gp_rel(D_80055270)($gp)
    /* 1B8A4 8002B0A4 00000000 */  nop
    /* 1B8A8 8002B0A8 05004010 */  beqz       $v0, .L8002B0C0
    /* 1B8AC 8002B0AC FF000224 */   addiu     $v0, $zero, 0xFF
    /* 1B8B0 8002B0B0 0580033C */  lui        $v1, %hi(D_80056514)
    /* 1B8B4 8002B0B4 1465638C */  lw         $v1, %lo(D_80056514)($v1)
    /* 1B8B8 8002B0B8 71AC0008 */  j          .L8002B1C4
    /* 1B8BC 8002B0BC 040062A4 */   sh        $v0, 0x4($v1)
  .L8002B0C0:
    /* 1B8C0 8002B0C0 4088000C */  jal        func_80022100
    /* 1B8C4 8002B0C4 00000000 */   nop
    /* 1B8C8 8002B0C8 0580023C */  lui        $v0, %hi(D_80056514)
    /* 1B8CC 8002B0CC 1465428C */  lw         $v0, %lo(D_80056514)($v0)
    /* 1B8D0 8002B0D0 00000000 */  nop
    /* 1B8D4 8002B0D4 04004394 */  lhu        $v1, 0x4($v0)
    /* 1B8D8 8002B0D8 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1B8DC 8002B0DC 39006210 */  beq        $v1, $v0, .L8002B1C4
    /* 1B8E0 8002B0E0 00000000 */   nop
  .L8002B0E4:
    /* 1B8E4 8002B0E4 EA8D000C */  jal        func_800237A8
    /* 1B8E8 8002B0E8 00000000 */   nop
    /* 1B8EC 8002B0EC 0580023C */  lui        $v0, %hi(D_80056514)
    /* 1B8F0 8002B0F0 1465428C */  lw         $v0, %lo(D_80056514)($v0)
    /* 1B8F4 8002B0F4 00000000 */  nop
    /* 1B8F8 8002B0F8 06004394 */  lhu        $v1, 0x6($v0)
    /* 1B8FC 8002B0FC FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1B900 8002B100 EFFF6210 */  beq        $v1, $v0, .L8002B0C0
    /* 1B904 8002B104 00000000 */   nop
  .L8002B108:
    /* 1B908 8002B108 8A91000C */  jal        func_80024628
    /* 1B90C 8002B10C 00000000 */   nop
    /* 1B910 8002B110 0580023C */  lui        $v0, %hi(D_80056514)
    /* 1B914 8002B114 1465428C */  lw         $v0, %lo(D_80056514)($v0)
    /* 1B918 8002B118 00000000 */  nop
    /* 1B91C 8002B11C 08004394 */  lhu        $v1, 0x8($v0)
    /* 1B920 8002B120 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1B924 8002B124 EFFF6210 */  beq        $v1, $v0, .L8002B0E4
    /* 1B928 8002B128 00000000 */   nop
  .L8002B12C:
    /* 1B92C 8002B12C 0D96000C */  jal        func_80025834
    /* 1B930 8002B130 00000000 */   nop
    /* 1B934 8002B134 0580023C */  lui        $v0, %hi(D_80056514)
    /* 1B938 8002B138 1465428C */  lw         $v0, %lo(D_80056514)($v0)
    /* 1B93C 8002B13C 00000000 */  nop
    /* 1B940 8002B140 0A004394 */  lhu        $v1, 0xA($v0)
    /* 1B944 8002B144 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1B948 8002B148 EFFF6210 */  beq        $v1, $v0, .L8002B108
    /* 1B94C 8002B14C 00000000 */   nop
  .L8002B150:
    /* 1B950 8002B150 F497000C */  jal        func_80025FD0
    /* 1B954 8002B154 00000000 */   nop
    /* 1B958 8002B158 0580023C */  lui        $v0, %hi(D_80056514)
    /* 1B95C 8002B15C 1465428C */  lw         $v0, %lo(D_80056514)($v0)
    /* 1B960 8002B160 00000000 */  nop
    /* 1B964 8002B164 0C004394 */  lhu        $v1, 0xC($v0)
    /* 1B968 8002B168 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 1B96C 8002B16C EFFF6210 */  beq        $v1, $v0, .L8002B12C
    /* 1B970 8002B170 00000000 */   nop
  .L8002B174:
    /* 1B974 8002B174 BBA1000C */  jal        func_800286EC
    /* 1B978 8002B178 FF001024 */   addiu     $s0, $zero, 0xFF
    /* 1B97C 8002B17C 0580023C */  lui        $v0, %hi(D_80056514)
    /* 1B980 8002B180 1465428C */  lw         $v0, %lo(D_80056514)($v0)
    /* 1B984 8002B184 00000000 */  nop
    /* 1B988 8002B188 0E004294 */  lhu        $v0, 0xE($v0)
    /* 1B98C 8002B18C 00000000 */  nop
    /* 1B990 8002B190 EFFF5010 */  beq        $v0, $s0, .L8002B150
    /* 1B994 8002B194 00000000 */   nop
    /* 1B998 8002B198 CCA5000C */  jal        func_80029730
    /* 1B99C 8002B19C 00000000 */   nop
    /* 1B9A0 8002B1A0 0580023C */  lui        $v0, %hi(D_80056514)
    /* 1B9A4 8002B1A4 1465428C */  lw         $v0, %lo(D_80056514)($v0)
    /* 1B9A8 8002B1A8 00000000 */  nop
    /* 1B9AC 8002B1AC 10004294 */  lhu        $v0, 0x10($v0)
    /* 1B9B0 8002B1B0 00000000 */  nop
    /* 1B9B4 8002B1B4 EFFF5010 */  beq        $v0, $s0, .L8002B174
    /* 1B9B8 8002B1B8 00000000 */   nop
    /* 1B9BC 8002B1BC 9DAB000C */  jal        func_8002AE74
    /* 1B9C0 8002B1C0 00000000 */   nop
  .L8002B1C4:
    /* 1B9C4 8002B1C4 087B000C */  jal        func_8001EC20
    /* 1B9C8 8002B1C8 04000424 */   addiu     $a0, $zero, 0x4
    /* 1B9CC 8002B1CC FC6D000C */  jal        func_8001B7F0
    /* 1B9D0 8002B1D0 0C000424 */   addiu     $a0, $zero, 0xC
    /* 1B9D4 8002B1D4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 1B9D8 8002B1D8 1800B28F */  lw         $s2, 0x18($sp)
    /* 1B9DC 8002B1DC 1400B18F */  lw         $s1, 0x14($sp)
    /* 1B9E0 8002B1E0 1000B08F */  lw         $s0, 0x10($sp)
    /* 1B9E4 8002B1E4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1B9E8 8002B1E8 0800E003 */  jr         $ra
    /* 1B9EC 8002B1EC 00000000 */   nop
endlabel func_8002AEB8
