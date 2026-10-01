.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006AA0C, 0x45C

glabel func_8006AA0C
    /* 5B20C 8006AA0C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 5B210 8006AA10 3800BFAF */  sw         $ra, 0x38($sp)
    /* 5B214 8006AA14 3400B7AF */  sw         $s7, 0x34($sp)
    /* 5B218 8006AA18 3000B6AF */  sw         $s6, 0x30($sp)
    /* 5B21C 8006AA1C 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 5B220 8006AA20 2800B4AF */  sw         $s4, 0x28($sp)
    /* 5B224 8006AA24 2400B3AF */  sw         $s3, 0x24($sp)
    /* 5B228 8006AA28 2000B2AF */  sw         $s2, 0x20($sp)
    /* 5B22C 8006AA2C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 5B230 8006AA30 1800B0AF */  sw         $s0, 0x18($sp)
    /* 5B234 8006AA34 B401828F */  lw         $v0, %gp_rel(D_8015868C)($gp)
    /* 5B238 8006AA38 00000000 */  nop
    /* 5B23C 8006AA3C FE004014 */  bnez       $v0, .L8006AE38
    /* 5B240 8006AA40 21B88000 */   addu      $s7, $a0, $zero
    /* 5B244 8006AA44 40101700 */  sll        $v0, $s7, 1
    /* 5B248 8006AA48 21105700 */  addu       $v0, $v0, $s7
    /* 5B24C 8006AA4C 80100200 */  sll        $v0, $v0, 2
    /* 5B250 8006AA50 21105700 */  addu       $v0, $v0, $s7
    /* 5B254 8006AA54 40100200 */  sll        $v0, $v0, 1
    /* 5B258 8006AA58 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 5B25C 8006AA5C 21082200 */  addu       $at, $at, $v0
    /* 5B260 8006AA60 B4D63384 */  lh         $s3, %lo(D_8010D6B4)($at)
    /* 5B264 8006AA64 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 5B268 8006AA68 21082200 */  addu       $at, $at, $v0
    /* 5B26C 8006AA6C B6D63484 */  lh         $s4, %lo(D_8010D6B6)($at)
    /* 5B270 8006AA70 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 5B274 8006AA74 21082200 */  addu       $at, $at, $v0
    /* 5B278 8006AA78 BBD63280 */  lb         $s2, %lo(D_8010D6BB)($at)
    /* 5B27C 8006AA7C 21206002 */  addu       $a0, $s3, $zero
    /* 5B280 8006AA80 D560020C */  jal        func_80098354
    /* 5B284 8006AA84 21288002 */   addu      $a1, $s4, $zero
    /* 5B288 8006AA88 FF005630 */  andi       $s6, $v0, 0xFF
    /* 5B28C 8006AA8C 80101600 */  sll        $v0, $s6, 2
    /* 5B290 8006AA90 21105600 */  addu       $v0, $v0, $s6
    /* 5B294 8006AA94 80100200 */  sll        $v0, $v0, 2
    /* 5B298 8006AA98 1180013C */  lui        $at, %hi(D_8010C874)
    /* 5B29C 8006AA9C 21082200 */  addu       $at, $at, $v0
    /* 5B2A0 8006AAA0 74C83180 */  lb         $s1, %lo(D_8010C874)($at)
    /* 5B2A4 8006AAA4 1180013C */  lui        $at, %hi(D_8010C875)
    /* 5B2A8 8006AAA8 21082200 */  addu       $at, $at, $v0
    /* 5B2AC 8006AAAC 75C82280 */  lb         $v0, %lo(D_8010C875)($at)
    /* 5B2B0 8006AAB0 00000000 */  nop
    /* 5B2B4 8006AAB4 21882202 */  addu       $s1, $s1, $v0
    /* 5B2B8 8006AAB8 0200222A */  slti       $v0, $s1, 0x2
    /* 5B2BC 8006AABC 01005138 */  xori       $s1, $v0, 0x1
    /* 5B2C0 8006AAC0 21206002 */  addu       $a0, $s3, $zero
    /* 5B2C4 8006AAC4 F661020C */  jal        func_800987D8
    /* 5B2C8 8006AAC8 21288002 */   addu      $a1, $s4, $zero
    /* 5B2CC 8006AACC 21A84000 */  addu       $s5, $v0, $zero
    /* 5B2D0 8006AAD0 0A00A22A */  slti       $v0, $s5, 0xA
    /* 5B2D4 8006AAD4 02004010 */  beqz       $v0, .L8006AAE0
    /* 5B2D8 8006AAD8 21800000 */   addu      $s0, $zero, $zero
    /* 5B2DC 8006AADC 21880000 */  addu       $s1, $zero, $zero
  .L8006AAE0:
    /* 5B2E0 8006AAE0 0800022A */  slti       $v0, $s0, 0x8
    /* 5B2E4 8006AAE4 24004010 */  beqz       $v0, .L8006AB78
    /* 5B2E8 8006AAE8 00000000 */   nop
    /* 5B2EC 8006AAEC 1280013C */  lui        $at, %hi(D_8011AC24)
    /* 5B2F0 8006AAF0 21083000 */  addu       $at, $at, $s0
    /* 5B2F4 8006AAF4 24AC2480 */  lb         $a0, %lo(D_8011AC24)($at)
    /* 5B2F8 8006AAF8 173B030C */  jal        func_800CEC5C
    /* 5B2FC 8006AAFC 21206402 */   addu      $a0, $s3, $a0
    /* 5B300 8006AB00 21204000 */  addu       $a0, $v0, $zero
    /* 5B304 8006AB04 1280013C */  lui        $at, %hi(D_8011AC30)
    /* 5B308 8006AB08 21083000 */  addu       $at, $at, $s0
    /* 5B30C 8006AB0C 30AC2280 */  lb         $v0, %lo(D_8011AC30)($at)
    /* 5B310 8006AB10 00000000 */  nop
    /* 5B314 8006AB14 21288202 */  addu       $a1, $s4, $v0
    /* 5B318 8006AB18 0D00A004 */  bltz       $a1, .L8006AB50
    /* 5B31C 8006AB1C 21180000 */   addu      $v1, $zero, $zero
    /* 5B320 8006AB20 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 5B324 8006AB24 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 5B328 8006AB28 00000000 */  nop
    /* 5B32C 8006AB2C 2A10A200 */  slt        $v0, $a1, $v0
    /* 5B330 8006AB30 07004010 */  beqz       $v0, .L8006AB50
    /* 5B334 8006AB34 00000000 */   nop
    /* 5B338 8006AB38 05008004 */  bltz       $a0, .L8006AB50
    /* 5B33C 8006AB3C 00000000 */   nop
    /* 5B340 8006AB40 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 5B344 8006AB44 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 5B348 8006AB48 00000000 */  nop
    /* 5B34C 8006AB4C 2A188200 */  slt        $v1, $a0, $v0
  .L8006AB50:
    /* 5B350 8006AB50 07006010 */  beqz       $v1, .L8006AB70
    /* 5B354 8006AB54 00000000 */   nop
    /* 5B358 8006AB58 F661020C */  jal        func_800987D8
    /* 5B35C 8006AB5C 00000000 */   nop
    /* 5B360 8006AB60 2A10A202 */  slt        $v0, $s5, $v0
    /* 5B364 8006AB64 02004010 */  beqz       $v0, .L8006AB70
    /* 5B368 8006AB68 00000000 */   nop
    /* 5B36C 8006AB6C 21880000 */  addu       $s1, $zero, $zero
  .L8006AB70:
    /* 5B370 8006AB70 B8AA0108 */  j          .L8006AAE0
    /* 5B374 8006AB74 01001026 */   addiu     $s0, $s0, 0x1
  .L8006AB78:
    /* 5B378 8006AB78 07002012 */  beqz       $s1, .L8006AB98
    /* 5B37C 8006AB7C 21206002 */   addu      $a0, $s3, $zero
    /* 5B380 8006AB80 6EAA010C */  jal        func_8006A9B8
    /* 5B384 8006AB84 21288002 */   addu      $a1, $s4, $zero
    /* 5B388 8006AB88 1680043C */  lui        $a0, %hi(D_8015885C)
    /* 5B38C 8006AB8C 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* 5B390 8006AB90 5BAB0108 */  j          .L8006AD6C
    /* 5B394 8006AB94 9E010524 */   addiu     $a1, $zero, 0x19E
  .L8006AB98:
    /* 5B398 8006AB98 1280113C */  lui        $s1, %hi(D_8011A262)
    /* 5B39C 8006AB9C 62A23126 */  addiu      $s1, $s1, %lo(D_8011A262)
    /* 5B3A0 8006ABA0 00002286 */  lh         $v0, 0x0($s1)
    /* 5B3A4 8006ABA4 40181200 */  sll        $v1, $s2, 1
    /* 5B3A8 8006ABA8 21187200 */  addu       $v1, $v1, $s2
    /* 5B3AC 8006ABAC 80180300 */  sll        $v1, $v1, 2
    /* 5B3B0 8006ABB0 23187200 */  subu       $v1, $v1, $s2
    /* 5B3B4 8006ABB4 00190300 */  sll        $v1, $v1, 4
    /* 5B3B8 8006ABB8 23187200 */  subu       $v1, $v1, $s2
    /* 5B3BC 8006ABBC C0800300 */  sll        $s0, $v1, 3
    /* 5B3C0 8006ABC0 1180013C */  lui        $at, %hi(D_801176A0)
    /* 5B3C4 8006ABC4 21083000 */  addu       $at, $at, $s0
    /* 5B3C8 8006ABC8 A0762384 */  lh         $v1, %lo(D_801176A0)($at)
    /* 5B3CC 8006ABCC 00000000 */  nop
    /* 5B3D0 8006ABD0 23104300 */  subu       $v0, $v0, $v1
    /* 5B3D4 8006ABD4 19004228 */  slti       $v0, $v0, 0x19
    /* 5B3D8 8006ABD8 14004014 */  bnez       $v0, .L8006AC2C
    /* 5B3DC 8006ABDC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 5B3E0 8006ABE0 1180013C */  lui        $at, %hi(D_801176FA)
    /* 5B3E4 8006ABE4 21083000 */  addu       $at, $at, $s0
    /* 5B3E8 8006ABE8 FA762284 */  lh         $v0, %lo(D_801176FA)($at)
    /* 5B3EC 8006ABEC 00000000 */  nop
    /* 5B3F0 8006ABF0 06004228 */  slti       $v0, $v0, 0x6
    /* 5B3F4 8006ABF4 0C004010 */  beqz       $v0, .L8006AC28
    /* 5B3F8 8006ABF8 292F0524 */   addiu     $a1, $zero, 0x2F29
    /* 5B3FC 8006ABFC 1680043C */  lui        $a0, %hi(D_8015885C)
    /* 5B400 8006AC00 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* 5B404 8006AC04 21300000 */  addu       $a2, $zero, $zero
    /* 5B408 8006AC08 63E4020C */  jal        func_800B918C
    /* 5B40C 8006AC0C 2138E002 */   addu      $a3, $s7, $zero
    /* 5B410 8006AC10 00002296 */  lhu        $v0, 0x0($s1)
    /* 5B414 8006AC14 1180013C */  lui        $at, %hi(D_801176A0)
    /* 5B418 8006AC18 21083000 */  addu       $at, $at, $s0
    /* 5B41C 8006AC1C A07622A4 */  sh         $v0, %lo(D_801176A0)($at)
    /* 5B420 8006AC20 5FAB0108 */  j          .L8006AD7C
    /* 5B424 8006AC24 01000224 */   addiu     $v0, $zero, 0x1
  .L8006AC28:
    /* 5B428 8006AC28 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L8006AC2C:
    /* 5B42C 8006AC2C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 5B430 8006AC30 21206002 */  addu       $a0, $s3, $zero
    /* 5B434 8006AC34 21288002 */  addu       $a1, $s4, $zero
    /* 5B438 8006AC38 21304002 */  addu       $a2, $s2, $zero
    /* 5B43C 8006AC3C 6026020C */  jal        func_80089980
    /* 5B440 8006AC40 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 5B444 8006AC44 21804000 */  addu       $s0, $v0, $zero
    /* 5B448 8006AC48 1680033C */  lui        $v1, %hi(D_80158824)
    /* 5B44C 8006AC4C 2488638C */  lw         $v1, %lo(D_80158824)($v1)
    /* 5B450 8006AC50 01000224 */  addiu      $v0, $zero, 0x1
    /* 5B454 8006AC54 07006210 */  beq        $v1, $v0, .L8006AC74
    /* 5B458 8006AC58 02000224 */   addiu     $v0, $zero, 0x2
    /* 5B45C 8006AC5C 76006214 */  bne        $v1, $v0, .L8006AE38
    /* 5B460 8006AC60 21206002 */   addu      $a0, $s3, $zero
    /* 5B464 8006AC64 9F62020C */  jal        func_80098A7C
    /* 5B468 8006AC68 21288002 */   addu      $a1, $s4, $zero
    /* 5B46C 8006AC6C 72004010 */  beqz       $v0, .L8006AE38
    /* 5B470 8006AC70 00000000 */   nop
  .L8006AC74:
    /* 5B474 8006AC74 40281000 */  sll        $a1, $s0, 1
    /* 5B478 8006AC78 2128B000 */  addu       $a1, $a1, $s0
    /* 5B47C 8006AC7C 80280500 */  sll        $a1, $a1, 2
    /* 5B480 8006AC80 2328B000 */  subu       $a1, $a1, $s0
    /* 5B484 8006AC84 C0280500 */  sll        $a1, $a1, 3
    /* 5B488 8006AC88 1180023C */  lui        $v0, %hi(D_80113EF2)
    /* 5B48C 8006AC8C F23E4224 */  addiu      $v0, $v0, %lo(D_80113EF2)
    /* 5B490 8006AC90 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 5B494 8006AC94 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 5B498 8006AC98 A587030C */  jal        func_800E1E94
    /* 5B49C 8006AC9C 2128A200 */   addu      $a1, $a1, $v0
    /* 5B4A0 8006ACA0 21206002 */  addu       $a0, $s3, $zero
    /* 5B4A4 8006ACA4 6961020C */  jal        func_800985A4
    /* 5B4A8 8006ACA8 21288002 */   addu      $a1, $s4, $zero
    /* 5B4AC 8006ACAC 21804000 */  addu       $s0, $v0, $zero
    /* 5B4B0 8006ACB0 04000224 */  addiu      $v0, $zero, 0x4
    /* 5B4B4 8006ACB4 1000C216 */  bne        $s6, $v0, .L8006ACF8
    /* 5B4B8 8006ACB8 01000224 */   addiu     $v0, $zero, 0x1
    /* 5B4BC 8006ACBC 0C000232 */  andi       $v0, $s0, 0xC
    /* 5B4C0 8006ACC0 0D004014 */  bnez       $v0, .L8006ACF8
    /* 5B4C4 8006ACC4 01000224 */   addiu     $v0, $zero, 0x1
    /* 5B4C8 8006ACC8 21206002 */  addu       $a0, $s3, $zero
    /* 5B4CC 8006ACCC 6EAA010C */  jal        func_8006A9B8
    /* 5B4D0 8006ACD0 21288002 */   addu      $a1, $s4, $zero
    /* 5B4D4 8006ACD4 1680043C */  lui        $a0, %hi(D_8015885C)
    /* 5B4D8 8006ACD8 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* 5B4DC 8006ACDC D10C0524 */  addiu      $a1, $zero, 0xCD1
    /* 5B4E0 8006ACE0 21300000 */  addu       $a2, $zero, $zero
    /* 5B4E4 8006ACE4 63E4020C */  jal        func_800B918C
    /* 5B4E8 8006ACE8 2138E002 */   addu      $a3, $s7, $zero
    /* 5B4EC 8006ACEC 01000224 */  addiu      $v0, $zero, 0x1
    /* 5B4F0 8006ACF0 B40182AF */  sw         $v0, %gp_rel(D_8015868C)($gp)
    /* 5B4F4 8006ACF4 01000224 */  addiu      $v0, $zero, 0x1
  .L8006ACF8:
    /* 5B4F8 8006ACF8 0F00C212 */  beq        $s6, $v0, .L8006AD38
    /* 5B4FC 8006ACFC 02000224 */   addiu     $v0, $zero, 0x2
    /* 5B500 8006AD00 2200C216 */  bne        $s6, $v0, .L8006AD8C
    /* 5B504 8006AD04 40101200 */   sll       $v0, $s2, 1
    /* 5B508 8006AD08 21105200 */  addu       $v0, $v0, $s2
    /* 5B50C 8006AD0C 80100200 */  sll        $v0, $v0, 2
    /* 5B510 8006AD10 23105200 */  subu       $v0, $v0, $s2
    /* 5B514 8006AD14 00110200 */  sll        $v0, $v0, 4
    /* 5B518 8006AD18 23105200 */  subu       $v0, $v0, $s2
    /* 5B51C 8006AD1C C0100200 */  sll        $v0, $v0, 3
    /* 5B520 8006AD20 1180013C */  lui        $at, %hi(D_801176A7)
    /* 5B524 8006AD24 21082200 */  addu       $at, $at, $v0
    /* 5B528 8006AD28 A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* 5B52C 8006AD2C 00000000 */  nop
    /* 5B530 8006AD30 16005614 */  bne        $v0, $s6, .L8006AD8C
    /* 5B534 8006AD34 40101200 */   sll       $v0, $s2, 1
  .L8006AD38:
    /* 5B538 8006AD38 0C000232 */  andi       $v0, $s0, 0xC
    /* 5B53C 8006AD3C 13004014 */  bnez       $v0, .L8006AD8C
    /* 5B540 8006AD40 40101200 */   sll       $v0, $s2, 1
    /* 5B544 8006AD44 21206002 */  addu       $a0, $s3, $zero
    /* 5B548 8006AD48 271F010C */  jal        func_80047C9C
    /* 5B54C 8006AD4C 21288002 */   addu      $a1, $s4, $zero
    /* 5B550 8006AD50 0D004010 */  beqz       $v0, .L8006AD88
    /* 5B554 8006AD54 21206002 */   addu      $a0, $s3, $zero
    /* 5B558 8006AD58 6EAA010C */  jal        func_8006A9B8
    /* 5B55C 8006AD5C 21288002 */   addu      $a1, $s4, $zero
    /* 5B560 8006AD60 1680043C */  lui        $a0, %hi(D_8015885C)
    /* 5B564 8006AD64 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* 5B568 8006AD68 7E0D0524 */  addiu      $a1, $zero, 0xD7E
  .L8006AD6C:
    /* 5B56C 8006AD6C 21300000 */  addu       $a2, $zero, $zero
    /* 5B570 8006AD70 63E4020C */  jal        func_800B918C
    /* 5B574 8006AD74 2138E002 */   addu      $a3, $s7, $zero
    /* 5B578 8006AD78 01000224 */  addiu      $v0, $zero, 0x1
  .L8006AD7C:
    /* 5B57C 8006AD7C B40182AF */  sw         $v0, %gp_rel(D_8015868C)($gp)
    /* 5B580 8006AD80 8EAB0108 */  j          .L8006AE38
    /* 5B584 8006AD84 00000000 */   nop
  .L8006AD88:
    /* 5B588 8006AD88 40101200 */  sll        $v0, $s2, 1
  .L8006AD8C:
    /* 5B58C 8006AD8C 21105200 */  addu       $v0, $v0, $s2
    /* 5B590 8006AD90 80100200 */  sll        $v0, $v0, 2
    /* 5B594 8006AD94 23105200 */  subu       $v0, $v0, $s2
    /* 5B598 8006AD98 00110200 */  sll        $v0, $v0, 4
    /* 5B59C 8006AD9C 23105200 */  subu       $v0, $v0, $s2
    /* 5B5A0 8006ADA0 C0100200 */  sll        $v0, $v0, 3
    /* 5B5A4 8006ADA4 1180013C */  lui        $at, %hi(D_80117763)
    /* 5B5A8 8006ADA8 21082200 */  addu       $at, $at, $v0
    /* 5B5AC 8006ADAC 63772390 */  lbu        $v1, %lo(D_80117763)($at)
    /* 5B5B0 8006ADB0 1180013C */  lui        $at, %hi(D_80117764)
    /* 5B5B4 8006ADB4 21082200 */  addu       $at, $at, $v0
    /* 5B5B8 8006ADB8 64772290 */  lbu        $v0, %lo(D_80117764)($at)
    /* 5B5BC 8006ADBC 00000000 */  nop
    /* 5B5C0 8006ADC0 21186200 */  addu       $v1, $v1, $v0
    /* 5B5C4 8006ADC4 02006328 */  slti       $v1, $v1, 0x2
    /* 5B5C8 8006ADC8 1B006010 */  beqz       $v1, .L8006AE38
    /* 5B5CC 8006ADCC 10000232 */   andi      $v0, $s0, 0x10
    /* 5B5D0 8006ADD0 19004014 */  bnez       $v0, .L8006AE38
    /* 5B5D4 8006ADD4 80101600 */   sll       $v0, $s6, 2
    /* 5B5D8 8006ADD8 21105600 */  addu       $v0, $v0, $s6
    /* 5B5DC 8006ADDC 80100200 */  sll        $v0, $v0, 2
    /* 5B5E0 8006ADE0 1180013C */  lui        $at, %hi(D_8010C872)
    /* 5B5E4 8006ADE4 21082200 */  addu       $at, $at, $v0
    /* 5B5E8 8006ADE8 72C83080 */  lb         $s0, %lo(D_8010C872)($at)
    /* 5B5EC 8006ADEC 01000224 */  addiu      $v0, $zero, 0x1
    /* 5B5F0 8006ADF0 11000216 */  bne        $s0, $v0, .L8006AE38
    /* 5B5F4 8006ADF4 21206002 */   addu      $a0, $s3, $zero
    /* 5B5F8 8006ADF8 BD60020C */  jal        func_800982F4
    /* 5B5FC 8006ADFC 21288002 */   addu      $a1, $s4, $zero
    /* 5B600 8006AE00 00004290 */  lbu        $v0, 0x0($v0)
    /* 5B604 8006AE04 00000000 */  nop
    /* 5B608 8006AE08 80004230 */  andi       $v0, $v0, 0x80
    /* 5B60C 8006AE0C 0A004014 */  bnez       $v0, .L8006AE38
    /* 5B610 8006AE10 21206002 */   addu      $a0, $s3, $zero
    /* 5B614 8006AE14 6EAA010C */  jal        func_8006A9B8
    /* 5B618 8006AE18 21288002 */   addu      $a1, $s4, $zero
    /* 5B61C 8006AE1C 1680043C */  lui        $a0, %hi(D_8015885C)
    /* 5B620 8006AE20 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* 5B624 8006AE24 560E0524 */  addiu      $a1, $zero, 0xE56
    /* 5B628 8006AE28 21300000 */  addu       $a2, $zero, $zero
    /* 5B62C 8006AE2C 63E4020C */  jal        func_800B918C
    /* 5B630 8006AE30 2138E002 */   addu      $a3, $s7, $zero
    /* 5B634 8006AE34 B40190AF */  sw         $s0, %gp_rel(D_8015868C)($gp)
  .L8006AE38:
    /* 5B638 8006AE38 3800BF8F */  lw         $ra, 0x38($sp)
    /* 5B63C 8006AE3C 3400B78F */  lw         $s7, 0x34($sp)
    /* 5B640 8006AE40 3000B68F */  lw         $s6, 0x30($sp)
    /* 5B644 8006AE44 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 5B648 8006AE48 2800B48F */  lw         $s4, 0x28($sp)
    /* 5B64C 8006AE4C 2400B38F */  lw         $s3, 0x24($sp)
    /* 5B650 8006AE50 2000B28F */  lw         $s2, 0x20($sp)
    /* 5B654 8006AE54 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 5B658 8006AE58 1800B08F */  lw         $s0, 0x18($sp)
    /* 5B65C 8006AE5C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 5B660 8006AE60 0800E003 */  jr         $ra
    /* 5B664 8006AE64 00000000 */   nop
endlabel func_8006AA0C
