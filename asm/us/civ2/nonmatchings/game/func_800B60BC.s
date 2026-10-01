.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B60BC, 0x378

glabel func_800B60BC
    /* A68BC 800B60BC B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* A68C0 800B60C0 4400BFAF */  sw         $ra, 0x44($sp)
    /* A68C4 800B60C4 4000B4AF */  sw         $s4, 0x40($sp)
    /* A68C8 800B60C8 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* A68CC 800B60CC 3800B2AF */  sw         $s2, 0x38($sp)
    /* A68D0 800B60D0 3400B1AF */  sw         $s1, 0x34($sp)
    /* A68D4 800B60D4 3000B0AF */  sw         $s0, 0x30($sp)
    /* A68D8 800B60D8 21888000 */  addu       $s1, $a0, $zero
    /* A68DC 800B60DC 0000228E */  lw         $v0, 0x0($s1)
    /* A68E0 800B60E0 00000000 */  nop
    /* A68E4 800B60E4 CA004014 */  bnez       $v0, .L800B6410
    /* A68E8 800B60E8 21100000 */   addu      $v0, $zero, $zero
    /* A68EC 800B60EC 3E82030C */  jal        __builtin_new
    /* A68F0 800B60F0 C4000424 */   addiu     $a0, $zero, 0xC4
    /* A68F4 800B60F4 21804000 */  addu       $s0, $v0, $zero
    /* A68F8 800B60F8 9AE0030C */  jal        func_800F8268
    /* A68FC 800B60FC 21200002 */   addu      $a0, $s0, $zero
    /* A6900 800B6100 EFE9030C */  jal        func_800FA7BC
    /* A6904 800B6104 2C000426 */   addiu     $a0, $s0, 0x2C
    /* A6908 800B6108 3C0000AE */  sw         $zero, 0x3C($s0)
    /* A690C 800B610C 400000AE */  sw         $zero, 0x40($s0)
    /* A6910 800B6110 440000AE */  sw         $zero, 0x44($s0)
    /* A6914 800B6114 480000AE */  sw         $zero, 0x48($s0)
    /* A6918 800B6118 4C0000AE */  sw         $zero, 0x4C($s0)
    /* A691C 800B611C 500000AE */  sw         $zero, 0x50($s0)
    /* A6920 800B6120 540000AE */  sw         $zero, 0x54($s0)
    /* A6924 800B6124 580000AE */  sw         $zero, 0x58($s0)
    /* A6928 800B6128 5C0000AE */  sw         $zero, 0x5C($s0)
    /* A692C 800B612C 600000AE */  sw         $zero, 0x60($s0)
    /* A6930 800B6130 640000AE */  sw         $zero, 0x64($s0)
    /* A6934 800B6134 680000AE */  sw         $zero, 0x68($s0)
    /* A6938 800B6138 6C0000AE */  sw         $zero, 0x6C($s0)
    /* A693C 800B613C 700000AE */  sw         $zero, 0x70($s0)
    /* A6940 800B6140 740000AE */  sw         $zero, 0x74($s0)
    /* A6944 800B6144 780000AE */  sw         $zero, 0x78($s0)
    /* A6948 800B6148 7C0000AE */  sw         $zero, 0x7C($s0)
    /* A694C 800B614C 800000AE */  sw         $zero, 0x80($s0)
    /* A6950 800B6150 840000AE */  sw         $zero, 0x84($s0)
    /* A6954 800B6154 880000AE */  sw         $zero, 0x88($s0)
    /* A6958 800B6158 8C0000AE */  sw         $zero, 0x8C($s0)
    /* A695C 800B615C 900000AE */  sw         $zero, 0x90($s0)
    /* A6960 800B6160 940000AE */  sw         $zero, 0x94($s0)
    /* A6964 800B6164 980000A6 */  sh         $zero, 0x98($s0)
    /* A6968 800B6168 9A0000A6 */  sh         $zero, 0x9A($s0)
    /* A696C 800B616C 00400224 */  addiu      $v0, $zero, 0x4000
    /* A6970 800B6170 9C0002A6 */  sh         $v0, 0x9C($s0)
    /* A6974 800B6174 9E0002A6 */  sh         $v0, 0x9E($s0)
    /* A6978 800B6178 A60000A6 */  sh         $zero, 0xA6($s0)
    /* A697C 800B617C A80000A6 */  sh         $zero, 0xA8($s0)
    /* A6980 800B6180 A00000A6 */  sh         $zero, 0xA0($s0)
    /* A6984 800B6184 01000224 */  addiu      $v0, $zero, 0x1
    /* A6988 800B6188 A20002A6 */  sh         $v0, 0xA2($s0)
    /* A698C 800B618C A40002A6 */  sh         $v0, 0xA4($s0)
    /* A6990 800B6190 B00000AE */  sw         $zero, 0xB0($s0)
    /* A6994 800B6194 B40000AE */  sw         $zero, 0xB4($s0)
    /* A6998 800B6198 B80000AE */  sw         $zero, 0xB8($s0)
    /* A699C 800B619C 01000224 */  addiu      $v0, $zero, 0x1
    /* A69A0 800B61A0 BC0002A2 */  sb         $v0, 0xBC($s0)
    /* A69A4 800B61A4 0180023C */  lui        $v0, %hi(D_800138BC)
    /* A69A8 800B61A8 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* A69AC 800B61AC 280002AE */  sw         $v0, 0x28($s0)
    /* A69B0 800B61B0 B00000AE */  sw         $zero, 0xB0($s0)
    /* A69B4 800B61B4 C00000AE */  sw         $zero, 0xC0($s0)
    /* A69B8 800B61B8 000030AE */  sw         $s0, 0x0($s1)
    /* A69BC 800B61BC 2000A0A3 */  sb         $zero, 0x20($sp)
    /* A69C0 800B61C0 1801338E */  lw         $s3, 0x118($s1)
    /* A69C4 800B61C4 00000000 */  nop
    /* A69C8 800B61C8 02006016 */  bnez       $s3, .L800B61D4
    /* A69CC 800B61CC 00000000 */   nop
    /* A69D0 800B61D0 2000B327 */  addiu      $s3, $sp, 0x20
  .L800B61D4:
    /* A69D4 800B61D4 3000228E */  lw         $v0, 0x30($s1)
    /* A69D8 800B61D8 0100033C */  lui        $v1, (0x10000 >> 16)
    /* A69DC 800B61DC 24104300 */  and        $v0, $v0, $v1
    /* A69E0 800B61E0 02004010 */  beqz       $v0, .L800B61EC
    /* A69E4 800B61E4 012C1424 */   addiu     $s4, $zero, 0x2C01
    /* A69E8 800B61E8 41281424 */  addiu      $s4, $zero, 0x2841
  .L800B61EC:
    /* A69EC 800B61EC 0C0A828F */  lw         $v0, %gp_rel(D_80158EE4)($gp)
    /* A69F0 800B61F0 00000000 */  nop
    /* A69F4 800B61F4 03004010 */  beqz       $v0, .L800B6204
    /* A69F8 800B61F8 00000000 */   nop
    /* A69FC 800B61FC 88D80208 */  j          .L800B6220
    /* A6A00 800B6200 21904000 */   addu      $s2, $v0, $zero
  .L800B6204:
    /* A6A04 800B6204 1680023C */  lui        $v0, %hi(D_8015899C)
    /* A6A08 800B6208 9C89428C */  lw         $v0, %lo(D_8015899C)($v0)
    /* A6A0C 800B620C 00000000 */  nop
    /* A6A10 800B6210 03004010 */  beqz       $v0, .L800B6220
    /* A6A14 800B6214 21900000 */   addu      $s2, $zero, $zero
    /* A6A18 800B6218 1180123C */  lui        $s2, %hi(D_8010CBE0)
    /* A6A1C 800B621C E0CB5226 */  addiu      $s2, $s2, %lo(D_8010CBE0)
  .L800B6220:
    /* A6A20 800B6220 3000228E */  lw         $v0, 0x30($s1)
    /* A6A24 800B6224 00000000 */  nop
    /* A6A28 800B6228 00404230 */  andi       $v0, $v0, 0x4000
    /* A6A2C 800B622C 43004014 */  bnez       $v0, .L800B633C
    /* A6A30 800B6230 00000000 */   nop
    /* A6A34 800B6234 C400248E */  lw         $a0, 0xC4($s1)
    /* A6A38 800B6238 00000000 */  nop
    /* A6A3C 800B623C F8FF8424 */  addiu      $a0, $a0, -0x8
    /* A6A40 800B6240 C800258E */  lw         $a1, 0xC8($s1)
    /* A6A44 800B6244 00000000 */  nop
    /* A6A48 800B6248 F0FFA524 */  addiu      $a1, $a1, -0x10
    /* A6A4C 800B624C 3400228E */  lw         $v0, 0x34($s1)
    /* A6A50 800B6250 00000000 */  nop
    /* A6A54 800B6254 10004224 */  addiu      $v0, $v0, 0x10
    /* A6A58 800B6258 3800238E */  lw         $v1, 0x38($s1)
    /* A6A5C 800B625C 00000000 */  nop
    /* A6A60 800B6260 20006324 */  addiu      $v1, $v1, 0x20
    /* A6A64 800B6264 2800A4A7 */  sh         $a0, 0x28($sp)
    /* A6A68 800B6268 2A00A5A7 */  sh         $a1, 0x2A($sp)
    /* A6A6C 800B626C 21208200 */  addu       $a0, $a0, $v0
    /* A6A70 800B6270 2C00A4A7 */  sh         $a0, 0x2C($sp)
    /* A6A74 800B6274 2128A300 */  addu       $a1, $a1, $v1
    /* A6A78 800B6278 2E00A5A7 */  sh         $a1, 0x2E($sp)
    /* A6A7C 800B627C 2800B027 */  addiu      $s0, $sp, 0x28
    /* A6A80 800B6280 2C022586 */  lh         $a1, 0x22C($s1)
    /* A6A84 800B6284 2E022686 */  lh         $a2, 0x22E($s1)
    /* A6A88 800B6288 30022786 */  lh         $a3, 0x230($s1)
    /* A6A8C 800B628C 1000A0AF */  sw         $zero, 0x10($sp)
    /* A6A90 800B6290 7D1C040C */  jal        func_801071F4
    /* A6A94 800B6294 21200002 */   addu      $a0, $s0, $zero
    /* A6A98 800B6298 280222AE */  sw         $v0, 0x228($s1)
    /* A6A9C 800B629C 8001228E */  lw         $v0, 0x180($s1)
    /* A6AA0 800B62A0 00000000 */  nop
    /* A6AA4 800B62A4 1C004010 */  beqz       $v0, .L800B6318
    /* A6AA8 800B62A8 D8000224 */   addiu     $v0, $zero, 0xD8
    /* A6AAC 800B62AC 2800A2A7 */  sh         $v0, 0x28($sp)
    /* A6AB0 800B62B0 20000224 */  addiu      $v0, $zero, 0x20
    /* A6AB4 800B62B4 2A00A2A7 */  sh         $v0, 0x2A($sp)
    /* A6AB8 800B62B8 18010224 */  addiu      $v0, $zero, 0x118
    /* A6ABC 800B62BC 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* A6AC0 800B62C0 98000224 */  addiu      $v0, $zero, 0x98
    /* A6AC4 800B62C4 2E00A2A7 */  sh         $v0, 0x2E($sp)
    /* A6AC8 800B62C8 2C022586 */  lh         $a1, 0x22C($s1)
    /* A6ACC 800B62CC 2E022686 */  lh         $a2, 0x22E($s1)
    /* A6AD0 800B62D0 30022786 */  lh         $a3, 0x230($s1)
    /* A6AD4 800B62D4 1000A0AF */  sw         $zero, 0x10($sp)
    /* A6AD8 800B62D8 7D1C040C */  jal        func_801071F4
    /* A6ADC 800B62DC 21200002 */   addu      $a0, $s0, $zero
    /* A6AE0 800B62E0 30000224 */  addiu      $v0, $zero, 0x30
    /* A6AE4 800B62E4 2800A2A7 */  sh         $v0, 0x28($sp)
    /* A6AE8 800B62E8 10000224 */  addiu      $v0, $zero, 0x10
    /* A6AEC 800B62EC 2A00A2A7 */  sh         $v0, 0x2A($sp)
    /* A6AF0 800B62F0 C8000224 */  addiu      $v0, $zero, 0xC8
    /* A6AF4 800B62F4 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* A6AF8 800B62F8 B0000224 */  addiu      $v0, $zero, 0xB0
    /* A6AFC 800B62FC 2E00A2A7 */  sh         $v0, 0x2E($sp)
    /* A6B00 800B6300 2C022586 */  lh         $a1, 0x22C($s1)
    /* A6B04 800B6304 2E022686 */  lh         $a2, 0x22E($s1)
    /* A6B08 800B6308 30022786 */  lh         $a3, 0x230($s1)
    /* A6B0C 800B630C 1000A0AF */  sw         $zero, 0x10($sp)
    /* A6B10 800B6310 7D1C040C */  jal        func_801071F4
    /* A6B14 800B6314 21200002 */   addu      $a0, $s0, $zero
  .L800B6318:
    /* A6B18 800B6318 3000228E */  lw         $v0, 0x30($s1)
    /* A6B1C 800B631C 00000000 */  nop
    /* A6B20 800B6320 08004230 */  andi       $v0, $v0, 0x8
    /* A6B24 800B6324 05004014 */  bnez       $v0, .L800B633C
    /* A6B28 800B6328 00000000 */   nop
    /* A6B2C 800B632C B31E040C */  jal        func_80107ACC
    /* A6B30 800B6330 00000000 */   nop
    /* A6B34 800B6334 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* A6B38 800B6338 280222AE */  sw         $v0, 0x228($s1)
  .L800B633C:
    /* A6B3C 800B633C C4002786 */  lh         $a3, 0xC4($s1)
    /* A6B40 800B6340 C8002286 */  lh         $v0, 0xC8($s1)
    /* A6B44 800B6344 00000000 */  nop
    /* A6B48 800B6348 1000A2AF */  sw         $v0, 0x10($sp)
    /* A6B4C 800B634C 34002286 */  lh         $v0, 0x34($s1)
    /* A6B50 800B6350 00000000 */  nop
    /* A6B54 800B6354 1400A2AF */  sw         $v0, 0x14($sp)
    /* A6B58 800B6358 38002286 */  lh         $v0, 0x38($s1)
    /* A6B5C 800B635C 00000000 */  nop
    /* A6B60 800B6360 1800A2AF */  sw         $v0, 0x18($sp)
    /* A6B64 800B6364 1C00B2AF */  sw         $s2, 0x1C($sp)
    /* A6B68 800B6368 0000248E */  lw         $a0, 0x0($s1)
    /* A6B6C 800B636C 21286002 */  addu       $a1, $s3, $zero
    /* A6B70 800B6370 B3DE030C */  jal        func_800F7ACC
    /* A6B74 800B6374 21308002 */   addu      $a2, $s4, $zero
    /* A6B78 800B6378 3000228E */  lw         $v0, 0x30($s1)
    /* A6B7C 800B637C 0100033C */  lui        $v1, (0x10000 >> 16)
    /* A6B80 800B6380 24104300 */  and        $v0, $v0, $v1
    /* A6B84 800B6384 05004014 */  bnez       $v0, .L800B639C
    /* A6B88 800B6388 00000000 */   nop
    /* A6B8C 800B638C 0000248E */  lw         $a0, 0x0($s1)
    /* A6B90 800B6390 B4002586 */  lh         $a1, 0xB4($s1)
    /* A6B94 800B6394 36EC030C */  jal        func_800FB0D8
    /* A6B98 800B6398 2C008424 */   addiu     $a0, $a0, 0x2C
  .L800B639C:
    /* A6B9C 800B639C 0000228E */  lw         $v0, 0x0($s1)
    /* A6BA0 800B63A0 00000000 */  nop
    /* A6BA4 800B63A4 00004484 */  lh         $a0, 0x0($v0)
    /* A6BA8 800B63A8 3400228E */  lw         $v0, 0x34($s1)
    /* A6BAC 800B63AC 00000000 */  nop
    /* A6BB0 800B63B0 2A184400 */  slt        $v1, $v0, $a0
    /* A6BB4 800B63B4 02006010 */  beqz       $v1, .L800B63C0
    /* A6BB8 800B63B8 00000000 */   nop
    /* A6BBC 800B63BC 21108000 */  addu       $v0, $a0, $zero
  .L800B63C0:
    /* A6BC0 800B63C0 340022AE */  sw         $v0, 0x34($s1)
    /* A6BC4 800B63C4 0000228E */  lw         $v0, 0x0($s1)
    /* A6BC8 800B63C8 00000000 */  nop
    /* A6BCC 800B63CC 02004484 */  lh         $a0, 0x2($v0)
    /* A6BD0 800B63D0 3800228E */  lw         $v0, 0x38($s1)
    /* A6BD4 800B63D4 00000000 */  nop
    /* A6BD8 800B63D8 2A184400 */  slt        $v1, $v0, $a0
    /* A6BDC 800B63DC 02006010 */  beqz       $v1, .L800B63E8
    /* A6BE0 800B63E0 00000000 */   nop
    /* A6BE4 800B63E4 21108000 */  addu       $v0, $a0, $zero
  .L800B63E8:
    /* A6BE8 800B63E8 380022AE */  sw         $v0, 0x38($s1)
    /* A6BEC 800B63EC 0000248E */  lw         $a0, 0x0($s1)
    /* A6BF0 800B63F0 9ADF030C */  jal        func_800F7E68
    /* A6BF4 800B63F4 21282002 */   addu      $a1, $s1, $zero
    /* A6BF8 800B63F8 0000248E */  lw         $a0, 0x0($s1)
    /* A6BFC 800B63FC 0B80053C */  lui        $a1, %hi(func_800B5E44)
    /* A6C00 800B6400 445EA524 */  addiu      $a1, $a1, %lo(func_800B5E44)
    /* A6C04 800B6404 82DF030C */  jal        func_800F7E08
    /* A6C08 800B6408 00000000 */   nop
    /* A6C0C 800B640C 01000224 */  addiu      $v0, $zero, 0x1
  .L800B6410:
    /* A6C10 800B6410 4400BF8F */  lw         $ra, 0x44($sp)
    /* A6C14 800B6414 4000B48F */  lw         $s4, 0x40($sp)
    /* A6C18 800B6418 3C00B38F */  lw         $s3, 0x3C($sp)
    /* A6C1C 800B641C 3800B28F */  lw         $s2, 0x38($sp)
    /* A6C20 800B6420 3400B18F */  lw         $s1, 0x34($sp)
    /* A6C24 800B6424 3000B08F */  lw         $s0, 0x30($sp)
    /* A6C28 800B6428 4800BD27 */  addiu      $sp, $sp, 0x48
    /* A6C2C 800B642C 0800E003 */  jr         $ra
    /* A6C30 800B6430 00000000 */   nop
endlabel func_800B60BC
