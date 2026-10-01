.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B48C8, 0x2B4

glabel func_800B48C8
    /* A50C8 800B48C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A50CC 800B48CC 1400BFAF */  sw         $ra, 0x14($sp)
    /* A50D0 800B48D0 1000B0AF */  sw         $s0, 0x10($sp)
    /* A50D4 800B48D4 680A858F */  lw         $a1, %gp_rel(D_80158F40)($gp)
    /* A50D8 800B48D8 00000000 */  nop
    /* A50DC 800B48DC A200A010 */  beqz       $a1, .L800B4B68
    /* A50E0 800B48E0 9CFF8224 */   addiu     $v0, $a0, -0x64
    /* A50E4 800B48E4 21304000 */  addu       $a2, $v0, $zero
    /* A50E8 800B48E8 00140200 */  sll        $v0, $v0, 16
    /* A50EC 800B48EC 03240200 */  sra        $a0, $v0, 16
    /* A50F0 800B48F0 2400A38C */  lw         $v1, 0x24($a1)
    /* A50F4 800B48F4 00000000 */  nop
    /* A50F8 800B48F8 2A108300 */  slt        $v0, $a0, $v1
    /* A50FC 800B48FC 06004014 */  bnez       $v0, .L800B4918
    /* A5100 800B4900 00140600 */   sll       $v0, $a2, 16
    /* A5104 800B4904 23108300 */  subu       $v0, $a0, $v1
    /* A5108 800B4908 01004224 */  addiu      $v0, $v0, 0x1
    /* A510C 800B490C C000A2AC */  sw         $v0, 0xC0($a1)
    /* A5110 800B4910 4AD20208 */  j          .L800B4928
    /* A5114 800B4914 21800000 */   addu      $s0, $zero, $zero
  .L800B4918:
    /* A5118 800B4918 680A838F */  lw         $v1, %gp_rel(D_80158F40)($gp)
    /* A511C 800B491C 43130200 */  sra        $v0, $v0, 13
    /* A5120 800B4920 21186200 */  addu       $v1, $v1, $v0
    /* A5124 800B4924 5402708C */  lw         $s0, 0x254($v1)
  .L800B4928:
    /* A5128 800B4928 680A858F */  lw         $a1, %gp_rel(D_80158F40)($gp)
    /* A512C 800B492C 00000000 */  nop
    /* A5130 800B4930 8001A28C */  lw         $v0, 0x180($a1)
    /* A5134 800B4934 00000000 */  nop
    /* A5138 800B4938 14004010 */  beqz       $v0, .L800B498C
    /* A513C 800B493C 0100022E */   sltiu     $v0, $s0, 0x1
    /* A5140 800B4940 0402A384 */  lh         $v1, 0x204($a1)
    /* A5144 800B4944 00000000 */  nop
    /* A5148 800B4948 05006338 */  xori       $v1, $v1, 0x5
    /* A514C 800B494C 2B180300 */  sltu       $v1, $zero, $v1
    /* A5150 800B4950 0A02A484 */  lh         $a0, 0x20A($a1)
    /* A5154 800B4954 00000000 */  nop
    /* A5158 800B4958 01008428 */  slti       $a0, $a0, 0x1
    /* A515C 800B495C 25186400 */  or         $v1, $v1, $a0
    /* A5160 800B4960 24104300 */  and        $v0, $v0, $v1
    /* A5164 800B4964 80004014 */  bnez       $v0, .L800B4B68
    /* A5168 800B4968 0200033A */   xori      $v1, $s0, 0x2
    /* A516C 800B496C 0100632C */  sltiu      $v1, $v1, 0x1
    /* A5170 800B4970 0602A284 */  lh         $v0, 0x206($a1)
    /* A5174 800B4974 00000000 */  nop
    /* A5178 800B4978 27100200 */  nor        $v0, $zero, $v0
    /* A517C 800B497C 2B100200 */  sltu       $v0, $zero, $v0
    /* A5180 800B4980 24186200 */  and        $v1, $v1, $v0
    /* A5184 800B4984 78006014 */  bnez       $v1, .L800B4B68
    /* A5188 800B4988 00000000 */   nop
  .L800B498C:
    /* A518C 800B498C 01000224 */  addiu      $v0, $zero, 0x1
    /* A5190 800B4990 07000216 */  bne        $s0, $v0, .L800B49B0
    /* A5194 800B4994 00000000 */   nop
    /* A5198 800B4998 680A838F */  lw         $v1, %gp_rel(D_80158F40)($gp)
    /* A519C 800B499C 00000000 */  nop
    /* A51A0 800B49A0 3000628C */  lw         $v0, 0x30($v1)
    /* A51A4 800B49A4 00000000 */  nop
    /* A51A8 800B49A8 80004234 */  ori        $v0, $v0, 0x80
    /* A51AC 800B49AC 300062AC */  sw         $v0, 0x30($v1)
  .L800B49B0:
    /* A51B0 800B49B0 21000016 */  bnez       $s0, .L800B4A38
    /* A51B4 800B49B4 02000224 */   addiu     $v0, $zero, 0x2
    /* A51B8 800B49B8 680A848F */  lw         $a0, %gp_rel(D_80158F40)($gp)
    /* A51BC 800B49BC 00000000 */  nop
    /* A51C0 800B49C0 3000828C */  lw         $v0, 0x30($a0)
    /* A51C4 800B49C4 0200033C */  lui        $v1, (0x20000 >> 16)
    /* A51C8 800B49C8 24104300 */  and        $v0, $v0, $v1
    /* A51CC 800B49CC 1A004010 */  beqz       $v0, .L800B4A38
    /* A51D0 800B49D0 02000224 */   addiu     $v0, $zero, 0x2
    /* A51D4 800B49D4 6C01828C */  lw         $v0, 0x16C($a0)
    /* A51D8 800B49D8 00000000 */  nop
    /* A51DC 800B49DC 15004010 */  beqz       $v0, .L800B4A34
    /* A51E0 800B49E0 00000000 */   nop
    /* A51E4 800B49E4 7C01838C */  lw         $v1, 0x17C($a0)
    /* A51E8 800B49E8 00000000 */  nop
    /* A51EC 800B49EC 11006010 */  beqz       $v1, .L800B4A34
    /* A51F0 800B49F0 21200000 */   addu      $a0, $zero, $zero
    /* A51F4 800B49F4 680A828F */  lw         $v0, %gp_rel(D_80158F40)($gp)
    /* A51F8 800B49F8 00000000 */  nop
    /* A51FC 800B49FC 6C01428C */  lw         $v0, 0x16C($v0)
  .L800B4A00:
    /* A5200 800B4A00 00000000 */  nop
    /* A5204 800B4A04 05006210 */  beq        $v1, $v0, .L800B4A1C
    /* A5208 800B4A08 00000000 */   nop
    /* A520C 800B4A0C 1000638C */  lw         $v1, 0x10($v1)
    /* A5210 800B4A10 00000000 */  nop
    /* A5214 800B4A14 FAFF6014 */  bnez       $v1, .L800B4A00
    /* A5218 800B4A18 01008424 */   addiu     $a0, $a0, 0x1
  .L800B4A1C:
    /* A521C 800B4A1C 06006010 */  beqz       $v1, .L800B4A38
    /* A5220 800B4A20 02000224 */   addiu     $v0, $zero, 0x2
    /* A5224 800B4A24 2C018424 */  addiu      $a0, $a0, 0x12C
    /* A5228 800B4A28 00240400 */  sll        $a0, $a0, 16
    /* A522C 800B4A2C EDD1020C */  jal        func_800B47B4
    /* A5230 800B4A30 03240400 */   sra       $a0, $a0, 16
  .L800B4A34:
    /* A5234 800B4A34 02000224 */  addiu      $v0, $zero, 0x2
  .L800B4A38:
    /* A5238 800B4A38 04000216 */  bne        $s0, $v0, .L800B4A4C
    /* A523C 800B4A3C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A5240 800B4A40 680A838F */  lw         $v1, %gp_rel(D_80158F40)($gp)
    /* A5244 800B4A44 D3D20208 */  j          .L800B4B4C
    /* A5248 800B4A48 BC0062AC */   sw        $v0, 0xBC($v1)
  .L800B4A4C:
    /* A524C 800B4A4C 680A838F */  lw         $v1, %gp_rel(D_80158F40)($gp)
    /* A5250 800B4A50 00000000 */  nop
    /* A5254 800B4A54 2000628C */  lw         $v0, 0x20($v1)
    /* A5258 800B4A58 00000000 */  nop
    /* A525C 800B4A5C 02004228 */  slti       $v0, $v0, 0x2
    /* A5260 800B4A60 05004014 */  bnez       $v0, .L800B4A78
    /* A5264 800B4A64 00000000 */   nop
    /* A5268 800B4A68 1C00628C */  lw         $v0, 0x1C($v1)
    /* A526C 800B4A6C 00000000 */  nop
    /* A5270 800B4A70 05004010 */  beqz       $v0, .L800B4A88
    /* A5274 800B4A74 00000000 */   nop
  .L800B4A78:
    /* A5278 800B4A78 680A828F */  lw         $v0, %gp_rel(D_80158F40)($gp)
    /* A527C 800B4A7C 00000000 */  nop
    /* A5280 800B4A80 BC0040AC */  sw         $zero, 0xBC($v0)
    /* A5284 800B4A84 680A838F */  lw         $v1, %gp_rel(D_80158F40)($gp)
  .L800B4A88:
    /* A5288 800B4A88 00000000 */  nop
    /* A528C 800B4A8C 3000628C */  lw         $v0, 0x30($v1)
    /* A5290 800B4A90 00000000 */  nop
    /* A5294 800B4A94 00104230 */  andi       $v0, $v0, 0x1000
    /* A5298 800B4A98 0E004010 */  beqz       $v0, .L800B4AD4
    /* A529C 800B4A9C 00000000 */   nop
    /* A52A0 800B4AA0 6801628C */  lw         $v0, 0x168($v1)
    /* A52A4 800B4AA4 00000000 */  nop
    /* A52A8 800B4AA8 00004294 */  lhu        $v0, 0x0($v0)
    /* A52AC 800B4AAC 00000000 */  nop
    /* A52B0 800B4AB0 01004230 */  andi       $v0, $v0, 0x1
    /* A52B4 800B4AB4 07004010 */  beqz       $v0, .L800B4AD4
    /* A52B8 800B4AB8 69000424 */   addiu     $a0, $zero, 0x69
    /* A52BC 800B4ABC 21280000 */  addu       $a1, $zero, $zero
    /* A52C0 800B4AC0 21300000 */  addu       $a2, $zero, $zero
    /* A52C4 800B4AC4 2B9D020C */  jal        func_800A74AC
    /* A52C8 800B4AC8 21380000 */   addu      $a3, $zero, $zero
    /* A52CC 800B4ACC DAD20208 */  j          .L800B4B68
    /* A52D0 800B4AD0 00000000 */   nop
  .L800B4AD4:
    /* A52D4 800B4AD4 680A848F */  lw         $a0, %gp_rel(D_80158F40)($gp)
    /* A52D8 800B4AD8 00000000 */  nop
    /* A52DC 800B4ADC 1C00828C */  lw         $v0, 0x1C($a0)
    /* A52E0 800B4AE0 00000000 */  nop
    /* A52E4 800B4AE4 19004010 */  beqz       $v0, .L800B4B4C
    /* A52E8 800B4AE8 00000000 */   nop
    /* A52EC 800B4AEC 3000828C */  lw         $v0, 0x30($a0)
    /* A52F0 800B4AF0 00000000 */  nop
    /* A52F4 800B4AF4 04104230 */  andi       $v0, $v0, 0x1004
    /* A52F8 800B4AF8 14004014 */  bnez       $v0, .L800B4B4C
    /* A52FC 800B4AFC 21280000 */   addu      $a1, $zero, $zero
    /* A5300 800B4B00 7001838C */  lw         $v1, 0x170($a0)
    /* A5304 800B4B04 AC01828C */  lw         $v0, 0x1AC($a0)
    /* A5308 800B4B08 00000000 */  nop
    /* A530C 800B4B0C 30004284 */  lh         $v0, 0x30($v0)
    /* A5310 800B4B10 08006010 */  beqz       $v1, .L800B4B34
    /* A5314 800B4B14 21300000 */   addu      $a2, $zero, $zero
  .L800B4B18:
    /* A5318 800B4B18 0200A214 */  bne        $a1, $v0, .L800B4B24
    /* A531C 800B4B1C 00000000 */   nop
    /* A5320 800B4B20 21306000 */  addu       $a2, $v1, $zero
  .L800B4B24:
    /* A5324 800B4B24 0C00638C */  lw         $v1, 0xC($v1)
    /* A5328 800B4B28 00000000 */  nop
    /* A532C 800B4B2C FAFF6014 */  bnez       $v1, .L800B4B18
    /* A5330 800B4B30 0100A524 */   addiu     $a1, $a1, 0x1
  .L800B4B34:
    /* A5334 800B4B34 0600C010 */  beqz       $a2, .L800B4B50
    /* A5338 800B4B38 68000424 */   addiu     $a0, $zero, 0x68
    /* A533C 800B4B3C 680A838F */  lw         $v1, %gp_rel(D_80158F40)($gp)
    /* A5340 800B4B40 0400C28C */  lw         $v0, 0x4($a2)
    /* A5344 800B4B44 00000000 */  nop
    /* A5348 800B4B48 BC0062AC */  sw         $v0, 0xBC($v1)
  .L800B4B4C:
    /* A534C 800B4B4C 68000424 */  addiu      $a0, $zero, 0x68
  .L800B4B50:
    /* A5350 800B4B50 21280000 */  addu       $a1, $zero, $zero
    /* A5354 800B4B54 21300000 */  addu       $a2, $zero, $zero
    /* A5358 800B4B58 2B9D020C */  jal        func_800A74AC
    /* A535C 800B4B5C 21380000 */   addu      $a3, $zero, $zero
    /* A5360 800B4B60 DAD1020C */  jal        func_800B4768
    /* A5364 800B4B64 00000000 */   nop
  .L800B4B68:
    /* A5368 800B4B68 1400BF8F */  lw         $ra, 0x14($sp)
    /* A536C 800B4B6C 1000B08F */  lw         $s0, 0x10($sp)
    /* A5370 800B4B70 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A5374 800B4B74 0800E003 */  jr         $ra
    /* A5378 800B4B78 00000000 */   nop
endlabel func_800B48C8
