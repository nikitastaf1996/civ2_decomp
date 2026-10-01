.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C60E4, 0x4A8

glabel func_800C60E4
    /* B68E4 800C60E4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* B68E8 800C60E8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* B68EC 800C60EC 21888000 */  addu       $s1, $a0, $zero
    /* B68F0 800C60F0 2000B2AF */  sw         $s2, 0x20($sp)
    /* B68F4 800C60F4 FFFF1224 */  addiu      $s2, $zero, -0x1
    /* B68F8 800C60F8 9C020424 */  addiu      $a0, $zero, 0x29C
    /* B68FC 800C60FC 2400BFAF */  sw         $ra, 0x24($sp)
    /* B6900 800C6100 3E82030C */  jal        __builtin_new
    /* B6904 800C6104 1800B0AF */   sw        $s0, 0x18($sp)
    /* B6908 800C6108 21204000 */  addu       $a0, $v0, $zero
    /* B690C 800C610C ADC5020C */  jal        func_800B16B4
    /* B6910 800C6110 00200524 */   addiu     $a1, $zero, 0x2000
    /* B6914 800C6114 01000324 */  addiu      $v1, $zero, 0x1
    /* B6918 800C6118 21804000 */  addu       $s0, $v0, $zero
    /* B691C 800C611C 21200002 */  addu       $a0, $s0, $zero
    /* B6920 800C6120 21280000 */  addu       $a1, $zero, $zero
    /* B6924 800C6124 21300000 */  addu       $a2, $zero, $zero
    /* B6928 800C6128 21380000 */  addu       $a3, $zero, $zero
    /* B692C 800C612C 1EC7020C */  jal        func_800B1C78
    /* B6930 800C6130 1000A3AF */   sw        $v1, 0x10($sp)
    /* B6934 800C6134 0180053C */  lui        $a1, %hi(D_800125D4)
    /* B6938 800C6138 D425A524 */  addiu      $a1, $a1, %lo(D_800125D4)
    /* B693C 800C613C 1CC8020C */  jal        func_800B2070
    /* B6940 800C6140 21200002 */   addu      $a0, $s0, $zero
    /* B6944 800C6144 21200002 */  addu       $a0, $s0, $zero
    /* B6948 800C6148 39C8020C */  jal        func_800B20E4
    /* B694C 800C614C 40010524 */   addiu     $a1, $zero, 0x140
    /* B6950 800C6150 0180053C */  lui        $a1, %hi(D_80012618)
    /* B6954 800C6154 1826A524 */  addiu      $a1, $a1, %lo(D_80012618)
    /* B6958 800C6158 69C7020C */  jal        func_800B1DA4
    /* B695C 800C615C 21200002 */   addu      $a0, $s0, $zero
    /* B6960 800C6160 0180053C */  lui        $a1, %hi(D_80012648)
    /* B6964 800C6164 4826A524 */  addiu      $a1, $a1, %lo(D_80012648)
    /* B6968 800C6168 69C7020C */  jal        func_800B1DA4
    /* B696C 800C616C 21200002 */   addu      $a0, $s0, $zero
    /* B6970 800C6170 21200002 */  addu       $a0, $s0, $zero
    /* B6974 800C6174 52DF020C */  jal        func_800B7D48
    /* B6978 800C6178 21280000 */   addu      $a1, $zero, $zero
    /* B697C 800C617C 03000012 */  beqz       $s0, .L800C618C
    /* B6980 800C6180 21200002 */   addu      $a0, $s0, $zero
    /* B6984 800C6184 0AC7020C */  jal        func_800B1C28
    /* B6988 800C6188 03000524 */   addiu     $a1, $zero, 0x3
  .L800C618C:
    /* B698C 800C618C 1680023C */  lui        $v0, %hi(D_80159110)
    /* B6990 800C6190 1091428C */  lw         $v0, %lo(D_80159110)($v0)
    /* B6994 800C6194 1680043C */  lui        $a0, %hi(D_8015910C)
    /* B6998 800C6198 0C91848C */  lw         $a0, %lo(D_8015910C)($a0)
    /* B699C 800C619C 21184000 */  addu       $v1, $v0, $zero
    /* B69A0 800C61A0 2A106400 */  slt        $v0, $v1, $a0
    /* B69A4 800C61A4 02004010 */  beqz       $v0, .L800C61B0
    /* B69A8 800C61A8 00000000 */   nop
    /* B69AC 800C61AC 21188000 */  addu       $v1, $a0, $zero
  .L800C61B0:
    /* B69B0 800C61B0 1280043C */  lui        $a0, %hi(D_8011A272)
    /* B69B4 800C61B4 72A28490 */  lbu        $a0, %lo(D_8011A272)($a0)
    /* B69B8 800C61B8 1280023C */  lui        $v0, %hi(D_8011A25A)
    /* B69BC 800C61BC 5AA24294 */  lhu        $v0, %lo(D_8011A25A)($v0)
    /* B69C0 800C61C0 1280103C */  lui        $s0, %hi(D_801212F8)
    /* B69C4 800C61C4 F8121026 */  addiu      $s0, $s0, %lo(D_801212F8)
    /* B69C8 800C61C8 000003A6 */  sh         $v1, 0x0($s0)
    /* B69CC 800C61CC 10004230 */  andi       $v0, $v0, 0x10
    /* B69D0 800C61D0 1280013C */  lui        $at, %hi(D_801212FA)
    /* B69D4 800C61D4 FA1224A4 */  sh         $a0, %lo(D_801212FA)($at)
    /* B69D8 800C61D8 03004010 */  beqz       $v0, .L800C61E8
    /* B69DC 800C61DC 80008234 */   ori       $v0, $a0, 0x80
    /* B69E0 800C61E0 1280013C */  lui        $at, %hi(D_801212FA)
    /* B69E4 800C61E4 FA1222A4 */  sh         $v0, %lo(D_801212FA)($at)
  .L800C61E8:
    /* B69E8 800C61E8 1280023C */  lui        $v0, %hi(D_8011A262)
    /* B69EC 800C61EC 62A24294 */  lhu        $v0, %lo(D_8011A262)($v0)
    /* B69F0 800C61F0 1280033C */  lui        $v1, %hi(D_8011A264)
    /* B69F4 800C61F4 64A26394 */  lhu        $v1, %lo(D_8011A264)($v1)
    /* B69F8 800C61F8 1280013C */  lui        $at, %hi(D_801212FC)
    /* B69FC 800C61FC FC1222A4 */  sh         $v0, %lo(D_801212FC)($at)
    /* B6A00 800C6200 1280013C */  lui        $at, %hi(D_801212FE)
    /* B6A04 800C6204 FE1223A4 */  sh         $v1, %lo(D_801212FE)($at)
    /* B6A08 800C6208 5F25020C */  jal        func_8008957C
    /* B6A0C 800C620C 21202002 */   addu      $a0, $s1, $zero
    /* B6A10 800C6210 1280013C */  lui        $at, %hi(D_80121300)
    /* B6A14 800C6214 001322A4 */  sh         $v0, %lo(D_80121300)($at)
    /* B6A18 800C6218 1280023C */  lui        $v0, %hi(D_8011A25A)
    /* B6A1C 800C621C 5AA24294 */  lhu        $v0, %lo(D_8011A25A)($v0)
    /* B6A20 800C6220 00000000 */  nop
    /* B6A24 800C6224 80004230 */  andi       $v0, $v0, 0x80
    /* B6A28 800C6228 0B004010 */  beqz       $v0, .L800C6258
    /* B6A2C 800C622C 0A000326 */   addiu     $v1, $s0, 0xA
    /* B6A30 800C6230 1280023C */  lui        $v0, %hi(D_8011A390)
    /* B6A34 800C6234 90A34294 */  lhu        $v0, %lo(D_8011A390)($v0)
    /* B6A38 800C6238 00000000 */  nop
    /* B6A3C 800C623C 02004230 */  andi       $v0, $v0, 0x2
    /* B6A40 800C6240 06004010 */  beqz       $v0, .L800C625C
    /* B6A44 800C6244 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* B6A48 800C6248 1680023C */  lui        $v0, %hi(D_80159128)
    /* B6A4C 800C624C 28914294 */  lhu        $v0, %lo(D_80159128)($v0)
    /* B6A50 800C6250 98180308 */  j          .L800C6260
    /* B6A54 800C6254 000062A4 */   sh        $v0, 0x0($v1)
  .L800C6258:
    /* B6A58 800C6258 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L800C625C:
    /* B6A5C 800C625C 000062A4 */  sh         $v0, 0x0($v1)
  .L800C6260:
    /* B6A60 800C6260 1280023C */  lui        $v0, %hi(D_8011A3E4)
    /* B6A64 800C6264 E4A34294 */  lhu        $v0, %lo(D_8011A3E4)($v0)
    /* B6A68 800C6268 1280033C */  lui        $v1, %hi(D_8011A3E6)
    /* B6A6C 800C626C E6A36394 */  lhu        $v1, %lo(D_8011A3E6)($v1)
    /* B6A70 800C6270 1280103C */  lui        $s0, %hi(D_80121304)
    /* B6A74 800C6274 04131026 */  addiu      $s0, $s0, %lo(D_80121304)
    /* B6A78 800C6278 000002A6 */  sh         $v0, 0x0($s0)
    /* B6A7C 800C627C 1280023C */  lui        $v0, %hi(D_8011A25A)
    /* B6A80 800C6280 5AA24294 */  lhu        $v0, %lo(D_8011A25A)($v0)
    /* B6A84 800C6284 1280013C */  lui        $at, %hi(D_80121306)
    /* B6A88 800C6288 061323A4 */  sh         $v1, %lo(D_80121306)($at)
    /* B6A8C 800C628C D40B838F */  lw         $v1, %gp_rel(D_801590AC)($gp)
    /* B6A90 800C6290 80004230 */  andi       $v0, $v0, 0x80
    /* B6A94 800C6294 1280013C */  lui        $at, %hi(D_80121308)
    /* B6A98 800C6298 081322A4 */  sh         $v0, %lo(D_80121308)($at)
    /* B6A9C 800C629C 40101100 */  sll        $v0, $s1, 1
    /* B6AA0 800C62A0 21105100 */  addu       $v0, $v0, $s1
    /* B6AA4 800C62A4 80100200 */  sll        $v0, $v0, 2
    /* B6AA8 800C62A8 23105100 */  subu       $v0, $v0, $s1
    /* B6AAC 800C62AC 00110200 */  sll        $v0, $v0, 4
    /* B6AB0 800C62B0 23105100 */  subu       $v0, $v0, $s1
    /* B6AB4 800C62B4 C0100200 */  sll        $v0, $v0, 3
    /* B6AB8 800C62B8 1280013C */  lui        $at, %hi(D_8012130A)
    /* B6ABC 800C62BC 0A1323A4 */  sh         $v1, %lo(D_8012130A)($at)
    /* B6AC0 800C62C0 1180013C */  lui        $at, %hi(D_80117698)
    /* B6AC4 800C62C4 21082200 */  addu       $at, $at, $v0
    /* B6AC8 800C62C8 98762384 */  lh         $v1, %lo(D_80117698)($at)
    /* B6ACC 800C62CC 00000000 */  nop
    /* B6AD0 800C62D0 40100300 */  sll        $v0, $v1, 1
    /* B6AD4 800C62D4 21104300 */  addu       $v0, $v0, $v1
    /* B6AD8 800C62D8 00110200 */  sll        $v0, $v0, 4
    /* B6ADC 800C62DC 1180013C */  lui        $at, %hi(D_80116AD4)
    /* B6AE0 800C62E0 21082200 */  addu       $at, $at, $v0
    /* B6AE4 800C62E4 D46A2390 */  lbu        $v1, %lo(D_80116AD4)($at)
    /* B6AE8 800C62E8 D80B828F */  lw         $v0, %gp_rel(D_801590B0)($gp)
    /* B6AEC 800C62EC 1280013C */  lui        $at, %hi(D_8012130E)
    /* B6AF0 800C62F0 0E1322A4 */  sh         $v0, %lo(D_8012130E)($at)
    /* B6AF4 800C62F4 1280013C */  lui        $at, %hi(D_8012130C)
    /* B6AF8 800C62F8 0C1323A4 */  sh         $v1, %lo(D_8012130C)($at)
    /* B6AFC 800C62FC F853020C */  jal        func_80094FE0
    /* B6B00 800C6300 21202002 */   addu      $a0, $s1, $zero
    /* B6B04 800C6304 0C000426 */  addiu      $a0, $s0, 0xC
    /* B6B08 800C6308 A587030C */  jal        func_800E1E94
    /* B6B0C 800C630C 21284000 */   addu      $a1, $v0, $zero
    /* B6B10 800C6310 5D54020C */  jal        func_80095174
    /* B6B14 800C6314 21202002 */   addu      $a0, $s1, $zero
    /* B6B18 800C6318 24000426 */  addiu      $a0, $s0, 0x24
    /* B6B1C 800C631C A587030C */  jal        func_800E1E94
    /* B6B20 800C6320 21284000 */   addu      $a1, $v0, $zero
    /* B6B24 800C6324 7B16030C */  jal        func_800C59EC
    /* B6B28 800C6328 FEFF0424 */   addiu     $a0, $zero, -0x2
    /* B6B2C 800C632C 21804000 */  addu       $s0, $v0, $zero
    /* B6B30 800C6330 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* B6B34 800C6334 1280013C */  lui        $at, %hi(D_801212B0)
    /* B6B38 800C6338 B01222A4 */  sh         $v0, %lo(D_801212B0)($at)
    /* B6B3C 800C633C 1280013C */  lui        $at, %hi(D_801212C2)
    /* B6B40 800C6340 C21222A4 */  sh         $v0, %lo(D_801212C2)($at)
    /* B6B44 800C6344 21600000 */  addu       $t4, $zero, $zero
  .L800C6348:
    /* B6B48 800C6348 1280063C */  lui        $a2, %hi(D_801211D8)
    /* B6B4C 800C634C D811C624 */  addiu      $a2, $a2, %lo(D_801211D8)
    /* B6B50 800C6350 B8FFC724 */  addiu      $a3, $a2, -0x48
    /* B6B54 800C6354 1280053C */  lui        $a1, %hi(D_8012130A)
    /* B6B58 800C6358 0A13A524 */  addiu      $a1, $a1, %lo(D_8012130A)
    /* B6B5C 800C635C 2E00AE24 */  addiu      $t6, $a1, 0x2E
    /* B6B60 800C6360 2168C000 */  addu       $t5, $a2, $zero
    /* B6B64 800C6364 21200000 */  addu       $a0, $zero, $zero
  .L800C6368:
    /* B6B68 800C6368 0000A384 */  lh         $v1, 0x0($a1)
    /* B6B6C 800C636C 1280013C */  lui        $at, %hi(D_801211EA)
    /* B6B70 800C6370 21082400 */  addu       $at, $at, $a0
    /* B6B74 800C6374 EA112284 */  lh         $v0, %lo(D_801211EA)($at)
    /* B6B78 800C6378 00000000 */  nop
    /* B6B7C 800C637C 2A104300 */  slt        $v0, $v0, $v1
    /* B6B80 800C6380 6A004010 */  beqz       $v0, .L800C652C
    /* B6B84 800C6384 03008229 */   slti      $v0, $t4, 0x3
    /* B6B88 800C6388 37004010 */  beqz       $v0, .L800C6468
    /* B6B8C 800C638C 03000B24 */   addiu     $t3, $zero, 0x3
    /* B6B90 800C6390 D800E824 */  addiu      $t0, $a3, 0xD8
    /* B6B94 800C6394 D800CA24 */  addiu      $t2, $a2, 0xD8
  .L800C6398:
    /* B6B98 800C6398 21384001 */  addu       $a3, $t2, $zero
    /* B6B9C 800C639C 25100A01 */  or         $v0, $t0, $t2
    /* B6BA0 800C63A0 03004230 */  andi       $v0, $v0, 0x3
    /* B6BA4 800C63A4 17004010 */  beqz       $v0, .L800C6404
    /* B6BA8 800C63A8 21300001 */   addu      $a2, $t0, $zero
    /* B6BAC 800C63AC 40000925 */  addiu      $t1, $t0, 0x40
  .L800C63B0:
    /* B6BB0 800C63B0 0300C288 */  lwl        $v0, 0x3($a2)
    /* B6BB4 800C63B4 0000C298 */  lwr        $v0, 0x0($a2)
    /* B6BB8 800C63B8 0700C388 */  lwl        $v1, 0x7($a2)
    /* B6BBC 800C63BC 0400C398 */  lwr        $v1, 0x4($a2)
    /* B6BC0 800C63C0 0B00C488 */  lwl        $a0, 0xB($a2)
    /* B6BC4 800C63C4 0800C498 */  lwr        $a0, 0x8($a2)
    /* B6BC8 800C63C8 0F00C588 */  lwl        $a1, 0xF($a2)
    /* B6BCC 800C63CC 0C00C598 */  lwr        $a1, 0xC($a2)
    /* B6BD0 800C63D0 0300E2A8 */  swl        $v0, 0x3($a3)
    /* B6BD4 800C63D4 0000E2B8 */  swr        $v0, 0x0($a3)
    /* B6BD8 800C63D8 0700E3A8 */  swl        $v1, 0x7($a3)
    /* B6BDC 800C63DC 0400E3B8 */  swr        $v1, 0x4($a3)
    /* B6BE0 800C63E0 0B00E4A8 */  swl        $a0, 0xB($a3)
    /* B6BE4 800C63E4 0800E4B8 */  swr        $a0, 0x8($a3)
    /* B6BE8 800C63E8 0F00E5A8 */  swl        $a1, 0xF($a3)
    /* B6BEC 800C63EC 0C00E5B8 */  swr        $a1, 0xC($a3)
    /* B6BF0 800C63F0 1000C624 */  addiu      $a2, $a2, 0x10
    /* B6BF4 800C63F4 EEFFC914 */  bne        $a2, $t1, .L800C63B0
    /* B6BF8 800C63F8 1000E724 */   addiu     $a3, $a3, 0x10
    /* B6BFC 800C63FC 0D190308 */  j          .L800C6434
    /* B6C00 800C6400 00000000 */   nop
  .L800C6404:
    /* B6C04 800C6404 40000925 */  addiu      $t1, $t0, 0x40
  .L800C6408:
    /* B6C08 800C6408 0000C28C */  lw         $v0, 0x0($a2)
    /* B6C0C 800C640C 0400C38C */  lw         $v1, 0x4($a2)
    /* B6C10 800C6410 0800C48C */  lw         $a0, 0x8($a2)
    /* B6C14 800C6414 0C00C58C */  lw         $a1, 0xC($a2)
    /* B6C18 800C6418 0000E2AC */  sw         $v0, 0x0($a3)
    /* B6C1C 800C641C 0400E3AC */  sw         $v1, 0x4($a3)
    /* B6C20 800C6420 0800E4AC */  sw         $a0, 0x8($a3)
    /* B6C24 800C6424 0C00E5AC */  sw         $a1, 0xC($a3)
    /* B6C28 800C6428 1000C624 */  addiu      $a2, $a2, 0x10
    /* B6C2C 800C642C F6FFC914 */  bne        $a2, $t1, .L800C6408
    /* B6C30 800C6430 1000E724 */   addiu     $a3, $a3, 0x10
  .L800C6434:
    /* B6C34 800C6434 0300C288 */  lwl        $v0, 0x3($a2)
    /* B6C38 800C6438 0000C298 */  lwr        $v0, 0x0($a2)
    /* B6C3C 800C643C 0700C388 */  lwl        $v1, 0x7($a2)
    /* B6C40 800C6440 0400C398 */  lwr        $v1, 0x4($a2)
    /* B6C44 800C6444 0300E2A8 */  swl        $v0, 0x3($a3)
    /* B6C48 800C6448 0000E2B8 */  swr        $v0, 0x0($a3)
    /* B6C4C 800C644C 0700E3A8 */  swl        $v1, 0x7($a3)
    /* B6C50 800C6450 0400E3B8 */  swr        $v1, 0x4($a3)
    /* B6C54 800C6454 B8FF0825 */  addiu      $t0, $t0, -0x48
    /* B6C58 800C6458 FFFF6B25 */  addiu      $t3, $t3, -0x1
    /* B6C5C 800C645C 2A108B01 */  slt        $v0, $t4, $t3
    /* B6C60 800C6460 CDFF4014 */  bnez       $v0, .L800C6398
    /* B6C64 800C6464 B8FF4A25 */   addiu     $t2, $t2, -0x48
  .L800C6468:
    /* B6C68 800C6468 2138A001 */  addu       $a3, $t5, $zero
    /* B6C6C 800C646C 1280063C */  lui        $a2, %hi(D_801212F8)
    /* B6C70 800C6470 F812C624 */  addiu      $a2, $a2, %lo(D_801212F8)
    /* B6C74 800C6474 2510E600 */  or         $v0, $a3, $a2
    /* B6C78 800C6478 03004230 */  andi       $v0, $v0, 0x3
    /* B6C7C 800C647C 16004010 */  beqz       $v0, .L800C64D8
    /* B6C80 800C6480 00000000 */   nop
  .L800C6484:
    /* B6C84 800C6484 0300C288 */  lwl        $v0, 0x3($a2)
    /* B6C88 800C6488 0000C298 */  lwr        $v0, 0x0($a2)
    /* B6C8C 800C648C 0700C388 */  lwl        $v1, 0x7($a2)
    /* B6C90 800C6490 0400C398 */  lwr        $v1, 0x4($a2)
    /* B6C94 800C6494 0B00C488 */  lwl        $a0, 0xB($a2)
    /* B6C98 800C6498 0800C498 */  lwr        $a0, 0x8($a2)
    /* B6C9C 800C649C 0F00C588 */  lwl        $a1, 0xF($a2)
    /* B6CA0 800C64A0 0C00C598 */  lwr        $a1, 0xC($a2)
    /* B6CA4 800C64A4 0300E2A8 */  swl        $v0, 0x3($a3)
    /* B6CA8 800C64A8 0000E2B8 */  swr        $v0, 0x0($a3)
    /* B6CAC 800C64AC 0700E3A8 */  swl        $v1, 0x7($a3)
    /* B6CB0 800C64B0 0400E3B8 */  swr        $v1, 0x4($a3)
    /* B6CB4 800C64B4 0B00E4A8 */  swl        $a0, 0xB($a3)
    /* B6CB8 800C64B8 0800E4B8 */  swr        $a0, 0x8($a3)
    /* B6CBC 800C64BC 0F00E5A8 */  swl        $a1, 0xF($a3)
    /* B6CC0 800C64C0 0C00E5B8 */  swr        $a1, 0xC($a3)
    /* B6CC4 800C64C4 1000C624 */  addiu      $a2, $a2, 0x10
    /* B6CC8 800C64C8 EEFFCE14 */  bne        $a2, $t6, .L800C6484
    /* B6CCC 800C64CC 1000E724 */   addiu     $a3, $a3, 0x10
    /* B6CD0 800C64D0 41190308 */  j          .L800C6504
    /* B6CD4 800C64D4 00000000 */   nop
  .L800C64D8:
    /* B6CD8 800C64D8 0000C28C */  lw         $v0, 0x0($a2)
    /* B6CDC 800C64DC 0400C38C */  lw         $v1, 0x4($a2)
    /* B6CE0 800C64E0 0800C48C */  lw         $a0, 0x8($a2)
    /* B6CE4 800C64E4 0C00C58C */  lw         $a1, 0xC($a2)
    /* B6CE8 800C64E8 0000E2AC */  sw         $v0, 0x0($a3)
    /* B6CEC 800C64EC 0400E3AC */  sw         $v1, 0x4($a3)
    /* B6CF0 800C64F0 0800E4AC */  sw         $a0, 0x8($a3)
    /* B6CF4 800C64F4 0C00E5AC */  sw         $a1, 0xC($a3)
    /* B6CF8 800C64F8 1000C624 */  addiu      $a2, $a2, 0x10
    /* B6CFC 800C64FC F6FFCE14 */  bne        $a2, $t6, .L800C64D8
    /* B6D00 800C6500 1000E724 */   addiu     $a3, $a3, 0x10
  .L800C6504:
    /* B6D04 800C6504 0300C288 */  lwl        $v0, 0x3($a2)
    /* B6D08 800C6508 0000C298 */  lwr        $v0, 0x0($a2)
    /* B6D0C 800C650C 0700C388 */  lwl        $v1, 0x7($a2)
    /* B6D10 800C6510 0400C398 */  lwr        $v1, 0x4($a2)
    /* B6D14 800C6514 0300E2A8 */  swl        $v0, 0x3($a3)
    /* B6D18 800C6518 0000E2B8 */  swr        $v0, 0x0($a3)
    /* B6D1C 800C651C 0700E3A8 */  swl        $v1, 0x7($a3)
    /* B6D20 800C6520 0400E3B8 */  swr        $v1, 0x4($a3)
    /* B6D24 800C6524 50190308 */  j          .L800C6540
    /* B6D28 800C6528 21908001 */   addu      $s2, $t4, $zero
  .L800C652C:
    /* B6D2C 800C652C 4800AD25 */  addiu      $t5, $t5, 0x48
    /* B6D30 800C6530 01008C25 */  addiu      $t4, $t4, 0x1
    /* B6D34 800C6534 04008229 */  slti       $v0, $t4, 0x4
    /* B6D38 800C6538 8BFF4014 */  bnez       $v0, .L800C6368
    /* B6D3C 800C653C 48008424 */   addiu     $a0, $a0, 0x48
  .L800C6540:
    /* B6D40 800C6540 D817030C */  jal        func_800C5F60
    /* B6D44 800C6544 21200002 */   addu      $a0, $s0, $zero
    /* B6D48 800C6548 09004014 */  bnez       $v0, .L800C6570
    /* B6D4C 800C654C 21204002 */   addu      $a0, $s2, $zero
    /* B6D50 800C6550 3616030C */  jal        func_800C58D8
    /* B6D54 800C6554 FFFF0524 */   addiu     $a1, $zero, -0x1
    /* B6D58 800C6558 05004010 */  beqz       $v0, .L800C6570
    /* B6D5C 800C655C 00000000 */   nop
    /* B6D60 800C6560 6C16030C */  jal        func_800C59B0
    /* B6D64 800C6564 00000000 */   nop
    /* B6D68 800C6568 D2180308 */  j          .L800C6348
    /* B6D6C 800C656C 21600000 */   addu      $t4, $zero, $zero
  .L800C6570:
    /* B6D70 800C6570 2400BF8F */  lw         $ra, 0x24($sp)
    /* B6D74 800C6574 2000B28F */  lw         $s2, 0x20($sp)
    /* B6D78 800C6578 1C00B18F */  lw         $s1, 0x1C($sp)
    /* B6D7C 800C657C 1800B08F */  lw         $s0, 0x18($sp)
    /* B6D80 800C6580 2800BD27 */  addiu      $sp, $sp, 0x28
    /* B6D84 800C6584 0800E003 */  jr         $ra
    /* B6D88 800C6588 00000000 */   nop
endlabel func_800C60E4
