.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B9A64, 0x9C0

glabel func_800B9A64
    /* AA264 800B9A64 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* AA268 800B9A68 8800B0AF */  sw         $s0, 0x88($sp)
    /* AA26C 800B9A6C 1280103C */  lui        $s0, %hi(D_801210C4)
    /* AA270 800B9A70 C4101026 */  addiu      $s0, $s0, %lo(D_801210C4)
    /* AA274 800B9A74 9000B2AF */  sw         $s2, 0x90($sp)
    /* AA278 800B9A78 C0FC1226 */  addiu      $s2, $s0, -0x340
    /* AA27C 800B9A7C AC00BFAF */  sw         $ra, 0xAC($sp)
    /* AA280 800B9A80 A800BEAF */  sw         $fp, 0xA8($sp)
    /* AA284 800B9A84 A400B7AF */  sw         $s7, 0xA4($sp)
    /* AA288 800B9A88 A000B6AF */  sw         $s6, 0xA0($sp)
    /* AA28C 800B9A8C 9C00B5AF */  sw         $s5, 0x9C($sp)
    /* AA290 800B9A90 9800B4AF */  sw         $s4, 0x98($sp)
    /* AA294 800B9A94 9400B3AF */  sw         $s3, 0x94($sp)
    /* AA298 800B9A98 8C00B1AF */  sw         $s1, 0x8C($sp)
    /* AA29C 800B9A9C 0000098E */  lw         $t1, 0x0($s0)
    /* AA2A0 800B9AA0 21204002 */  addu       $a0, $s2, $zero
    /* AA2A4 800B9AA4 DC49020C */  jal        func_80092770
    /* AA2A8 800B9AA8 5000A9AF */   sw        $t1, 0x50($sp)
    /* AA2AC 800B9AAC 7907040C */  jal        func_80101DE4
    /* AA2B0 800B9AB0 01000424 */   addiu     $a0, $zero, 0x1
    /* AA2B4 800B9AB4 1280023C */  lui        $v0, %hi(D_80120DBC)
    /* AA2B8 800B9AB8 BC0D428C */  lw         $v0, %lo(D_80120DBC)($v0)
    /* AA2BC 800B9ABC 00000000 */  nop
    /* AA2C0 800B9AC0 0400448C */  lw         $a0, 0x4($v0)
    /* AA2C4 800B9AC4 D707040C */  jal        func_80101F5C
    /* AA2C8 800B9AC8 00000000 */   nop
    /* AA2CC 800B9ACC 2800A427 */  addiu      $a0, $sp, 0x28
    /* AA2D0 800B9AD0 21280000 */  addu       $a1, $zero, $zero
    /* AA2D4 800B9AD4 40010224 */  addiu      $v0, $zero, 0x140
    /* AA2D8 800B9AD8 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* AA2DC 800B9ADC F0000224 */  addiu      $v0, $zero, 0xF0
    /* AA2E0 800B9AE0 2800A0A7 */  sh         $zero, 0x28($sp)
    /* AA2E4 800B9AE4 2A00A0A7 */  sh         $zero, 0x2A($sp)
    /* AA2E8 800B9AE8 A314020C */  jal        func_8008528C
    /* AA2EC 800B9AEC 2E00A2A7 */   sh        $v0, 0x2E($sp)
    /* AA2F0 800B9AF0 E8FE0426 */  addiu      $a0, $s0, -0x118
    /* AA2F4 800B9AF4 ECFC1026 */  addiu      $s0, $s0, -0x314
    /* AA2F8 800B9AF8 21280002 */  addu       $a1, $s0, $zero
    /* AA2FC 800B9AFC 3000A627 */  addiu      $a2, $sp, 0x30
    /* AA300 800B9B00 2800A727 */  addiu      $a3, $sp, 0x28
    /* AA304 800B9B04 06000324 */  addiu      $v1, $zero, 0x6
    /* AA308 800B9B08 3A010824 */  addiu      $t0, $zero, 0x13A
    /* AA30C 800B9B0C D0000224 */  addiu      $v0, $zero, 0xD0
    /* AA310 800B9B10 3600A2A7 */  sh         $v0, 0x36($sp)
    /* AA314 800B9B14 10000224 */  addiu      $v0, $zero, 0x10
    /* AA318 800B9B18 2A00A2A7 */  sh         $v0, 0x2A($sp)
    /* AA31C 800B9B1C E0000224 */  addiu      $v0, $zero, 0xE0
    /* AA320 800B9B20 3000A3A7 */  sh         $v1, 0x30($sp)
    /* AA324 800B9B24 3200A0A7 */  sh         $zero, 0x32($sp)
    /* AA328 800B9B28 3400A8A7 */  sh         $t0, 0x34($sp)
    /* AA32C 800B9B2C 2800A3A7 */  sh         $v1, 0x28($sp)
    /* AA330 800B9B30 2C00A8A7 */  sh         $t0, 0x2C($sp)
    /* AA334 800B9B34 1FE4030C */  jal        func_800F907C
    /* AA338 800B9B38 2E00A2A7 */   sh        $v0, 0x2E($sp)
    /* AA33C 800B9B3C 1680033C */  lui        $v1, %hi(D_801592E4)
    /* AA340 800B9B40 E4926384 */  lh         $v1, %lo(D_801592E4)($v1)
    /* AA344 800B9B44 080B828F */  lw         $v0, %gp_rel(D_80158FE0)($gp)
    /* AA348 800B9B48 00000000 */  nop
    /* AA34C 800B9B4C 0D004310 */  beq        $v0, $v1, .L800B9B84
    /* AA350 800B9B50 00000000 */   nop
    /* AA354 800B9B54 080B83AF */  sw         $v1, %gp_rel(D_80158FE0)($gp)
    /* AA358 800B9B58 21880000 */  addu       $s1, $zero, $zero
    /* AA35C 800B9B5C 88035026 */  addiu      $s0, $s2, 0x388
  .L800B9B60:
    /* AA360 800B9B60 0000048E */  lw         $a0, 0x0($s0)
    /* AA364 800B9B64 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* AA368 800B9B68 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* AA36C 800B9B6C 04001026 */  addiu      $s0, $s0, 0x4
    /* AA370 800B9B70 9911040C */  jal        func_80104664
    /* AA374 800B9B74 01003126 */   addiu     $s1, $s1, 0x1
    /* AA378 800B9B78 0400222A */  slti       $v0, $s1, 0x4
    /* AA37C 800B9B7C F8FF4014 */  bnez       $v0, .L800B9B60
    /* AA380 800B9B80 00000000 */   nop
  .L800B9B84:
    /* AA384 800B9B84 1280023C */  lui        $v0, %hi(D_80120E5C)
    /* AA388 800B9B88 5C0E428C */  lw         $v0, %lo(D_80120E5C)($v0)
    /* AA38C 800B9B8C 1280033C */  lui        $v1, %hi(D_8012110C)
    /* AA390 800B9B90 0C11638C */  lw         $v1, %lo(D_8012110C)($v1)
    /* AA394 800B9B94 AC005424 */  addiu      $s4, $v0, 0xAC
    /* AA398 800B9B98 71006014 */  bnez       $v1, .L800B9D60
    /* AA39C 800B9B9C 02005524 */   addiu     $s5, $v0, 0x2
    /* AA3A0 800B9BA0 1280043C */  lui        $a0, %hi(D_80121340)
    /* AA3A4 800B9BA4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AA3A8 800B9BA8 CB1A030C */  jal        func_800C6B2C
    /* AA3AC 800B9BAC 10001224 */   addiu     $s2, $zero, 0x10
    /* AA3B0 800B9BB0 1680023C */  lui        $v0, %hi(D_8015894C)
    /* AA3B4 800B9BB4 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* AA3B8 800B9BB8 00000000 */  nop
    /* AA3BC 800B9BBC 4C05448C */  lw         $a0, 0x54C($v0)
    /* AA3C0 800B9BC0 A63A030C */  jal        func_800CEA98
    /* AA3C4 800B9BC4 20001324 */   addiu     $s3, $zero, 0x20
    /* AA3C8 800B9BC8 1280043C */  lui        $a0, %hi(D_80121340)
    /* AA3CC 800B9BCC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AA3D0 800B9BD0 9987030C */  jal        func_800E1E64
    /* AA3D4 800B9BD4 21284000 */   addu      $a1, $v0, $zero
    /* AA3D8 800B9BD8 1280103C */  lui        $s0, %hi(D_80121340)
    /* AA3DC 800B9BDC 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* AA3E0 800B9BE0 21200002 */  addu       $a0, $s0, $zero
    /* AA3E4 800B9BE4 2800A527 */  addiu      $a1, $sp, 0x28
    /* AA3E8 800B9BE8 10000624 */  addiu      $a2, $zero, 0x10
    /* AA3EC 800B9BEC C0000224 */  addiu      $v0, $zero, 0xC0
    /* AA3F0 800B9BF0 2800B2A7 */  sh         $s2, 0x28($sp)
    /* AA3F4 800B9BF4 2A00B2A7 */  sh         $s2, 0x2A($sp)
    /* AA3F8 800B9BF8 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* AA3FC 800B9BFC DC0F040C */  jal        func_80103F70
    /* AA400 800B9C00 2E00B3A7 */   sh        $s3, 0x2E($sp)
    /* AA404 800B9C04 1280013C */  lui        $at, %hi(D_8012110C)
    /* AA408 800B9C08 0C1122AC */  sw         $v0, %lo(D_8012110C)($at)
    /* AA40C 800B9C0C CB1A030C */  jal        func_800C6B2C
    /* AA410 800B9C10 21200002 */   addu      $a0, $s0, $zero
    /* AA414 800B9C14 5000A98F */  lw         $t1, 0x50($sp)
    /* AA418 800B9C18 21280000 */  addu       $a1, $zero, $zero
    /* AA41C 800B9C1C 40100900 */  sll        $v0, $t1, 1
    /* AA420 800B9C20 21104900 */  addu       $v0, $v0, $t1
    /* AA424 800B9C24 80100200 */  sll        $v0, $v0, 2
    /* AA428 800B9C28 23104900 */  subu       $v0, $v0, $t1
    /* AA42C 800B9C2C 00110200 */  sll        $v0, $v0, 4
    /* AA430 800B9C30 23104900 */  subu       $v0, $v0, $t1
    /* AA434 800B9C34 C0100200 */  sll        $v0, $v0, 3
    /* AA438 800B9C38 1180013C */  lui        $at, %hi(D_801176A7)
    /* AA43C 800B9C3C 21082200 */  addu       $at, $at, $v0
    /* AA440 800B9C40 A7762490 */  lbu        $a0, %lo(D_801176A7)($at)
    /* AA444 800B9C44 04000624 */  addiu      $a2, $zero, 0x4
    /* AA448 800B9C48 F53A030C */  jal        func_800CEBD4
    /* AA44C 800B9C4C FFFF8424 */   addiu     $a0, $a0, -0x1
    /* AA450 800B9C50 5000A48F */  lw         $a0, 0x50($sp)
    /* AA454 800B9C54 5D54020C */  jal        func_80095174
    /* AA458 800B9C58 21884000 */   addu      $s1, $v0, $zero
    /* AA45C 800B9C5C 21200002 */  addu       $a0, $s0, $zero
    /* AA460 800B9C60 9987030C */  jal        func_800E1E64
    /* AA464 800B9C64 21284000 */   addu      $a1, $v0, $zero
    /* AA468 800B9C68 CD1A030C */  jal        func_800C6B34
    /* AA46C 800B9C6C 21200002 */   addu      $a0, $s0, $zero
    /* AA470 800B9C70 21200002 */  addu       $a0, $s0, $zero
    /* AA474 800B9C74 731B030C */  jal        func_800C6DCC
    /* AA478 800B9C78 48012526 */   addiu     $a1, $s1, 0x148
    /* AA47C 800B9C7C 21280002 */  addu       $a1, $s0, $zero
    /* AA480 800B9C80 2800A627 */  addiu      $a2, $sp, 0x28
    /* AA484 800B9C84 10000724 */  addiu      $a3, $zero, 0x10
    /* AA488 800B9C88 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AA48C 800B9C8C 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AA490 800B9C90 A0000224 */  addiu      $v0, $zero, 0xA0
    /* AA494 800B9C94 2800A2A7 */  sh         $v0, 0x28($sp)
    /* AA498 800B9C98 E0010224 */  addiu      $v0, $zero, 0x1E0
    /* AA49C 800B9C9C 2A00B2A7 */  sh         $s2, 0x2A($sp)
    /* AA4A0 800B9CA0 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* AA4A4 800B9CA4 5511040C */  jal        func_80104554
    /* AA4A8 800B9CA8 2E00B3A7 */   sh        $s3, 0x2E($sp)
    /* AA4AC 800B9CAC CB1A030C */  jal        func_800C6B2C
    /* AA4B0 800B9CB0 21200002 */   addu      $a0, $s0, $zero
    /* AA4B4 800B9CB4 5000A48F */  lw         $a0, 0x50($sp)
    /* AA4B8 800B9CB8 2554020C */  jal        func_80095094
    /* AA4BC 800B9CBC 30001124 */   addiu     $s1, $zero, 0x30
    /* AA4C0 800B9CC0 21200002 */  addu       $a0, $s0, $zero
    /* AA4C4 800B9CC4 9987030C */  jal        func_800E1E64
    /* AA4C8 800B9CC8 21284000 */   addu      $a1, $v0, $zero
    /* AA4CC 800B9CCC CD1A030C */  jal        func_800C6B34
    /* AA4D0 800B9CD0 21200002 */   addu      $a0, $s0, $zero
    /* AA4D4 800B9CD4 5000A48F */  lw         $a0, 0x50($sp)
    /* AA4D8 800B9CD8 F853020C */  jal        func_80094FE0
    /* AA4DC 800B9CDC 00000000 */   nop
    /* AA4E0 800B9CE0 21200002 */  addu       $a0, $s0, $zero
    /* AA4E4 800B9CE4 9987030C */  jal        func_800E1E64
    /* AA4E8 800B9CE8 21284000 */   addu      $a1, $v0, $zero
    /* AA4EC 800B9CEC 21280002 */  addu       $a1, $s0, $zero
    /* AA4F0 800B9CF0 2800A627 */  addiu      $a2, $sp, 0x28
    /* AA4F4 800B9CF4 10000724 */  addiu      $a3, $zero, 0x10
    /* AA4F8 800B9CF8 E0000224 */  addiu      $v0, $zero, 0xE0
    /* AA4FC 800B9CFC 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AA500 800B9D00 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AA504 800B9D04 2800B2A7 */  sh         $s2, 0x28($sp)
    /* AA508 800B9D08 2A00B3A7 */  sh         $s3, 0x2A($sp)
    /* AA50C 800B9D0C 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* AA510 800B9D10 5511040C */  jal        func_80104554
    /* AA514 800B9D14 2E00B1A7 */   sh        $s1, 0x2E($sp)
    /* AA518 800B9D18 CB1A030C */  jal        func_800C6B2C
    /* AA51C 800B9D1C 21200002 */   addu      $a0, $s0, $zero
    /* AA520 800B9D20 1280053C */  lui        $a1, %hi(D_8011A264)
    /* AA524 800B9D24 64A2A584 */  lh         $a1, %lo(D_8011A264)($a1)
    /* AA528 800B9D28 AD98010C */  jal        func_800662B4
    /* AA52C 800B9D2C 21200002 */   addu      $a0, $s0, $zero
    /* AA530 800B9D30 21280002 */  addu       $a1, $s0, $zero
    /* AA534 800B9D34 2800A627 */  addiu      $a2, $sp, 0x28
    /* AA538 800B9D38 10000724 */  addiu      $a3, $zero, 0x10
    /* AA53C 800B9D3C 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AA540 800B9D40 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AA544 800B9D44 F0000224 */  addiu      $v0, $zero, 0xF0
    /* AA548 800B9D48 2800A2A7 */  sh         $v0, 0x28($sp)
    /* AA54C 800B9D4C 30010224 */  addiu      $v0, $zero, 0x130
    /* AA550 800B9D50 2A00B3A7 */  sh         $s3, 0x2A($sp)
    /* AA554 800B9D54 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* AA558 800B9D58 5511040C */  jal        func_80104554
    /* AA55C 800B9D5C 2E00B1A7 */   sh        $s1, 0x2E($sp)
  .L800B9D60:
    /* AA560 800B9D60 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AA564 800B9D64 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AA568 800B9D68 7D11040C */  jal        func_801045F4
    /* AA56C 800B9D6C 00000000 */   nop
    /* AA570 800B9D70 5000A98F */  lw         $t1, 0x50($sp)
    /* AA574 800B9D74 00000000 */  nop
    /* AA578 800B9D78 40100900 */  sll        $v0, $t1, 1
    /* AA57C 800B9D7C 21104900 */  addu       $v0, $v0, $t1
    /* AA580 800B9D80 80100200 */  sll        $v0, $v0, 2
    /* AA584 800B9D84 23104900 */  subu       $v0, $v0, $t1
    /* AA588 800B9D88 00110200 */  sll        $v0, $v0, 4
    /* AA58C 800B9D8C 23104900 */  subu       $v0, $v0, $t1
    /* AA590 800B9D90 C0800200 */  sll        $s0, $v0, 3
    /* AA594 800B9D94 1180013C */  lui        $at, %hi(D_8011769C)
    /* AA598 800B9D98 21083000 */  addu       $at, $at, $s0
    /* AA59C 800B9D9C 9C762284 */  lh         $v0, %lo(D_8011769C)($at)
    /* AA5A0 800B9DA0 00000000 */  nop
    /* AA5A4 800B9DA4 46004004 */  bltz       $v0, .L800B9EC0
    /* AA5A8 800B9DA8 00000000 */   nop
    /* AA5AC 800B9DAC 1280023C */  lui        $v0, %hi(D_80121110)
    /* AA5B0 800B9DB0 1011428C */  lw         $v0, %lo(D_80121110)($v0)
    /* AA5B4 800B9DB4 00000000 */  nop
    /* AA5B8 800B9DB8 28004014 */  bnez       $v0, .L800B9E5C
    /* AA5BC 800B9DBC 00000000 */   nop
    /* AA5C0 800B9DC0 1280043C */  lui        $a0, %hi(D_80121340)
    /* AA5C4 800B9DC4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AA5C8 800B9DC8 CB1A030C */  jal        func_800C6B2C
    /* AA5CC 800B9DCC 00000000 */   nop
    /* AA5D0 800B9DD0 1280043C */  lui        $a0, %hi(D_80121340)
    /* AA5D4 800B9DD4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AA5D8 800B9DD8 731B030C */  jal        func_800C6DCC
    /* AA5DC 800B9DDC EC000524 */   addiu     $a1, $zero, 0xEC
    /* AA5E0 800B9DE0 1280043C */  lui        $a0, %hi(D_80121340)
    /* AA5E4 800B9DE4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AA5E8 800B9DE8 F71A030C */  jal        func_800C6BDC
    /* AA5EC 800B9DEC 00000000 */   nop
    /* AA5F0 800B9DF0 1180013C */  lui        $at, %hi(D_8011769C)
    /* AA5F4 800B9DF4 21083000 */  addu       $at, $at, $s0
    /* AA5F8 800B9DF8 9C762284 */  lh         $v0, %lo(D_8011769C)($at)
    /* AA5FC 800B9DFC 00000000 */  nop
    /* AA600 800B9E00 00110200 */  sll        $v0, $v0, 4
    /* AA604 800B9E04 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* AA608 800B9E08 21082200 */  addu       $at, $at, $v0
    /* AA60C 800B9E0C A0C2258C */  lw         $a1, %lo(D_8010C2A0)($at)
    /* AA610 800B9E10 1280043C */  lui        $a0, %hi(D_80121340)
    /* AA614 800B9E14 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AA618 800B9E18 651B030C */  jal        func_800C6D94
    /* AA61C 800B9E1C 00000000 */   nop
    /* AA620 800B9E20 1280043C */  lui        $a0, %hi(D_80121340)
    /* AA624 800B9E24 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AA628 800B9E28 2800A527 */  addiu      $a1, $sp, 0x28
    /* AA62C 800B9E2C 10000624 */  addiu      $a2, $zero, 0x10
    /* AA630 800B9E30 10000224 */  addiu      $v0, $zero, 0x10
    /* AA634 800B9E34 2800A2A7 */  sh         $v0, 0x28($sp)
    /* AA638 800B9E38 38000224 */  addiu      $v0, $zero, 0x38
    /* AA63C 800B9E3C 2A00A2A7 */  sh         $v0, 0x2A($sp)
    /* AA640 800B9E40 E0000224 */  addiu      $v0, $zero, 0xE0
    /* AA644 800B9E44 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* AA648 800B9E48 48000224 */  addiu      $v0, $zero, 0x48
    /* AA64C 800B9E4C DC0F040C */  jal        func_80103F70
    /* AA650 800B9E50 2E00A2A7 */   sh        $v0, 0x2E($sp)
    /* AA654 800B9E54 1280013C */  lui        $at, %hi(D_80121110)
    /* AA658 800B9E58 101122AC */  sw         $v0, %lo(D_80121110)($at)
  .L800B9E5C:
    /* AA65C 800B9E5C 1280043C */  lui        $a0, %hi(D_80121110)
    /* AA660 800B9E60 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AA664 800B9E64 7D11040C */  jal        func_801045F4
    /* AA668 800B9E68 00000000 */   nop
    /* AA66C 800B9E6C 5000A48F */  lw         $a0, 0x50($sp)
    /* AA670 800B9E70 35DD010C */  jal        func_800774D4
    /* AA674 800B9E74 00000000 */   nop
    /* AA678 800B9E78 1280043C */  lui        $a0, %hi(D_80120D84)
    /* AA67C 800B9E7C 840D8424 */  addiu      $a0, $a0, %lo(D_80120D84)
    /* AA680 800B9E80 1380053C */  lui        $a1, %hi(D_80130858)
    /* AA684 800B9E84 5808A524 */  addiu      $a1, $a1, %lo(D_80130858)
    /* AA688 800B9E88 10000624 */  addiu      $a2, $zero, 0x10
    /* AA68C 800B9E8C 1180013C */  lui        $at, %hi(D_8011769A)
    /* AA690 800B9E90 21083000 */  addu       $at, $at, $s0
    /* AA694 800B9E94 9A762384 */  lh         $v1, %lo(D_8011769A)($at)
    /* AA698 800B9E98 48000724 */  addiu      $a3, $zero, 0x48
    /* AA69C 800B9E9C 1400A2AF */  sw         $v0, 0x14($sp)
    /* AA6A0 800B9EA0 08000224 */  addiu      $v0, $zero, 0x8
    /* AA6A4 800B9EA4 1800A2AF */  sw         $v0, 0x18($sp)
    /* AA6A8 800B9EA8 20010224 */  addiu      $v0, $zero, 0x120
    /* AA6AC 800B9EAC 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* AA6B0 800B9EB0 01000224 */  addiu      $v0, $zero, 0x1
    /* AA6B4 800B9EB4 2000A2AF */  sw         $v0, 0x20($sp)
    /* AA6B8 800B9EB8 651A030C */  jal        func_800C6994
    /* AA6BC 800B9EBC 1000A3AF */   sw        $v1, 0x10($sp)
  .L800B9EC0:
    /* AA6C0 800B9EC0 5000A48F */  lw         $a0, 0x50($sp)
    /* AA6C4 800B9EC4 35DD010C */  jal        func_800774D4
    /* AA6C8 800B9EC8 21880000 */   addu      $s1, $zero, $zero
    /* AA6CC 800B9ECC 21900000 */  addu       $s2, $zero, $zero
    /* AA6D0 800B9ED0 1280033C */  lui        $v1, %hi(D_8011A282)
    /* AA6D4 800B9ED4 82A26384 */  lh         $v1, %lo(D_8011A282)($v1)
    /* AA6D8 800B9ED8 00000000 */  nop
    /* AA6DC 800B9EDC 16006018 */  blez       $v1, .L800B9F38
    /* AA6E0 800B9EE0 21984000 */   addu      $s3, $v0, $zero
    /* AA6E4 800B9EE4 21800000 */  addu       $s0, $zero, $zero
  .L800B9EE8:
    /* AA6E8 800B9EE8 1180013C */  lui        $at, %hi(D_80113ED8)
    /* AA6EC 800B9EEC 21083000 */  addu       $at, $at, $s0
    /* AA6F0 800B9EF0 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* AA6F4 800B9EF4 5000A98F */  lw         $t1, 0x50($sp)
    /* AA6F8 800B9EF8 00000000 */  nop
    /* AA6FC 800B9EFC 08004914 */  bne        $v0, $t1, .L800B9F20
    /* AA700 800B9F00 00000000 */   nop
    /* AA704 800B9F04 0C25020C */  jal        func_80089430
    /* AA708 800B9F08 21202002 */   addu      $a0, $s1, $zero
    /* AA70C 800B9F0C 1180013C */  lui        $at, %hi(D_80113F1E)
    /* AA710 800B9F10 21083000 */  addu       $at, $at, $s0
    /* AA714 800B9F14 1E3F2284 */  lh         $v0, %lo(D_80113F1E)($at)
    /* AA718 800B9F18 00000000 */  nop
    /* AA71C 800B9F1C 21904202 */  addu       $s2, $s2, $v0
  .L800B9F20:
    /* AA720 800B9F20 1280023C */  lui        $v0, %hi(D_8011A282)
    /* AA724 800B9F24 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* AA728 800B9F28 01003126 */  addiu      $s1, $s1, 0x1
    /* AA72C 800B9F2C 2A102202 */  slt        $v0, $s1, $v0
    /* AA730 800B9F30 EDFF4014 */  bnez       $v0, .L800B9EE8
    /* AA734 800B9F34 58001026 */   addiu     $s0, $s0, 0x58
  .L800B9F38:
    /* AA738 800B9F38 3E004012 */  beqz       $s2, .L800BA034
    /* AA73C 800B9F3C 02000924 */   addiu     $t1, $zero, 0x2
    /* AA740 800B9F40 1280103C */  lui        $s0, %hi(D_80121114)
    /* AA744 800B9F44 14111026 */  addiu      $s0, $s0, %lo(D_80121114)
    /* AA748 800B9F48 0000028E */  lw         $v0, 0x0($s0)
    /* AA74C 800B9F4C 00000000 */  nop
    /* AA750 800B9F50 34004014 */  bnez       $v0, .L800BA024
    /* AA754 800B9F54 00000000 */   nop
    /* AA758 800B9F58 1280043C */  lui        $a0, %hi(D_80121340)
    /* AA75C 800B9F5C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AA760 800B9F60 CB1A030C */  jal        func_800C6B2C
    /* AA764 800B9F64 00000000 */   nop
    /* AA768 800B9F68 1280043C */  lui        $a0, %hi(D_80121340)
    /* AA76C 800B9F6C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AA770 800B9F70 731B030C */  jal        func_800C6DCC
    /* AA774 800B9F74 70010524 */   addiu     $a1, $zero, 0x170
    /* AA778 800B9F78 1280043C */  lui        $a0, %hi(D_80121340)
    /* AA77C 800B9F7C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AA780 800B9F80 CD1A030C */  jal        func_800C6B34
    /* AA784 800B9F84 00000000 */   nop
    /* AA788 800B9F88 FFFF6526 */  addiu      $a1, $s3, -0x1
    /* AA78C 800B9F8C 2128B200 */  addu       $a1, $a1, $s2
    /* AA790 800B9F90 1A00B200 */  div        $zero, $a1, $s2
    /* AA794 800B9F94 02004016 */  bnez       $s2, .L800B9FA0
    /* AA798 800B9F98 00000000 */   nop
    /* AA79C 800B9F9C 0D000700 */  break      7
  .L800B9FA0:
    /* AA7A0 800B9FA0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* AA7A4 800B9FA4 04004116 */  bne        $s2, $at, .L800B9FB8
    /* AA7A8 800B9FA8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AA7AC 800B9FAC 0200A114 */  bne        $a1, $at, .L800B9FB8
    /* AA7B0 800B9FB0 00000000 */   nop
    /* AA7B4 800B9FB4 0D000600 */  break      6
  .L800B9FB8:
    /* AA7B8 800B9FB8 12280000 */  mflo       $a1
    /* AA7BC 800B9FBC 1280043C */  lui        $a0, %hi(D_80121340)
    /* AA7C0 800B9FC0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AA7C4 800B9FC4 9C1B030C */  jal        func_800C6E70
    /* AA7C8 800B9FC8 00000000 */   nop
    /* AA7CC 800B9FCC 1280043C */  lui        $a0, %hi(D_80121340)
    /* AA7D0 800B9FD0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AA7D4 800B9FD4 CD1A030C */  jal        func_800C6B34
    /* AA7D8 800B9FD8 00000000 */   nop
    /* AA7DC 800B9FDC 1280043C */  lui        $a0, %hi(D_80121340)
    /* AA7E0 800B9FE0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AA7E4 800B9FE4 731B030C */  jal        func_800C6DCC
    /* AA7E8 800B9FE8 71010524 */   addiu     $a1, $zero, 0x171
    /* AA7EC 800B9FEC 1280043C */  lui        $a0, %hi(D_80121340)
    /* AA7F0 800B9FF0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AA7F4 800B9FF4 2800A527 */  addiu      $a1, $sp, 0x28
    /* AA7F8 800B9FF8 10000624 */  addiu      $a2, $zero, 0x10
    /* AA7FC 800B9FFC 10000224 */  addiu      $v0, $zero, 0x10
    /* AA800 800BA000 2800A2A7 */  sh         $v0, 0x28($sp)
    /* AA804 800BA004 58000224 */  addiu      $v0, $zero, 0x58
    /* AA808 800BA008 2A00A2A7 */  sh         $v0, 0x2A($sp)
    /* AA80C 800BA00C E0000224 */  addiu      $v0, $zero, 0xE0
    /* AA810 800BA010 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* AA814 800BA014 68000224 */  addiu      $v0, $zero, 0x68
    /* AA818 800BA018 DC0F040C */  jal        func_80103F70
    /* AA81C 800BA01C 2E00A2A7 */   sh        $v0, 0x2E($sp)
    /* AA820 800BA020 000002AE */  sw         $v0, 0x0($s0)
  .L800BA024:
    /* AA824 800BA024 0000048E */  lw         $a0, 0x0($s0)
    /* AA828 800BA028 7D11040C */  jal        func_801045F4
    /* AA82C 800BA02C 00000000 */   nop
    /* AA830 800BA030 02000924 */  addiu      $t1, $zero, 0x2
  .L800BA034:
    /* AA834 800BA034 1280033C */  lui        $v1, %hi(D_80120E58)
    /* AA838 800BA038 580E638C */  lw         $v1, %lo(D_80120E58)($v1)
    /* AA83C 800BA03C 1280023C */  lui        $v0, %hi(D_80120E60)
    /* AA840 800BA040 600E428C */  lw         $v0, %lo(D_80120E60)($v0)
    /* AA844 800BA044 02006424 */  addiu      $a0, $v1, 0x2
    /* AA848 800BA048 21186200 */  addu       $v1, $v1, $v0
    /* AA84C 800BA04C FEFF6324 */  addiu      $v1, $v1, -0x2
    /* AA850 800BA050 23186400 */  subu       $v1, $v1, $a0
    /* AA854 800BA054 1A006900 */  div        $zero, $v1, $t1
    /* AA858 800BA058 02002015 */  bnez       $t1, .L800BA064
    /* AA85C 800BA05C 00000000 */   nop
    /* AA860 800BA060 0D000700 */  break      7
  .L800BA064:
    /* AA864 800BA064 FFFF0124 */  addiu      $at, $zero, -0x1
    /* AA868 800BA068 04002115 */  bne        $t1, $at, .L800BA07C
    /* AA86C 800BA06C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AA870 800BA070 02006114 */  bne        $v1, $at, .L800BA07C
    /* AA874 800BA074 00000000 */   nop
    /* AA878 800BA078 0D000600 */  break      6
  .L800BA07C:
    /* AA87C 800BA07C 12280000 */  mflo       $a1
    /* AA880 800BA080 0EFF9426 */  addiu      $s4, $s4, -0xF2
    /* AA884 800BA084 21880000 */  addu       $s1, $zero, $zero
    /* AA888 800BA088 21900000 */  addu       $s2, $zero, $zero
    /* AA88C 800BA08C 08001024 */  addiu      $s0, $zero, 0x8
    /* AA890 800BA090 1280013C */  lui        $at, %hi(D_801210D0)
    /* AA894 800BA094 D01035AC */  sw         $s5, %lo(D_801210D0)($at)
    /* AA898 800BA098 1280013C */  lui        $at, %hi(D_801210CC)
    /* AA89C 800BA09C CC1030AC */  sw         $s0, %lo(D_801210CC)($at)
    /* AA8A0 800BA0A0 0E000224 */  addiu      $v0, $zero, 0xE
    /* AA8A4 800BA0A4 1280013C */  lui        $at, %hi(D_801210D8)
    /* AA8A8 800BA0A8 D81022AC */  sw         $v0, %lo(D_801210D8)($at)
    /* AA8AC 800BA0AC 23109502 */  subu       $v0, $s4, $s5
    /* AA8B0 800BA0B0 1280013C */  lui        $at, %hi(D_801210D4)
    /* AA8B4 800BA0B4 D41022AC */  sw         $v0, %lo(D_801210D4)($at)
    /* AA8B8 800BA0B8 C0100900 */  sll        $v0, $t1, 3
    /* AA8BC 800BA0BC 1280013C */  lui        $at, %hi(D_801210E4)
    /* AA8C0 800BA0C0 E41022AC */  sw         $v0, %lo(D_801210E4)($at)
    /* AA8C4 800BA0C4 1280013C */  lui        $at, %hi(D_801210E8)
    /* AA8C8 800BA0C8 E81024AC */  sw         $a0, %lo(D_801210E8)($at)
    /* AA8CC 800BA0CC 1280013C */  lui        $at, %hi(D_801210EC)
    /* AA8D0 800BA0D0 EC1023AC */  sw         $v1, %lo(D_801210EC)($at)
    /* AA8D4 800BA0D4 1280013C */  lui        $at, %hi(D_801210F0)
    /* AA8D8 800BA0D8 F01025AC */  sw         $a1, %lo(D_801210F0)($at)
  .L800BA0DC:
    /* AA8DC 800BA0DC 5000A48F */  lw         $a0, 0x50($sp)
    /* AA8E0 800BA0E0 8ACA010C */  jal        func_80072A28
    /* AA8E4 800BA0E4 21284002 */   addu      $a1, $s2, $zero
    /* AA8E8 800BA0E8 02004010 */  beqz       $v0, .L800BA0F4
    /* AA8EC 800BA0EC 00000000 */   nop
    /* AA8F0 800BA0F0 01003126 */  addiu      $s1, $s1, 0x1
  .L800BA0F4:
    /* AA8F4 800BA0F4 01005226 */  addiu      $s2, $s2, 0x1
    /* AA8F8 800BA0F8 5D00422A */  slti       $v0, $s2, 0x5D
    /* AA8FC 800BA0FC F7FF4014 */  bnez       $v0, .L800BA0DC
    /* AA900 800BA100 01000524 */   addiu     $a1, $zero, 0x1
    /* AA904 800BA104 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* AA908 800BA108 21203002 */  addu       $a0, $s1, $s0
    /* AA90C 800BA10C 1A009000 */  div        $zero, $a0, $s0
    /* AA910 800BA110 02000016 */  bnez       $s0, .L800BA11C
    /* AA914 800BA114 00000000 */   nop
    /* AA918 800BA118 0D000700 */  break      7
  .L800BA11C:
    /* AA91C 800BA11C FFFF0124 */  addiu      $at, $zero, -0x1
    /* AA920 800BA120 04000116 */  bne        $s0, $at, .L800BA134
    /* AA924 800BA124 0080013C */   lui       $at, (0x80000000 >> 16)
    /* AA928 800BA128 02008114 */  bne        $a0, $at, .L800BA134
    /* AA92C 800BA12C 00000000 */   nop
    /* AA930 800BA130 0D000600 */  break      6
  .L800BA134:
    /* AA934 800BA134 12200000 */  mflo       $a0
    /* AA938 800BA138 63000624 */  addiu      $a2, $zero, 0x63
    /* AA93C 800BA13C 21900000 */  addu       $s2, $zero, $zero
    /* AA940 800BA140 1280103C */  lui        $s0, %hi(D_801210C0)
    /* AA944 800BA144 C0101026 */  addiu      $s0, $s0, %lo(D_801210C0)
    /* AA948 800BA148 21980000 */  addu       $s3, $zero, $zero
    /* AA94C 800BA14C 7000093C */  lui        $t1, (0x700000 >> 16)
    /* AA950 800BA150 7000A9AF */  sw         $t1, 0x70($sp)
    /* AA954 800BA154 70000924 */  addiu      $t1, $zero, 0x70
    /* AA958 800BA158 1E001E24 */  addiu      $fp, $zero, 0x1E
    /* AA95C 800BA15C 0800173C */  lui        $s7, (0x80000 >> 16)
    /* AA960 800BA160 08001624 */  addiu      $s6, $zero, 0x8
    /* AA964 800BA164 21A80000 */  addu       $s5, $zero, $zero
    /* AA968 800BA168 4800A0AF */  sw         $zero, 0x48($sp)
    /* AA96C 800BA16C 5800A0AF */  sw         $zero, 0x58($sp)
    /* AA970 800BA170 7800A9AF */  sw         $t1, 0x78($sp)
    /* AA974 800BA174 F53A030C */  jal        func_800CEBD4
    /* AA978 800BA178 8000A0AF */   sw        $zero, 0x80($sp)
    /* AA97C 800BA17C 21202002 */  addu       $a0, $s1, $zero
    /* AA980 800BA180 21280000 */  addu       $a1, $zero, $zero
    /* AA984 800BA184 E7030624 */  addiu      $a2, $zero, 0x3E7
    /* AA988 800BA188 F53A030C */  jal        func_800CEBD4
    /* AA98C 800BA18C 000002AE */   sw        $v0, 0x0($s0)
    /* AA990 800BA190 21280000 */  addu       $a1, $zero, $zero
    /* AA994 800BA194 1280043C */  lui        $a0, %hi(D_801210C8)
    /* AA998 800BA198 C810848C */  lw         $a0, %lo(D_801210C8)($a0)
    /* AA99C 800BA19C F53A030C */  jal        func_800CEBD4
    /* AA9A0 800BA1A0 21304000 */   addu      $a2, $v0, $zero
    /* AA9A4 800BA1A4 1280033C */  lui        $v1, %hi(D_80121118)
    /* AA9A8 800BA1A8 1811638C */  lw         $v1, %lo(D_80121118)($v1)
    /* AA9AC 800BA1AC FFFF1424 */  addiu      $s4, $zero, -0x1
    /* AA9B0 800BA1B0 4000A2AF */  sw         $v0, 0x40($sp)
    /* AA9B4 800BA1B4 1280013C */  lui        $at, %hi(D_801210C8)
    /* AA9B8 800BA1B8 C81022AC */  sw         $v0, %lo(D_801210C8)($at)
    /* AA9BC 800BA1BC 0100632C */  sltiu      $v1, $v1, 0x1
    /* AA9C0 800BA1C0 6000A3AF */  sw         $v1, 0x60($sp)
  .L800BA1C4:
    /* AA9C4 800BA1C4 5000A48F */  lw         $a0, 0x50($sp)
    /* AA9C8 800BA1C8 8ACA010C */  jal        func_80072A28
    /* AA9CC 800BA1CC 21284002 */   addu      $a1, $s2, $zero
    /* AA9D0 800BA1D0 7C004010 */  beqz       $v0, .L800BA3C4
    /* AA9D4 800BA1D4 00000000 */   nop
    /* AA9D8 800BA1D8 4800A98F */  lw         $t1, 0x48($sp)
    /* AA9DC 800BA1DC 00000000 */  nop
    /* AA9E0 800BA1E0 01002925 */  addiu      $t1, $t1, 0x1
    /* AA9E4 800BA1E4 4800A9AF */  sw         $t1, 0x48($sp)
    /* AA9E8 800BA1E8 4000A98F */  lw         $t1, 0x40($sp)
    /* AA9EC 800BA1EC 01009426 */  addiu      $s4, $s4, 0x1
    /* AA9F0 800BA1F0 2A108902 */  slt        $v0, $s4, $t1
    /* AA9F4 800BA1F4 73004014 */  bnez       $v0, .L800BA3C4
    /* AA9F8 800BA1F8 00000000 */   nop
    /* AA9FC 800BA1FC 1280023C */  lui        $v0, %hi(D_801210E4)
    /* AAA00 800BA200 E410428C */  lw         $v0, %lo(D_801210E4)($v0)
    /* AAA04 800BA204 00000000 */  nop
    /* AAA08 800BA208 21102201 */  addu       $v0, $t1, $v0
    /* AAA0C 800BA20C 2A108202 */  slt        $v0, $s4, $v0
    /* AAA10 800BA210 6C004010 */  beqz       $v0, .L800BA3C4
    /* AAA14 800BA214 3800A427 */   addiu     $a0, $sp, 0x38
    /* AAA18 800BA218 1280093C */  lui        $t1, %hi(D_801210E4)
    /* AAA1C 800BA21C E4102925 */  addiu      $t1, $t1, %lo(D_801210E4)
    /* AAA20 800BA220 A0FC2625 */  addiu      $a2, $t1, -0x360
    /* AAA24 800BA224 033C1700 */  sra        $a3, $s7, 16
    /* AAA28 800BA228 2180C002 */  addu       $s0, $s6, $zero
    /* AAA2C 800BA22C 1180013C */  lui        $at, %hi(D_8010C2A8)
    /* AAA30 800BA230 21083300 */  addu       $at, $at, $s3
    /* AAA34 800BA234 A8C22580 */  lb         $a1, %lo(D_8010C2A8)($at)
    /* AAA38 800BA238 1180013C */  lui        $at, %hi(D_8010C2A9)
    /* AAA3C 800BA23C 21083300 */  addu       $at, $at, $s3
    /* AAA40 800BA240 A9C22880 */  lb         $t0, %lo(D_8010C2A9)($at)
    /* AAA44 800BA244 7000A98F */  lw         $t1, 0x70($sp)
    /* AAA48 800BA248 7800B18F */  lw         $s1, 0x78($sp)
    /* AAA4C 800BA24C 03140900 */  sra        $v0, $t1, 16
    /* AAA50 800BA250 C0180500 */  sll        $v1, $a1, 3
    /* AAA54 800BA254 21186500 */  addu       $v1, $v1, $a1
    /* AAA58 800BA258 80180300 */  sll        $v1, $v1, 2
    /* AAA5C 800BA25C 21186500 */  addu       $v1, $v1, $a1
    /* AAA60 800BA260 00190300 */  sll        $v1, $v1, 4
    /* AAA64 800BA264 C0280800 */  sll        $a1, $t0, 3
    /* AAA68 800BA268 2128A800 */  addu       $a1, $a1, $t0
    /* AAA6C 800BA26C 80280500 */  sll        $a1, $a1, 2
    /* AAA70 800BA270 2128A800 */  addu       $a1, $a1, $t0
    /* AAA74 800BA274 80280500 */  sll        $a1, $a1, 2
    /* AAA78 800BA278 1000A2AF */  sw         $v0, 0x10($sp)
    /* AAA7C 800BA27C 1380023C */  lui        $v0, %hi(D_80133CF4)
    /* AAA80 800BA280 F43C4224 */  addiu      $v0, $v0, %lo(D_80133CF4)
    /* AAA84 800BA284 2128A200 */  addu       $a1, $a1, $v0
    /* AAA88 800BA288 89EE030C */  jal        func_800FBA24
    /* AAA8C 800BA28C 21286500 */   addu      $a1, $v1, $a1
    /* AAA90 800BA290 6000A98F */  lw         $t1, 0x60($sp)
    /* AAA94 800BA294 00000000 */  nop
    /* AAA98 800BA298 23002011 */  beqz       $t1, .L800BA328
    /* AAA9C 800BA29C AE00A226 */   addiu     $v0, $s5, 0xAE
    /* AAAA0 800BA2A0 7800A997 */  lhu        $t1, 0x78($sp)
    /* AAAA4 800BA2A4 1280033C */  lui        $v1, %hi(D_80121118)
    /* AAAA8 800BA2A8 1811638C */  lw         $v1, %lo(D_80121118)($v1)
    /* AAAAC 800BA2AC 2A00A9A7 */  sh         $t1, 0x2A($sp)
    /* AAAB0 800BA2B0 8000A98F */  lw         $t1, 0x80($sp)
    /* AAAB4 800BA2B4 2800BEA7 */  sh         $fp, 0x28($sp)
    /* AAAB8 800BA2B8 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* AAABC 800BA2BC 7C002225 */  addiu      $v0, $t1, 0x7C
    /* AAAC0 800BA2C0 0E006014 */  bnez       $v1, .L800BA2FC
    /* AAAC4 800BA2C4 2E00A2A7 */   sh        $v0, 0x2E($sp)
    /* AAAC8 800BA2C8 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* AAACC 800BA2CC 21083300 */  addu       $at, $at, $s3
    /* AAAD0 800BA2D0 A0C2248C */  lw         $a0, %lo(D_8010C2A0)($at)
    /* AAAD4 800BA2D4 A63A030C */  jal        func_800CEA98
    /* AAAD8 800BA2D8 00000000 */   nop
    /* AAADC 800BA2DC 21204000 */  addu       $a0, $v0, $zero
    /* AAAE0 800BA2E0 2800A527 */  addiu      $a1, $sp, 0x28
    /* AAAE4 800BA2E4 DC0F040C */  jal        func_80103F70
    /* AAAE8 800BA2E8 10000624 */   addiu     $a2, $zero, 0x10
    /* AAAEC 800BA2EC 1280013C */  lui        $at, %hi(D_80121118)
    /* AAAF0 800BA2F0 181122AC */  sw         $v0, %lo(D_80121118)($at)
    /* AAAF4 800BA2F4 CAE80208 */  j          .L800BA328
    /* AAAF8 800BA2F8 00000000 */   nop
  .L800BA2FC:
    /* AAAFC 800BA2FC 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* AAB00 800BA300 21083300 */  addu       $at, $at, $s3
    /* AAB04 800BA304 A0C2248C */  lw         $a0, %lo(D_8010C2A0)($at)
    /* AAB08 800BA308 A63A030C */  jal        func_800CEA98
    /* AAB0C 800BA30C 00000000 */   nop
    /* AAB10 800BA310 21284000 */  addu       $a1, $v0, $zero
    /* AAB14 800BA314 2800A627 */  addiu      $a2, $sp, 0x28
    /* AAB18 800BA318 1280043C */  lui        $a0, %hi(D_80121118)
    /* AAB1C 800BA31C 1811848C */  lw         $a0, %lo(D_80121118)($a0)
    /* AAB20 800BA320 5511040C */  jal        func_80104554
    /* AAB24 800BA324 10000724 */   addiu     $a3, $zero, 0x10
  .L800BA328:
    /* AAB28 800BA328 1280023C */  lui        $v0, %hi(D_80121134)
    /* AAB2C 800BA32C 34114284 */  lh         $v0, %lo(D_80121134)($v0)
    /* AAB30 800BA330 00000000 */  nop
    /* AAB34 800BA334 0A008216 */  bne        $s4, $v0, .L800BA360
    /* AAB38 800BA338 21280002 */   addu      $a1, $s0, $zero
    /* AAB3C 800BA33C 1280093C */  lui        $t1, %hi(D_80121134)
    /* AAB40 800BA340 34112925 */  addiu      $t1, $t1, %lo(D_80121134)
    /* AAB44 800BA344 50FC2425 */  addiu      $a0, $t1, -0x3B0
    /* AAB48 800BA348 21302002 */  addu       $a2, $s1, $zero
    /* AAB4C 800BA34C 9600A724 */  addiu      $a3, $a1, 0x96
    /* AAB50 800BA350 0B00C224 */  addiu      $v0, $a2, 0xB
    /* AAB54 800BA354 1000A2AF */  sw         $v0, 0x10($sp)
    /* AAB58 800BA358 C413020C */  jal        func_80084F10
    /* AAB5C 800BA35C 1400A0AF */   sw        $zero, 0x14($sp)
  .L800BA360:
    /* AAB60 800BA360 9A00DE27 */  addiu      $fp, $fp, 0x9A
    /* AAB64 800BA364 9A00023C */  lui        $v0, (0x9A0000 >> 16)
    /* AAB68 800BA368 21B8E202 */  addu       $s7, $s7, $v0
    /* AAB6C 800BA36C 9A00D626 */  addiu      $s6, $s6, 0x9A
    /* AAB70 800BA370 5800A98F */  lw         $t1, 0x58($sp)
    /* AAB74 800BA374 9A00B526 */  addiu      $s5, $s5, 0x9A
    /* AAB78 800BA378 01002925 */  addiu      $t1, $t1, 0x1
    /* AAB7C 800BA37C 02002229 */  slti       $v0, $t1, 0x2
    /* AAB80 800BA380 10004014 */  bnez       $v0, .L800BA3C4
    /* AAB84 800BA384 5800A9AF */   sw        $t1, 0x58($sp)
    /* AAB88 800BA388 1E001E24 */  addiu      $fp, $zero, 0x1E
    /* AAB8C 800BA38C 0800173C */  lui        $s7, (0x80000 >> 16)
    /* AAB90 800BA390 7000A98F */  lw         $t1, 0x70($sp)
    /* AAB94 800BA394 0C00023C */  lui        $v0, (0xC0000 >> 16)
    /* AAB98 800BA398 21482201 */  addu       $t1, $t1, $v0
    /* AAB9C 800BA39C 7000A9AF */  sw         $t1, 0x70($sp)
    /* AABA0 800BA3A0 7800A98F */  lw         $t1, 0x78($sp)
    /* AABA4 800BA3A4 08001624 */  addiu      $s6, $zero, 0x8
    /* AABA8 800BA3A8 0C002925 */  addiu      $t1, $t1, 0xC
    /* AABAC 800BA3AC 7800A9AF */  sw         $t1, 0x78($sp)
    /* AABB0 800BA3B0 8000A98F */  lw         $t1, 0x80($sp)
    /* AABB4 800BA3B4 21A80000 */  addu       $s5, $zero, $zero
    /* AABB8 800BA3B8 5800A0AF */  sw         $zero, 0x58($sp)
    /* AABBC 800BA3BC 0C002925 */  addiu      $t1, $t1, 0xC
    /* AABC0 800BA3C0 8000A9AF */  sw         $t1, 0x80($sp)
  .L800BA3C4:
    /* AABC4 800BA3C4 01005226 */  addiu      $s2, $s2, 0x1
    /* AABC8 800BA3C8 5D00422A */  slti       $v0, $s2, 0x5D
    /* AABCC 800BA3CC 7DFF4014 */  bnez       $v0, .L800BA1C4
    /* AABD0 800BA3D0 10007326 */   addiu     $s3, $s3, 0x10
    /* AABD4 800BA3D4 1280043C */  lui        $a0, %hi(D_80121118)
    /* AABD8 800BA3D8 1811848C */  lw         $a0, %lo(D_80121118)($a0)
    /* AABDC 800BA3DC 4800A997 */  lhu        $t1, 0x48($sp)
    /* AABE0 800BA3E0 1280013C */  lui        $at, %hi(D_80121136)
    /* AABE4 800BA3E4 361129A4 */  sh         $t1, %lo(D_80121136)($at)
    /* AABE8 800BA3E8 7D11040C */  jal        func_801045F4
    /* AABEC 800BA3EC 00000000 */   nop
    /* AABF0 800BA3F0 AC00BF8F */  lw         $ra, 0xAC($sp)
    /* AABF4 800BA3F4 A800BE8F */  lw         $fp, 0xA8($sp)
    /* AABF8 800BA3F8 A400B78F */  lw         $s7, 0xA4($sp)
    /* AABFC 800BA3FC A000B68F */  lw         $s6, 0xA0($sp)
    /* AAC00 800BA400 9C00B58F */  lw         $s5, 0x9C($sp)
    /* AAC04 800BA404 9800B48F */  lw         $s4, 0x98($sp)
    /* AAC08 800BA408 9400B38F */  lw         $s3, 0x94($sp)
    /* AAC0C 800BA40C 9000B28F */  lw         $s2, 0x90($sp)
    /* AAC10 800BA410 8C00B18F */  lw         $s1, 0x8C($sp)
    /* AAC14 800BA414 8800B08F */  lw         $s0, 0x88($sp)
    /* AAC18 800BA418 B000BD27 */  addiu      $sp, $sp, 0xB0
    /* AAC1C 800BA41C 0800E003 */  jr         $ra
    /* AAC20 800BA420 00000000 */   nop
endlabel func_800B9A64
