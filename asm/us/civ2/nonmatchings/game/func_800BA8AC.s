.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BA8AC, 0x3B4

glabel func_800BA8AC
    /* AB0AC 800BA8AC 08FDBD27 */  addiu      $sp, $sp, -0x2F8
    /* AB0B0 800BA8B0 EC02B7AF */  sw         $s7, 0x2EC($sp)
    /* AB0B4 800BA8B4 21B88000 */  addu       $s7, $a0, $zero
    /* AB0B8 800BA8B8 F002BEAF */  sw         $fp, 0x2F0($sp)
    /* AB0BC 800BA8BC 21F0A000 */  addu       $fp, $a1, $zero
    /* AB0C0 800BA8C0 2800A427 */  addiu      $a0, $sp, 0x28
    /* AB0C4 800BA8C4 00400524 */  addiu      $a1, $zero, 0x4000
    /* AB0C8 800BA8C8 F402BFAF */  sw         $ra, 0x2F4($sp)
    /* AB0CC 800BA8CC E802B6AF */  sw         $s6, 0x2E8($sp)
    /* AB0D0 800BA8D0 E402B5AF */  sw         $s5, 0x2E4($sp)
    /* AB0D4 800BA8D4 E002B4AF */  sw         $s4, 0x2E0($sp)
    /* AB0D8 800BA8D8 DC02B3AF */  sw         $s3, 0x2DC($sp)
    /* AB0DC 800BA8DC D802B2AF */  sw         $s2, 0x2D8($sp)
    /* AB0E0 800BA8E0 D402B1AF */  sw         $s1, 0x2D4($sp)
    /* AB0E4 800BA8E4 ADC5020C */  jal        func_800B16B4
    /* AB0E8 800BA8E8 D002B0AF */   sw        $s0, 0x2D0($sp)
    /* AB0EC 800BA8EC 21200000 */  addu       $a0, $zero, $zero
    /* AB0F0 800BA8F0 80101E00 */  sll        $v0, $fp, 2
    /* AB0F4 800BA8F4 C802A0AF */  sw         $zero, 0x2C8($sp)
    /* AB0F8 800BA8F8 1280013C */  lui        $at, %hi(D_8011A6B0)
    /* AB0FC 800BA8FC 21082200 */  addu       $at, $at, $v0
    /* AB100 800BA900 B0A6258C */  lw         $a1, %lo(D_8011A6B0)($at)
    /* AB104 800BA904 ABAC020C */  jal        func_800AB2AC
    /* AB108 800BA908 21900000 */   addu      $s2, $zero, $zero
    /* AB10C 800BA90C 0400023C */  lui        $v0, (0x40001 >> 16)
    /* AB110 800BA910 01004234 */  ori        $v0, $v0, (0x40001 & 0xFFFF)
    /* AB114 800BA914 2800A427 */  addiu      $a0, $sp, 0x28
    /* AB118 800BA918 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* AB11C 800BA91C F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* AB120 800BA920 F8DA0634 */  ori        $a2, $zero, 0xDAF8
    /* AB124 800BA924 21380000 */  addu       $a3, $zero, $zero
    /* AB128 800BA928 1000A0AF */  sw         $zero, 0x10($sp)
    /* AB12C 800BA92C 1400A0AF */  sw         $zero, 0x14($sp)
    /* AB130 800BA930 1800A0AF */  sw         $zero, 0x18($sp)
    /* AB134 800BA934 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* AB138 800BA938 2CE0020C */  jal        func_800B80B0
    /* AB13C 800BA93C 2000A2AF */   sw        $v0, 0x20($sp)
  .L800BA940:
    /* AB140 800BA940 0200422A */  slti       $v0, $s2, 0x2
    /* AB144 800BA944 A2004010 */  beqz       $v0, .L800BABD0
    /* AB148 800BA948 21B00000 */   addu      $s6, $zero, $zero
    /* AB14C 800BA94C 21880000 */  addu       $s1, $zero, $zero
    /* AB150 800BA950 21800000 */  addu       $s0, $zero, $zero
    /* AB154 800BA954 1180153C */  lui        $s5, %hi(D_80113EF2)
    /* AB158 800BA958 F23EB526 */  addiu      $s5, $s5, %lo(D_80113EF2)
    /* AB15C 800BA95C 1180133C */  lui        $s3, %hi(D_80113F12)
    /* AB160 800BA960 123F7326 */  addiu      $s3, $s3, %lo(D_80113F12)
    /* AB164 800BA964 1180143C */  lui        $s4, %hi(D_80113F0F)
    /* AB168 800BA968 0F3F9426 */  addiu      $s4, $s4, %lo(D_80113F0F)
  .L800BA96C:
    /* AB16C 800BA96C 1280023C */  lui        $v0, %hi(D_8011A282)
    /* AB170 800BA970 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* AB174 800BA974 00000000 */  nop
    /* AB178 800BA978 2A102202 */  slt        $v0, $s1, $v0
    /* AB17C 800BA97C 8C004010 */  beqz       $v0, .L800BABB0
    /* AB180 800BA980 00000000 */   nop
    /* AB184 800BA984 1180013C */  lui        $at, %hi(D_80113ED8)
    /* AB188 800BA988 21083000 */  addu       $at, $at, $s0
    /* AB18C 800BA98C D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* AB190 800BA990 00000000 */  nop
    /* AB194 800BA994 1600E212 */  beq        $s7, $v0, .L800BA9F0
    /* AB198 800BA998 21280000 */   addu      $a1, $zero, $zero
    /* AB19C 800BA99C 0E004016 */  bnez       $s2, .L800BA9D8
    /* AB1A0 800BA9A0 00000000 */   nop
    /* AB1A4 800BA9A4 1180023C */  lui        $v0, %hi(D_80113EDD)
    /* AB1A8 800BA9A8 DD3E4224 */  addiu      $v0, $v0, %lo(D_80113EDD)
    /* AB1AC 800BA9AC 21100202 */  addu       $v0, $s0, $v0
    /* AB1B0 800BA9B0 21105700 */  addu       $v0, $v0, $s7
    /* AB1B4 800BA9B4 00004280 */  lb         $v0, 0x0($v0)
    /* AB1B8 800BA9B8 00000000 */  nop
    /* AB1BC 800BA9BC 0D004014 */  bnez       $v0, .L800BA9F4
    /* AB1C0 800BA9C0 21186002 */   addu      $v1, $s3, $zero
    /* AB1C4 800BA9C4 21202002 */  addu       $a0, $s1, $zero
    /* AB1C8 800BA9C8 C826020C */  jal        func_80089B20
    /* AB1CC 800BA9CC 01000524 */   addiu     $a1, $zero, 0x1
    /* AB1D0 800BA9D0 06004014 */  bnez       $v0, .L800BA9EC
    /* AB1D4 800BA9D4 00000000 */   nop
  .L800BA9D8:
    /* AB1D8 800BA9D8 1280023C */  lui        $v0, %hi(D_8011A271)
    /* AB1DC 800BA9DC 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* AB1E0 800BA9E0 00000000 */  nop
    /* AB1E4 800BA9E4 6C004010 */  beqz       $v0, .L800BAB98
    /* AB1E8 800BA9E8 00000000 */   nop
  .L800BA9EC:
    /* AB1EC 800BA9EC 21280000 */  addu       $a1, $zero, $zero
  .L800BA9F0:
    /* AB1F0 800BA9F0 21186002 */  addu       $v1, $s3, $zero
  .L800BA9F4:
    /* AB1F4 800BA9F4 21208002 */  addu       $a0, $s4, $zero
    /* AB1F8 800BA9F8 03006626 */  addiu      $a2, $s3, 0x3
  .L800BA9FC:
    /* AB1FC 800BA9FC 04004012 */  beqz       $s2, .L800BAA10
    /* AB200 800BAA00 00000000 */   nop
    /* AB204 800BAA04 00008280 */  lb         $v0, 0x0($a0)
    /* AB208 800BAA08 85EA0208 */  j          .L800BAA14
    /* AB20C 800BAA0C 00000000 */   nop
  .L800BAA10:
    /* AB210 800BAA10 00006280 */  lb         $v0, 0x0($v1)
  .L800BAA14:
    /* AB214 800BAA14 00000000 */  nop
    /* AB218 800BAA18 02005E14 */  bne        $v0, $fp, .L800BAA24
    /* AB21C 800BAA1C 00000000 */   nop
    /* AB220 800BAA20 01000524 */  addiu      $a1, $zero, 0x1
  .L800BAA24:
    /* AB224 800BAA24 01006324 */  addiu      $v1, $v1, 0x1
    /* AB228 800BAA28 2A106600 */  slt        $v0, $v1, $a2
    /* AB22C 800BAA2C F3FF4014 */  bnez       $v0, .L800BA9FC
    /* AB230 800BAA30 01008424 */   addiu     $a0, $a0, 0x1
    /* AB234 800BAA34 5800A010 */  beqz       $a1, .L800BAB98
    /* AB238 800BAA38 00000000 */   nop
    /* AB23C 800BAA3C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AB240 800BAA40 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AB244 800BAA44 CB1A030C */  jal        func_800C6B2C
    /* AB248 800BAA48 00000000 */   nop
    /* AB24C 800BAA4C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AB250 800BAA50 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AB254 800BAA54 9987030C */  jal        func_800E1E64
    /* AB258 800BAA58 2128A002 */   addu      $a1, $s5, $zero
    /* AB25C 800BAA5C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AB260 800BAA60 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AB264 800BAA64 151B030C */  jal        func_800C6C54
    /* AB268 800BAA68 00000000 */   nop
    /* AB26C 800BAA6C 1180013C */  lui        $at, %hi(D_80113ED8)
    /* AB270 800BAA70 21083000 */  addu       $at, $at, $s0
    /* AB274 800BAA74 D83E2480 */  lb         $a0, %lo(D_80113ED8)($at)
    /* AB278 800BAA78 00000000 */  nop
    /* AB27C 800BAA7C 1D009710 */  beq        $a0, $s7, .L800BAAF4
    /* AB280 800BAA80 00000000 */   nop
    /* AB284 800BAA84 8A54020C */  jal        func_80095228
    /* AB288 800BAA88 00000000 */   nop
    /* AB28C 800BAA8C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AB290 800BAA90 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AB294 800BAA94 9987030C */  jal        func_800E1E64
    /* AB298 800BAA98 21284000 */   addu      $a1, $v0, $zero
    /* AB29C 800BAA9C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AB2A0 800BAAA0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AB2A4 800BAAA4 ED1A030C */  jal        func_800C6BB4
    /* AB2A8 800BAAA8 00000000 */   nop
    /* AB2AC 800BAAAC 1280023C */  lui        $v0, %hi(D_8011A271)
    /* AB2B0 800BAAB0 71A24290 */  lbu        $v0, %lo(D_8011A271)($v0)
    /* AB2B4 800BAAB4 00000000 */  nop
    /* AB2B8 800BAAB8 0E004014 */  bnez       $v0, .L800BAAF4
    /* AB2BC 800BAABC 21202002 */   addu      $a0, $s1, $zero
    /* AB2C0 800BAAC0 C826020C */  jal        func_80089B20
    /* AB2C4 800BAAC4 01000524 */   addiu     $a1, $zero, 0x1
    /* AB2C8 800BAAC8 0A004014 */  bnez       $v0, .L800BAAF4
    /* AB2CC 800BAACC 00000000 */   nop
    /* AB2D0 800BAAD0 1180083C */  lui        $t0, %hi(D_80113EF2)
    /* AB2D4 800BAAD4 F23E0825 */  addiu      $t0, $t0, %lo(D_80113EF2)
    /* AB2D8 800BAAD8 EBFF0225 */  addiu      $v0, $t0, -0x15
    /* AB2DC 800BAADC 21100202 */  addu       $v0, $s0, $v0
    /* AB2E0 800BAAE0 21105700 */  addu       $v0, $v0, $s7
    /* AB2E4 800BAAE4 00004580 */  lb         $a1, 0x0($v0)
    /* AB2E8 800BAAE8 00000000 */  nop
    /* AB2EC 800BAAEC 0400A014 */  bnez       $a1, .L800BAB00
    /* AB2F0 800BAAF0 00000000 */   nop
  .L800BAAF4:
    /* AB2F4 800BAAF4 1180013C */  lui        $at, %hi(D_80113ED9)
    /* AB2F8 800BAAF8 21083000 */  addu       $at, $at, $s0
    /* AB2FC 800BAAFC D93E2580 */  lb         $a1, %lo(D_80113ED9)($at)
  .L800BAB00:
    /* AB300 800BAB00 1280043C */  lui        $a0, %hi(D_80121340)
    /* AB304 800BAB04 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AB308 800BAB08 9C1B030C */  jal        func_800C6E70
    /* AB30C 800BAB0C 00000000 */   nop
    /* AB310 800BAB10 1280043C */  lui        $a0, %hi(D_80121340)
    /* AB314 800BAB14 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AB318 800BAB18 1F1B030C */  jal        func_800C6C7C
    /* AB31C 800BAB1C 00000000 */   nop
    /* AB320 800BAB20 1280043C */  lui        $a0, %hi(D_80121340)
    /* AB324 800BAB24 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AB328 800BAB28 CD1A030C */  jal        func_800C6B34
    /* AB32C 800BAB2C 00000000 */   nop
    /* AB330 800BAB30 02004012 */  beqz       $s2, .L800BAB3C
    /* AB334 800BAB34 57000524 */   addiu     $a1, $zero, 0x57
    /* AB338 800BAB38 56000524 */  addiu      $a1, $zero, 0x56
  .L800BAB3C:
    /* AB33C 800BAB3C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AB340 800BAB40 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AB344 800BAB44 731B030C */  jal        func_800C6DCC
    /* AB348 800BAB48 0100D626 */   addiu     $s6, $s6, 0x1
    /* AB34C 800BAB4C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AB350 800BAB50 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AB354 800BAB54 CD1A030C */  jal        func_800C6B34
    /* AB358 800BAB58 00000000 */   nop
    /* AB35C 800BAB5C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AB360 800BAB60 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AB364 800BAB64 80101E00 */  sll        $v0, $fp, 2
    /* AB368 800BAB68 C802A88F */  lw         $t0, 0x2C8($sp)
    /* AB36C 800BAB6C 1280013C */  lui        $at, %hi(D_8011A6B0)
    /* AB370 800BAB70 21082200 */  addu       $at, $at, $v0
    /* AB374 800BAB74 B0A6258C */  lw         $a1, %lo(D_8011A6B0)($at)
    /* AB378 800BAB78 01000825 */  addiu      $t0, $t0, 0x1
    /* AB37C 800BAB7C 651B030C */  jal        func_800C6D94
    /* AB380 800BAB80 C802A8AF */   sw        $t0, 0x2C8($sp)
    /* AB384 800BAB84 2800A427 */  addiu      $a0, $sp, 0x28
    /* AB388 800BAB88 1280053C */  lui        $a1, %hi(D_80121340)
    /* AB38C 800BAB8C 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* AB390 800BAB90 A8C9020C */  jal        func_800B26A0
    /* AB394 800BAB94 21302002 */   addu      $a2, $s1, $zero
  .L800BAB98:
    /* AB398 800BAB98 58001026 */  addiu      $s0, $s0, 0x58
    /* AB39C 800BAB9C 5800B526 */  addiu      $s5, $s5, 0x58
    /* AB3A0 800BABA0 58007326 */  addiu      $s3, $s3, 0x58
    /* AB3A4 800BABA4 58009426 */  addiu      $s4, $s4, 0x58
    /* AB3A8 800BABA8 5BEA0208 */  j          .L800BA96C
    /* AB3AC 800BABAC 01003126 */   addiu     $s1, $s1, 0x1
  .L800BABB0:
    /* AB3B0 800BABB0 0500C012 */  beqz       $s6, .L800BABC8
    /* AB3B4 800BABB4 2800A427 */   addiu     $a0, $sp, 0x28
    /* AB3B8 800BABB8 1680053C */  lui        $a1, %hi(D_80158FE4)
    /* AB3BC 800BABBC E48FA524 */  addiu      $a1, $a1, %lo(D_80158FE4)
    /* AB3C0 800BABC0 A8C9020C */  jal        func_800B26A0
    /* AB3C4 800BABC4 FFFF0624 */   addiu     $a2, $zero, -0x1
  .L800BABC8:
    /* AB3C8 800BABC8 50EA0208 */  j          .L800BA940
    /* AB3CC 800BABCC 01005226 */   addiu     $s2, $s2, 0x1
  .L800BABD0:
    /* AB3D0 800BABD0 C802A88F */  lw         $t0, 0x2C8($sp)
    /* AB3D4 800BABD4 00000000 */  nop
    /* AB3D8 800BABD8 0D000015 */  bnez       $t0, .L800BAC10
    /* AB3DC 800BABDC 2800A427 */   addiu     $a0, $sp, 0x28
    /* AB3E0 800BABE0 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* AB3E4 800BABE4 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* AB3E8 800BABE8 40DB0534 */  ori        $a1, $zero, 0xDB40
    /* AB3EC 800BABEC 21300000 */  addu       $a2, $zero, $zero
    /* AB3F0 800BABF0 21380000 */  addu       $a3, $zero, $zero
    /* AB3F4 800BABF4 01000224 */  addiu      $v0, $zero, 0x1
    /* AB3F8 800BABF8 1000A0AF */  sw         $zero, 0x10($sp)
    /* AB3FC 800BABFC 1400A0AF */  sw         $zero, 0x14($sp)
    /* AB400 800BAC00 B4E2020C */  jal        func_800B8AD0
    /* AB404 800BAC04 1800A2AF */   sw        $v0, 0x18($sp)
    /* AB408 800BAC08 07EB0208 */  j          .L800BAC1C
    /* AB40C 800BAC0C 21804000 */   addu      $s0, $v0, $zero
  .L800BAC10:
    /* AB410 800BAC10 52DF020C */  jal        func_800B7D48
    /* AB414 800BAC14 21280000 */   addu      $a1, $zero, $zero
    /* AB418 800BAC18 21804000 */  addu       $s0, $v0, $zero
  .L800BAC1C:
    /* AB41C 800BAC1C 2800A427 */  addiu      $a0, $sp, 0x28
    /* AB420 800BAC20 0AC7020C */  jal        func_800B1C28
    /* AB424 800BAC24 02000524 */   addiu     $a1, $zero, 0x2
    /* AB428 800BAC28 21100002 */  addu       $v0, $s0, $zero
    /* AB42C 800BAC2C F402BF8F */  lw         $ra, 0x2F4($sp)
    /* AB430 800BAC30 F002BE8F */  lw         $fp, 0x2F0($sp)
    /* AB434 800BAC34 EC02B78F */  lw         $s7, 0x2EC($sp)
    /* AB438 800BAC38 E802B68F */  lw         $s6, 0x2E8($sp)
    /* AB43C 800BAC3C E402B58F */  lw         $s5, 0x2E4($sp)
    /* AB440 800BAC40 E002B48F */  lw         $s4, 0x2E0($sp)
    /* AB444 800BAC44 DC02B38F */  lw         $s3, 0x2DC($sp)
    /* AB448 800BAC48 D802B28F */  lw         $s2, 0x2D8($sp)
    /* AB44C 800BAC4C D402B18F */  lw         $s1, 0x2D4($sp)
    /* AB450 800BAC50 D002B08F */  lw         $s0, 0x2D0($sp)
    /* AB454 800BAC54 F802BD27 */  addiu      $sp, $sp, 0x2F8
    /* AB458 800BAC58 0800E003 */  jr         $ra
    /* AB45C 800BAC5C 00000000 */   nop
endlabel func_800BA8AC
