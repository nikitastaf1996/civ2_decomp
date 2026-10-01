.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C4FE4, 0x8C4

glabel func_800C4FE4
    /* B57E4 800C4FE4 C0FEBD27 */  addiu      $sp, $sp, -0x140
    /* B57E8 800C4FE8 1C01B1AF */  sw         $s1, 0x11C($sp)
    /* B57EC 800C4FEC 1280113C */  lui        $s1, %hi(D_80121104)
    /* B57F0 800C4FF0 04113126 */  addiu      $s1, $s1, %lo(D_80121104)
    /* B57F4 800C4FF4 3C01BFAF */  sw         $ra, 0x13C($sp)
    /* B57F8 800C4FF8 3801BEAF */  sw         $fp, 0x138($sp)
    /* B57FC 800C4FFC 3401B7AF */  sw         $s7, 0x134($sp)
    /* B5800 800C5000 3001B6AF */  sw         $s6, 0x130($sp)
    /* B5804 800C5004 2C01B5AF */  sw         $s5, 0x12C($sp)
    /* B5808 800C5008 2801B4AF */  sw         $s4, 0x128($sp)
    /* B580C 800C500C 2401B3AF */  sw         $s3, 0x124($sp)
    /* B5810 800C5010 2001B2AF */  sw         $s2, 0x120($sp)
    /* B5814 800C5014 1801B0AF */  sw         $s0, 0x118($sp)
    /* B5818 800C5018 0000298E */  lw         $t1, 0x0($s1)
    /* B581C 800C501C 80FC2426 */  addiu      $a0, $s1, -0x380
    /* B5820 800C5020 DC49020C */  jal        func_80092770
    /* B5824 800C5024 0801A9AF */   sw        $t1, 0x108($sp)
    /* B5828 800C5028 7907040C */  jal        func_80101DE4
    /* B582C 800C502C 01000424 */   addiu     $a0, $zero, 0x1
    /* B5830 800C5030 1280023C */  lui        $v0, %hi(D_80120DBC)
    /* B5834 800C5034 BC0D428C */  lw         $v0, %lo(D_80120DBC)($v0)
    /* B5838 800C5038 00000000 */  nop
    /* B583C 800C503C 0400448C */  lw         $a0, 0x4($v0)
    /* B5840 800C5040 D707040C */  jal        func_80101F5C
    /* B5844 800C5044 00000000 */   nop
    /* B5848 800C5048 1000A427 */  addiu      $a0, $sp, 0x10
    /* B584C 800C504C 21280000 */  addu       $a1, $zero, $zero
    /* B5850 800C5050 40010224 */  addiu      $v0, $zero, 0x140
    /* B5854 800C5054 1400A2A7 */  sh         $v0, 0x14($sp)
    /* B5858 800C5058 F0000224 */  addiu      $v0, $zero, 0xF0
    /* B585C 800C505C 1000A0A7 */  sh         $zero, 0x10($sp)
    /* B5860 800C5060 1200A0A7 */  sh         $zero, 0x12($sp)
    /* B5864 800C5064 A314020C */  jal        func_8008528C
    /* B5868 800C5068 1600A2A7 */   sh        $v0, 0x16($sp)
    /* B586C 800C506C A8FE2426 */  addiu      $a0, $s1, -0x158
    /* B5870 800C5070 ACFC2526 */  addiu      $a1, $s1, -0x354
    /* B5874 800C5074 F000A627 */  addiu      $a2, $sp, 0xF0
    /* B5878 800C5078 1000A727 */  addiu      $a3, $sp, 0x10
    /* B587C 800C507C 06000324 */  addiu      $v1, $zero, 0x6
    /* B5880 800C5080 3A010824 */  addiu      $t0, $zero, 0x13A
    /* B5884 800C5084 D0000224 */  addiu      $v0, $zero, 0xD0
    /* B5888 800C5088 F600A2A7 */  sh         $v0, 0xF6($sp)
    /* B588C 800C508C 10000224 */  addiu      $v0, $zero, 0x10
    /* B5890 800C5090 1200A2A7 */  sh         $v0, 0x12($sp)
    /* B5894 800C5094 E0000224 */  addiu      $v0, $zero, 0xE0
    /* B5898 800C5098 F000A3A7 */  sh         $v1, 0xF0($sp)
    /* B589C 800C509C F200A0A7 */  sh         $zero, 0xF2($sp)
    /* B58A0 800C50A0 F400A8A7 */  sh         $t0, 0xF4($sp)
    /* B58A4 800C50A4 1000A3A7 */  sh         $v1, 0x10($sp)
    /* B58A8 800C50A8 1400A8A7 */  sh         $t0, 0x14($sp)
    /* B58AC 800C50AC 1FE4030C */  jal        func_800F907C
    /* B58B0 800C50B0 1600A2A7 */   sh        $v0, 0x16($sp)
    /* B58B4 800C50B4 1280023C */  lui        $v0, %hi(D_8012110C)
    /* B58B8 800C50B8 0C11428C */  lw         $v0, %lo(D_8012110C)($v0)
    /* B58BC 800C50BC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B58C0 800C50C0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B58C4 800C50C4 CB1A030C */  jal        func_800C6B2C
    /* B58C8 800C50C8 0100522C */   sltiu     $s2, $v0, 0x1
    /* B58CC 800C50CC 1680023C */  lui        $v0, %hi(D_8015894C)
    /* B58D0 800C50D0 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* B58D4 800C50D4 00000000 */  nop
    /* B58D8 800C50D8 E806448C */  lw         $a0, 0x6E8($v0)
    /* B58DC 800C50DC A63A030C */  jal        func_800CEA98
    /* B58E0 800C50E0 00000000 */   nop
    /* B58E4 800C50E4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B58E8 800C50E8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B58EC 800C50EC 9987030C */  jal        func_800E1E64
    /* B58F0 800C50F0 21284000 */   addu      $a1, $v0, $zero
    /* B58F4 800C50F4 0E004012 */  beqz       $s2, .L800C5130
    /* B58F8 800C50F8 20001524 */   addiu     $s5, $zero, 0x20
    /* B58FC 800C50FC 1000A427 */  addiu      $a0, $sp, 0x10
    /* B5900 800C5100 1280103C */  lui        $s0, %hi(D_80121340)
    /* B5904 800C5104 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* B5908 800C5108 21280002 */  addu       $a1, $s0, $zero
    /* B590C 800C510C 7FE6020C */  jal        func_800B99FC
    /* B5910 800C5110 10000624 */   addiu     $a2, $zero, 0x10
    /* B5914 800C5114 21200002 */  addu       $a0, $s0, $zero
    /* B5918 800C5118 1000A527 */  addiu      $a1, $sp, 0x10
    /* B591C 800C511C DC0F040C */  jal        func_80103F70
    /* B5920 800C5120 10000624 */   addiu     $a2, $zero, 0x10
    /* B5924 800C5124 1280013C */  lui        $at, %hi(D_8012110C)
    /* B5928 800C5128 0C1122AC */  sw         $v0, %lo(D_8012110C)($at)
    /* B592C 800C512C 20001524 */  addiu      $s5, $zero, 0x20
  .L800C5130:
    /* B5930 800C5130 F800A427 */  addiu      $a0, $sp, 0xF8
    /* B5934 800C5134 0C000924 */  addiu      $t1, $zero, 0xC
    /* B5938 800C5138 22000224 */  addiu      $v0, $zero, 0x22
    /* B593C 800C513C CCFF22AE */  sw         $v0, -0x34($s1)
    /* B5940 800C5140 B2000224 */  addiu      $v0, $zero, 0xB2
    /* B5944 800C5144 D4FF29AE */  sw         $t1, -0x2C($s1)
    /* B5948 800C5148 C59E030C */  jal        SetLineF2
    /* B594C 800C514C D0FF22AE */   sw        $v0, -0x30($s1)
    /* B5950 800C5150 21A00000 */  addu       $s4, $zero, $zero
    /* B5954 800C5154 10001124 */  addiu      $s1, $zero, 0x10
    /* B5958 800C5158 30011024 */  addiu      $s0, $zero, 0x130
    /* B595C 800C515C FC00A0A3 */  sb         $zero, 0xFC($sp)
    /* B5960 800C5160 FD00A0A3 */  sb         $zero, 0xFD($sp)
    /* B5964 800C5164 FE00A0A3 */  sb         $zero, 0xFE($sp)
  .L800C5168:
    /* B5968 800C5168 F800A427 */  addiu      $a0, $sp, 0xF8
    /* B596C 800C516C 0001B1A7 */  sh         $s1, 0x100($sp)
    /* B5970 800C5170 0201B5A7 */  sh         $s5, 0x102($sp)
    /* B5974 800C5174 0401B0A7 */  sh         $s0, 0x104($sp)
    /* B5978 800C5178 928E030C */  jal        DrawPrim
    /* B597C 800C517C 0601B5A7 */   sh        $s5, 0x106($sp)
    /* B5980 800C5180 3000B526 */  addiu      $s5, $s5, 0x30
    /* B5984 800C5184 2C8D030C */  jal        DrawSync
    /* B5988 800C5188 21200000 */   addu      $a0, $zero, $zero
    /* B598C 800C518C 01009426 */  addiu      $s4, $s4, 0x1
    /* B5990 800C5190 0400822A */  slti       $v0, $s4, 0x4
    /* B5994 800C5194 F4FF4014 */  bnez       $v0, .L800C5168
    /* B5998 800C5198 00000000 */   nop
    /* B599C 800C519C B1014012 */  beqz       $s2, .L800C5864
    /* B59A0 800C51A0 20001524 */   addiu     $s5, $zero, 0x20
    /* B59A4 800C51A4 FED4030C */  jal        func_800F53F8
    /* B59A8 800C51A8 40010424 */   addiu     $a0, $zero, 0x140
    /* B59AC 800C51AC 1001A2AF */  sw         $v0, 0x110($sp)
    /* B59B0 800C51B0 1001A48F */  lw         $a0, 0x110($sp)
    /* B59B4 800C51B4 7CD6030C */  jal        func_800F59F0
    /* B59B8 800C51B8 21980000 */   addu      $s3, $zero, $zero
    /* B59BC 800C51BC 0100053C */  lui        $a1, (0x11CF2 >> 16)
    /* B59C0 800C51C0 F21CA534 */  ori        $a1, $a1, (0x11CF2 & 0xFFFF)
    /* B59C4 800C51C4 1800B627 */  addiu      $s6, $sp, 0x18
    /* B59C8 800C51C8 1680043C */  lui        $a0, %hi(D_80158840)
    /* B59CC 800C51CC 4088848C */  lw         $a0, %lo(D_80158840)($a0)
    /* B59D0 800C51D0 FCA0020C */  jal        func_800A83F0
    /* B59D4 800C51D4 21F04000 */   addu      $fp, $v0, $zero
    /* B59D8 800C51D8 0801A98F */  lw         $t1, 0x108($sp)
    /* B59DC 800C51DC 21900000 */  addu       $s2, $zero, $zero
    /* B59E0 800C51E0 27100900 */  nor        $v0, $zero, $t1
    /* B59E4 800C51E4 0100572C */  sltiu      $s7, $v0, 0x1
  .L800C51E8:
    /* B59E8 800C51E8 0400622A */  slti       $v0, $s3, 0x4
    /* B59EC 800C51EC 1800432A */  slti       $v1, $s2, 0x18
    /* B59F0 800C51F0 24104300 */  and        $v0, $v0, $v1
    /* B59F4 800C51F4 2F004010 */  beqz       $v0, .L800C52B4
    /* B59F8 800C51F8 0300623A */   xori      $v0, $s3, 0x3
    /* B59FC 800C51FC 0100422C */  sltiu      $v0, $v0, 0x1
    /* B5A00 800C5200 24105700 */  and        $v0, $v0, $s7
    /* B5A04 800C5204 2C004014 */  bnez       $v0, .L800C52B8
    /* B5A08 800C5208 21A00000 */   addu      $s4, $zero, $zero
    /* B5A0C 800C520C 58A1020C */  jal        func_800A8560
    /* B5A10 800C5210 2188C003 */   addu      $s1, $fp, $zero
    /* B5A14 800C5214 21800000 */  addu       $s0, $zero, $zero
  .L800C5218:
    /* B5A18 800C5218 0400822A */  slti       $v0, $s4, 0x4
    /* B5A1C 800C521C 23004010 */  beqz       $v0, .L800C52AC
    /* B5A20 800C5220 0300823A */   xori      $v0, $s4, 0x3
    /* B5A24 800C5224 0100422C */  sltiu      $v0, $v0, 0x1
    /* B5A28 800C5228 24105700 */  and        $v0, $v0, $s7
    /* B5A2C 800C522C 1F004014 */  bnez       $v0, .L800C52AC
    /* B5A30 800C5230 00000000 */   nop
    /* B5A34 800C5234 1280013C */  lui        $at, %hi(D_801211D8)
    /* B5A38 800C5238 21083000 */  addu       $at, $at, $s0
    /* B5A3C 800C523C D8112284 */  lh         $v0, %lo(D_801211D8)($at)
    /* B5A40 800C5240 00000000 */  nop
    /* B5A44 800C5244 15004004 */  bltz       $v0, .L800C529C
    /* B5A48 800C5248 00000000 */   nop
    /* B5A4C 800C524C 1280013C */  lui        $at, %hi(D_801211EE)
    /* B5A50 800C5250 21083000 */  addu       $at, $at, $s0
    /* B5A54 800C5254 EE112284 */  lh         $v0, %lo(D_801211EE)($at)
    /* B5A58 800C5258 00000000 */  nop
    /* B5A5C 800C525C 0F005214 */  bne        $v0, $s2, .L800C529C
    /* B5A60 800C5260 00000000 */   nop
    /* B5A64 800C5264 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* B5A68 800C5268 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* B5A6C 800C526C 1280053C */  lui        $a1, %hi(D_801211F0)
    /* B5A70 800C5270 F011A524 */  addiu      $a1, $a1, %lo(D_801211F0)
    /* B5A74 800C5274 A587030C */  jal        func_800E1E94
    /* B5A78 800C5278 21280502 */   addu      $a1, $s0, $a1
    /* B5A7C 800C527C 1280053C */  lui        $a1, %hi(D_80121340)
    /* B5A80 800C5280 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B5A84 800C5284 A587030C */  jal        func_800E1E94
    /* B5A88 800C5288 2120C002 */   addu      $a0, $s6, $zero
    /* B5A8C 800C528C 2120C002 */  addu       $a0, $s6, $zero
    /* B5A90 800C5290 33AC020C */  jal        func_800AB0CC
    /* B5A94 800C5294 21282002 */   addu      $a1, $s1, $zero
    /* B5A98 800C5298 01007326 */  addiu      $s3, $s3, 0x1
  .L800C529C:
    /* B5A9C 800C529C 50003126 */  addiu      $s1, $s1, 0x50
    /* B5AA0 800C52A0 48001026 */  addiu      $s0, $s0, 0x48
    /* B5AA4 800C52A4 86140308 */  j          .L800C5218
    /* B5AA8 800C52A8 01009426 */   addiu     $s4, $s4, 0x1
  .L800C52AC:
    /* B5AAC 800C52AC 7A140308 */  j          .L800C51E8
    /* B5AB0 800C52B0 01005226 */   addiu     $s2, $s2, 0x1
  .L800C52B4:
    /* B5AB4 800C52B4 21A00000 */  addu       $s4, $zero, $zero
  .L800C52B8:
    /* B5AB8 800C52B8 1280113C */  lui        $s1, %hi(D_80121340)
    /* B5ABC 800C52BC 40133126 */  addiu      $s1, $s1, %lo(D_80121340)
    /* B5AC0 800C52C0 1280133C */  lui        $s3, %hi(D_801211E8)
    /* B5AC4 800C52C4 E8117326 */  addiu      $s3, $s3, %lo(D_801211E8)
    /* B5AC8 800C52C8 F0FF7626 */  addiu      $s6, $s3, -0x10
    /* B5ACC 800C52CC 21900000 */  addu       $s2, $zero, $zero
    /* B5AD0 800C52D0 21B8C003 */  addu       $s7, $fp, $zero
  .L800C52D4:
    /* B5AD4 800C52D4 0400822A */  slti       $v0, $s4, 0x4
    /* B5AD8 800C52D8 5F014010 */  beqz       $v0, .L800C5858
    /* B5ADC 800C52DC 03000224 */   addiu     $v0, $zero, 0x3
    /* B5AE0 800C52E0 05008216 */  bne        $s4, $v0, .L800C52F8
    /* B5AE4 800C52E4 00000000 */   nop
    /* B5AE8 800C52E8 0801A98F */  lw         $t1, 0x108($sp)
    /* B5AEC 800C52EC 00000000 */  nop
    /* B5AF0 800C52F0 53013415 */  bne        $t1, $s4, .L800C5840
    /* B5AF4 800C52F4 00000000 */   nop
  .L800C52F8:
    /* B5AF8 800C52F8 0000C286 */  lh         $v0, 0x0($s6)
    /* B5AFC 800C52FC 00000000 */  nop
    /* B5B00 800C5300 4F014004 */  bltz       $v0, .L800C5840
    /* B5B04 800C5304 00000000 */   nop
    /* B5B08 800C5308 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5B0C 800C530C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5B10 800C5310 CB1A030C */  jal        func_800C6B2C
    /* B5B14 800C5314 00000000 */   nop
    /* B5B18 800C5318 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5B1C 800C531C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5B20 800C5320 9C1B030C */  jal        func_800C6E70
    /* B5B24 800C5324 01008526 */   addiu     $a1, $s4, 0x1
    /* B5B28 800C5328 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5B2C 800C532C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5B30 800C5330 1680053C */  lui        $a1, %hi(D_80159078)
    /* B5B34 800C5334 7890A524 */  addiu      $a1, $a1, %lo(D_80159078)
    /* B5B38 800C5338 9987030C */  jal        func_800E1E64
    /* B5B3C 800C533C 00000000 */   nop
    /* B5B40 800C5340 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5B44 800C5344 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5B48 800C5348 9987030C */  jal        func_800E1E64
    /* B5B4C 800C534C 2128E002 */   addu      $a1, $s7, $zero
    /* B5B50 800C5350 0801A98F */  lw         $t1, 0x108($sp)
    /* B5B54 800C5354 00000000 */  nop
    /* B5B58 800C5358 02008916 */  bne        $s4, $t1, .L800C5364
    /* B5B5C 800C535C 02000424 */   addiu     $a0, $zero, 0x2
    /* B5B60 800C5360 04000424 */  addiu      $a0, $zero, 0x4
  .L800C5364:
    /* B5B64 800C5364 3E0C040C */  jal        func_801030F8
    /* B5B68 800C5368 00000000 */   nop
    /* B5B6C 800C536C 1000A427 */  addiu      $a0, $sp, 0x10
    /* B5B70 800C5370 21282002 */  addu       $a1, $s1, $zero
    /* B5B74 800C5374 7FE6020C */  jal        func_800B99FC
    /* B5B78 800C5378 2130A002 */   addu      $a2, $s5, $zero
    /* B5B7C 800C537C 21282002 */  addu       $a1, $s1, $zero
    /* B5B80 800C5380 1000A627 */  addiu      $a2, $sp, 0x10
    /* B5B84 800C5384 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B5B88 800C5388 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B5B8C 800C538C 5511040C */  jal        func_80104554
    /* B5B90 800C5390 10000724 */   addiu     $a3, $zero, 0x10
    /* B5B94 800C5394 CB1A030C */  jal        func_800C6B2C
    /* B5B98 800C5398 21202002 */   addu      $a0, $s1, $zero
    /* B5B9C 800C539C 21202002 */  addu       $a0, $s1, $zero
    /* B5BA0 800C53A0 1280053C */  lui        $a1, %hi(D_80121208)
    /* B5BA4 800C53A4 0812A524 */  addiu      $a1, $a1, %lo(D_80121208)
    /* B5BA8 800C53A8 9987030C */  jal        func_800E1E64
    /* B5BAC 800C53AC 21284502 */   addu      $a1, $s2, $a1
    /* B5BB0 800C53B0 CD1A030C */  jal        func_800C6B34
    /* B5BB4 800C53B4 21202002 */   addu      $a0, $s1, $zero
    /* B5BB8 800C53B8 151B030C */  jal        func_800C6C54
    /* B5BBC 800C53BC 21202002 */   addu      $a0, $s1, $zero
    /* B5BC0 800C53C0 00006286 */  lh         $v0, 0x0($s3)
    /* B5BC4 800C53C4 00000000 */  nop
    /* B5BC8 800C53C8 34004010 */  beqz       $v0, .L800C549C
    /* B5BCC 800C53CC 0C00B526 */   addiu     $s5, $s5, 0xC
    /* B5BD0 800C53D0 1280013C */  lui        $at, %hi(D_801211E4)
    /* B5BD4 800C53D4 21083200 */  addu       $at, $at, $s2
    /* B5BD8 800C53D8 E4112284 */  lh         $v0, %lo(D_801211E4)($at)
    /* B5BDC 800C53DC 00000000 */  nop
    /* B5BE0 800C53E0 2E004104 */  bgez       $v0, .L800C549C
    /* B5BE4 800C53E4 27100200 */   nor       $v0, $zero, $v0
    /* B5BE8 800C53E8 1280013C */  lui        $at, %hi(D_801211DC)
    /* B5BEC 800C53EC 21083200 */  addu       $at, $at, $s2
    /* B5BF0 800C53F0 DC112384 */  lh         $v1, %lo(D_801211DC)($at)
    /* B5BF4 800C53F4 01004224 */  addiu      $v0, $v0, 0x1
    /* B5BF8 800C53F8 18006200 */  mult       $v1, $v0
    /* B5BFC 800C53FC AA2A033C */  lui        $v1, (0x2AAAAAAB >> 16)
    /* B5C00 800C5400 ABAA6334 */  ori        $v1, $v1, (0x2AAAAAAB & 0xFFFF)
    /* B5C04 800C5404 1280013C */  lui        $at, %hi(D_801211E6)
    /* B5C08 800C5408 21083200 */  addu       $at, $at, $s2
    /* B5C0C 800C540C E6112284 */  lh         $v0, %lo(D_801211E6)($at)
    /* B5C10 800C5410 12480000 */  mflo       $t1
    /* B5C14 800C5414 21104900 */  addu       $v0, $v0, $t1
    /* B5C18 800C5418 FFFF5024 */  addiu      $s0, $v0, -0x1
    /* B5C1C 800C541C 18000302 */  mult       $s0, $v1
    /* B5C20 800C5420 C3171000 */  sra        $v0, $s0, 31
    /* B5C24 800C5424 10480000 */  mfhi       $t1
    /* B5C28 800C5428 43180900 */  sra        $v1, $t1, 1
    /* B5C2C 800C542C 23186200 */  subu       $v1, $v1, $v0
    /* B5C30 800C5430 40100300 */  sll        $v0, $v1, 1
    /* B5C34 800C5434 21104300 */  addu       $v0, $v0, $v1
    /* B5C38 800C5438 80100200 */  sll        $v0, $v0, 2
    /* B5C3C 800C543C 23100202 */  subu       $v0, $s0, $v0
    /* B5C40 800C5440 0300401C */  bgtz       $v0, .L800C5450
    /* B5C44 800C5444 A4014524 */   addiu     $a1, $v0, 0x1A4
    /* B5C48 800C5448 27100200 */  nor        $v0, $zero, $v0
    /* B5C4C 800C544C A5014524 */  addiu      $a1, $v0, 0x1A5
  .L800C5450:
    /* B5C50 800C5450 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5C54 800C5454 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5C58 800C5458 731B030C */  jal        func_800C6DCC
    /* B5C5C 800C545C 00000000 */   nop
    /* B5C60 800C5460 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5C64 800C5464 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5C68 800C5468 CD1A030C */  jal        func_800C6B34
    /* B5C6C 800C546C 00000000 */   nop
    /* B5C70 800C5470 AA2A023C */  lui        $v0, (0x2AAAAAAB >> 16)
    /* B5C74 800C5474 ABAA4234 */  ori        $v0, $v0, (0x2AAAAAAB & 0xFFFF)
    /* B5C78 800C5478 18000202 */  mult       $s0, $v0
    /* B5C7C 800C547C C3171000 */  sra        $v0, $s0, 31
    /* B5C80 800C5480 10480000 */  mfhi       $t1
    /* B5C84 800C5484 43180900 */  sra        $v1, $t1, 1
    /* B5C88 800C5488 23286200 */  subu       $a1, $v1, $v0
    /* B5C8C 800C548C 1A00A01C */  bgtz       $a1, .L800C54F8
    /* B5C90 800C5490 27100500 */   nor       $v0, $zero, $a1
    /* B5C94 800C5494 3E150308 */  j          .L800C54F8
    /* B5C98 800C5498 01004524 */   addiu     $a1, $v0, 0x1
  .L800C549C:
    /* B5C9C 800C549C 1280013C */  lui        $at, %hi(D_801211DE)
    /* B5CA0 800C54A0 21083200 */  addu       $at, $at, $s2
    /* B5CA4 800C54A4 DE113084 */  lh         $s0, %lo(D_801211DE)($at)
    /* B5CA8 800C54A8 00000000 */  nop
    /* B5CAC 800C54AC 28000006 */  bltz       $s0, .L800C5550
    /* B5CB0 800C54B0 27281000 */   nor       $a1, $zero, $s0
    /* B5CB4 800C54B4 1680023C */  lui        $v0, %hi(D_8015887C)
    /* B5CB8 800C54B8 7C88428C */  lw         $v0, %lo(D_8015887C)($v0)
    /* B5CBC 800C54BC 00000000 */  nop
    /* B5CC0 800C54C0 13004014 */  bnez       $v0, .L800C5510
    /* B5CC4 800C54C4 00000000 */   nop
    /* B5CC8 800C54C8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5CCC 800C54CC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5CD0 800C54D0 731B030C */  jal        func_800C6DCC
    /* B5CD4 800C54D4 01000524 */   addiu     $a1, $zero, 0x1
    /* B5CD8 800C54D8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5CDC 800C54DC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5CE0 800C54E0 CD1A030C */  jal        func_800C6B34
    /* B5CE4 800C54E4 00000000 */   nop
    /* B5CE8 800C54E8 0300001E */  bgtz       $s0, .L800C54F8
    /* B5CEC 800C54EC 21280002 */   addu      $a1, $s0, $zero
    /* B5CF0 800C54F0 27101000 */  nor        $v0, $zero, $s0
    /* B5CF4 800C54F4 01004524 */  addiu      $a1, $v0, 0x1
  .L800C54F8:
    /* B5CF8 800C54F8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5CFC 800C54FC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5D00 800C5500 9C1B030C */  jal        func_800C6E70
    /* B5D04 800C5504 00000000 */   nop
    /* B5D08 800C5508 61150308 */  j          .L800C5584
    /* B5D0C 800C550C 00000000 */   nop
  .L800C5510:
    /* B5D10 800C5510 0300001E */  bgtz       $s0, .L800C5520
    /* B5D14 800C5514 21280002 */   addu      $a1, $s0, $zero
    /* B5D18 800C5518 27101000 */  nor        $v0, $zero, $s0
    /* B5D1C 800C551C 01004524 */  addiu      $a1, $v0, 0x1
  .L800C5520:
    /* B5D20 800C5520 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5D24 800C5524 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5D28 800C5528 9C1B030C */  jal        func_800C6E70
    /* B5D2C 800C552C 00000000 */   nop
    /* B5D30 800C5530 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5D34 800C5534 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5D38 800C5538 CD1A030C */  jal        func_800C6B34
    /* B5D3C 800C553C 00000000 */   nop
    /* B5D40 800C5540 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5D44 800C5544 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5D48 800C5548 5F150308 */  j          .L800C557C
    /* B5D4C 800C554C 01000524 */   addiu     $a1, $zero, 0x1
  .L800C5550:
    /* B5D50 800C5550 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5D54 800C5554 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5D58 800C5558 9C1B030C */  jal        func_800C6E70
    /* B5D5C 800C555C 0100A524 */   addiu     $a1, $a1, 0x1
    /* B5D60 800C5560 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5D64 800C5564 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5D68 800C5568 CD1A030C */  jal        func_800C6B34
    /* B5D6C 800C556C 00000000 */   nop
    /* B5D70 800C5570 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5D74 800C5574 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5D78 800C5578 21280000 */  addu       $a1, $zero, $zero
  .L800C557C:
    /* B5D7C 800C557C 731B030C */  jal        func_800C6DCC
    /* B5D80 800C5580 00000000 */   nop
  .L800C5584:
    /* B5D84 800C5584 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5D88 800C5588 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5D8C 800C558C 1680053C */  lui        $a1, %hi(D_8015907C)
    /* B5D90 800C5590 7C90A524 */  addiu      $a1, $a1, %lo(D_8015907C)
    /* B5D94 800C5594 9987030C */  jal        func_800E1E64
    /* B5D98 800C5598 00000000 */   nop
    /* B5D9C 800C559C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5DA0 800C55A0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5DA4 800C55A4 1F1B030C */  jal        func_800C6C7C
    /* B5DA8 800C55A8 00000000 */   nop
    /* B5DAC 800C55AC 1000A427 */  addiu      $a0, $sp, 0x10
    /* B5DB0 800C55B0 21282002 */  addu       $a1, $s1, $zero
    /* B5DB4 800C55B4 7FE6020C */  jal        func_800B99FC
    /* B5DB8 800C55B8 2130A002 */   addu      $a2, $s5, $zero
    /* B5DBC 800C55BC 21282002 */  addu       $a1, $s1, $zero
    /* B5DC0 800C55C0 1000A627 */  addiu      $a2, $sp, 0x10
    /* B5DC4 800C55C4 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B5DC8 800C55C8 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B5DCC 800C55CC 5511040C */  jal        func_80104554
    /* B5DD0 800C55D0 10000724 */   addiu     $a3, $zero, 0x10
    /* B5DD4 800C55D4 CB1A030C */  jal        func_800C6B2C
    /* B5DD8 800C55D8 21202002 */   addu      $a0, $s1, $zero
    /* B5DDC 800C55DC 00006286 */  lh         $v0, 0x0($s3)
    /* B5DE0 800C55E0 00000000 */  nop
    /* B5DE4 800C55E4 12004010 */  beqz       $v0, .L800C5630
    /* B5DE8 800C55E8 0C00B526 */   addiu     $s5, $s5, 0xC
    /* B5DEC 800C55EC 1280013C */  lui        $at, %hi(D_801211E2)
    /* B5DF0 800C55F0 21083200 */  addu       $at, $at, $s2
    /* B5DF4 800C55F4 E2112284 */  lh         $v0, %lo(D_801211E2)($at)
    /* B5DF8 800C55F8 00000000 */  nop
    /* B5DFC 800C55FC 0C004004 */  bltz       $v0, .L800C5630
    /* B5E00 800C5600 21202002 */   addu      $a0, $s1, $zero
    /* B5E04 800C5604 731B030C */  jal        func_800C6DCC
    /* B5E08 800C5608 B2010524 */   addiu     $a1, $zero, 0x1B2
    /* B5E0C 800C560C F71A030C */  jal        func_800C6BDC
    /* B5E10 800C5610 21202002 */   addu      $a0, $s1, $zero
    /* B5E14 800C5614 1280013C */  lui        $at, %hi(D_801211E2)
    /* B5E18 800C5618 21083200 */  addu       $at, $at, $s2
    /* B5E1C 800C561C E2112584 */  lh         $a1, %lo(D_801211E2)($at)
    /* B5E20 800C5620 9C1B030C */  jal        func_800C6E70
    /* B5E24 800C5624 21202002 */   addu      $a0, $s1, $zero
    /* B5E28 800C5628 9B150308 */  j          .L800C566C
    /* B5E2C 800C562C 00000000 */   nop
  .L800C5630:
    /* B5E30 800C5630 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5E34 800C5634 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5E38 800C5638 731B030C */  jal        func_800C6DCC
    /* B5E3C 800C563C 22000524 */   addiu     $a1, $zero, 0x22
    /* B5E40 800C5640 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5E44 800C5644 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5E48 800C5648 F71A030C */  jal        func_800C6BDC
    /* B5E4C 800C564C 00000000 */   nop
    /* B5E50 800C5650 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5E54 800C5654 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5E58 800C5658 1280013C */  lui        $at, %hi(D_801211E0)
    /* B5E5C 800C565C 21083200 */  addu       $at, $at, $s2
    /* B5E60 800C5660 E0112684 */  lh         $a2, %lo(D_801211E0)($at)
    /* B5E64 800C5664 9225020C */  jal        func_80089648
    /* B5E68 800C5668 21280000 */   addu      $a1, $zero, $zero
  .L800C566C:
    /* B5E6C 800C566C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5E70 800C5670 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5E74 800C5674 CD1A030C */  jal        func_800C6B34
    /* B5E78 800C5678 00000000 */   nop
    /* B5E7C 800C567C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5E80 800C5680 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5E84 800C5684 CD1A030C */  jal        func_800C6B34
    /* B5E88 800C5688 00000000 */   nop
    /* B5E8C 800C568C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5E90 800C5690 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5E94 800C5694 731B030C */  jal        func_800C6DCC
    /* B5E98 800C5698 BC010524 */   addiu     $a1, $zero, 0x1BC
    /* B5E9C 800C569C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5EA0 800C56A0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5EA4 800C56A4 F71A030C */  jal        func_800C6BDC
    /* B5EA8 800C56A8 00000000 */   nop
    /* B5EAC 800C56AC 0000C586 */  lh         $a1, 0x0($s6)
    /* B5EB0 800C56B0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5EB4 800C56B4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5EB8 800C56B8 9C1B030C */  jal        func_800C6E70
    /* B5EBC 800C56BC 00000000 */   nop
    /* B5EC0 800C56C0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5EC4 800C56C4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5EC8 800C56C8 CD1A030C */  jal        func_800C6B34
    /* B5ECC 800C56CC 00000000 */   nop
    /* B5ED0 800C56D0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5ED4 800C56D4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5ED8 800C56D8 151B030C */  jal        func_800C6C54
    /* B5EDC 800C56DC 00000000 */   nop
    /* B5EE0 800C56E0 1280013C */  lui        $at, %hi(D_801211DA)
    /* B5EE4 800C56E4 21083200 */  addu       $at, $at, $s2
    /* B5EE8 800C56E8 DA112294 */  lhu        $v0, %lo(D_801211DA)($at)
    /* B5EEC 800C56EC 00000000 */  nop
    /* B5EF0 800C56F0 0F004230 */  andi       $v0, $v0, 0xF
    /* B5EF4 800C56F4 80100200 */  sll        $v0, $v0, 2
    /* B5EF8 800C56F8 1280013C */  lui        $at, %hi(D_8011A6F0)
    /* B5EFC 800C56FC 21082200 */  addu       $at, $at, $v0
    /* B5F00 800C5700 F0A6258C */  lw         $a1, %lo(D_8011A6F0)($at)
    /* B5F04 800C5704 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5F08 800C5708 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5F0C 800C570C 651B030C */  jal        func_800C6D94
    /* B5F10 800C5710 00000000 */   nop
    /* B5F14 800C5714 00006286 */  lh         $v0, 0x0($s3)
    /* B5F18 800C5718 00000000 */  nop
    /* B5F1C 800C571C 09004010 */  beqz       $v0, .L800C5744
    /* B5F20 800C5720 00000000 */   nop
    /* B5F24 800C5724 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5F28 800C5728 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5F2C 800C572C F71A030C */  jal        func_800C6BDC
    /* B5F30 800C5730 00000000 */   nop
    /* B5F34 800C5734 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5F38 800C5738 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5F3C 800C573C 731B030C */  jal        func_800C6DCC
    /* B5F40 800C5740 A2010524 */   addiu     $a1, $zero, 0x1A2
  .L800C5744:
    /* B5F44 800C5744 1280013C */  lui        $at, %hi(D_801211DA)
    /* B5F48 800C5748 21083200 */  addu       $at, $at, $s2
    /* B5F4C 800C574C DA112294 */  lhu        $v0, %lo(D_801211DA)($at)
    /* B5F50 800C5750 00000000 */  nop
    /* B5F54 800C5754 80004230 */  andi       $v0, $v0, 0x80
    /* B5F58 800C5758 09004010 */  beqz       $v0, .L800C5780
    /* B5F5C 800C575C 00000000 */   nop
    /* B5F60 800C5760 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5F64 800C5764 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5F68 800C5768 F71A030C */  jal        func_800C6BDC
    /* B5F6C 800C576C 00000000 */   nop
    /* B5F70 800C5770 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5F74 800C5774 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5F78 800C5778 731B030C */  jal        func_800C6DCC
    /* B5F7C 800C577C 9A010524 */   addiu     $a1, $zero, 0x19A
  .L800C5780:
    /* B5F80 800C5780 1280043C */  lui        $a0, %hi(D_80121340)
    /* B5F84 800C5784 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B5F88 800C5788 1F1B030C */  jal        func_800C6C7C
    /* B5F8C 800C578C 00000000 */   nop
    /* B5F90 800C5790 1000A427 */  addiu      $a0, $sp, 0x10
    /* B5F94 800C5794 21282002 */  addu       $a1, $s1, $zero
    /* B5F98 800C5798 7FE6020C */  jal        func_800B99FC
    /* B5F9C 800C579C 2130A002 */   addu      $a2, $s5, $zero
    /* B5FA0 800C57A0 21282002 */  addu       $a1, $s1, $zero
    /* B5FA4 800C57A4 1000A627 */  addiu      $a2, $sp, 0x10
    /* B5FA8 800C57A8 10000724 */  addiu      $a3, $zero, 0x10
    /* B5FAC 800C57AC 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B5FB0 800C57B0 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B5FB4 800C57B4 5511040C */  jal        func_80104554
    /* B5FB8 800C57B8 0C00B526 */   addiu     $s5, $s5, 0xC
    /* B5FBC 800C57BC CB1A030C */  jal        func_800C6B2C
    /* B5FC0 800C57C0 21202002 */   addu      $a0, $s1, $zero
    /* B5FC4 800C57C4 1680053C */  lui        $a1, %hi(D_80159010)
    /* B5FC8 800C57C8 1090A524 */  addiu      $a1, $a1, %lo(D_80159010)
    /* B5FCC 800C57CC 9987030C */  jal        func_800E1E64
    /* B5FD0 800C57D0 21202002 */   addu      $a0, $s1, $zero
    /* B5FD4 800C57D4 21202002 */  addu       $a0, $s1, $zero
    /* B5FD8 800C57D8 731B030C */  jal        func_800C6DCC
    /* B5FDC 800C57DC BD010524 */   addiu     $a1, $zero, 0x1BD
    /* B5FE0 800C57E0 F71A030C */  jal        func_800C6BDC
    /* B5FE4 800C57E4 21202002 */   addu      $a0, $s1, $zero
    /* B5FE8 800C57E8 1280013C */  lui        $at, %hi(D_801211EA)
    /* B5FEC 800C57EC 21083200 */  addu       $at, $at, $s2
    /* B5FF0 800C57F0 EA112584 */  lh         $a1, %lo(D_801211EA)($at)
    /* B5FF4 800C57F4 9C1B030C */  jal        func_800C6E70
    /* B5FF8 800C57F8 21202002 */   addu      $a0, $s1, $zero
    /* B5FFC 800C57FC 1680053C */  lui        $a1, %hi(D_80159084)
    /* B6000 800C5800 8490A524 */  addiu      $a1, $a1, %lo(D_80159084)
    /* B6004 800C5804 9987030C */  jal        func_800E1E64
    /* B6008 800C5808 21202002 */   addu      $a0, $s1, $zero
    /* B600C 800C580C 3E0C040C */  jal        func_801030F8
    /* B6010 800C5810 01000424 */   addiu     $a0, $zero, 0x1
    /* B6014 800C5814 1000A427 */  addiu      $a0, $sp, 0x10
    /* B6018 800C5818 21282002 */  addu       $a1, $s1, $zero
    /* B601C 800C581C 7FE6020C */  jal        func_800B99FC
    /* B6020 800C5820 2130A002 */   addu      $a2, $s5, $zero
    /* B6024 800C5824 21282002 */  addu       $a1, $s1, $zero
    /* B6028 800C5828 1000A627 */  addiu      $a2, $sp, 0x10
    /* B602C 800C582C 10000724 */  addiu      $a3, $zero, 0x10
    /* B6030 800C5830 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B6034 800C5834 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B6038 800C5838 5511040C */  jal        func_80104554
    /* B603C 800C583C 0C00B526 */   addiu     $s5, $s5, 0xC
  .L800C5840:
    /* B6040 800C5840 48007326 */  addiu      $s3, $s3, 0x48
    /* B6044 800C5844 4800D626 */  addiu      $s6, $s6, 0x48
    /* B6048 800C5848 48005226 */  addiu      $s2, $s2, 0x48
    /* B604C 800C584C 5000F726 */  addiu      $s7, $s7, 0x50
    /* B6050 800C5850 B5140308 */  j          .L800C52D4
    /* B6054 800C5854 01009426 */   addiu     $s4, $s4, 0x1
  .L800C5858:
    /* B6058 800C5858 1001A48F */  lw         $a0, 0x110($sp)
    /* B605C 800C585C C6D5030C */  jal        func_800F5718
    /* B6060 800C5860 00000000 */   nop
  .L800C5864:
    /* B6064 800C5864 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B6068 800C5868 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B606C 800C586C 7D11040C */  jal        func_801045F4
    /* B6070 800C5870 00000000 */   nop
    /* B6074 800C5874 3C01BF8F */  lw         $ra, 0x13C($sp)
    /* B6078 800C5878 3801BE8F */  lw         $fp, 0x138($sp)
    /* B607C 800C587C 3401B78F */  lw         $s7, 0x134($sp)
    /* B6080 800C5880 3001B68F */  lw         $s6, 0x130($sp)
    /* B6084 800C5884 2C01B58F */  lw         $s5, 0x12C($sp)
    /* B6088 800C5888 2801B48F */  lw         $s4, 0x128($sp)
    /* B608C 800C588C 2401B38F */  lw         $s3, 0x124($sp)
    /* B6090 800C5890 2001B28F */  lw         $s2, 0x120($sp)
    /* B6094 800C5894 1C01B18F */  lw         $s1, 0x11C($sp)
    /* B6098 800C5898 1801B08F */  lw         $s0, 0x118($sp)
    /* B609C 800C589C 4001BD27 */  addiu      $sp, $sp, 0x140
    /* B60A0 800C58A0 0800E003 */  jr         $ra
    /* B60A4 800C58A4 00000000 */   nop
endlabel func_800C4FE4
