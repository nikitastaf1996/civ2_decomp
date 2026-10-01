.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BD870, 0x1090

glabel func_800BD870
    /* AE070 800BD870 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* AE074 800BD874 9800B0AF */  sw         $s0, 0x98($sp)
    /* AE078 800BD878 1280103C */  lui        $s0, %hi(D_801210C4)
    /* AE07C 800BD87C C4101026 */  addiu      $s0, $s0, %lo(D_801210C4)
    /* AE080 800BD880 BC00BFAF */  sw         $ra, 0xBC($sp)
    /* AE084 800BD884 B800BEAF */  sw         $fp, 0xB8($sp)
    /* AE088 800BD888 B400B7AF */  sw         $s7, 0xB4($sp)
    /* AE08C 800BD88C B000B6AF */  sw         $s6, 0xB0($sp)
    /* AE090 800BD890 AC00B5AF */  sw         $s5, 0xAC($sp)
    /* AE094 800BD894 A800B4AF */  sw         $s4, 0xA8($sp)
    /* AE098 800BD898 A400B3AF */  sw         $s3, 0xA4($sp)
    /* AE09C 800BD89C A000B2AF */  sw         $s2, 0xA0($sp)
    /* AE0A0 800BD8A0 9C00B1AF */  sw         $s1, 0x9C($sp)
    /* AE0A4 800BD8A4 0000178E */  lw         $s7, 0x0($s0)
    /* AE0A8 800BD8A8 DC49020C */  jal        func_80092770
    /* AE0AC 800BD8AC C0FC0426 */   addiu     $a0, $s0, -0x340
    /* AE0B0 800BD8B0 7907040C */  jal        func_80101DE4
    /* AE0B4 800BD8B4 01000424 */   addiu     $a0, $zero, 0x1
    /* AE0B8 800BD8B8 1280023C */  lui        $v0, %hi(D_80120DBC)
    /* AE0BC 800BD8BC BC0D428C */  lw         $v0, %lo(D_80120DBC)($v0)
    /* AE0C0 800BD8C0 00000000 */  nop
    /* AE0C4 800BD8C4 0400448C */  lw         $a0, 0x4($v0)
    /* AE0C8 800BD8C8 D707040C */  jal        func_80101F5C
    /* AE0CC 800BD8CC 00000000 */   nop
    /* AE0D0 800BD8D0 5000B127 */  addiu      $s1, $sp, 0x50
    /* AE0D4 800BD8D4 21202002 */  addu       $a0, $s1, $zero
    /* AE0D8 800BD8D8 21280000 */  addu       $a1, $zero, $zero
    /* AE0DC 800BD8DC 40010224 */  addiu      $v0, $zero, 0x140
    /* AE0E0 800BD8E0 5400A2A7 */  sh         $v0, 0x54($sp)
    /* AE0E4 800BD8E4 F0000224 */  addiu      $v0, $zero, 0xF0
    /* AE0E8 800BD8E8 5000A0A7 */  sh         $zero, 0x50($sp)
    /* AE0EC 800BD8EC 5200A0A7 */  sh         $zero, 0x52($sp)
    /* AE0F0 800BD8F0 A314020C */  jal        func_8008528C
    /* AE0F4 800BD8F4 5600A2A7 */   sh        $v0, 0x56($sp)
    /* AE0F8 800BD8F8 E8FE0426 */  addiu      $a0, $s0, -0x118
    /* AE0FC 800BD8FC ECFC1026 */  addiu      $s0, $s0, -0x314
    /* AE100 800BD900 21280002 */  addu       $a1, $s0, $zero
    /* AE104 800BD904 5800A627 */  addiu      $a2, $sp, 0x58
    /* AE108 800BD908 21382002 */  addu       $a3, $s1, $zero
    /* AE10C 800BD90C 06000324 */  addiu      $v1, $zero, 0x6
    /* AE110 800BD910 3A010824 */  addiu      $t0, $zero, 0x13A
    /* AE114 800BD914 D0000224 */  addiu      $v0, $zero, 0xD0
    /* AE118 800BD918 5E00A2A7 */  sh         $v0, 0x5E($sp)
    /* AE11C 800BD91C 10000224 */  addiu      $v0, $zero, 0x10
    /* AE120 800BD920 5200A2A7 */  sh         $v0, 0x52($sp)
    /* AE124 800BD924 E0000224 */  addiu      $v0, $zero, 0xE0
    /* AE128 800BD928 5800A3A7 */  sh         $v1, 0x58($sp)
    /* AE12C 800BD92C 5A00A0A7 */  sh         $zero, 0x5A($sp)
    /* AE130 800BD930 5C00A8A7 */  sh         $t0, 0x5C($sp)
    /* AE134 800BD934 5000A3A7 */  sh         $v1, 0x50($sp)
    /* AE138 800BD938 5400A8A7 */  sh         $t0, 0x54($sp)
    /* AE13C 800BD93C 1FE4030C */  jal        func_800F907C
    /* AE140 800BD940 5600A2A7 */   sh        $v0, 0x56($sp)
    /* AE144 800BD944 1280023C */  lui        $v0, %hi(D_80120E5C)
    /* AE148 800BD948 5C0E428C */  lw         $v0, %lo(D_80120E5C)($v0)
    /* AE14C 800BD94C 01000424 */  addiu      $a0, $zero, 0x1
    /* AE150 800BD950 02004924 */  addiu      $t1, $v0, 0x2
    /* AE154 800BD954 AC005624 */  addiu      $s6, $v0, 0xAC
    /* AE158 800BD958 3E0C040C */  jal        func_801030F8
    /* AE15C 800BD95C 6000A9AF */   sw        $t1, 0x60($sp)
    /* AE160 800BD960 1280023C */  lui        $v0, %hi(D_8012110C)
    /* AE164 800BD964 0C11428C */  lw         $v0, %lo(D_8012110C)($v0)
    /* AE168 800BD968 00000000 */  nop
    /* AE16C 800BD96C 88004014 */  bnez       $v0, .L800BDB90
    /* AE170 800BD970 00000000 */   nop
    /* AE174 800BD974 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE178 800BD978 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE17C 800BD97C CB1A030C */  jal        func_800C6B2C
    /* AE180 800BD980 00000000 */   nop
    /* AE184 800BD984 1680023C */  lui        $v0, %hi(D_8015894C)
    /* AE188 800BD988 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* AE18C 800BD98C 00000000 */  nop
    /* AE190 800BD990 3C05448C */  lw         $a0, 0x53C($v0)
    /* AE194 800BD994 A63A030C */  jal        func_800CEA98
    /* AE198 800BD998 00000000 */   nop
    /* AE19C 800BD99C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE1A0 800BD9A0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE1A4 800BD9A4 9987030C */  jal        func_800E1E64
    /* AE1A8 800BD9A8 21284000 */   addu      $a1, $v0, $zero
    /* AE1AC 800BD9AC 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE1B0 800BD9B0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE1B4 800BD9B4 F71A030C */  jal        func_800C6BDC
    /* AE1B8 800BD9B8 00000000 */   nop
    /* AE1BC 800BD9BC 1280023C */  lui        $v0, %hi(D_80121104)
    /* AE1C0 800BD9C0 0411428C */  lw         $v0, %lo(D_80121104)($v0)
    /* AE1C4 800BD9C4 00000000 */  nop
    /* AE1C8 800BD9C8 07004010 */  beqz       $v0, .L800BD9E8
    /* AE1CC 800BD9CC 00000000 */   nop
    /* AE1D0 800BD9D0 1680023C */  lui        $v0, %hi(D_8015894C)
    /* AE1D4 800BD9D4 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* AE1D8 800BD9D8 00000000 */  nop
    /* AE1DC 800BD9DC 6405448C */  lw         $a0, 0x564($v0)
    /* AE1E0 800BD9E0 7EF60208 */  j          .L800BD9F8
    /* AE1E4 800BD9E4 00000000 */   nop
  .L800BD9E8:
    /* AE1E8 800BD9E8 1680023C */  lui        $v0, %hi(D_8015894C)
    /* AE1EC 800BD9EC 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* AE1F0 800BD9F0 00000000 */  nop
    /* AE1F4 800BD9F4 6005448C */  lw         $a0, 0x560($v0)
  .L800BD9F8:
    /* AE1F8 800BD9F8 A63A030C */  jal        func_800CEA98
    /* AE1FC 800BD9FC 10001224 */   addiu     $s2, $zero, 0x10
    /* AE200 800BDA00 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE204 800BDA04 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE208 800BDA08 9987030C */  jal        func_800E1E64
    /* AE20C 800BDA0C 21284000 */   addu      $a1, $v0, $zero
    /* AE210 800BDA10 1280103C */  lui        $s0, %hi(D_80121340)
    /* AE214 800BDA14 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* AE218 800BDA18 21200002 */  addu       $a0, $s0, $zero
    /* AE21C 800BDA1C 5000B527 */  addiu      $s5, $sp, 0x50
    /* AE220 800BDA20 2128A002 */  addu       $a1, $s5, $zero
    /* AE224 800BDA24 10000624 */  addiu      $a2, $zero, 0x10
    /* AE228 800BDA28 C0000224 */  addiu      $v0, $zero, 0xC0
    /* AE22C 800BDA2C 20001424 */  addiu      $s4, $zero, 0x20
    /* AE230 800BDA30 5000B2A7 */  sh         $s2, 0x50($sp)
    /* AE234 800BDA34 5200B2A7 */  sh         $s2, 0x52($sp)
    /* AE238 800BDA38 5400A2A7 */  sh         $v0, 0x54($sp)
    /* AE23C 800BDA3C DC0F040C */  jal        func_80103F70
    /* AE240 800BDA40 5600B4A7 */   sh        $s4, 0x56($sp)
    /* AE244 800BDA44 21200002 */  addu       $a0, $s0, $zero
    /* AE248 800BDA48 1280133C */  lui        $s3, %hi(D_8012110C)
    /* AE24C 800BDA4C 0C117326 */  addiu      $s3, $s3, %lo(D_8012110C)
    /* AE250 800BDA50 CB1A030C */  jal        func_800C6B2C
    /* AE254 800BDA54 000062AE */   sw        $v0, 0x0($s3)
    /* AE258 800BDA58 21280000 */  addu       $a1, $zero, $zero
    /* AE25C 800BDA5C 40101700 */  sll        $v0, $s7, 1
    /* AE260 800BDA60 21105700 */  addu       $v0, $v0, $s7
    /* AE264 800BDA64 80100200 */  sll        $v0, $v0, 2
    /* AE268 800BDA68 23105700 */  subu       $v0, $v0, $s7
    /* AE26C 800BDA6C 00110200 */  sll        $v0, $v0, 4
    /* AE270 800BDA70 23105700 */  subu       $v0, $v0, $s7
    /* AE274 800BDA74 C0100200 */  sll        $v0, $v0, 3
    /* AE278 800BDA78 1180013C */  lui        $at, %hi(D_801176A7)
    /* AE27C 800BDA7C 21082200 */  addu       $at, $at, $v0
    /* AE280 800BDA80 A7762490 */  lbu        $a0, %lo(D_801176A7)($at)
    /* AE284 800BDA84 04000624 */  addiu      $a2, $zero, 0x4
    /* AE288 800BDA88 F53A030C */  jal        func_800CEBD4
    /* AE28C 800BDA8C FFFF8424 */   addiu     $a0, $a0, -0x1
    /* AE290 800BDA90 2120E002 */  addu       $a0, $s7, $zero
    /* AE294 800BDA94 5D54020C */  jal        func_80095174
    /* AE298 800BDA98 21884000 */   addu      $s1, $v0, $zero
    /* AE29C 800BDA9C 21200002 */  addu       $a0, $s0, $zero
    /* AE2A0 800BDAA0 9987030C */  jal        func_800E1E64
    /* AE2A4 800BDAA4 21284000 */   addu      $a1, $v0, $zero
    /* AE2A8 800BDAA8 CD1A030C */  jal        func_800C6B34
    /* AE2AC 800BDAAC 21200002 */   addu      $a0, $s0, $zero
    /* AE2B0 800BDAB0 21200002 */  addu       $a0, $s0, $zero
    /* AE2B4 800BDAB4 731B030C */  jal        func_800C6DCC
    /* AE2B8 800BDAB8 48012526 */   addiu     $a1, $s1, 0x148
    /* AE2BC 800BDABC 21280002 */  addu       $a1, $s0, $zero
    /* AE2C0 800BDAC0 2130A002 */  addu       $a2, $s5, $zero
    /* AE2C4 800BDAC4 10000724 */  addiu      $a3, $zero, 0x10
    /* AE2C8 800BDAC8 0000648E */  lw         $a0, 0x0($s3)
    /* AE2CC 800BDACC A8000224 */  addiu      $v0, $zero, 0xA8
    /* AE2D0 800BDAD0 5000A2A7 */  sh         $v0, 0x50($sp)
    /* AE2D4 800BDAD4 E0010224 */  addiu      $v0, $zero, 0x1E0
    /* AE2D8 800BDAD8 5200B2A7 */  sh         $s2, 0x52($sp)
    /* AE2DC 800BDADC 5400A2A7 */  sh         $v0, 0x54($sp)
    /* AE2E0 800BDAE0 5511040C */  jal        func_80104554
    /* AE2E4 800BDAE4 5600B4A7 */   sh        $s4, 0x56($sp)
    /* AE2E8 800BDAE8 CB1A030C */  jal        func_800C6B2C
    /* AE2EC 800BDAEC 21200002 */   addu      $a0, $s0, $zero
    /* AE2F0 800BDAF0 2554020C */  jal        func_80095094
    /* AE2F4 800BDAF4 2120E002 */   addu      $a0, $s7, $zero
    /* AE2F8 800BDAF8 21200002 */  addu       $a0, $s0, $zero
    /* AE2FC 800BDAFC 9987030C */  jal        func_800E1E64
    /* AE300 800BDB00 21284000 */   addu      $a1, $v0, $zero
    /* AE304 800BDB04 CD1A030C */  jal        func_800C6B34
    /* AE308 800BDB08 21200002 */   addu      $a0, $s0, $zero
    /* AE30C 800BDB0C F853020C */  jal        func_80094FE0
    /* AE310 800BDB10 2120E002 */   addu      $a0, $s7, $zero
    /* AE314 800BDB14 21200002 */  addu       $a0, $s0, $zero
    /* AE318 800BDB18 9987030C */  jal        func_800E1E64
    /* AE31C 800BDB1C 21284000 */   addu      $a1, $v0, $zero
    /* AE320 800BDB20 21280002 */  addu       $a1, $s0, $zero
    /* AE324 800BDB24 2130A002 */  addu       $a2, $s5, $zero
    /* AE328 800BDB28 10000724 */  addiu      $a3, $zero, 0x10
    /* AE32C 800BDB2C E0000224 */  addiu      $v0, $zero, 0xE0
    /* AE330 800BDB30 0000648E */  lw         $a0, 0x0($s3)
    /* AE334 800BDB34 30001124 */  addiu      $s1, $zero, 0x30
    /* AE338 800BDB38 5000B2A7 */  sh         $s2, 0x50($sp)
    /* AE33C 800BDB3C 5200B4A7 */  sh         $s4, 0x52($sp)
    /* AE340 800BDB40 5400A2A7 */  sh         $v0, 0x54($sp)
    /* AE344 800BDB44 5511040C */  jal        func_80104554
    /* AE348 800BDB48 5600B1A7 */   sh        $s1, 0x56($sp)
    /* AE34C 800BDB4C CB1A030C */  jal        func_800C6B2C
    /* AE350 800BDB50 21200002 */   addu      $a0, $s0, $zero
    /* AE354 800BDB54 1280053C */  lui        $a1, %hi(D_8011A264)
    /* AE358 800BDB58 64A2A584 */  lh         $a1, %lo(D_8011A264)($a1)
    /* AE35C 800BDB5C AD98010C */  jal        func_800662B4
    /* AE360 800BDB60 21200002 */   addu      $a0, $s0, $zero
    /* AE364 800BDB64 21280002 */  addu       $a1, $s0, $zero
    /* AE368 800BDB68 2130A002 */  addu       $a2, $s5, $zero
    /* AE36C 800BDB6C 10000724 */  addiu      $a3, $zero, 0x10
    /* AE370 800BDB70 0000648E */  lw         $a0, 0x0($s3)
    /* AE374 800BDB74 F0000224 */  addiu      $v0, $zero, 0xF0
    /* AE378 800BDB78 5000A2A7 */  sh         $v0, 0x50($sp)
    /* AE37C 800BDB7C 30010224 */  addiu      $v0, $zero, 0x130
    /* AE380 800BDB80 5200B4A7 */  sh         $s4, 0x52($sp)
    /* AE384 800BDB84 5400A2A7 */  sh         $v0, 0x54($sp)
    /* AE388 800BDB88 5511040C */  jal        func_80104554
    /* AE38C 800BDB8C 5600B1A7 */   sh        $s1, 0x56($sp)
  .L800BDB90:
    /* AE390 800BDB90 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AE394 800BDB94 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AE398 800BDB98 7D11040C */  jal        func_801045F4
    /* AE39C 800BDB9C 21880000 */   addu      $s1, $zero, $zero
    /* AE3A0 800BDBA0 6000AA8F */  lw         $t2, 0x60($sp)
    /* AE3A4 800BDBA4 18000924 */  addiu      $t1, $zero, 0x18
    /* AE3A8 800BDBA8 2318CA02 */  subu       $v1, $s6, $t2
    /* AE3AC 800BDBAC 1A006900 */  div        $zero, $v1, $t1
    /* AE3B0 800BDBB0 02002015 */  bnez       $t1, .L800BDBBC
    /* AE3B4 800BDBB4 00000000 */   nop
    /* AE3B8 800BDBB8 0D000700 */  break      7
  .L800BDBBC:
    /* AE3BC 800BDBBC FFFF0124 */  addiu      $at, $zero, -0x1
    /* AE3C0 800BDBC0 04002115 */  bne        $t1, $at, .L800BDBD4
    /* AE3C4 800BDBC4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AE3C8 800BDBC8 02006114 */  bne        $v1, $at, .L800BDBD4
    /* AE3CC 800BDBCC 00000000 */   nop
    /* AE3D0 800BDBD0 0D000600 */  break      6
  .L800BDBD4:
    /* AE3D4 800BDBD4 12200000 */  mflo       $a0
    /* AE3D8 800BDBD8 1280153C */  lui        $s5, %hi(D_8011ACB4)
    /* AE3DC 800BDBDC B4ACB526 */  addiu      $s5, $s5, %lo(D_8011ACB4)
    /* AE3E0 800BDBE0 1800B427 */  addiu      $s4, $sp, 0x18
    /* AE3E4 800BDBE4 01000524 */  addiu      $a1, $zero, 0x1
    /* AE3E8 800BDBE8 63000624 */  addiu      $a2, $zero, 0x63
    /* AE3EC 800BDBEC 11800A3C */  lui        $t2, %hi(D_80117799)
    /* AE3F0 800BDBF0 99774A25 */  addiu      $t2, $t2, %lo(D_80117799)
    /* AE3F4 800BDBF4 1BFF5E25 */  addiu      $fp, $t2, -0xE5
    /* AE3F8 800BDBF8 6000AA8F */  lw         $t2, 0x60($sp)
    /* AE3FC 800BDBFC 1280013C */  lui        $at, %hi(D_801210D8)
    /* AE400 800BDC00 D81029AC */  sw         $t1, %lo(D_801210D8)($at)
    /* AE404 800BDC04 1280013C */  lui        $at, %hi(D_801210D4)
    /* AE408 800BDC08 D41023AC */  sw         $v1, %lo(D_801210D4)($at)
    /* AE40C 800BDC0C 18004225 */  addiu      $v0, $t2, 0x18
    /* AE410 800BDC10 1280013C */  lui        $at, %hi(D_801210D0)
    /* AE414 800BDC14 D01022AC */  sw         $v0, %lo(D_801210D0)($at)
    /* AE418 800BDC18 F53A030C */  jal        func_800CEBD4
    /* AE41C 800BDC1C 21B00000 */   addu      $s6, $zero, $zero
    /* AE420 800BDC20 6800A2AF */  sw         $v0, 0x68($sp)
    /* AE424 800BDC24 1280013C */  lui        $at, %hi(D_801210CC)
    /* AE428 800BDC28 CC1022AC */  sw         $v0, %lo(D_801210CC)($at)
  .L800BDC2C:
    /* AE42C 800BDC2C 1280023C */  lui        $v0, %hi(D_80121104)
    /* AE430 800BDC30 0411428C */  lw         $v0, %lo(D_80121104)($v0)
    /* AE434 800BDC34 00000000 */  nop
    /* AE438 800BDC38 38004010 */  beqz       $v0, .L800BDD1C
    /* AE43C 800BDC3C 01001224 */   addiu     $s2, $zero, 0x1
    /* AE440 800BDC40 000080A2 */  sb         $zero, 0x0($s4)
    /* AE444 800BDC44 1180093C */  lui        $t1, %hi(D_80117799)
    /* AE448 800BDC48 99772925 */  addiu      $t1, $t1, %lo(D_80117799)
    /* AE44C 800BDC4C 78053325 */  addiu      $s3, $t1, 0x578
  .L800BDC50:
    /* AE450 800BDC50 21107602 */  addu       $v0, $s3, $s6
    /* AE454 800BDC54 00004290 */  lbu        $v0, 0x0($v0)
    /* AE458 800BDC58 00000000 */  nop
    /* AE45C 800BDC5C 27004010 */  beqz       $v0, .L800BDCFC
    /* AE460 800BDC60 00000000 */   nop
    /* AE464 800BDC64 22005712 */  beq        $s2, $s7, .L800BDCF0
    /* AE468 800BDC68 21800000 */   addu      $s0, $zero, $zero
    /* AE46C 800BDC6C 0000A48E */  lw         $a0, 0x0($s5)
    /* AE470 800BDC70 80181200 */  sll        $v1, $s2, 2
    /* AE474 800BDC74 40100400 */  sll        $v0, $a0, 1
    /* AE478 800BDC78 21104400 */  addu       $v0, $v0, $a0
    /* AE47C 800BDC7C 80100200 */  sll        $v0, $v0, 2
    /* AE480 800BDC80 23104400 */  subu       $v0, $v0, $a0
    /* AE484 800BDC84 00110200 */  sll        $v0, $v0, 4
    /* AE488 800BDC88 23104400 */  subu       $v0, $v0, $a0
    /* AE48C 800BDC8C C0100200 */  sll        $v0, $v0, 3
    /* AE490 800BDC90 21105E00 */  addu       $v0, $v0, $fp
    /* AE494 800BDC94 21186200 */  addu       $v1, $v1, $v0
    /* AE498 800BDC98 0000628C */  lw         $v0, 0x0($v1)
    /* AE49C 800BDC9C 00000000 */  nop
    /* AE4A0 800BDCA0 80004230 */  andi       $v0, $v0, 0x80
    /* AE4A4 800BDCA4 12004014 */  bnez       $v0, .L800BDCF0
    /* AE4A8 800BDCA8 00000000 */   nop
    /* AE4AC 800BDCAC C17B030C */  jal        func_800DEF04
    /* AE4B0 800BDCB0 18000524 */   addiu     $a1, $zero, 0x18
    /* AE4B4 800BDCB4 0E004014 */  bnez       $v0, .L800BDCF0
    /* AE4B8 800BDCB8 00000000 */   nop
    /* AE4BC 800BDCBC 0000A48E */  lw         $a0, 0x0($s5)
    /* AE4C0 800BDCC0 C17B030C */  jal        func_800DEF04
    /* AE4C4 800BDCC4 09000524 */   addiu     $a1, $zero, 0x9
    /* AE4C8 800BDCC8 09004014 */  bnez       $v0, .L800BDCF0
    /* AE4CC 800BDCCC 2120E002 */   addu      $a0, $s7, $zero
    /* AE4D0 800BDCD0 C17B030C */  jal        func_800DEF04
    /* AE4D4 800BDCD4 09000524 */   addiu     $a1, $zero, 0x9
    /* AE4D8 800BDCD8 05004014 */  bnez       $v0, .L800BDCF0
    /* AE4DC 800BDCDC 2120E002 */   addu      $a0, $s7, $zero
    /* AE4E0 800BDCE0 C17B030C */  jal        func_800DEF04
    /* AE4E4 800BDCE4 18000524 */   addiu     $a1, $zero, 0x18
    /* AE4E8 800BDCE8 02004010 */  beqz       $v0, .L800BDCF4
    /* AE4EC 800BDCEC 00000000 */   nop
  .L800BDCF0:
    /* AE4F0 800BDCF0 01001024 */  addiu      $s0, $zero, 0x1
  .L800BDCF4:
    /* AE4F4 800BDCF4 07000016 */  bnez       $s0, .L800BDD14
    /* AE4F8 800BDCF8 01000224 */   addiu     $v0, $zero, 0x1
  .L800BDCFC:
    /* AE4FC 800BDCFC 01005226 */  addiu      $s2, $s2, 0x1
    /* AE500 800BDD00 0800422A */  slti       $v0, $s2, 0x8
    /* AE504 800BDD04 D2FF4014 */  bnez       $v0, .L800BDC50
    /* AE508 800BDD08 78057326 */   addiu     $s3, $s3, 0x578
    /* AE50C 800BDD0C 66F70208 */  j          .L800BDD98
    /* AE510 800BDD10 0100D626 */   addiu     $s6, $s6, 0x1
  .L800BDD14:
    /* AE514 800BDD14 64F70208 */  j          .L800BDD90
    /* AE518 800BDD18 000082A2 */   sb        $v0, 0x0($s4)
  .L800BDD1C:
    /* AE51C 800BDD1C 21300000 */  addu       $a2, $zero, $zero
    /* AE520 800BDD20 40101700 */  sll        $v0, $s7, 1
    /* AE524 800BDD24 21105700 */  addu       $v0, $v0, $s7
    /* AE528 800BDD28 80100200 */  sll        $v0, $v0, 2
    /* AE52C 800BDD2C 23105700 */  subu       $v0, $v0, $s7
    /* AE530 800BDD30 00110200 */  sll        $v0, $v0, 4
    /* AE534 800BDD34 23105700 */  subu       $v0, $v0, $s7
    /* AE538 800BDD38 C0180200 */  sll        $v1, $v0, 3
    /* AE53C 800BDD3C 1180053C */  lui        $a1, %hi(D_80117763)
    /* AE540 800BDD40 6377A524 */  addiu      $a1, $a1, %lo(D_80117763)
    /* AE544 800BDD44 21106500 */  addu       $v0, $v1, $a1
    /* AE548 800BDD48 21105600 */  addu       $v0, $v0, $s6
    /* AE54C 800BDD4C 00004290 */  lbu        $v0, 0x0($v0)
    /* AE550 800BDD50 00000000 */  nop
    /* AE554 800BDD54 08004014 */  bnez       $v0, .L800BDD78
    /* AE558 800BDD58 21208002 */   addu      $a0, $s4, $zero
    /* AE55C 800BDD5C 6C00A224 */  addiu      $v0, $a1, 0x6C
    /* AE560 800BDD60 21106200 */  addu       $v0, $v1, $v0
    /* AE564 800BDD64 21105600 */  addu       $v0, $v0, $s6
    /* AE568 800BDD68 00004290 */  lbu        $v0, 0x0($v0)
    /* AE56C 800BDD6C 00000000 */  nop
    /* AE570 800BDD70 02004010 */  beqz       $v0, .L800BDD7C
    /* AE574 800BDD74 00000000 */   nop
  .L800BDD78:
    /* AE578 800BDD78 01000624 */  addiu      $a2, $zero, 0x1
  .L800BDD7C:
    /* AE57C 800BDD7C 000086A0 */  sb         $a2, 0x0($a0)
    /* AE580 800BDD80 00008292 */  lbu        $v0, 0x0($s4)
    /* AE584 800BDD84 00000000 */  nop
    /* AE588 800BDD88 02004010 */  beqz       $v0, .L800BDD94
    /* AE58C 800BDD8C 00000000 */   nop
  .L800BDD90:
    /* AE590 800BDD90 01003126 */  addiu      $s1, $s1, 0x1
  .L800BDD94:
    /* AE594 800BDD94 0100D626 */  addiu      $s6, $s6, 0x1
  .L800BDD98:
    /* AE598 800BDD98 3600C22A */  slti       $v0, $s6, 0x36
    /* AE59C 800BDD9C A3FF4014 */  bnez       $v0, .L800BDC2C
    /* AE5A0 800BDDA0 01009426 */   addiu     $s4, $s4, 0x1
    /* AE5A4 800BDDA4 6800AA8F */  lw         $t2, 0x68($sp)
    /* AE5A8 800BDDA8 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* AE5AC 800BDDAC 21202A02 */  addu       $a0, $s1, $t2
    /* AE5B0 800BDDB0 1A008A00 */  div        $zero, $a0, $t2
    /* AE5B4 800BDDB4 02004015 */  bnez       $t2, .L800BDDC0
    /* AE5B8 800BDDB8 00000000 */   nop
    /* AE5BC 800BDDBC 0D000700 */  break      7
  .L800BDDC0:
    /* AE5C0 800BDDC0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* AE5C4 800BDDC4 04004115 */  bne        $t2, $at, .L800BDDD8
    /* AE5C8 800BDDC8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AE5CC 800BDDCC 02008114 */  bne        $a0, $at, .L800BDDD8
    /* AE5D0 800BDDD0 00000000 */   nop
    /* AE5D4 800BDDD4 0D000600 */  break      6
  .L800BDDD8:
    /* AE5D8 800BDDD8 12200000 */  mflo       $a0
    /* AE5DC 800BDDDC 01000524 */  addiu      $a1, $zero, 0x1
    /* AE5E0 800BDDE0 63000624 */  addiu      $a2, $zero, 0x63
    /* AE5E4 800BDDE4 38000924 */  addiu      $t1, $zero, 0x38
    /* AE5E8 800BDDE8 21B00000 */  addu       $s6, $zero, $zero
    /* AE5EC 800BDDEC 1280103C */  lui        $s0, %hi(D_801210C0)
    /* AE5F0 800BDDF0 C0101026 */  addiu      $s0, $s0, %lo(D_801210C0)
    /* AE5F4 800BDDF4 7800A0AF */  sw         $zero, 0x78($sp)
    /* AE5F8 800BDDF8 8000A9AF */  sw         $t1, 0x80($sp)
    /* AE5FC 800BDDFC 11800A3C */  lui        $t2, %hi(D_8010D280)
    /* AE600 800BDE00 80D24A25 */  addiu      $t2, $t2, %lo(D_8010D280)
    /* AE604 800BDE04 F53A030C */  jal        func_800CEBD4
    /* AE608 800BDE08 9000AAAF */   sw        $t2, 0x90($sp)
    /* AE60C 800BDE0C 21202002 */  addu       $a0, $s1, $zero
    /* AE610 800BDE10 21280000 */  addu       $a1, $zero, $zero
    /* AE614 800BDE14 E7030624 */  addiu      $a2, $zero, 0x3E7
    /* AE618 800BDE18 F53A030C */  jal        func_800CEBD4
    /* AE61C 800BDE1C 000002AE */   sw        $v0, 0x0($s0)
    /* AE620 800BDE20 21280000 */  addu       $a1, $zero, $zero
    /* AE624 800BDE24 1280043C */  lui        $a0, %hi(D_801210C8)
    /* AE628 800BDE28 C810848C */  lw         $a0, %lo(D_801210C8)($a0)
    /* AE62C 800BDE2C F53A030C */  jal        func_800CEBD4
    /* AE630 800BDE30 21304000 */   addu      $a2, $v0, $zero
    /* AE634 800BDE34 40181700 */  sll        $v1, $s7, 1
    /* AE638 800BDE38 21187700 */  addu       $v1, $v1, $s7
    /* AE63C 800BDE3C 80180300 */  sll        $v1, $v1, 2
    /* AE640 800BDE40 23187700 */  subu       $v1, $v1, $s7
    /* AE644 800BDE44 00190300 */  sll        $v1, $v1, 4
    /* AE648 800BDE48 23187700 */  subu       $v1, $v1, $s7
    /* AE64C 800BDE4C C0180300 */  sll        $v1, $v1, 3
    /* AE650 800BDE50 8800A3AF */  sw         $v1, 0x88($sp)
    /* AE654 800BDE54 1280033C */  lui        $v1, %hi(D_80121110)
    /* AE658 800BDE58 1011638C */  lw         $v1, %lo(D_80121110)($v1)
    /* AE65C 800BDE5C 21A00000 */  addu       $s4, $zero, $zero
    /* AE660 800BDE60 7000A2AF */  sw         $v0, 0x70($sp)
    /* AE664 800BDE64 1280013C */  lui        $at, %hi(D_801210C8)
    /* AE668 800BDE68 C81022AC */  sw         $v0, %lo(D_801210C8)($at)
    /* AE66C 800BDE6C 01007E2C */  sltiu      $fp, $v1, 0x1
  .L800BDE70:
    /* AE670 800BDE70 3600C22A */  slti       $v0, $s6, 0x36
    /* AE674 800BDE74 89024010 */  beqz       $v0, .L800BE89C
    /* AE678 800BDE78 2110B603 */   addu      $v0, $sp, $s6
    /* AE67C 800BDE7C 18004290 */  lbu        $v0, 0x18($v0)
    /* AE680 800BDE80 00000000 */  nop
    /* AE684 800BDE84 7F024010 */  beqz       $v0, .L800BE884
    /* AE688 800BDE88 00000000 */   nop
    /* AE68C 800BDE8C 7800A98F */  lw         $t1, 0x78($sp)
    /* AE690 800BDE90 7000AA8F */  lw         $t2, 0x70($sp)
    /* AE694 800BDE94 01002925 */  addiu      $t1, $t1, 0x1
    /* AE698 800BDE98 FFFF2325 */  addiu      $v1, $t1, -0x1
    /* AE69C 800BDE9C 2A106A00 */  slt        $v0, $v1, $t2
    /* AE6A0 800BDEA0 78024014 */  bnez       $v0, .L800BE884
    /* AE6A4 800BDEA4 7800A9AF */   sw        $t1, 0x78($sp)
    /* AE6A8 800BDEA8 6800A98F */  lw         $t1, 0x68($sp)
    /* AE6AC 800BDEAC 00000000 */  nop
    /* AE6B0 800BDEB0 21104901 */  addu       $v0, $t2, $t1
    /* AE6B4 800BDEB4 2A106200 */  slt        $v0, $v1, $v0
    /* AE6B8 800BDEB8 72024010 */  beqz       $v0, .L800BE884
    /* AE6BC 800BDEBC 2120C002 */   addu      $a0, $s6, $zero
    /* AE6C0 800BDEC0 6E51020C */  jal        func_800945B8
    /* AE6C4 800BDEC4 2128E002 */   addu      $a1, $s7, $zero
    /* AE6C8 800BDEC8 1280043C */  lui        $a0, %hi(D_80120D84)
    /* AE6CC 800BDECC 840D8424 */  addiu      $a0, $a0, %lo(D_80120D84)
    /* AE6D0 800BDED0 21284000 */  addu       $a1, $v0, $zero
    /* AE6D4 800BDED4 21300000 */  addu       $a2, $zero, $zero
    /* AE6D8 800BDED8 8000AA8F */  lw         $t2, 0x80($sp)
    /* AE6DC 800BDEDC 10000724 */  addiu      $a3, $zero, 0x10
    /* AE6E0 800BDEE0 1400A0AF */  sw         $zero, 0x14($sp)
    /* AE6E4 800BDEE4 4CBB020C */  jal        func_800AED30
    /* AE6E8 800BDEE8 1000AAAF */   sw        $t2, 0x10($sp)
    /* AE6EC 800BDEEC 3E0C040C */  jal        func_801030F8
    /* AE6F0 800BDEF0 01000424 */   addiu     $a0, $zero, 0x1
    /* AE6F4 800BDEF4 1280023C */  lui        $v0, %hi(D_80120E58)
    /* AE6F8 800BDEF8 580E428C */  lw         $v0, %lo(D_80120E58)($v0)
    /* AE6FC 800BDEFC 8000B58F */  lw         $s5, 0x80($sp)
    /* AE700 800BDF00 2400C013 */  beqz       $fp, .L800BDF94
    /* AE704 800BDF04 2C005124 */   addiu     $s1, $v0, 0x2C
    /* AE708 800BDF08 8000A997 */  lhu        $t1, 0x80($sp)
    /* AE70C 800BDF0C 1280033C */  lui        $v1, %hi(D_80121110)
    /* AE710 800BDF10 1011638C */  lw         $v1, %lo(D_80121110)($v1)
    /* AE714 800BDF14 8000AA8F */  lw         $t2, 0x80($sp)
    /* AE718 800BDF18 AC004224 */  addiu      $v0, $v0, 0xAC
    /* AE71C 800BDF1C 5000B1A7 */  sh         $s1, 0x50($sp)
    /* AE720 800BDF20 5400A2A7 */  sh         $v0, 0x54($sp)
    /* AE724 800BDF24 0C004225 */  addiu      $v0, $t2, 0xC
    /* AE728 800BDF28 5200A9A7 */  sh         $t1, 0x52($sp)
    /* AE72C 800BDF2C 0E006014 */  bnez       $v1, .L800BDF68
    /* AE730 800BDF30 5600A2A7 */   sh        $v0, 0x56($sp)
    /* AE734 800BDF34 1180013C */  lui        $at, %hi(D_8010D27C)
    /* AE738 800BDF38 21083400 */  addu       $at, $at, $s4
    /* AE73C 800BDF3C 7CD2248C */  lw         $a0, %lo(D_8010D27C)($at)
    /* AE740 800BDF40 A63A030C */  jal        func_800CEA98
    /* AE744 800BDF44 3C003326 */   addiu     $s3, $s1, 0x3C
    /* AE748 800BDF48 21204000 */  addu       $a0, $v0, $zero
    /* AE74C 800BDF4C 5000A527 */  addiu      $a1, $sp, 0x50
    /* AE750 800BDF50 DC0F040C */  jal        func_80103F70
    /* AE754 800BDF54 10000624 */   addiu     $a2, $zero, 0x10
    /* AE758 800BDF58 1280013C */  lui        $at, %hi(D_80121110)
    /* AE75C 800BDF5C 101122AC */  sw         $v0, %lo(D_80121110)($at)
    /* AE760 800BDF60 E6F70208 */  j          .L800BDF98
    /* AE764 800BDF64 00000000 */   nop
  .L800BDF68:
    /* AE768 800BDF68 1180013C */  lui        $at, %hi(D_8010D27C)
    /* AE76C 800BDF6C 21083400 */  addu       $at, $at, $s4
    /* AE770 800BDF70 7CD2248C */  lw         $a0, %lo(D_8010D27C)($at)
    /* AE774 800BDF74 A63A030C */  jal        func_800CEA98
    /* AE778 800BDF78 00000000 */   nop
    /* AE77C 800BDF7C 21284000 */  addu       $a1, $v0, $zero
    /* AE780 800BDF80 5000A627 */  addiu      $a2, $sp, 0x50
    /* AE784 800BDF84 1280043C */  lui        $a0, %hi(D_80121110)
    /* AE788 800BDF88 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AE78C 800BDF8C 5511040C */  jal        func_80104554
    /* AE790 800BDF90 10000724 */   addiu     $a3, $zero, 0x10
  .L800BDF94:
    /* AE794 800BDF94 3C003326 */  addiu      $s3, $s1, 0x3C
  .L800BDF98:
    /* AE798 800BDF98 1280023C */  lui        $v0, %hi(D_80121104)
    /* AE79C 800BDF9C 0411428C */  lw         $v0, %lo(D_80121104)($v0)
    /* AE7A0 800BDFA0 00000000 */  nop
    /* AE7A4 800BDFA4 90014014 */  bnez       $v0, .L800BE5E8
    /* AE7A8 800BDFA8 21886002 */   addu      $s1, $s3, $zero
    /* AE7AC 800BDFAC 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE7B0 800BDFB0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE7B4 800BDFB4 CB1A030C */  jal        func_800C6B2C
    /* AE7B8 800BDFB8 00000000 */   nop
    /* AE7BC 800BDFBC 1180013C */  lui        $at, %hi(D_8010D288)
    /* AE7C0 800BDFC0 21083400 */  addu       $at, $at, $s4
    /* AE7C4 800BDFC4 88D22580 */  lb         $a1, %lo(D_8010D288)($at)
    /* AE7C8 800BDFC8 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE7CC 800BDFCC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE7D0 800BDFD0 9C1B030C */  jal        func_800C6E70
    /* AE7D4 800BDFD4 00000000 */   nop
    /* AE7D8 800BDFD8 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE7DC 800BDFDC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE7E0 800BDFE0 1680053C */  lui        $a1, %hi(D_80158FF0)
    /* AE7E4 800BDFE4 F08FA524 */  addiu      $a1, $a1, %lo(D_80158FF0)
    /* AE7E8 800BDFE8 9987030C */  jal        func_800E1E64
    /* AE7EC 800BDFEC 00000000 */   nop
    /* AE7F0 800BDFF0 1180013C */  lui        $at, %hi(D_8010D289)
    /* AE7F4 800BDFF4 21083400 */  addu       $at, $at, $s4
    /* AE7F8 800BDFF8 89D22580 */  lb         $a1, %lo(D_8010D289)($at)
    /* AE7FC 800BDFFC 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE800 800BE000 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE804 800BE004 9C1B030C */  jal        func_800C6E70
    /* AE808 800BE008 00000000 */   nop
    /* AE80C 800BE00C 9000A98F */  lw         $t1, 0x90($sp)
    /* AE810 800BE010 00000000 */  nop
    /* AE814 800BE014 0000228D */  lw         $v0, 0x0($t1)
    /* AE818 800BE018 00000000 */  nop
    /* AE81C 800BE01C 00044230 */  andi       $v0, $v0, 0x400
    /* AE820 800BE020 07004010 */  beqz       $v0, .L800BE040
    /* AE824 800BE024 00000000 */   nop
    /* AE828 800BE028 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE82C 800BE02C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE830 800BE030 1680053C */  lui        $a1, %hi(D_80158FF8)
    /* AE834 800BE034 F88FA524 */  addiu      $a1, $a1, %lo(D_80158FF8)
    /* AE838 800BE038 9987030C */  jal        func_800E1E64
    /* AE83C 800BE03C 00000000 */   nop
  .L800BE040:
    /* AE840 800BE040 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE844 800BE044 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE848 800BE048 1680053C */  lui        $a1, %hi(D_80158FF0)
    /* AE84C 800BE04C F08FA524 */  addiu      $a1, $a1, %lo(D_80158FF0)
    /* AE850 800BE050 9987030C */  jal        func_800E1E64
    /* AE854 800BE054 00000000 */   nop
    /* AE858 800BE058 1180013C */  lui        $at, %hi(D_8010D286)
    /* AE85C 800BE05C 21083400 */  addu       $at, $at, $s4
    /* AE860 800BE060 86D22580 */  lb         $a1, %lo(D_8010D286)($at)
    /* AE864 800BE064 1280023C */  lui        $v0, %hi(D_8011A5C8)
    /* AE868 800BE068 C8A54290 */  lbu        $v0, %lo(D_8011A5C8)($v0)
    /* AE86C 800BE06C 00000000 */  nop
    /* AE870 800BE070 1A00A200 */  div        $zero, $a1, $v0
    /* AE874 800BE074 02004014 */  bnez       $v0, .L800BE080
    /* AE878 800BE078 00000000 */   nop
    /* AE87C 800BE07C 0D000700 */  break      7
  .L800BE080:
    /* AE880 800BE080 FFFF0124 */  addiu      $at, $zero, -0x1
    /* AE884 800BE084 04004114 */  bne        $v0, $at, .L800BE098
    /* AE888 800BE088 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AE88C 800BE08C 0200A114 */  bne        $a1, $at, .L800BE098
    /* AE890 800BE090 00000000 */   nop
    /* AE894 800BE094 0D000600 */  break      6
  .L800BE098:
    /* AE898 800BE098 12280000 */  mflo       $a1
    /* AE89C 800BE09C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE8A0 800BE0A0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE8A4 800BE0A4 9C1B030C */  jal        func_800C6E70
    /* AE8A8 800BE0A8 00000000 */   nop
    /* AE8AC 800BE0AC 0D00C013 */  beqz       $fp, .L800BE0E4
    /* AE8B0 800BE0B0 5000A627 */   addiu     $a2, $sp, 0x50
    /* AE8B4 800BE0B4 1280053C */  lui        $a1, %hi(D_80121340)
    /* AE8B8 800BE0B8 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* AE8BC 800BE0BC 10000724 */  addiu      $a3, $zero, 0x10
    /* AE8C0 800BE0C0 1280043C */  lui        $a0, %hi(D_80121110)
    /* AE8C4 800BE0C4 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AE8C8 800BE0C8 80006226 */  addiu      $v0, $s3, 0x80
    /* AE8CC 800BE0CC 5400A2A7 */  sh         $v0, 0x54($sp)
    /* AE8D0 800BE0D0 0C00A226 */  addiu      $v0, $s5, 0xC
    /* AE8D4 800BE0D4 5000B3A7 */  sh         $s3, 0x50($sp)
    /* AE8D8 800BE0D8 5200B5A7 */  sh         $s5, 0x52($sp)
    /* AE8DC 800BE0DC 5511040C */  jal        func_80104554
    /* AE8E0 800BE0E0 5600A2A7 */   sh        $v0, 0x56($sp)
  .L800BE0E4:
    /* AE8E4 800BE0E4 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE8E8 800BE0E8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE8EC 800BE0EC AD87030C */  jal        func_800E1EB4
    /* AE8F0 800BE0F0 37003326 */   addiu     $s3, $s1, 0x37
    /* AE8F4 800BE0F4 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE8F8 800BE0F8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE8FC 800BE0FC CB1A030C */  jal        func_800C6B2C
    /* AE900 800BE100 00000000 */   nop
    /* AE904 800BE104 6666043C */  lui        $a0, (0x66666667 >> 16)
    /* AE908 800BE108 1180013C */  lui        $at, %hi(D_8010D28A)
    /* AE90C 800BE10C 21083400 */  addu       $at, $at, $s4
    /* AE910 800BE110 8AD22390 */  lbu        $v1, %lo(D_8010D28A)($at)
    /* AE914 800BE114 67668434 */  ori        $a0, $a0, (0x66666667 & 0xFFFF)
    /* AE918 800BE118 001E0300 */  sll        $v1, $v1, 24
    /* AE91C 800BE11C 03160300 */  sra        $v0, $v1, 24
    /* AE920 800BE120 18004400 */  mult       $v0, $a0
    /* AE924 800BE124 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE928 800BE128 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE92C 800BE12C C31F0300 */  sra        $v1, $v1, 31
    /* AE930 800BE130 10500000 */  mfhi       $t2
    /* AE934 800BE134 83280A00 */  sra        $a1, $t2, 2
    /* AE938 800BE138 2328A300 */  subu       $a1, $a1, $v1
    /* AE93C 800BE13C 002E0500 */  sll        $a1, $a1, 24
    /* AE940 800BE140 9C1B030C */  jal        func_800C6E70
    /* AE944 800BE144 032E0500 */   sra       $a1, $a1, 24
    /* AE948 800BE148 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE94C 800BE14C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE950 800BE150 1680053C */  lui        $a1, %hi(D_80158FF0)
    /* AE954 800BE154 F08FA524 */  addiu      $a1, $a1, %lo(D_80158FF0)
    /* AE958 800BE158 9987030C */  jal        func_800E1E64
    /* AE95C 800BE15C 00000000 */   nop
    /* AE960 800BE160 1180013C */  lui        $at, %hi(D_8010D28B)
    /* AE964 800BE164 21083400 */  addu       $at, $at, $s4
    /* AE968 800BE168 8BD22580 */  lb         $a1, %lo(D_8010D28B)($at)
    /* AE96C 800BE16C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE970 800BE170 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE974 800BE174 9C1B030C */  jal        func_800C6E70
    /* AE978 800BE178 00000000 */   nop
    /* AE97C 800BE17C 0D00C013 */  beqz       $fp, .L800BE1B4
    /* AE980 800BE180 5000A627 */   addiu     $a2, $sp, 0x50
    /* AE984 800BE184 1280053C */  lui        $a1, %hi(D_80121340)
    /* AE988 800BE188 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* AE98C 800BE18C 10000724 */  addiu      $a3, $zero, 0x10
    /* AE990 800BE190 1280043C */  lui        $a0, %hi(D_80121110)
    /* AE994 800BE194 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AE998 800BE198 80006226 */  addiu      $v0, $s3, 0x80
    /* AE99C 800BE19C 5400A2A7 */  sh         $v0, 0x54($sp)
    /* AE9A0 800BE1A0 0C00A226 */  addiu      $v0, $s5, 0xC
    /* AE9A4 800BE1A4 5000B3A7 */  sh         $s3, 0x50($sp)
    /* AE9A8 800BE1A8 5200B5A7 */  sh         $s5, 0x52($sp)
    /* AE9AC 800BE1AC 5511040C */  jal        func_80104554
    /* AE9B0 800BE1B0 5600A2A7 */   sh        $v0, 0x56($sp)
  .L800BE1B4:
    /* AE9B4 800BE1B4 20007326 */  addiu      $s3, $s3, 0x20
    /* AE9B8 800BE1B8 8800A98F */  lw         $t1, 0x88($sp)
    /* AE9BC 800BE1BC 1180023C */  lui        $v0, %hi(D_80117763)
    /* AE9C0 800BE1C0 63774224 */  addiu      $v0, $v0, %lo(D_80117763)
    /* AE9C4 800BE1C4 21102201 */  addu       $v0, $t1, $v0
    /* AE9C8 800BE1C8 21805600 */  addu       $s0, $v0, $s6
    /* AE9CC 800BE1CC 00000292 */  lbu        $v0, 0x0($s0)
    /* AE9D0 800BE1D0 00000000 */  nop
    /* AE9D4 800BE1D4 22004010 */  beqz       $v0, .L800BE260
    /* AE9D8 800BE1D8 21886002 */   addu      $s1, $s3, $zero
    /* AE9DC 800BE1DC 3E0C040C */  jal        func_801030F8
    /* AE9E0 800BE1E0 04000424 */   addiu     $a0, $zero, 0x4
    /* AE9E4 800BE1E4 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE9E8 800BE1E8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AE9EC 800BE1EC CB1A030C */  jal        func_800C6B2C
    /* AE9F0 800BE1F0 00000000 */   nop
    /* AE9F4 800BE1F4 00000592 */  lbu        $a1, 0x0($s0)
    /* AE9F8 800BE1F8 1280043C */  lui        $a0, %hi(D_80121340)
    /* AE9FC 800BE1FC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AEA00 800BE200 9C1B030C */  jal        func_800C6E70
    /* AEA04 800BE204 00000000 */   nop
    /* AEA08 800BE208 1280043C */  lui        $a0, %hi(D_80121340)
    /* AEA0C 800BE20C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AEA10 800BE210 CD1A030C */  jal        func_800C6B34
    /* AEA14 800BE214 00000000 */   nop
    /* AEA18 800BE218 1280043C */  lui        $a0, %hi(D_80121340)
    /* AEA1C 800BE21C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AEA20 800BE220 731B030C */  jal        func_800C6DCC
    /* AEA24 800BE224 5A010524 */   addiu     $a1, $zero, 0x15A
    /* AEA28 800BE228 0D00C013 */  beqz       $fp, .L800BE260
    /* AEA2C 800BE22C 5000A627 */   addiu     $a2, $sp, 0x50
    /* AEA30 800BE230 1280053C */  lui        $a1, %hi(D_80121340)
    /* AEA34 800BE234 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* AEA38 800BE238 10000724 */  addiu      $a3, $zero, 0x10
    /* AEA3C 800BE23C 1280043C */  lui        $a0, %hi(D_80121110)
    /* AEA40 800BE240 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AEA44 800BE244 80006226 */  addiu      $v0, $s3, 0x80
    /* AEA48 800BE248 5400A2A7 */  sh         $v0, 0x54($sp)
    /* AEA4C 800BE24C 0C00A226 */  addiu      $v0, $s5, 0xC
    /* AEA50 800BE250 5000B3A7 */  sh         $s3, 0x50($sp)
    /* AEA54 800BE254 5200B5A7 */  sh         $s5, 0x52($sp)
    /* AEA58 800BE258 5511040C */  jal        func_80104554
    /* AEA5C 800BE25C 5600A2A7 */   sh        $v0, 0x56($sp)
  .L800BE260:
    /* AEA60 800BE260 8800AA8F */  lw         $t2, 0x88($sp)
    /* AEA64 800BE264 1180023C */  lui        $v0, %hi(D_801177CF)
    /* AEA68 800BE268 CF774224 */  addiu      $v0, $v0, %lo(D_801177CF)
    /* AEA6C 800BE26C 21104201 */  addu       $v0, $t2, $v0
    /* AEA70 800BE270 21805600 */  addu       $s0, $v0, $s6
    /* AEA74 800BE274 00000292 */  lbu        $v0, 0x0($s0)
    /* AEA78 800BE278 00000000 */  nop
    /* AEA7C 800BE27C 22004010 */  beqz       $v0, .L800BE308
    /* AEA80 800BE280 42003326 */   addiu     $s3, $s1, 0x42
    /* AEA84 800BE284 3E0C040C */  jal        func_801030F8
    /* AEA88 800BE288 05000424 */   addiu     $a0, $zero, 0x5
    /* AEA8C 800BE28C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AEA90 800BE290 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AEA94 800BE294 CB1A030C */  jal        func_800C6B2C
    /* AEA98 800BE298 00000000 */   nop
    /* AEA9C 800BE29C 00000592 */  lbu        $a1, 0x0($s0)
    /* AEAA0 800BE2A0 1280043C */  lui        $a0, %hi(D_80121340)
    /* AEAA4 800BE2A4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AEAA8 800BE2A8 9C1B030C */  jal        func_800C6E70
    /* AEAAC 800BE2AC 00000000 */   nop
    /* AEAB0 800BE2B0 1280043C */  lui        $a0, %hi(D_80121340)
    /* AEAB4 800BE2B4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AEAB8 800BE2B8 CD1A030C */  jal        func_800C6B34
    /* AEABC 800BE2BC 00000000 */   nop
    /* AEAC0 800BE2C0 1280043C */  lui        $a0, %hi(D_80121340)
    /* AEAC4 800BE2C4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AEAC8 800BE2C8 731B030C */  jal        func_800C6DCC
    /* AEACC 800BE2CC 5B010524 */   addiu     $a1, $zero, 0x15B
    /* AEAD0 800BE2D0 0D00C013 */  beqz       $fp, .L800BE308
    /* AEAD4 800BE2D4 5000A627 */   addiu     $a2, $sp, 0x50
    /* AEAD8 800BE2D8 1280053C */  lui        $a1, %hi(D_80121340)
    /* AEADC 800BE2DC 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* AEAE0 800BE2E0 10000724 */  addiu      $a3, $zero, 0x10
    /* AEAE4 800BE2E4 1280043C */  lui        $a0, %hi(D_80121110)
    /* AEAE8 800BE2E8 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AEAEC 800BE2EC 80006226 */  addiu      $v0, $s3, 0x80
    /* AEAF0 800BE2F0 5400A2A7 */  sh         $v0, 0x54($sp)
    /* AEAF4 800BE2F4 0C00A226 */  addiu      $v0, $s5, 0xC
    /* AEAF8 800BE2F8 5000B3A7 */  sh         $s3, 0x50($sp)
    /* AEAFC 800BE2FC 5200B5A7 */  sh         $s5, 0x52($sp)
    /* AEB00 800BE300 5511040C */  jal        func_80104554
    /* AEB04 800BE304 5600A2A7 */   sh        $v0, 0x56($sp)
  .L800BE308:
    /* AEB08 800BE308 1280023C */  lui        $v0, %hi(D_80120E58)
    /* AEB0C 800BE30C 580E428C */  lw         $v0, %lo(D_80120E58)($v0)
    /* AEB10 800BE310 1280043C */  lui        $a0, %hi(D_80121340)
    /* AEB14 800BE314 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AEB18 800BE318 CB1A030C */  jal        func_800C6B2C
    /* AEB1C 800BE31C 2C005324 */   addiu     $s3, $v0, 0x2C
    /* AEB20 800BE320 3E0C040C */  jal        func_801030F8
    /* AEB24 800BE324 04000424 */   addiu     $a0, $zero, 0x4
    /* AEB28 800BE328 2C1080AF */  sw         $zero, %gp_rel(D_80159504)($gp)
    /* AEB2C 800BE32C 1180013C */  lui        $at, %hi(D_8010D28D)
    /* AEB30 800BE330 21083400 */  addu       $at, $at, $s4
    /* AEB34 800BE334 8DD22280 */  lb         $v0, %lo(D_8010D28D)($at)
    /* AEB38 800BE338 00000000 */  nop
    /* AEB3C 800BE33C 12004010 */  beqz       $v0, .L800BE388
    /* AEB40 800BE340 0C00B526 */   addiu     $s5, $s5, 0xC
    /* AEB44 800BE344 1280043C */  lui        $a0, %hi(D_80121340)
    /* AEB48 800BE348 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AEB4C 800BE34C 731B030C */  jal        func_800C6DCC
    /* AEB50 800BE350 5C010524 */   addiu     $a1, $zero, 0x15C
    /* AEB54 800BE354 1280043C */  lui        $a0, %hi(D_80121340)
    /* AEB58 800BE358 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AEB5C 800BE35C CD1A030C */  jal        func_800C6B34
    /* AEB60 800BE360 00000000 */   nop
    /* AEB64 800BE364 1180013C */  lui        $at, %hi(D_8010D28D)
    /* AEB68 800BE368 21083400 */  addu       $at, $at, $s4
    /* AEB6C 800BE36C 8DD22580 */  lb         $a1, %lo(D_8010D28D)($at)
    /* AEB70 800BE370 1280043C */  lui        $a0, %hi(D_80121340)
    /* AEB74 800BE374 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AEB78 800BE378 9C1B030C */  jal        func_800C6E70
    /* AEB7C 800BE37C 00000000 */   nop
    /* AEB80 800BE380 01000224 */  addiu      $v0, $zero, 0x1
    /* AEB84 800BE384 2C1082AF */  sw         $v0, %gp_rel(D_80159504)($gp)
  .L800BE388:
    /* AEB88 800BE388 1180013C */  lui        $at, %hi(D_8010D280)
    /* AEB8C 800BE38C 21083400 */  addu       $at, $at, $s4
    /* AEB90 800BE390 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* AEB94 800BE394 00000000 */  nop
    /* AEB98 800BE398 10004230 */  andi       $v0, $v0, 0x10
    /* AEB9C 800BE39C 07004014 */  bnez       $v0, .L800BE3BC
    /* AEBA0 800BE3A0 5E010424 */   addiu     $a0, $zero, 0x15E
    /* AEBA4 800BE3A4 1180013C */  lui        $at, %hi(D_8010D285)
    /* AEBA8 800BE3A8 21083400 */  addu       $at, $at, $s4
    /* AEBAC 800BE3AC 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* AEBB0 800BE3B0 01000224 */  addiu      $v0, $zero, 0x1
    /* AEBB4 800BE3B4 03006214 */  bne        $v1, $v0, .L800BE3C4
    /* AEBB8 800BE3B8 5D010424 */   addiu     $a0, $zero, 0x15D
  .L800BE3BC:
    /* AEBBC 800BE3BC 05F6020C */  jal        func_800BD814
    /* AEBC0 800BE3C0 00000000 */   nop
  .L800BE3C4:
    /* AEBC4 800BE3C4 9000A98F */  lw         $t1, 0x90($sp)
    /* AEBC8 800BE3C8 00000000 */  nop
    /* AEBCC 800BE3CC 0000228D */  lw         $v0, 0x0($t1)
    /* AEBD0 800BE3D0 00000000 */  nop
    /* AEBD4 800BE3D4 01004230 */  andi       $v0, $v0, 0x1
    /* AEBD8 800BE3D8 03004010 */  beqz       $v0, .L800BE3E8
    /* AEBDC 800BE3DC 21808002 */   addu      $s0, $s4, $zero
    /* AEBE0 800BE3E0 05F6020C */  jal        func_800BD814
    /* AEBE4 800BE3E4 5F010424 */   addiu     $a0, $zero, 0x15F
  .L800BE3E8:
    /* AEBE8 800BE3E8 1180013C */  lui        $at, %hi(D_8010D280)
    /* AEBEC 800BE3EC 21083400 */  addu       $at, $at, $s4
    /* AEBF0 800BE3F0 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* AEBF4 800BE3F4 00000000 */  nop
    /* AEBF8 800BE3F8 02004230 */  andi       $v0, $v0, 0x2
    /* AEBFC 800BE3FC 03004010 */  beqz       $v0, .L800BE40C
    /* AEC00 800BE400 00000000 */   nop
    /* AEC04 800BE404 05F6020C */  jal        func_800BD814
    /* AEC08 800BE408 60010424 */   addiu     $a0, $zero, 0x160
  .L800BE40C:
    /* AEC0C 800BE40C 1180013C */  lui        $at, %hi(D_8010D280)
    /* AEC10 800BE410 21083400 */  addu       $at, $at, $s4
    /* AEC14 800BE414 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* AEC18 800BE418 00000000 */  nop
    /* AEC1C 800BE41C 40004230 */  andi       $v0, $v0, 0x40
    /* AEC20 800BE420 03004010 */  beqz       $v0, .L800BE430
    /* AEC24 800BE424 00000000 */   nop
    /* AEC28 800BE428 05F6020C */  jal        func_800BD814
    /* AEC2C 800BE42C 61010424 */   addiu     $a0, $zero, 0x161
  .L800BE430:
    /* AEC30 800BE430 1180013C */  lui        $at, %hi(D_8010D280)
    /* AEC34 800BE434 21083400 */  addu       $at, $at, $s4
    /* AEC38 800BE438 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* AEC3C 800BE43C 00000000 */  nop
    /* AEC40 800BE440 04004230 */  andi       $v0, $v0, 0x4
    /* AEC44 800BE444 03004010 */  beqz       $v0, .L800BE454
    /* AEC48 800BE448 00000000 */   nop
    /* AEC4C 800BE44C 05F6020C */  jal        func_800BD814
    /* AEC50 800BE450 62010424 */   addiu     $a0, $zero, 0x162
  .L800BE454:
    /* AEC54 800BE454 1180013C */  lui        $at, %hi(D_8010D280)
    /* AEC58 800BE458 21083400 */  addu       $at, $at, $s4
    /* AEC5C 800BE45C 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* AEC60 800BE460 00000000 */  nop
    /* AEC64 800BE464 08004230 */  andi       $v0, $v0, 0x8
    /* AEC68 800BE468 03004010 */  beqz       $v0, .L800BE478
    /* AEC6C 800BE46C 00000000 */   nop
    /* AEC70 800BE470 05F6020C */  jal        func_800BD814
    /* AEC74 800BE474 63010424 */   addiu     $a0, $zero, 0x163
  .L800BE478:
    /* AEC78 800BE478 1180013C */  lui        $at, %hi(D_8010D280)
    /* AEC7C 800BE47C 21083400 */  addu       $at, $at, $s4
    /* AEC80 800BE480 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* AEC84 800BE484 00000000 */  nop
    /* AEC88 800BE488 80004230 */  andi       $v0, $v0, 0x80
    /* AEC8C 800BE48C 03004010 */  beqz       $v0, .L800BE49C
    /* AEC90 800BE490 00000000 */   nop
    /* AEC94 800BE494 05F6020C */  jal        func_800BD814
    /* AEC98 800BE498 64010424 */   addiu     $a0, $zero, 0x164
  .L800BE49C:
    /* AEC9C 800BE49C 1180013C */  lui        $at, %hi(D_8010D280)
    /* AECA0 800BE4A0 21083400 */  addu       $at, $at, $s4
    /* AECA4 800BE4A4 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* AECA8 800BE4A8 00000000 */  nop
    /* AECAC 800BE4AC 00014230 */  andi       $v0, $v0, 0x100
    /* AECB0 800BE4B0 03004010 */  beqz       $v0, .L800BE4C0
    /* AECB4 800BE4B4 00000000 */   nop
    /* AECB8 800BE4B8 05F6020C */  jal        func_800BD814
    /* AECBC 800BE4BC 65010424 */   addiu     $a0, $zero, 0x165
  .L800BE4C0:
    /* AECC0 800BE4C0 1180013C */  lui        $at, %hi(D_8010D280)
    /* AECC4 800BE4C4 21083400 */  addu       $at, $at, $s4
    /* AECC8 800BE4C8 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* AECCC 800BE4CC 00000000 */  nop
    /* AECD0 800BE4D0 00024230 */  andi       $v0, $v0, 0x200
    /* AECD4 800BE4D4 03004010 */  beqz       $v0, .L800BE4E4
    /* AECD8 800BE4D8 00000000 */   nop
    /* AECDC 800BE4DC 05F6020C */  jal        func_800BD814
    /* AECE0 800BE4E0 66010424 */   addiu     $a0, $zero, 0x166
  .L800BE4E4:
    /* AECE4 800BE4E4 1180013C */  lui        $at, %hi(D_8010D280)
    /* AECE8 800BE4E8 21083400 */  addu       $at, $at, $s4
    /* AECEC 800BE4EC 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* AECF0 800BE4F0 00000000 */  nop
    /* AECF4 800BE4F4 00044230 */  andi       $v0, $v0, 0x400
    /* AECF8 800BE4F8 03004010 */  beqz       $v0, .L800BE508
    /* AECFC 800BE4FC 00000000 */   nop
    /* AED00 800BE500 05F6020C */  jal        func_800BD814
    /* AED04 800BE504 67010424 */   addiu     $a0, $zero, 0x167
  .L800BE508:
    /* AED08 800BE508 1180013C */  lui        $at, %hi(D_8010D280)
    /* AED0C 800BE50C 21083400 */  addu       $at, $at, $s4
    /* AED10 800BE510 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* AED14 800BE514 00000000 */  nop
    /* AED18 800BE518 00204230 */  andi       $v0, $v0, 0x2000
    /* AED1C 800BE51C 03004010 */  beqz       $v0, .L800BE52C
    /* AED20 800BE520 00000000 */   nop
    /* AED24 800BE524 05F6020C */  jal        func_800BD814
    /* AED28 800BE528 68010424 */   addiu     $a0, $zero, 0x168
  .L800BE52C:
    /* AED2C 800BE52C 1180013C */  lui        $at, %hi(D_8010D280)
    /* AED30 800BE530 21083000 */  addu       $at, $at, $s0
    /* AED34 800BE534 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* AED38 800BE538 00000000 */  nop
    /* AED3C 800BE53C 20004230 */  andi       $v0, $v0, 0x20
    /* AED40 800BE540 03004010 */  beqz       $v0, .L800BE550
    /* AED44 800BE544 00000000 */   nop
    /* AED48 800BE548 05F6020C */  jal        func_800BD814
    /* AED4C 800BE54C 69010424 */   addiu     $a0, $zero, 0x169
  .L800BE550:
    /* AED50 800BE550 1180013C */  lui        $at, %hi(D_8010D280)
    /* AED54 800BE554 21083000 */  addu       $at, $at, $s0
    /* AED58 800BE558 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* AED5C 800BE55C 00000000 */  nop
    /* AED60 800BE560 00084230 */  andi       $v0, $v0, 0x800
    /* AED64 800BE564 03004010 */  beqz       $v0, .L800BE574
    /* AED68 800BE568 00000000 */   nop
    /* AED6C 800BE56C 05F6020C */  jal        func_800BD814
    /* AED70 800BE570 6A010424 */   addiu     $a0, $zero, 0x16A
  .L800BE574:
    /* AED74 800BE574 1180013C */  lui        $at, %hi(D_8010D280)
    /* AED78 800BE578 21083000 */  addu       $at, $at, $s0
    /* AED7C 800BE57C 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* AED80 800BE580 00000000 */  nop
    /* AED84 800BE584 00404230 */  andi       $v0, $v0, 0x4000
    /* AED88 800BE588 03004010 */  beqz       $v0, .L800BE598
    /* AED8C 800BE58C 00000000 */   nop
    /* AED90 800BE590 05F6020C */  jal        func_800BD814
    /* AED94 800BE594 6B010424 */   addiu     $a0, $zero, 0x16B
  .L800BE598:
    /* AED98 800BE598 2C10828F */  lw         $v0, %gp_rel(D_80159504)($gp)
    /* AED9C 800BE59C 00000000 */  nop
    /* AEDA0 800BE5A0 B4004010 */  beqz       $v0, .L800BE874
    /* AEDA4 800BE5A4 00000000 */   nop
    /* AEDA8 800BE5A8 B200C013 */  beqz       $fp, .L800BE874
    /* AEDAC 800BE5AC 5000A627 */   addiu     $a2, $sp, 0x50
    /* AEDB0 800BE5B0 1280053C */  lui        $a1, %hi(D_80121340)
    /* AEDB4 800BE5B4 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* AEDB8 800BE5B8 10000724 */  addiu      $a3, $zero, 0x10
    /* AEDBC 800BE5BC 1280043C */  lui        $a0, %hi(D_80121110)
    /* AEDC0 800BE5C0 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AEDC4 800BE5C4 80006226 */  addiu      $v0, $s3, 0x80
    /* AEDC8 800BE5C8 5400A2A7 */  sh         $v0, 0x54($sp)
    /* AEDCC 800BE5CC 0C00A226 */  addiu      $v0, $s5, 0xC
    /* AEDD0 800BE5D0 5000B3A7 */  sh         $s3, 0x50($sp)
    /* AEDD4 800BE5D4 5200B5A7 */  sh         $s5, 0x52($sp)
    /* AEDD8 800BE5D8 5511040C */  jal        func_80104554
    /* AEDDC 800BE5DC 5600A2A7 */   sh        $v0, 0x56($sp)
    /* AEDE0 800BE5E0 1DFA0208 */  j          .L800BE874
    /* AEDE4 800BE5E4 00000000 */   nop
  .L800BE5E8:
    /* AEDE8 800BE5E8 8800AA8F */  lw         $t2, 0x88($sp)
    /* AEDEC 800BE5EC 1180023C */  lui        $v0, %hi(D_80117799)
    /* AEDF0 800BE5F0 99774224 */  addiu      $v0, $v0, %lo(D_80117799)
    /* AEDF4 800BE5F4 21104201 */  addu       $v0, $t2, $v0
    /* AEDF8 800BE5F8 21105600 */  addu       $v0, $v0, $s6
    /* AEDFC 800BE5FC 00004290 */  lbu        $v0, 0x0($v0)
    /* AEE00 800BE600 00000000 */  nop
    /* AEE04 800BE604 31004010 */  beqz       $v0, .L800BE6CC
    /* AEE08 800BE608 00000000 */   nop
    /* AEE0C 800BE60C 0D00E012 */  beqz       $s7, .L800BE644
    /* AEE10 800BE610 00000000 */   nop
    /* AEE14 800BE614 1180013C */  lui        $at, %hi(D_80117698)
    /* AEE18 800BE618 21082A00 */  addu       $at, $at, $t2
    /* AEE1C 800BE61C 98762284 */  lh         $v0, %lo(D_80117698)($at)
    /* AEE20 800BE620 00000000 */  nop
    /* AEE24 800BE624 40180200 */  sll        $v1, $v0, 1
    /* AEE28 800BE628 21186200 */  addu       $v1, $v1, $v0
    /* AEE2C 800BE62C 00190300 */  sll        $v1, $v1, 4
    /* AEE30 800BE630 1180013C */  lui        $at, %hi(D_80116AD6)
    /* AEE34 800BE634 21082300 */  addu       $at, $at, $v1
    /* AEE38 800BE638 D66A2284 */  lh         $v0, %lo(D_80116AD6)($at)
    /* AEE3C 800BE63C 92F90208 */  j          .L800BE648
    /* AEE40 800BE640 C0100200 */   sll       $v0, $v0, 3
  .L800BE644:
    /* AEE44 800BE644 21100000 */  addu       $v0, $zero, $zero
  .L800BE648:
    /* AEE48 800BE648 1180013C */  lui        $at, %hi(D_80117654)
    /* AEE4C 800BE64C 21082200 */  addu       $at, $at, $v0
    /* AEE50 800BE650 54762484 */  lh         $a0, %lo(D_80117654)($at)
    /* AEE54 800BE654 3E0C040C */  jal        func_801030F8
    /* AEE58 800BE658 00000000 */   nop
    /* AEE5C 800BE65C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AEE60 800BE660 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AEE64 800BE664 CB1A030C */  jal        func_800C6B2C
    /* AEE68 800BE668 00000000 */   nop
    /* AEE6C 800BE66C 8800A98F */  lw         $t1, 0x88($sp)
    /* AEE70 800BE670 1180023C */  lui        $v0, %hi(D_80117799)
    /* AEE74 800BE674 99774224 */  addiu      $v0, $v0, %lo(D_80117799)
    /* AEE78 800BE678 21102201 */  addu       $v0, $t1, $v0
    /* AEE7C 800BE67C 21105600 */  addu       $v0, $v0, $s6
    /* AEE80 800BE680 00004590 */  lbu        $a1, 0x0($v0)
    /* AEE84 800BE684 1280043C */  lui        $a0, %hi(D_80121340)
    /* AEE88 800BE688 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AEE8C 800BE68C 9C1B030C */  jal        func_800C6E70
    /* AEE90 800BE690 00000000 */   nop
    /* AEE94 800BE694 0D00C013 */  beqz       $fp, .L800BE6CC
    /* AEE98 800BE698 5000A627 */   addiu     $a2, $sp, 0x50
    /* AEE9C 800BE69C 1280053C */  lui        $a1, %hi(D_80121340)
    /* AEEA0 800BE6A0 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* AEEA4 800BE6A4 10000724 */  addiu      $a3, $zero, 0x10
    /* AEEA8 800BE6A8 1280043C */  lui        $a0, %hi(D_80121110)
    /* AEEAC 800BE6AC 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AEEB0 800BE6B0 80006226 */  addiu      $v0, $s3, 0x80
    /* AEEB4 800BE6B4 5400A2A7 */  sh         $v0, 0x54($sp)
    /* AEEB8 800BE6B8 0C00A226 */  addiu      $v0, $s5, 0xC
    /* AEEBC 800BE6BC 5000B3A7 */  sh         $s3, 0x50($sp)
    /* AEEC0 800BE6C0 5200B5A7 */  sh         $s5, 0x52($sp)
    /* AEEC4 800BE6C4 5511040C */  jal        func_80104554
    /* AEEC8 800BE6C8 5600A2A7 */   sh        $v0, 0x56($sp)
  .L800BE6CC:
    /* AEECC 800BE6CC 1E007326 */  addiu      $s3, $s3, 0x1E
    /* AEED0 800BE6D0 01001224 */  addiu      $s2, $zero, 0x1
    /* AEED4 800BE6D4 78051124 */  addiu      $s1, $zero, 0x578
  .L800BE6D8:
    /* AEED8 800BE6D8 0800422A */  slti       $v0, $s2, 0x8
    /* AEEDC 800BE6DC 65004010 */  beqz       $v0, .L800BE874
    /* AEEE0 800BE6E0 00000000 */   nop
    /* AEEE4 800BE6E4 6000F212 */  beq        $s7, $s2, .L800BE868
    /* AEEE8 800BE6E8 80181200 */   sll       $v1, $s2, 2
    /* AEEEC 800BE6EC 1180043C */  lui        $a0, %hi(D_801176B4)
    /* AEEF0 800BE6F0 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* AEEF4 800BE6F4 1280053C */  lui        $a1, %hi(D_8011ACB4)
    /* AEEF8 800BE6F8 B4ACA58C */  lw         $a1, %lo(D_8011ACB4)($a1)
    /* AEEFC 800BE6FC 00000000 */  nop
    /* AEF00 800BE700 40100500 */  sll        $v0, $a1, 1
    /* AEF04 800BE704 21104500 */  addu       $v0, $v0, $a1
    /* AEF08 800BE708 80100200 */  sll        $v0, $v0, 2
    /* AEF0C 800BE70C 23104500 */  subu       $v0, $v0, $a1
    /* AEF10 800BE710 00110200 */  sll        $v0, $v0, 4
    /* AEF14 800BE714 23104500 */  subu       $v0, $v0, $a1
    /* AEF18 800BE718 C0100200 */  sll        $v0, $v0, 3
    /* AEF1C 800BE71C 21104400 */  addu       $v0, $v0, $a0
    /* AEF20 800BE720 21186200 */  addu       $v1, $v1, $v0
    /* AEF24 800BE724 0000628C */  lw         $v0, 0x0($v1)
    /* AEF28 800BE728 00000000 */  nop
    /* AEF2C 800BE72C 80004230 */  andi       $v0, $v0, 0x80
    /* AEF30 800BE730 13004014 */  bnez       $v0, .L800BE780
    /* AEF34 800BE734 21800000 */   addu      $s0, $zero, $zero
    /* AEF38 800BE738 2120A000 */  addu       $a0, $a1, $zero
    /* AEF3C 800BE73C C17B030C */  jal        func_800DEF04
    /* AEF40 800BE740 18000524 */   addiu     $a1, $zero, 0x18
    /* AEF44 800BE744 0E004014 */  bnez       $v0, .L800BE780
    /* AEF48 800BE748 00000000 */   nop
    /* AEF4C 800BE74C 1280043C */  lui        $a0, %hi(D_8011ACB4)
    /* AEF50 800BE750 B4AC848C */  lw         $a0, %lo(D_8011ACB4)($a0)
    /* AEF54 800BE754 C17B030C */  jal        func_800DEF04
    /* AEF58 800BE758 09000524 */   addiu     $a1, $zero, 0x9
    /* AEF5C 800BE75C 08004014 */  bnez       $v0, .L800BE780
    /* AEF60 800BE760 2120E002 */   addu      $a0, $s7, $zero
    /* AEF64 800BE764 C17B030C */  jal        func_800DEF04
    /* AEF68 800BE768 09000524 */   addiu     $a1, $zero, 0x9
    /* AEF6C 800BE76C 04004014 */  bnez       $v0, .L800BE780
    /* AEF70 800BE770 2120E002 */   addu      $a0, $s7, $zero
    /* AEF74 800BE774 C17B030C */  jal        func_800DEF04
    /* AEF78 800BE778 18000524 */   addiu     $a1, $zero, 0x18
    /* AEF7C 800BE77C 0100502C */  sltiu      $s0, $v0, 0x1
  .L800BE780:
    /* AEF80 800BE780 39000016 */  bnez       $s0, .L800BE868
    /* AEF84 800BE784 00000000 */   nop
    /* AEF88 800BE788 1180023C */  lui        $v0, %hi(D_80117799)
    /* AEF8C 800BE78C 99774224 */  addiu      $v0, $v0, %lo(D_80117799)
    /* AEF90 800BE790 21102202 */  addu       $v0, $s1, $v0
    /* AEF94 800BE794 21105600 */  addu       $v0, $v0, $s6
    /* AEF98 800BE798 00004290 */  lbu        $v0, 0x0($v0)
    /* AEF9C 800BE79C 00000000 */  nop
    /* AEFA0 800BE7A0 30004010 */  beqz       $v0, .L800BE864
    /* AEFA4 800BE7A4 00000000 */   nop
    /* AEFA8 800BE7A8 0D004012 */  beqz       $s2, .L800BE7E0
    /* AEFAC 800BE7AC 00000000 */   nop
    /* AEFB0 800BE7B0 1180013C */  lui        $at, %hi(D_80117698)
    /* AEFB4 800BE7B4 21083100 */  addu       $at, $at, $s1
    /* AEFB8 800BE7B8 98762284 */  lh         $v0, %lo(D_80117698)($at)
    /* AEFBC 800BE7BC 00000000 */  nop
    /* AEFC0 800BE7C0 40180200 */  sll        $v1, $v0, 1
    /* AEFC4 800BE7C4 21186200 */  addu       $v1, $v1, $v0
    /* AEFC8 800BE7C8 00190300 */  sll        $v1, $v1, 4
    /* AEFCC 800BE7CC 1180013C */  lui        $at, %hi(D_80116AD6)
    /* AEFD0 800BE7D0 21082300 */  addu       $at, $at, $v1
    /* AEFD4 800BE7D4 D66A2284 */  lh         $v0, %lo(D_80116AD6)($at)
    /* AEFD8 800BE7D8 F9F90208 */  j          .L800BE7E4
    /* AEFDC 800BE7DC C0100200 */   sll       $v0, $v0, 3
  .L800BE7E0:
    /* AEFE0 800BE7E0 21100000 */  addu       $v0, $zero, $zero
  .L800BE7E4:
    /* AEFE4 800BE7E4 1180013C */  lui        $at, %hi(D_80117654)
    /* AEFE8 800BE7E8 21082200 */  addu       $at, $at, $v0
    /* AEFEC 800BE7EC 54762484 */  lh         $a0, %lo(D_80117654)($at)
    /* AEFF0 800BE7F0 3E0C040C */  jal        func_801030F8
    /* AEFF4 800BE7F4 00000000 */   nop
    /* AEFF8 800BE7F8 1280043C */  lui        $a0, %hi(D_80121340)
    /* AEFFC 800BE7FC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AF000 800BE800 CB1A030C */  jal        func_800C6B2C
    /* AF004 800BE804 00000000 */   nop
    /* AF008 800BE808 1180023C */  lui        $v0, %hi(D_80117799)
    /* AF00C 800BE80C 99774224 */  addiu      $v0, $v0, %lo(D_80117799)
    /* AF010 800BE810 21102202 */  addu       $v0, $s1, $v0
    /* AF014 800BE814 21105600 */  addu       $v0, $v0, $s6
    /* AF018 800BE818 00004590 */  lbu        $a1, 0x0($v0)
    /* AF01C 800BE81C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AF020 800BE820 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AF024 800BE824 9C1B030C */  jal        func_800C6E70
    /* AF028 800BE828 00000000 */   nop
    /* AF02C 800BE82C 0D00C013 */  beqz       $fp, .L800BE864
    /* AF030 800BE830 5000A627 */   addiu     $a2, $sp, 0x50
    /* AF034 800BE834 1280053C */  lui        $a1, %hi(D_80121340)
    /* AF038 800BE838 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* AF03C 800BE83C 10000724 */  addiu      $a3, $zero, 0x10
    /* AF040 800BE840 1280043C */  lui        $a0, %hi(D_80121110)
    /* AF044 800BE844 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AF048 800BE848 80006226 */  addiu      $v0, $s3, 0x80
    /* AF04C 800BE84C 5400A2A7 */  sh         $v0, 0x54($sp)
    /* AF050 800BE850 0C00A226 */  addiu      $v0, $s5, 0xC
    /* AF054 800BE854 5000B3A7 */  sh         $s3, 0x50($sp)
    /* AF058 800BE858 5200B5A7 */  sh         $s5, 0x52($sp)
    /* AF05C 800BE85C 5511040C */  jal        func_80104554
    /* AF060 800BE860 5600A2A7 */   sh        $v0, 0x56($sp)
  .L800BE864:
    /* AF064 800BE864 1E007326 */  addiu      $s3, $s3, 0x1E
  .L800BE868:
    /* AF068 800BE868 78053126 */  addiu      $s1, $s1, 0x578
    /* AF06C 800BE86C B6F90208 */  j          .L800BE6D8
    /* AF070 800BE870 01005226 */   addiu     $s2, $s2, 0x1
  .L800BE874:
    /* AF074 800BE874 8000AA8F */  lw         $t2, 0x80($sp)
    /* AF078 800BE878 00000000 */  nop
    /* AF07C 800BE87C 18004A25 */  addiu      $t2, $t2, 0x18
    /* AF080 800BE880 8000AAAF */  sw         $t2, 0x80($sp)
  .L800BE884:
    /* AF084 800BE884 14009426 */  addiu      $s4, $s4, 0x14
    /* AF088 800BE888 9000A98F */  lw         $t1, 0x90($sp)
    /* AF08C 800BE88C 0100D626 */  addiu      $s6, $s6, 0x1
    /* AF090 800BE890 14002925 */  addiu      $t1, $t1, 0x14
    /* AF094 800BE894 9CF70208 */  j          .L800BDE70
    /* AF098 800BE898 9000A9AF */   sw        $t1, 0x90($sp)
  .L800BE89C:
    /* AF09C 800BE89C 1280043C */  lui        $a0, %hi(D_80121110)
    /* AF0A0 800BE8A0 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AF0A4 800BE8A4 00000000 */  nop
    /* AF0A8 800BE8A8 03008010 */  beqz       $a0, .L800BE8B8
    /* AF0AC 800BE8AC 00000000 */   nop
    /* AF0B0 800BE8B0 7D11040C */  jal        func_801045F4
    /* AF0B4 800BE8B4 00000000 */   nop
  .L800BE8B8:
    /* AF0B8 800BE8B8 7800AA97 */  lhu        $t2, 0x78($sp)
    /* AF0BC 800BE8BC 1280013C */  lui        $at, %hi(D_80121136)
    /* AF0C0 800BE8C0 36112AA4 */  sh         $t2, %lo(D_80121136)($at)
    /* AF0C4 800BE8C4 3E0C040C */  jal        func_801030F8
    /* AF0C8 800BE8C8 01000424 */   addiu     $a0, $zero, 0x1
    /* AF0CC 800BE8CC BC00BF8F */  lw         $ra, 0xBC($sp)
    /* AF0D0 800BE8D0 B800BE8F */  lw         $fp, 0xB8($sp)
    /* AF0D4 800BE8D4 B400B78F */  lw         $s7, 0xB4($sp)
    /* AF0D8 800BE8D8 B000B68F */  lw         $s6, 0xB0($sp)
    /* AF0DC 800BE8DC AC00B58F */  lw         $s5, 0xAC($sp)
    /* AF0E0 800BE8E0 A800B48F */  lw         $s4, 0xA8($sp)
    /* AF0E4 800BE8E4 A400B38F */  lw         $s3, 0xA4($sp)
    /* AF0E8 800BE8E8 A000B28F */  lw         $s2, 0xA0($sp)
    /* AF0EC 800BE8EC 9C00B18F */  lw         $s1, 0x9C($sp)
    /* AF0F0 800BE8F0 9800B08F */  lw         $s0, 0x98($sp)
    /* AF0F4 800BE8F4 C000BD27 */  addiu      $sp, $sp, 0xC0
    /* AF0F8 800BE8F8 0800E003 */  jr         $ra
    /* AF0FC 800BE8FC 00000000 */   nop
endlabel func_800BD870
