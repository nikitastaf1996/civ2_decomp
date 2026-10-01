.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CC03C, 0x494

glabel func_800CC03C
    /* BC83C 800CC03C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* BC840 800CC040 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* BC844 800CC044 3800B6AF */  sw         $s6, 0x38($sp)
    /* BC848 800CC048 3400B5AF */  sw         $s5, 0x34($sp)
    /* BC84C 800CC04C 3000B4AF */  sw         $s4, 0x30($sp)
    /* BC850 800CC050 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* BC854 800CC054 2800B2AF */  sw         $s2, 0x28($sp)
    /* BC858 800CC058 2400B1AF */  sw         $s1, 0x24($sp)
    /* BC85C 800CC05C 2000B0AF */  sw         $s0, 0x20($sp)
    /* BC860 800CC060 21908000 */  addu       $s2, $a0, $zero
    /* BC864 800CC064 180D80AF */  sw         $zero, %gp_rel(D_801591F0)($gp)
    /* BC868 800CC068 48014386 */  lh         $v1, 0x148($s2)
    /* BC86C 800CC06C 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* BC870 800CC070 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* BC874 800CC074 00000000 */  nop
    /* BC878 800CC078 0A016214 */  bne        $v1, $v0, .L800CC4A4
    /* BC87C 800CC07C 00000000 */   nop
    /* BC880 800CC080 5C014486 */  lh         $a0, 0x15C($s2)
    /* BC884 800CC084 00000000 */  nop
    /* BC888 800CC088 03008010 */  beqz       $a0, .L800CC098
    /* BC88C 800CC08C 00000000 */   nop
    /* BC890 800CC090 7DF3030C */  jal        func_800FCDF4
    /* BC894 800CC094 00000000 */   nop
  .L800CC098:
    /* BC898 800CC098 FC08438E */  lw         $v1, 0x8FC($s2)
    /* BC89C 800CC09C 03000224 */  addiu      $v0, $zero, 0x3
    /* BC8A0 800CC0A0 00016210 */  beq        $v1, $v0, .L800CC4A4
    /* BC8A4 800CC0A4 00000000 */   nop
    /* BC8A8 800CC0A8 4C31030C */  jal        func_800CC530
    /* BC8AC 800CC0AC 21204002 */   addu      $a0, $s2, $zero
    /* BC8B0 800CC0B0 00140200 */  sll        $v0, $v0, 16
    /* BC8B4 800CC0B4 FB004010 */  beqz       $v0, .L800CC4A4
    /* BC8B8 800CC0B8 01001124 */   addiu     $s1, $zero, 0x1
    /* BC8BC 800CC0BC 901551AE */  sw         $s1, 0x1590($s2)
    /* BC8C0 800CC0C0 F8EA030C */  jal        func_800FABE0
    /* BC8C4 800CC0C4 21204002 */   addu      $a0, $s2, $zero
    /* BC8C8 800CC0C8 B0005026 */  addiu      $s0, $s2, 0xB0
    /* BC8CC 800CC0CC F8EA030C */  jal        func_800FABE0
    /* BC8D0 800CC0D0 21200002 */   addu      $a0, $s0, $zero
    /* BC8D4 800CC0D4 05DD030C */  jal        func_800F7414
    /* BC8D8 800CC0D8 21200002 */   addu      $a0, $s0, $zero
    /* BC8DC 800CC0DC A8E9030C */  jal        func_800FA6A0
    /* BC8E0 800CC0E0 00000000 */   nop
    /* BC8E4 800CC0E4 8C38030C */  jal        func_800CE230
    /* BC8E8 800CC0E8 21204002 */   addu      $a0, $s2, $zero
    /* BC8EC 800CC0EC 01000224 */  addiu      $v0, $zero, 0x1
    /* BC8F0 800CC0F0 F20342A6 */  sh         $v0, 0x3F2($s2)
    /* BC8F4 800CC0F4 901551AE */  sw         $s1, 0x1590($s2)
    /* BC8F8 800CC0F8 FC08428E */  lw         $v0, 0x8FC($s2)
    /* BC8FC 800CC0FC 00000000 */  nop
    /* BC900 800CC100 FC0842AE */  sw         $v0, 0x8FC($s2)
    /* BC904 800CC104 3E82030C */  jal        __builtin_new
    /* BC908 800CC108 2C000424 */   addiu     $a0, $zero, 0x2C
    /* BC90C 800CC10C 9AE0030C */  jal        func_800F8268
    /* BC910 800CC110 21204000 */   addu      $a0, $v0, $zero
    /* BC914 800CC114 E00442AE */  sw         $v0, 0x4E0($s2)
    /* BC918 800CC118 21204000 */  addu       $a0, $v0, $zero
    /* BC91C 800CC11C E4000524 */  addiu      $a1, $zero, 0xE4
    /* BC920 800CC120 F3E0030C */  jal        func_800F83CC
    /* BC924 800CC124 98000624 */   addiu     $a2, $zero, 0x98
    /* BC928 800CC128 1004448E */  lw         $a0, 0x410($s2)
    /* BC92C 800CC12C E004428E */  lw         $v0, 0x4E0($s2)
    /* BC930 800CC130 00000000 */  nop
    /* BC934 800CC134 1C00428C */  lw         $v0, 0x1C($v0)
    /* BC938 800CC138 00000000 */  nop
    /* BC93C 800CC13C 0C004584 */  lh         $a1, 0xC($v0)
    /* BC940 800CC140 0E004684 */  lh         $a2, 0xE($v0)
    /* BC944 800CC144 078E030C */  jal        MoveImage
    /* BC948 800CC148 0C008424 */   addiu     $a0, $a0, 0xC
    /* BC94C 800CC14C 48014486 */  lh         $a0, 0x148($s2)
    /* BC950 800CC150 742C030C */  jal        func_800CB1D0
    /* BC954 800CC154 00000000 */   nop
    /* BC958 800CC158 4C31030C */  jal        func_800CC530
    /* BC95C 800CC15C 21204002 */   addu      $a0, $s2, $zero
    /* BC960 800CC160 00140200 */  sll        $v0, $v0, 16
    /* BC964 800CC164 CF004010 */  beqz       $v0, .L800CC4A4
    /* BC968 800CC168 00000000 */   nop
    /* BC96C 800CC16C FED4030C */  jal        func_800F53F8
    /* BC970 800CC170 B0430424 */   addiu     $a0, $zero, 0x43B0
    /* BC974 800CC174 21B04000 */  addu       $s6, $v0, $zero
    /* BC978 800CC178 7CD6030C */  jal        func_800F59F0
    /* BC97C 800CC17C 2120C002 */   addu      $a0, $s6, $zero
    /* BC980 800CC180 21984000 */  addu       $s3, $v0, $zero
    /* BC984 800CC184 21880000 */  addu       $s1, $zero, $zero
    /* BC988 800CC188 21180000 */  addu       $v1, $zero, $zero
  .L800CC18C:
    /* BC98C 800CC18C 21800000 */  addu       $s0, $zero, $zero
  .L800CC190:
    /* BC990 800CC190 21107102 */  addu       $v0, $s3, $s1
    /* BC994 800CC194 000050A0 */  sb         $s0, 0x0($v0)
    /* BC998 800CC198 01003126 */  addiu      $s1, $s1, 0x1
    /* BC99C 800CC19C 21107102 */  addu       $v0, $s3, $s1
    /* BC9A0 800CC1A0 000043A0 */  sb         $v1, 0x0($v0)
    /* BC9A4 800CC1A4 02001026 */  addiu      $s0, $s0, 0x2
    /* BC9A8 800CC1A8 E400022A */  slti       $v0, $s0, 0xE4
    /* BC9AC 800CC1AC F8FF4014 */  bnez       $v0, .L800CC190
    /* BC9B0 800CC1B0 01003126 */   addiu     $s1, $s1, 0x1
    /* BC9B4 800CC1B4 02006324 */  addiu      $v1, $v1, 0x2
    /* BC9B8 800CC1B8 98006228 */  slti       $v0, $v1, 0x98
    /* BC9BC 800CC1BC F3FF4014 */  bnez       $v0, .L800CC18C
    /* BC9C0 800CC1C0 D8211424 */   addiu     $s4, $zero, 0x21D8
    /* BC9C4 800CC1C4 21880000 */  addu       $s1, $zero, $zero
  .L800CC1C8:
    /* BC9C8 800CC1C8 1027222A */  slti       $v0, $s1, 0x2710
    /* BC9CC 800CC1CC 2A004010 */  beqz       $v0, .L800CC278
    /* BC9D0 800CC1D0 02001524 */   addiu     $s5, $zero, 0x2
    /* BC9D4 800CC1D4 CD87030C */  jal        func_800E1F34
    /* BC9D8 800CC1D8 01003126 */   addiu     $s1, $s1, 0x1
    /* BC9DC 800CC1DC 1A005400 */  div        $zero, $v0, $s4
    /* BC9E0 800CC1E0 02008016 */  bnez       $s4, .L800CC1EC
    /* BC9E4 800CC1E4 00000000 */   nop
    /* BC9E8 800CC1E8 0D000700 */  break      7
  .L800CC1EC:
    /* BC9EC 800CC1EC FFFF0124 */  addiu      $at, $zero, -0x1
    /* BC9F0 800CC1F0 04008116 */  bne        $s4, $at, .L800CC204
    /* BC9F4 800CC1F4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* BC9F8 800CC1F8 02004114 */  bne        $v0, $at, .L800CC204
    /* BC9FC 800CC1FC 00000000 */   nop
    /* BCA00 800CC200 0D000600 */  break      6
  .L800CC204:
    /* BCA04 800CC204 10180000 */  mfhi       $v1
    /* BCA08 800CC208 CD87030C */  jal        func_800E1F34
    /* BCA0C 800CC20C 40800300 */   sll       $s0, $v1, 1
    /* BCA10 800CC210 1A005400 */  div        $zero, $v0, $s4
    /* BCA14 800CC214 02008016 */  bnez       $s4, .L800CC220
    /* BCA18 800CC218 00000000 */   nop
    /* BCA1C 800CC21C 0D000700 */  break      7
  .L800CC220:
    /* BCA20 800CC220 FFFF0124 */  addiu      $at, $zero, -0x1
    /* BCA24 800CC224 04008116 */  bne        $s4, $at, .L800CC238
    /* BCA28 800CC228 0080013C */   lui       $at, (0x80000000 >> 16)
    /* BCA2C 800CC22C 02004114 */  bne        $v0, $at, .L800CC238
    /* BCA30 800CC230 00000000 */   nop
    /* BCA34 800CC234 0D000600 */  break      6
  .L800CC238:
    /* BCA38 800CC238 10180000 */  mfhi       $v1
    /* BCA3C 800CC23C 00000000 */  nop
    /* BCA40 800CC240 40180300 */  sll        $v1, $v1, 1
    /* BCA44 800CC244 21207002 */  addu       $a0, $s3, $s0
    /* BCA48 800CC248 00008590 */  lbu        $a1, 0x0($a0)
    /* BCA4C 800CC24C 21186302 */  addu       $v1, $s3, $v1
    /* BCA50 800CC250 00006290 */  lbu        $v0, 0x0($v1)
    /* BCA54 800CC254 00000000 */  nop
    /* BCA58 800CC258 000082A0 */  sb         $v0, 0x0($a0)
    /* BCA5C 800CC25C 000065A0 */  sb         $a1, 0x0($v1)
    /* BCA60 800CC260 01008590 */  lbu        $a1, 0x1($a0)
    /* BCA64 800CC264 01006290 */  lbu        $v0, 0x1($v1)
    /* BCA68 800CC268 00000000 */  nop
    /* BCA6C 800CC26C 010082A0 */  sb         $v0, 0x1($a0)
    /* BCA70 800CC270 72300308 */  j          .L800CC1C8
    /* BCA74 800CC274 010065A0 */   sb        $a1, 0x1($v1)
  .L800CC278:
    /* BCA78 800CC278 E80440A6 */  sh         $zero, 0x4E8($s2)
    /* BCA7C 800CC27C 21880000 */  addu       $s1, $zero, $zero
  .L800CC280:
    /* BCA80 800CC280 E8044286 */  lh         $v0, 0x4E8($s2)
    /* BCA84 800CC284 00000000 */  nop
    /* BCA88 800CC288 80004228 */  slti       $v0, $v0, 0x80
    /* BCA8C 800CC28C 2D004010 */  beqz       $v0, .L800CC344
    /* BCA90 800CC290 21800000 */   addu      $s0, $zero, $zero
  .L800CC294:
    /* BCA94 800CC294 21108002 */  addu       $v0, $s4, $zero
    /* BCA98 800CC298 02004104 */  bgez       $v0, .L800CC2A4
    /* BCA9C 800CC29C 00000000 */   nop
    /* BCAA0 800CC2A0 7F004224 */  addiu      $v0, $v0, 0x7F
  .L800CC2A4:
    /* BCAA4 800CC2A4 C3110200 */  sra        $v0, $v0, 7
    /* BCAA8 800CC2A8 2A100202 */  slt        $v0, $s0, $v0
    /* BCAAC 800CC2AC 1E004010 */  beqz       $v0, .L800CC328
    /* BCAB0 800CC2B0 21207102 */   addu      $a0, $s3, $s1
    /* BCAB4 800CC2B4 1004438E */  lw         $v1, 0x410($s2)
    /* BCAB8 800CC2B8 00008290 */  lbu        $v0, 0x0($a0)
    /* BCABC 800CC2BC 0C006394 */  lhu        $v1, 0xC($v1)
    /* BCAC0 800CC2C0 00000000 */  nop
    /* BCAC4 800CC2C4 21104300 */  addu       $v0, $v0, $v1
    /* BCAC8 800CC2C8 1800A2A7 */  sh         $v0, 0x18($sp)
    /* BCACC 800CC2CC 1004438E */  lw         $v1, 0x410($s2)
    /* BCAD0 800CC2D0 01008290 */  lbu        $v0, 0x1($a0)
    /* BCAD4 800CC2D4 0E006394 */  lhu        $v1, 0xE($v1)
    /* BCAD8 800CC2D8 00000000 */  nop
    /* BCADC 800CC2DC 21104300 */  addu       $v0, $v0, $v1
    /* BCAE0 800CC2E0 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* BCAE4 800CC2E4 1C00B5A7 */  sh         $s5, 0x1C($sp)
    /* BCAE8 800CC2E8 1E00B5A7 */  sh         $s5, 0x1E($sp)
    /* BCAEC 800CC2EC E004428E */  lw         $v0, 0x4E0($s2)
    /* BCAF0 800CC2F0 00000000 */  nop
    /* BCAF4 800CC2F4 1C00428C */  lw         $v0, 0x1C($v0)
    /* BCAF8 800CC2F8 00000000 */  nop
    /* BCAFC 800CC2FC 0C004384 */  lh         $v1, 0xC($v0)
    /* BCB00 800CC300 00008590 */  lbu        $a1, 0x0($a0)
    /* BCB04 800CC304 0E004284 */  lh         $v0, 0xE($v0)
    /* BCB08 800CC308 01008690 */  lbu        $a2, 0x1($a0)
    /* BCB0C 800CC30C 1800A427 */  addiu      $a0, $sp, 0x18
    /* BCB10 800CC310 21286500 */  addu       $a1, $v1, $a1
    /* BCB14 800CC314 078E030C */  jal        MoveImage
    /* BCB18 800CC318 21304600 */   addu      $a2, $v0, $a2
    /* BCB1C 800CC31C 02003126 */  addiu      $s1, $s1, 0x2
    /* BCB20 800CC320 A5300308 */  j          .L800CC294
    /* BCB24 800CC324 01001026 */   addiu     $s0, $s0, 0x1
  .L800CC328:
    /* BCB28 800CC328 E8044296 */  lhu        $v0, 0x4E8($s2)
    /* BCB2C 800CC32C 00000000 */  nop
    /* BCB30 800CC330 01004224 */  addiu      $v0, $v0, 0x1
    /* BCB34 800CC334 8E12040C */  jal        func_80104A38
    /* BCB38 800CC338 E80442A6 */   sh        $v0, 0x4E8($s2)
    /* BCB3C 800CC33C A0300308 */  j          .L800CC280
    /* BCB40 800CC340 00000000 */   nop
  .L800CC344:
    /* BCB44 800CC344 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* BCB48 800CC348 E80442A6 */  sh         $v0, 0x4E8($s2)
    /* BCB4C 800CC34C C6D5030C */  jal        func_800F5718
    /* BCB50 800CC350 2120C002 */   addu      $a0, $s6, $zero
    /* BCB54 800CC354 E004448E */  lw         $a0, 0x4E0($s2)
    /* BCB58 800CC358 00000000 */  nop
    /* BCB5C 800CC35C 03008010 */  beqz       $a0, .L800CC36C
    /* BCB60 800CC360 00000000 */   nop
    /* BCB64 800CC364 4CE1030C */  jal        func_800F8530
    /* BCB68 800CC368 03000524 */   addiu     $a1, $zero, 0x3
  .L800CC36C:
    /* BCB6C 800CC36C 0D80043C */  lui        $a0, %hi(func_800CE4D8)
    /* BCB70 800CC370 D8E48424 */  addiu      $a0, $a0, %lo(func_800CE4D8)
    /* BCB74 800CC374 1E000524 */  addiu      $a1, $zero, 0x1E
    /* BCB78 800CC378 5AF3030C */  jal        func_800FCD68
    /* BCB7C 800CC37C FFFF0624 */   addiu     $a2, $zero, -0x1
    /* BCB80 800CC380 5C0142A6 */  sh         $v0, 0x15C($s2)
    /* BCB84 800CC384 8A38030C */  jal        func_800CE228
    /* BCB88 800CC388 21204002 */   addu      $a0, $s2, $zero
    /* BCB8C 800CC38C 8C38030C */  jal        func_800CE230
    /* BCB90 800CC390 21204002 */   addu      $a0, $s2, $zero
    /* BCB94 800CC394 F20340A6 */  sh         $zero, 0x3F2($s2)
    /* BCB98 800CC398 01000224 */  addiu      $v0, $zero, 0x1
    /* BCB9C 800CC39C 901542AE */  sw         $v0, 0x1590($s2)
    /* BCBA0 800CC3A0 B0005026 */  addiu      $s0, $s2, 0xB0
    /* BCBA4 800CC3A4 E9EA030C */  jal        func_800FABA4
    /* BCBA8 800CC3A8 21200002 */   addu      $a0, $s0, $zero
    /* BCBAC 800CC3AC 4F1B040C */  jal        func_80106D3C
    /* BCBB0 800CC3B0 21204000 */   addu      $a0, $v0, $zero
    /* BCBB4 800CC3B4 1A12040C */  jal        func_80104868
    /* BCBB8 800CC3B8 00000000 */   nop
    /* BCBBC 800CC3BC 14DE030C */  jal        func_800F7850
    /* BCBC0 800CC3C0 21200002 */   addu      $a0, $s0, $zero
    /* BCBC4 800CC3C4 E9EA030C */  jal        func_800FABA4
    /* BCBC8 800CC3C8 21200002 */   addu      $a0, $s0, $zero
    /* BCBCC 800CC3CC 511B040C */  jal        func_80106D44
    /* BCBD0 800CC3D0 21204000 */   addu      $a0, $v0, $zero
    /* BCBD4 800CC3D4 98E9030C */  jal        func_800FA660
    /* BCBD8 800CC3D8 00000000 */   nop
    /* BCBDC 800CC3DC 80000224 */  addiu      $v0, $zero, 0x80
    /* BCBE0 800CC3E0 1680013C */  lui        $at, %hi(D_801592E4)
    /* BCBE4 800CC3E4 E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* BCBE8 800CC3E8 60014486 */  lh         $a0, 0x160($s2)
    /* BCBEC 800CC3EC 00000000 */  nop
    /* BCBF0 800CC3F0 04008010 */  beqz       $a0, .L800CC404
    /* BCBF4 800CC3F4 00000000 */   nop
    /* BCBF8 800CC3F8 7DF3030C */  jal        func_800FCDF4
    /* BCBFC 800CC3FC 00000000 */   nop
    /* BCC00 800CC400 600140A6 */  sh         $zero, 0x160($s2)
  .L800CC404:
    /* BCC04 800CC404 5C014486 */  lh         $a0, 0x15C($s2)
    /* BCC08 800CC408 00000000 */  nop
    /* BCC0C 800CC40C 04008010 */  beqz       $a0, .L800CC420
    /* BCC10 800CC410 00000000 */   nop
    /* BCC14 800CC414 7DF3030C */  jal        func_800FCDF4
    /* BCC18 800CC418 00000000 */   nop
    /* BCC1C 800CC41C 5C0140A6 */  sh         $zero, 0x15C($s2)
  .L800CC420:
    /* BCC20 800CC420 5E014486 */  lh         $a0, 0x15E($s2)
    /* BCC24 800CC424 00000000 */  nop
    /* BCC28 800CC428 04008010 */  beqz       $a0, .L800CC43C
    /* BCC2C 800CC42C 00000000 */   nop
    /* BCC30 800CC430 7DF3030C */  jal        func_800FCDF4
    /* BCC34 800CC434 00000000 */   nop
    /* BCC38 800CC438 5E0140A6 */  sh         $zero, 0x15E($s2)
  .L800CC43C:
    /* BCC3C 800CC43C FC08438E */  lw         $v1, 0x8FC($s2)
    /* BCC40 800CC440 02000224 */  addiu      $v0, $zero, 0x2
    /* BCC44 800CC444 13006214 */  bne        $v1, $v0, .L800CC494
    /* BCC48 800CC448 00000000 */   nop
    /* BCC4C 800CC44C 5038030C */  jal        func_800CE140
    /* BCC50 800CC450 21204002 */   addu      $a0, $s2, $zero
    /* BCC54 800CC454 1680013C */  lui        $at, %hi(D_801592E4)
    /* BCC58 800CC458 E49220A4 */  sh         $zero, %lo(D_801592E4)($at)
    /* BCC5C 800CC45C 8E12040C */  jal        func_80104A38
    /* BCC60 800CC460 00000000 */   nop
    /* BCC64 800CC464 80000224 */  addiu      $v0, $zero, 0x80
    /* BCC68 800CC468 1680013C */  lui        $at, %hi(D_801592E4)
    /* BCC6C 800CC46C E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* BCC70 800CC470 03000224 */  addiu      $v0, $zero, 0x3
    /* BCC74 800CC474 FC0842AE */  sw         $v0, 0x8FC($s2)
    /* BCC78 800CC478 48014486 */  lh         $a0, 0x148($s2)
    /* BCC7C 800CC47C C623030C */  jal        func_800C8F18
    /* BCC80 800CC480 00000000 */   nop
    /* BCC84 800CC484 8F2F030C */  jal        func_800CBE3C
    /* BCC88 800CC488 21204002 */   addu      $a0, $s2, $zero
    /* BCC8C 800CC48C 27310308 */  j          .L800CC49C
    /* BCC90 800CC490 00000000 */   nop
  .L800CC494:
    /* BCC94 800CC494 EFEA030C */  jal        func_800FABBC
    /* BCC98 800CC498 B0004426 */   addiu     $a0, $s2, 0xB0
  .L800CC49C:
    /* BCC9C 800CC49C EFEA030C */  jal        func_800FABBC
    /* BCCA0 800CC4A0 21204002 */   addu      $a0, $s2, $zero
  .L800CC4A4:
    /* BCCA4 800CC4A4 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* BCCA8 800CC4A8 3800B68F */  lw         $s6, 0x38($sp)
    /* BCCAC 800CC4AC 3400B58F */  lw         $s5, 0x34($sp)
    /* BCCB0 800CC4B0 3000B48F */  lw         $s4, 0x30($sp)
    /* BCCB4 800CC4B4 2C00B38F */  lw         $s3, 0x2C($sp)
    /* BCCB8 800CC4B8 2800B28F */  lw         $s2, 0x28($sp)
    /* BCCBC 800CC4BC 2400B18F */  lw         $s1, 0x24($sp)
    /* BCCC0 800CC4C0 2000B08F */  lw         $s0, 0x20($sp)
    /* BCCC4 800CC4C4 4000BD27 */  addiu      $sp, $sp, 0x40
    /* BCCC8 800CC4C8 0800E003 */  jr         $ra
    /* BCCCC 800CC4CC 00000000 */   nop
endlabel func_800CC03C
