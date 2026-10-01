.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C59EC, 0x574

glabel func_800C59EC
    /* B61EC 800C59EC 18FDBD27 */  addiu      $sp, $sp, -0x2E8
    /* B61F0 800C59F0 DC02B3AF */  sw         $s3, 0x2DC($sp)
    /* B61F4 800C59F4 21988000 */  addu       $s3, $a0, $zero
    /* B61F8 800C59F8 2800A427 */  addiu      $a0, $sp, 0x28
    /* B61FC 800C59FC 00200524 */  addiu      $a1, $zero, 0x2000
    /* B6200 800C5A00 E402BFAF */  sw         $ra, 0x2E4($sp)
    /* B6204 800C5A04 E002B4AF */  sw         $s4, 0x2E0($sp)
    /* B6208 800C5A08 D802B2AF */  sw         $s2, 0x2D8($sp)
    /* B620C 800C5A0C D402B1AF */  sw         $s1, 0x2D4($sp)
    /* B6210 800C5A10 ADC5020C */  jal        func_800B16B4
    /* B6214 800C5A14 D002B0AF */   sw        $s0, 0x2D0($sp)
    /* B6218 800C5A18 6C16030C */  jal        func_800C59B0
    /* B621C 800C5A1C 21A06002 */   addu      $s4, $s3, $zero
  .L800C5A20:
    /* B6220 800C5A20 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* B6224 800C5A24 02008216 */  bne        $s4, $v0, .L800C5A30
    /* B6228 800C5A28 02000424 */   addiu     $a0, $zero, 0x2
    /* B622C 800C5A2C 03000424 */  addiu      $a0, $zero, 0x3
  .L800C5A30:
    /* B6230 800C5A30 5BB7010C */  jal        func_8006DD6C
    /* B6234 800C5A34 00000000 */   nop
    /* B6238 800C5A38 E3006106 */  bgez       $s3, .L800C5DC8
    /* B623C 800C5A3C 80101300 */   sll       $v0, $s3, 2
    /* B6240 800C5A40 01000224 */  addiu      $v0, $zero, 0x1
    /* B6244 800C5A44 1000A2AF */  sw         $v0, 0x10($sp)
    /* B6248 800C5A48 2800B027 */  addiu      $s0, $sp, 0x28
    /* B624C 800C5A4C 21200002 */  addu       $a0, $s0, $zero
    /* B6250 800C5A50 21280000 */  addu       $a1, $zero, $zero
    /* B6254 800C5A54 21300000 */  addu       $a2, $zero, $zero
    /* B6258 800C5A58 1EC7020C */  jal        func_800B1C78
    /* B625C 800C5A5C 21380000 */   addu      $a3, $zero, $zero
    /* B6260 800C5A60 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* B6264 800C5A64 05008216 */  bne        $s4, $v0, .L800C5A7C
    /* B6268 800C5A68 00000000 */   nop
    /* B626C 800C5A6C 0180053C */  lui        $a1, %hi(D_80012504)
    /* B6270 800C5A70 0425A524 */  addiu      $a1, $a1, %lo(D_80012504)
    /* B6274 800C5A74 A2160308 */  j          .L800C5A88
    /* B6278 800C5A78 21200002 */   addu      $a0, $s0, $zero
  .L800C5A7C:
    /* B627C 800C5A7C 21200002 */  addu       $a0, $s0, $zero
    /* B6280 800C5A80 0180053C */  lui        $a1, %hi(D_80012524)
    /* B6284 800C5A84 2425A524 */  addiu      $a1, $a1, %lo(D_80012524)
  .L800C5A88:
    /* B6288 800C5A88 1CC8020C */  jal        func_800B2070
    /* B628C 800C5A8C 00000000 */   nop
    /* B6290 800C5A90 2800A427 */  addiu      $a0, $sp, 0x28
    /* B6294 800C5A94 39C8020C */  jal        func_800B20E4
    /* B6298 800C5A98 80020524 */   addiu     $a1, $zero, 0x280
    /* B629C 800C5A9C 2800A427 */  addiu      $a0, $sp, 0x28
    /* B62A0 800C5AA0 03000524 */  addiu      $a1, $zero, 0x3
    /* B62A4 800C5AA4 2C010624 */  addiu      $a2, $zero, 0x12C
    /* B62A8 800C5AA8 18000224 */  addiu      $v0, $zero, 0x18
    /* B62AC 800C5AAC F5C7020C */  jal        func_800B1FD4
    /* B62B0 800C5AB0 8001A2AF */   sw        $v0, 0x180($sp)
    /* B62B4 800C5AB4 0780053C */  lui        $a1, %hi(func_8006E05C)
    /* B62B8 800C5AB8 5CE0A524 */  addiu      $a1, $a1, %lo(func_8006E05C)
    /* B62BC 800C5ABC 01000224 */  addiu      $v0, $zero, 0x1
    /* B62C0 800C5AC0 1680013C */  lui        $at, %hi(D_801584F0)
    /* B62C4 800C5AC4 F08422AC */  sw         $v0, %lo(D_801584F0)($at)
    /* B62C8 800C5AC8 37C9020C */  jal        func_800B24DC
    /* B62CC 800C5ACC 2800A427 */   addiu     $a0, $sp, 0x28
    /* B62D0 800C5AD0 2800A427 */  addiu      $a0, $sp, 0x28
    /* B62D4 800C5AD4 1680103C */  lui        $s0, %hi(D_80158FE4)
    /* B62D8 800C5AD8 E48F1026 */  addiu      $s0, $s0, %lo(D_80158FE4)
    /* B62DC 800C5ADC 21280002 */  addu       $a1, $s0, $zero
    /* B62E0 800C5AE0 A8C9020C */  jal        func_800B26A0
    /* B62E4 800C5AE4 21300000 */   addu      $a2, $zero, $zero
    /* B62E8 800C5AE8 2800A427 */  addiu      $a0, $sp, 0x28
    /* B62EC 800C5AEC 21280002 */  addu       $a1, $s0, $zero
    /* B62F0 800C5AF0 A8C9020C */  jal        func_800B26A0
    /* B62F4 800C5AF4 01000624 */   addiu     $a2, $zero, 0x1
    /* B62F8 800C5AF8 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* B62FC 800C5AFC 05008216 */  bne        $s4, $v0, .L800C5B14
    /* B6300 800C5B00 2800A427 */   addiu     $a0, $sp, 0x28
    /* B6304 800C5B04 0180053C */  lui        $a1, %hi(D_8001253C)
    /* B6308 800C5B08 3C25A524 */  addiu      $a1, $a1, %lo(D_8001253C)
    /* B630C 800C5B0C C7160308 */  j          .L800C5B1C
    /* B6310 800C5B10 00000000 */   nop
  .L800C5B14:
    /* B6314 800C5B14 0180053C */  lui        $a1, %hi(D_80012548)
    /* B6318 800C5B18 4825A524 */  addiu      $a1, $a1, %lo(D_80012548)
  .L800C5B1C:
    /* B631C 800C5B1C A8C9020C */  jal        func_800B26A0
    /* B6320 800C5B20 02000624 */   addiu     $a2, $zero, 0x2
    /* B6324 800C5B24 2800B027 */  addiu      $s0, $sp, 0x28
    /* B6328 800C5B28 21200002 */  addu       $a0, $s0, $zero
    /* B632C 800C5B2C 52DF020C */  jal        func_800B7D48
    /* B6330 800C5B30 21280000 */   addu      $a1, $zero, $zero
    /* B6334 800C5B34 21984000 */  addu       $s3, $v0, $zero
    /* B6338 800C5B38 27181300 */  nor        $v1, $zero, $s3
    /* B633C 800C5B3C 0100632C */  sltiu      $v1, $v1, 0x1
    /* B6340 800C5B40 0200623A */  xori       $v0, $s3, 0x2
    /* B6344 800C5B44 0100422C */  sltiu      $v0, $v0, 0x1
    /* B6348 800C5B48 25186200 */  or         $v1, $v1, $v0
    /* B634C 800C5B4C 05006010 */  beqz       $v1, .L800C5B64
    /* B6350 800C5B50 21200002 */   addu      $a0, $s0, $zero
    /* B6354 800C5B54 0AC7020C */  jal        func_800B1C28
    /* B6358 800C5B58 02000524 */   addiu     $a1, $zero, 0x2
    /* B635C 800C5B5C CF170308 */  j          .L800C5F3C
    /* B6360 800C5B60 FEFF0224 */   addiu     $v0, $zero, -0x2
  .L800C5B64:
    /* B6364 800C5B64 80101300 */  sll        $v0, $s3, 2
    /* B6368 800C5B68 1680013C */  lui        $at, %hi(D_80158740)
    /* B636C 800C5B6C 21082200 */  addu       $at, $at, $v0
    /* B6370 800C5B70 4087248C */  lw         $a0, %lo(D_80158740)($at)
    /* B6374 800C5B74 27101400 */  nor        $v0, $zero, $s4
    /* B6378 800C5B78 0100422C */  sltiu      $v0, $v0, 0x1
    /* B637C 800C5B7C 01008338 */  xori       $v1, $a0, 0x1
    /* B6380 800C5B80 2B180300 */  sltu       $v1, $zero, $v1
    /* B6384 800C5B84 24186200 */  and        $v1, $v1, $v0
    /* B6388 800C5B88 05006010 */  beqz       $v1, .L800C5BA0
    /* B638C 800C5B8C D3040524 */   addiu     $a1, $zero, 0x4D3
    /* B6390 800C5B90 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* B6394 800C5B94 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* B6398 800C5B98 64170308 */  j          .L800C5D90
    /* B639C 800C5B9C 21300000 */   addu      $a2, $zero, $zero
  .L800C5BA0:
    /* B63A0 800C5BA0 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* B63A4 800C5BA4 06008214 */  bne        $a0, $v0, .L800C5BC0
    /* B63A8 800C5BA8 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* B63AC 800C5BAC 21206002 */  addu       $a0, $s3, $zero
    /* B63B0 800C5BB0 3FBB010C */  jal        func_8006ECFC
    /* B63B4 800C5BB4 01000524 */   addiu     $a1, $zero, 0x1
  .L800C5BB8:
    /* B63B8 800C5BB8 88160308 */  j          .L800C5A20
    /* B63BC 800C5BBC 21988002 */   addu      $s3, $s4, $zero
  .L800C5BC0:
    /* B63C0 800C5BC0 7E008214 */  bne        $a0, $v0, .L800C5DBC
    /* B63C4 800C5BC4 00000000 */   nop
    /* B63C8 800C5BC8 07006016 */  bnez       $s3, .L800C5BE8
    /* B63CC 800C5BCC 8000023C */   lui       $v0, (0x800001 >> 16)
    /* B63D0 800C5BD0 01004234 */  ori        $v0, $v0, (0x800001 & 0xFFFF)
    /* B63D4 800C5BD4 21200002 */  addu       $a0, $s0, $zero
    /* B63D8 800C5BD8 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* B63DC 800C5BDC F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* B63E0 800C5BE0 FF160308 */  j          .L800C5BFC
    /* B63E4 800C5BE4 1C070624 */   addiu     $a2, $zero, 0x71C
  .L800C5BE8:
    /* B63E8 800C5BE8 01004234 */  ori        $v0, $v0, (0x800001 & 0xFFFF)
    /* B63EC 800C5BEC 21200002 */  addu       $a0, $s0, $zero
    /* B63F0 800C5BF0 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* B63F4 800C5BF4 F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* B63F8 800C5BF8 96070624 */  addiu      $a2, $zero, 0x796
  .L800C5BFC:
    /* B63FC 800C5BFC 21380000 */  addu       $a3, $zero, $zero
    /* B6400 800C5C00 1000A0AF */  sw         $zero, 0x10($sp)
    /* B6404 800C5C04 1400A0AF */  sw         $zero, 0x14($sp)
    /* B6408 800C5C08 1800A0AF */  sw         $zero, 0x18($sp)
    /* B640C 800C5C0C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* B6410 800C5C10 2CE0020C */  jal        func_800B80B0
    /* B6414 800C5C14 2000A2AF */   sw        $v0, 0x20($sp)
    /* B6418 800C5C18 2800B227 */  addiu      $s2, $sp, 0x28
    /* B641C 800C5C1C 21204002 */  addu       $a0, $s2, $zero
    /* B6420 800C5C20 FEFF6526 */  addiu      $a1, $s3, -0x2
    /* B6424 800C5C24 002C0500 */  sll        $a1, $a1, 16
    /* B6428 800C5C28 8BE2020C */  jal        func_800B8A2C
    /* B642C 800C5C2C 032C0500 */   sra       $a1, $a1, 16
    /* B6430 800C5C30 21204002 */  addu       $a0, $s2, $zero
    /* B6434 800C5C34 52DF020C */  jal        func_800B7D48
    /* B6438 800C5C38 21280000 */   addu      $a1, $zero, $zero
    /* B643C 800C5C3C 01000324 */  addiu      $v1, $zero, 0x1
    /* B6440 800C5C40 DDFF4314 */  bne        $v0, $v1, .L800C5BB8
    /* B6444 800C5C44 00000000 */   nop
    /* B6448 800C5C48 5BB7010C */  jal        func_8006DD6C
    /* B644C 800C5C4C 02000424 */   addiu     $a0, $zero, 0x2
    /* B6450 800C5C50 80101300 */  sll        $v0, $s3, 2
    /* B6454 800C5C54 1680013C */  lui        $at, %hi(D_80158740)
    /* B6458 800C5C58 21082200 */  addu       $at, $at, $v0
    /* B645C 800C5C5C 4087238C */  lw         $v1, %lo(D_80158740)($at)
    /* B6460 800C5C60 FDFF0224 */  addiu      $v0, $zero, -0x3
    /* B6464 800C5C64 D4FF6214 */  bne        $v1, $v0, .L800C5BB8
    /* B6468 800C5C68 21280000 */   addu      $a1, $zero, $zero
    /* B646C 800C5C6C 21204002 */  addu       $a0, $s2, $zero
    /* B6470 800C5C70 21300000 */  addu       $a2, $zero, $zero
    /* B6474 800C5C74 21380000 */  addu       $a3, $zero, $zero
    /* B6478 800C5C78 08000224 */  addiu      $v0, $zero, 0x8
    /* B647C 800C5C7C 1EC7020C */  jal        func_800B1C78
    /* B6480 800C5C80 1000A2AF */   sw        $v0, 0x10($sp)
    /* B6484 800C5C84 1680053C */  lui        $a1, %hi(D_8015908C)
    /* B6488 800C5C88 8C90A524 */  addiu      $a1, $a1, %lo(D_8015908C)
    /* B648C 800C5C8C 1CC8020C */  jal        func_800B2070
    /* B6490 800C5C90 21204002 */   addu      $a0, $s2, $zero
    /* B6494 800C5C94 21204002 */  addu       $a0, $s2, $zero
    /* B6498 800C5C98 39C8020C */  jal        func_800B20E4
    /* B649C 800C5C9C 40010524 */   addiu     $a1, $zero, 0x140
    /* B64A0 800C5CA0 21204002 */  addu       $a0, $s2, $zero
    /* B64A4 800C5CA4 1680113C */  lui        $s1, %hi(D_80159020)
    /* B64A8 800C5CA8 20903126 */  addiu      $s1, $s1, %lo(D_80159020)
    /* B64AC 800C5CAC 69C7020C */  jal        func_800B1DA4
    /* B64B0 800C5CB0 21282002 */   addu      $a1, $s1, $zero
    /* B64B4 800C5CB4 1280103C */  lui        $s0, %hi(D_80121340)
    /* B64B8 800C5CB8 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* B64BC 800C5CBC 21200002 */  addu       $a0, $s0, $zero
    /* B64C0 800C5CC0 0180053C */  lui        $a1, %hi(D_80012554)
    /* B64C4 800C5CC4 5425A524 */  addiu      $a1, $a1, %lo(D_80012554)
    /* B64C8 800C5CC8 E187030C */  jal        sprintf
    /* B64CC 800C5CCC 01006626 */   addiu     $a2, $s3, 0x1
    /* B64D0 800C5CD0 21204002 */  addu       $a0, $s2, $zero
    /* B64D4 800C5CD4 69C7020C */  jal        func_800B1DA4
    /* B64D8 800C5CD8 21280002 */   addu      $a1, $s0, $zero
    /* B64DC 800C5CDC 0180053C */  lui        $a1, %hi(D_8001257C)
    /* B64E0 800C5CE0 7C25A524 */  addiu      $a1, $a1, %lo(D_8001257C)
    /* B64E4 800C5CE4 69C7020C */  jal        func_800B1DA4
    /* B64E8 800C5CE8 21204002 */   addu      $a0, $s2, $zero
    /* B64EC 800C5CEC 21204002 */  addu       $a0, $s2, $zero
    /* B64F0 800C5CF0 69C7020C */  jal        func_800B1DA4
    /* B64F4 800C5CF4 21282002 */   addu      $a1, $s1, $zero
    /* B64F8 800C5CF8 21204002 */  addu       $a0, $s2, $zero
    /* B64FC 800C5CFC 52DF020C */  jal        func_800B7D48
    /* B6500 800C5D00 21280000 */   addu      $a1, $zero, $zero
    /* B6504 800C5D04 1680013C */  lui        $at, %hi(D_801584F0)
    /* B6508 800C5D08 F08420AC */  sw         $zero, %lo(D_801584F0)($at)
    /* B650C 800C5D0C 94E2020C */  jal        func_800B8A50
    /* B6510 800C5D10 21204002 */   addu      $a0, $s2, $zero
    /* B6514 800C5D14 21200002 */  addu       $a0, $s0, $zero
    /* B6518 800C5D18 1680053C */  lui        $a1, %hi(D_80159094)
    /* B651C 800C5D1C 9490A524 */  addiu      $a1, $a1, %lo(D_80159094)
    /* B6520 800C5D20 E187030C */  jal        sprintf
    /* B6524 800C5D24 21306002 */   addu      $a2, $s3, $zero
    /* B6528 800C5D28 21800000 */  addu       $s0, $zero, $zero
  .L800C5D2C:
    /* B652C 800C5D2C 1400022A */  slti       $v0, $s0, 0x14
    /* B6530 800C5D30 09004010 */  beqz       $v0, .L800C5D58
    /* B6534 800C5D34 00000000 */   nop
    /* B6538 800C5D38 1280043C */  lui        $a0, %hi(D_80121340)
    /* B653C 800C5D3C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B6540 800C5D40 718A030C */  jal        func_800E29C4
    /* B6544 800C5D44 00000000 */   nop
    /* B6548 800C5D48 03004014 */  bnez       $v0, .L800C5D58
    /* B654C 800C5D4C 00000000 */   nop
    /* B6550 800C5D50 4B170308 */  j          .L800C5D2C
    /* B6554 800C5D54 01001026 */   addiu     $s0, $s0, 0x1
  .L800C5D58:
    /* B6558 800C5D58 BCC5020C */  jal        func_800B16F0
    /* B655C 800C5D5C 2800A427 */   addiu     $a0, $sp, 0x28
    /* B6560 800C5D60 1400022A */  slti       $v0, $s0, 0x14
    /* B6564 800C5D64 11004014 */  bnez       $v0, .L800C5DAC
    /* B6568 800C5D68 00000000 */   nop
    /* B656C 800C5D6C 05006016 */  bnez       $s3, .L800C5D84
    /* B6570 800C5D70 4B090524 */   addiu     $a1, $zero, 0x94B
    /* B6574 800C5D74 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* B6578 800C5D78 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* B657C 800C5D7C 63170308 */  j          .L800C5D8C
    /* B6580 800C5D80 F7080524 */   addiu     $a1, $zero, 0x8F7
  .L800C5D84:
    /* B6584 800C5D84 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* B6588 800C5D88 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
  .L800C5D8C:
    /* B658C 800C5D8C 21300000 */  addu       $a2, $zero, $zero
  .L800C5D90:
    /* B6590 800C5D90 21380000 */  addu       $a3, $zero, $zero
    /* B6594 800C5D94 1000A0AF */  sw         $zero, 0x10($sp)
    /* B6598 800C5D98 1400A0AF */  sw         $zero, 0x14($sp)
    /* B659C 800C5D9C B4E2020C */  jal        func_800B8AD0
    /* B65A0 800C5DA0 1800A0AF */   sw        $zero, 0x18($sp)
    /* B65A4 800C5DA4 88160308 */  j          .L800C5A20
    /* B65A8 800C5DA8 21988002 */   addu      $s3, $s4, $zero
  .L800C5DAC:
    /* B65AC 800C5DAC 80101300 */  sll        $v0, $s3, 2
    /* B65B0 800C5DB0 1680013C */  lui        $at, %hi(D_80158740)
    /* B65B4 800C5DB4 21082200 */  addu       $at, $at, $v0
    /* B65B8 800C5DB8 408720AC */  sw         $zero, %lo(D_80158740)($at)
  .L800C5DBC:
    /* B65BC 800C5DBC 5BB7010C */  jal        func_8006DD6C
    /* B65C0 800C5DC0 02000424 */   addiu     $a0, $zero, 0x2
    /* B65C4 800C5DC4 80101300 */  sll        $v0, $s3, 2
  .L800C5DC8:
    /* B65C8 800C5DC8 1680013C */  lui        $at, %hi(D_80158740)
    /* B65CC 800C5DCC 21082200 */  addu       $at, $at, $v0
    /* B65D0 800C5DD0 4087238C */  lw         $v1, %lo(D_80158740)($at)
    /* B65D4 800C5DD4 01000224 */  addiu      $v0, $zero, 0x1
    /* B65D8 800C5DD8 54006214 */  bne        $v1, $v0, .L800C5F2C
    /* B65DC 800C5DDC 08000224 */   addiu     $v0, $zero, 0x8
    /* B65E0 800C5DE0 1000A2AF */  sw         $v0, 0x10($sp)
    /* B65E4 800C5DE4 2800B027 */  addiu      $s0, $sp, 0x28
    /* B65E8 800C5DE8 21200002 */  addu       $a0, $s0, $zero
    /* B65EC 800C5DEC 21280000 */  addu       $a1, $zero, $zero
    /* B65F0 800C5DF0 21300000 */  addu       $a2, $zero, $zero
    /* B65F4 800C5DF4 1EC7020C */  jal        func_800B1C78
    /* B65F8 800C5DF8 21380000 */   addu      $a3, $zero, $zero
    /* B65FC 800C5DFC 21200002 */  addu       $a0, $s0, $zero
    /* B6600 800C5E00 F8FF0524 */  addiu      $a1, $zero, -0x8
    /* B6604 800C5E04 5AC8020C */  jal        func_800B2168
    /* B6608 800C5E08 F8FF0624 */   addiu     $a2, $zero, -0x8
    /* B660C 800C5E0C 0180053C */  lui        $a1, %hi(D_800125A0)
    /* B6610 800C5E10 A025A524 */  addiu      $a1, $a1, %lo(D_800125A0)
    /* B6614 800C5E14 1CC8020C */  jal        func_800B2070
    /* B6618 800C5E18 21200002 */   addu      $a0, $s0, $zero
    /* B661C 800C5E1C 21200002 */  addu       $a0, $s0, $zero
    /* B6620 800C5E20 39C8020C */  jal        func_800B20E4
    /* B6624 800C5E24 10010524 */   addiu     $a1, $zero, 0x110
    /* B6628 800C5E28 21200002 */  addu       $a0, $s0, $zero
    /* B662C 800C5E2C 88E2020C */  jal        func_800B8A20
    /* B6630 800C5E30 28000524 */   addiu     $a1, $zero, 0x28
    /* B6634 800C5E34 1680053C */  lui        $a1, %hi(D_80159020)
    /* B6638 800C5E38 2090A524 */  addiu      $a1, $a1, %lo(D_80159020)
    /* B663C 800C5E3C 69C7020C */  jal        func_800B1DA4
    /* B6640 800C5E40 21200002 */   addu      $a0, $s0, $zero
    /* B6644 800C5E44 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* B6648 800C5E48 05008216 */  bne        $s4, $v0, .L800C5E60
    /* B664C 800C5E4C 00000000 */   nop
    /* B6650 800C5E50 0180053C */  lui        $a1, %hi(D_800125B0)
    /* B6654 800C5E54 B025A524 */  addiu      $a1, $a1, %lo(D_800125B0)
    /* B6658 800C5E58 9B170308 */  j          .L800C5E6C
    /* B665C 800C5E5C 21200002 */   addu      $a0, $s0, $zero
  .L800C5E60:
    /* B6660 800C5E60 21200002 */  addu       $a0, $s0, $zero
    /* B6664 800C5E64 0180053C */  lui        $a1, %hi(D_800125C4)
    /* B6668 800C5E68 C425A524 */  addiu      $a1, $a1, %lo(D_800125C4)
  .L800C5E6C:
    /* B666C 800C5E6C 69C7020C */  jal        func_800B1DA4
    /* B6670 800C5E70 00000000 */   nop
    /* B6674 800C5E74 0180053C */  lui        $a1, %hi(D_8001257C)
    /* B6678 800C5E78 7C25A524 */  addiu      $a1, $a1, %lo(D_8001257C)
    /* B667C 800C5E7C 69C7020C */  jal        func_800B1DA4
    /* B6680 800C5E80 2800A427 */   addiu     $a0, $sp, 0x28
    /* B6684 800C5E84 1680053C */  lui        $a1, %hi(D_80159020)
    /* B6688 800C5E88 2090A524 */  addiu      $a1, $a1, %lo(D_80159020)
    /* B668C 800C5E8C 69C7020C */  jal        func_800B1DA4
    /* B6690 800C5E90 2800A427 */   addiu     $a0, $sp, 0x28
    /* B6694 800C5E94 2800B127 */  addiu      $s1, $sp, 0x28
    /* B6698 800C5E98 21202002 */  addu       $a0, $s1, $zero
    /* B669C 800C5E9C 52DF020C */  jal        func_800B7D48
    /* B66A0 800C5EA0 21280000 */   addu      $a1, $zero, $zero
    /* B66A4 800C5EA4 94E2020C */  jal        func_800B8A50
    /* B66A8 800C5EA8 21202002 */   addu      $a0, $s1, $zero
    /* B66AC 800C5EAC 21206002 */  addu       $a0, $s3, $zero
    /* B66B0 800C5EB0 02000524 */  addiu      $a1, $zero, 0x2
    /* B66B4 800C5EB4 C802A627 */  addiu      $a2, $sp, 0x2C8
    /* B66B8 800C5EB8 3FC0010C */  jal        func_800700FC
    /* B66BC 800C5EBC 21382002 */   addu      $a3, $s1, $zero
    /* B66C0 800C5EC0 21202002 */  addu       $a0, $s1, $zero
    /* B66C4 800C5EC4 BCC5020C */  jal        func_800B16F0
    /* B66C8 800C5EC8 21804000 */   addu      $s0, $v0, $zero
    /* B66CC 800C5ECC 0E000016 */  bnez       $s0, .L800C5F08
    /* B66D0 800C5ED0 21300000 */   addu      $a2, $zero, $zero
    /* B66D4 800C5ED4 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* B66D8 800C5ED8 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* B66DC 800C5EDC 95050524 */  addiu      $a1, $zero, 0x595
    /* B66E0 800C5EE0 21380000 */  addu       $a3, $zero, $zero
    /* B66E4 800C5EE4 1000A0AF */  sw         $zero, 0x10($sp)
    /* B66E8 800C5EE8 1400A0AF */  sw         $zero, 0x14($sp)
    /* B66EC 800C5EEC B4E2020C */  jal        func_800B8AD0
    /* B66F0 800C5EF0 1800A0AF */   sw        $zero, 0x18($sp)
    /* B66F4 800C5EF4 21202002 */  addu       $a0, $s1, $zero
    /* B66F8 800C5EF8 0AC7020C */  jal        func_800B1C28
    /* B66FC 800C5EFC 02000524 */   addiu     $a1, $zero, 0x2
    /* B6700 800C5F00 CF170308 */  j          .L800C5F3C
    /* B6704 800C5F04 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800C5F08:
    /* B6708 800C5F08 7CD6030C */  jal        func_800F59F0
    /* B670C 800C5F0C 21200002 */   addu      $a0, $s0, $zero
    /* B6710 800C5F10 00024424 */  addiu      $a0, $v0, 0x200
    /* B6714 800C5F14 1280053C */  lui        $a1, %hi(D_801211D8)
    /* B6718 800C5F18 D811A524 */  addiu      $a1, $a1, %lo(D_801211D8)
    /* B671C 800C5F1C C187030C */  jal        func_800E1F04
    /* B6720 800C5F20 20010624 */   addiu     $a2, $zero, 0x120
    /* B6724 800C5F24 C6D5030C */  jal        func_800F5718
    /* B6728 800C5F28 21200002 */   addu      $a0, $s0, $zero
  .L800C5F2C:
    /* B672C 800C5F2C 2800A427 */  addiu      $a0, $sp, 0x28
    /* B6730 800C5F30 0AC7020C */  jal        func_800B1C28
    /* B6734 800C5F34 02000524 */   addiu     $a1, $zero, 0x2
    /* B6738 800C5F38 21106002 */  addu       $v0, $s3, $zero
  .L800C5F3C:
    /* B673C 800C5F3C E402BF8F */  lw         $ra, 0x2E4($sp)
    /* B6740 800C5F40 E002B48F */  lw         $s4, 0x2E0($sp)
    /* B6744 800C5F44 DC02B38F */  lw         $s3, 0x2DC($sp)
    /* B6748 800C5F48 D802B28F */  lw         $s2, 0x2D8($sp)
    /* B674C 800C5F4C D402B18F */  lw         $s1, 0x2D4($sp)
    /* B6750 800C5F50 D002B08F */  lw         $s0, 0x2D0($sp)
    /* B6754 800C5F54 E802BD27 */  addiu      $sp, $sp, 0x2E8
    /* B6758 800C5F58 0800E003 */  jr         $ra
    /* B675C 800C5F5C 00000000 */   nop
endlabel func_800C59EC
