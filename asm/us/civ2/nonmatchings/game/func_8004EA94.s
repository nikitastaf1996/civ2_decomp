.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004EA94, 0x468

glabel func_8004EA94
    /* 3F294 8004EA94 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3F298 8004EA98 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 3F29C 8004EA9C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 3F2A0 8004EAA0 2400B3AF */  sw         $s3, 0x24($sp)
    /* 3F2A4 8004EAA4 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3F2A8 8004EAA8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3F2AC 8004EAAC 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3F2B0 8004EAB0 21808000 */  addu       $s0, $a0, $zero
    /* 3F2B4 8004EAB4 1280113C */  lui        $s1, %hi(D_8011ACB4)
    /* 3F2B8 8004EAB8 B4AC318E */  lw         $s1, %lo(D_8011ACB4)($s1)
    /* 3F2BC 8004EABC 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 3F2C0 8004EAC0 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 3F2C4 8004EAC4 00000000 */  nop
    /* 3F2C8 8004EAC8 07102202 */  srav       $v0, $v0, $s1
    /* 3F2CC 8004EACC 01004230 */  andi       $v0, $v0, 0x1
    /* 3F2D0 8004EAD0 01014010 */  beqz       $v0, .L8004EED8
    /* 3F2D4 8004EAD4 2198A000 */   addu      $s3, $a1, $zero
    /* 3F2D8 8004EAD8 40101000 */  sll        $v0, $s0, 1
    /* 3F2DC 8004EADC 21105000 */  addu       $v0, $v0, $s0
    /* 3F2E0 8004EAE0 80100200 */  sll        $v0, $v0, 2
    /* 3F2E4 8004EAE4 23105000 */  subu       $v0, $v0, $s0
    /* 3F2E8 8004EAE8 00110200 */  sll        $v0, $v0, 4
    /* 3F2EC 8004EAEC 23105000 */  subu       $v0, $v0, $s0
    /* 3F2F0 8004EAF0 C0100200 */  sll        $v0, $v0, 3
    /* 3F2F4 8004EAF4 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 3F2F8 8004EAF8 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 3F2FC 8004EAFC 80181100 */  sll        $v1, $s1, 2
    /* 3F300 8004EB00 21104400 */  addu       $v0, $v0, $a0
    /* 3F304 8004EB04 21186200 */  addu       $v1, $v1, $v0
    /* 3F308 8004EB08 0000628C */  lw         $v0, 0x0($v1)
    /* 3F30C 8004EB0C 00000000 */  nop
    /* 3F310 8004EB10 08004230 */  andi       $v0, $v0, 0x8
    /* 3F314 8004EB14 F0004010 */  beqz       $v0, .L8004EED8
    /* 3F318 8004EB18 40101100 */   sll       $v0, $s1, 1
    /* 3F31C 8004EB1C 21105100 */  addu       $v0, $v0, $s1
    /* 3F320 8004EB20 80100200 */  sll        $v0, $v0, 2
    /* 3F324 8004EB24 23105100 */  subu       $v0, $v0, $s1
    /* 3F328 8004EB28 00110200 */  sll        $v0, $v0, 4
    /* 3F32C 8004EB2C 23105100 */  subu       $v0, $v0, $s1
    /* 3F330 8004EB30 C0100200 */  sll        $v0, $v0, 3
    /* 3F334 8004EB34 80181300 */  sll        $v1, $s3, 2
    /* 3F338 8004EB38 21104400 */  addu       $v0, $v0, $a0
    /* 3F33C 8004EB3C 21186200 */  addu       $v1, $v1, $v0
    /* 3F340 8004EB40 0000628C */  lw         $v0, 0x0($v1)
    /* 3F344 8004EB44 00000000 */  nop
    /* 3F348 8004EB48 08204230 */  andi       $v0, $v0, 0x2008
    /* 3F34C 8004EB4C E2004014 */  bnez       $v0, .L8004EED8
    /* 3F350 8004EB50 21202002 */   addu      $a0, $s1, $zero
    /* 3F354 8004EB54 21280002 */  addu       $a1, $s0, $zero
    /* 3F358 8004EB58 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 3F35C 8004EB5C 7831010C */  jal        func_8004C5E0
    /* 3F360 8004EB60 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 3F364 8004EB64 D7004010 */  beqz       $v0, .L8004EEC4
    /* 3F368 8004EB68 21200002 */   addu      $a0, $s0, $zero
    /* 3F36C 8004EB6C 5D54020C */  jal        func_80095174
    /* 3F370 8004EB70 21206002 */   addu      $a0, $s3, $zero
    /* 3F374 8004EB74 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 3F378 8004EB78 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 3F37C 8004EB7C A587030C */  jal        func_800E1E94
    /* 3F380 8004EB80 21284000 */   addu      $a1, $v0, $zero
    /* 3F384 8004EB84 1280023C */  lui        $v0, %hi(D_8011A2F4)
    /* 3F388 8004EB88 F4A24280 */  lb         $v0, %lo(D_8011A2F4)($v0)
    /* 3F38C 8004EB8C 1380073C */  lui        $a3, %hi(D_80135A70)
    /* 3F390 8004EB90 705AE724 */  addiu      $a3, $a3, %lo(D_80135A70)
    /* 3F394 8004EB94 03004010 */  beqz       $v0, .L8004EBA4
    /* 3F398 8004EB98 00000000 */   nop
    /* 3F39C 8004EB9C 1380073C */  lui        $a3, %hi(D_80135B04)
    /* 3F3A0 8004EBA0 045BE724 */  addiu      $a3, $a3, %lo(D_80135B04)
  .L8004EBA4:
    /* 3F3A4 8004EBA4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3F3A8 8004EBA8 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3F3AC 8004EBAC F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3F3B0 8004EBB0 CC360524 */  addiu      $a1, $zero, 0x36CC
    /* 3F3B4 8004EBB4 18E3020C */  jal        func_800B8C60
    /* 3F3B8 8004EBB8 21300000 */   addu      $a2, $zero, $zero
    /* 3F3BC 8004EBBC 21A04000 */  addu       $s4, $v0, $zero
    /* 3F3C0 8004EBC0 01000224 */  addiu      $v0, $zero, 0x1
    /* 3F3C4 8004EBC4 A1008212 */  beq        $s4, $v0, .L8004EE4C
    /* 3F3C8 8004EBC8 21380000 */   addu      $a3, $zero, $zero
    /* 3F3CC 8004EBCC 01000624 */  addiu      $a2, $zero, 0x1
    /* 3F3D0 8004EBD0 40101000 */  sll        $v0, $s0, 1
    /* 3F3D4 8004EBD4 21105000 */  addu       $v0, $v0, $s0
    /* 3F3D8 8004EBD8 80100200 */  sll        $v0, $v0, 2
    /* 3F3DC 8004EBDC 23105000 */  subu       $v0, $v0, $s0
    /* 3F3E0 8004EBE0 00110200 */  sll        $v0, $v0, 4
    /* 3F3E4 8004EBE4 23105000 */  subu       $v0, $v0, $s0
    /* 3F3E8 8004EBE8 C0100200 */  sll        $v0, $v0, 3
    /* 3F3EC 8004EBEC 1180033C */  lui        $v1, %hi(D_80117906)
    /* 3F3F0 8004EBF0 06796324 */  addiu      $v1, $v1, %lo(D_80117906)
    /* 3F3F4 8004EBF4 21504300 */  addu       $t2, $v0, $v1
    /* 3F3F8 8004EBF8 1180013C */  lui        $at, %hi(D_801176FA)
    /* 3F3FC 8004EBFC 21082200 */  addu       $at, $at, $v0
    /* 3F400 8004EC00 FA762284 */  lh         $v0, %lo(D_801176FA)($at)
    /* 3F404 8004EC04 00000000 */  nop
    /* 3F408 8004EC08 02004928 */  slti       $t1, $v0, 0x2
    /* 3F40C 8004EC0C 40101300 */  sll        $v0, $s3, 1
    /* 3F410 8004EC10 21105300 */  addu       $v0, $v0, $s3
    /* 3F414 8004EC14 80100200 */  sll        $v0, $v0, 2
    /* 3F418 8004EC18 23105300 */  subu       $v0, $v0, $s3
    /* 3F41C 8004EC1C 00110200 */  sll        $v0, $v0, 4
    /* 3F420 8004EC20 23105300 */  subu       $v0, $v0, $s3
    /* 3F424 8004EC24 C0400200 */  sll        $t0, $v0, 3
  .L8004EC28:
    /* 3F428 8004EC28 21104601 */  addu       $v0, $t2, $a2
    /* 3F42C 8004EC2C 00004290 */  lbu        $v0, 0x0($v0)
    /* 3F430 8004EC30 04002015 */  bnez       $t1, .L8004EC44
    /* 3F434 8004EC34 00000000 */   nop
    /* 3F438 8004EC38 02004228 */  slti       $v0, $v0, 0x2
    /* 3F43C 8004EC3C 123B0108 */  j          .L8004EC48
    /* 3F440 8004EC40 01004238 */   xori      $v0, $v0, 0x1
  .L8004EC44:
    /* 3F444 8004EC44 2B100200 */  sltu       $v0, $zero, $v0
  .L8004EC48:
    /* 3F448 8004EC48 2A004010 */  beqz       $v0, .L8004ECF4
    /* 3F44C 8004EC4C 40200600 */   sll       $a0, $a2, 1
    /* 3F450 8004EC50 1180033C */  lui        $v1, %hi(D_80117886)
    /* 3F454 8004EC54 86786324 */  addiu      $v1, $v1, %lo(D_80117886)
    /* 3F458 8004EC58 21280301 */  addu       $a1, $t0, $v1
    /* 3F45C 8004EC5C 21288500 */  addu       $a1, $a0, $a1
    /* 3F460 8004EC60 40101000 */  sll        $v0, $s0, 1
    /* 3F464 8004EC64 21105000 */  addu       $v0, $v0, $s0
    /* 3F468 8004EC68 80100200 */  sll        $v0, $v0, 2
    /* 3F46C 8004EC6C 23105000 */  subu       $v0, $v0, $s0
    /* 3F470 8004EC70 00110200 */  sll        $v0, $v0, 4
    /* 3F474 8004EC74 23105000 */  subu       $v0, $v0, $s0
    /* 3F478 8004EC78 C0100200 */  sll        $v0, $v0, 3
    /* 3F47C 8004EC7C 80FF6324 */  addiu      $v1, $v1, -0x80
    /* 3F480 8004EC80 21104300 */  addu       $v0, $v0, $v1
    /* 3F484 8004EC84 21208200 */  addu       $a0, $a0, $v0
    /* 3F488 8004EC88 0000A394 */  lhu        $v1, 0x0($a1)
    /* 3F48C 8004EC8C 00008494 */  lhu        $a0, 0x0($a0)
    /* 3F490 8004EC90 00000000 */  nop
    /* 3F494 8004EC94 2B108300 */  sltu       $v0, $a0, $v1
    /* 3F498 8004EC98 16004010 */  beqz       $v0, .L8004ECF4
    /* 3F49C 8004EC9C 21286000 */   addu      $a1, $v1, $zero
    /* 3F4A0 8004ECA0 1280023C */  lui        $v0, %hi(D_8011A272)
    /* 3F4A4 8004ECA4 72A24290 */  lbu        $v0, %lo(D_8011A272)($v0)
    /* 3F4A8 8004ECA8 00000000 */  nop
    /* 3F4AC 8004ECAC 03004010 */  beqz       $v0, .L8004ECBC
    /* 3F4B0 8004ECB0 01008324 */   addiu     $v1, $a0, 0x1
    /* 3F4B4 8004ECB4 303B0108 */  j          .L8004ECC0
    /* 3F4B8 8004ECB8 40100500 */   sll       $v0, $a1, 1
  .L8004ECBC:
    /* 3F4BC 8004ECBC 80100500 */  sll        $v0, $a1, 2
  .L8004ECC0:
    /* 3F4C0 8004ECC0 1A004300 */  div        $zero, $v0, $v1
    /* 3F4C4 8004ECC4 02006014 */  bnez       $v1, .L8004ECD0
    /* 3F4C8 8004ECC8 00000000 */   nop
    /* 3F4CC 8004ECCC 0D000700 */  break      7
  .L8004ECD0:
    /* 3F4D0 8004ECD0 FFFF0124 */  addiu      $at, $zero, -0x1
    /* 3F4D4 8004ECD4 04006114 */  bne        $v1, $at, .L8004ECE8
    /* 3F4D8 8004ECD8 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 3F4DC 8004ECDC 02004114 */  bne        $v0, $at, .L8004ECE8
    /* 3F4E0 8004ECE0 00000000 */   nop
    /* 3F4E4 8004ECE4 0D000600 */  break      6
  .L8004ECE8:
    /* 3F4E8 8004ECE8 12100000 */  mflo       $v0
    /* 3F4EC 8004ECEC 00000000 */  nop
    /* 3F4F0 8004ECF0 2138E200 */  addu       $a3, $a3, $v0
  .L8004ECF4:
    /* 3F4F4 8004ECF4 0100C624 */  addiu      $a2, $a2, 0x1
    /* 3F4F8 8004ECF8 3F00C228 */  slti       $v0, $a2, 0x3F
    /* 3F4FC 8004ECFC CAFF4014 */  bnez       $v0, .L8004EC28
    /* 3F500 8004ED00 00000000 */   nop
    /* 3F504 8004ED04 4E00E010 */  beqz       $a3, .L8004EE40
    /* 3F508 8004ED08 40101000 */   sll       $v0, $s0, 1
    /* 3F50C 8004ED0C 21105000 */  addu       $v0, $v0, $s0
    /* 3F510 8004ED10 80100200 */  sll        $v0, $v0, 2
    /* 3F514 8004ED14 23105000 */  subu       $v0, $v0, $s0
    /* 3F518 8004ED18 00110200 */  sll        $v0, $v0, 4
    /* 3F51C 8004ED1C 23105000 */  subu       $v0, $v0, $s0
    /* 3F520 8004ED20 C0100200 */  sll        $v0, $v0, 3
    /* 3F524 8004ED24 1180013C */  lui        $at, %hi(D_80117694)
    /* 3F528 8004ED28 21082200 */  addu       $at, $at, $v0
    /* 3F52C 8004ED2C 9476268C */  lw         $a2, %lo(D_80117694)($at)
    /* 3F530 8004ED30 EB51023C */  lui        $v0, (0x51EB851F >> 16)
    /* 3F534 8004ED34 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
    /* 3F538 8004ED38 1800C200 */  mult       $a2, $v0
    /* 3F53C 8004ED3C 10580000 */  mfhi       $t3
    /* 3F540 8004ED40 03110B00 */  sra        $v0, $t3, 4
    /* 3F544 8004ED44 C3370600 */  sra        $a2, $a2, 31
    /* 3F548 8004ED48 2120E000 */  addu       $a0, $a3, $zero
    /* 3F54C 8004ED4C 21280000 */  addu       $a1, $zero, $zero
    /* 3F550 8004ED50 F53A030C */  jal        func_800CEBD4
    /* 3F554 8004ED54 23304600 */   subu      $a2, $v0, $a2
    /* 3F558 8004ED58 40180200 */  sll        $v1, $v0, 1
    /* 3F55C 8004ED5C 21186200 */  addu       $v1, $v1, $v0
    /* 3F560 8004ED60 C0180300 */  sll        $v1, $v1, 3
    /* 3F564 8004ED64 21186200 */  addu       $v1, $v1, $v0
    /* 3F568 8004ED68 40900300 */  sll        $s2, $v1, 1
    /* 3F56C 8004ED6C 35004012 */  beqz       $s2, .L8004EE44
    /* 3F570 8004ED70 01000224 */   addiu     $v0, $zero, 0x1
    /* 3F574 8004ED74 1280013C */  lui        $at, %hi(D_8011FF28)
    /* 3F578 8004ED78 28FF32AC */  sw         $s2, %lo(D_8011FF28)($at)
    /* 3F57C 8004ED7C 1280023C */  lui        $v0, %hi(D_8011A2F4)
    /* 3F580 8004ED80 F4A24280 */  lb         $v0, %lo(D_8011A2F4)($v0)
    /* 3F584 8004ED84 1380073C */  lui        $a3, %hi(D_80135A70)
    /* 3F588 8004ED88 705AE724 */  addiu      $a3, $a3, %lo(D_80135A70)
    /* 3F58C 8004ED8C 03004010 */  beqz       $v0, .L8004ED9C
    /* 3F590 8004ED90 00000000 */   nop
    /* 3F594 8004ED94 1380073C */  lui        $a3, %hi(D_80135B04)
    /* 3F598 8004ED98 045BE724 */  addiu      $a3, $a3, %lo(D_80135B04)
  .L8004ED9C:
    /* 3F59C 8004ED9C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3F5A0 8004EDA0 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3F5A4 8004EDA4 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3F5A8 8004EDA8 BD370524 */  addiu      $a1, $zero, 0x37BD
    /* 3F5AC 8004EDAC 18E3020C */  jal        func_800B8C60
    /* 3F5B0 8004EDB0 21300000 */   addu      $a2, $zero, $zero
    /* 3F5B4 8004EDB4 21A04000 */  addu       $s4, $v0, $zero
    /* 3F5B8 8004EDB8 01000224 */  addiu      $v0, $zero, 0x1
    /* 3F5BC 8004EDBC 29008216 */  bne        $s4, $v0, .L8004EE64
    /* 3F5C0 8004EDC0 40101000 */   sll       $v0, $s0, 1
    /* 3F5C4 8004EDC4 21105000 */  addu       $v0, $v0, $s0
    /* 3F5C8 8004EDC8 80100200 */  sll        $v0, $v0, 2
    /* 3F5CC 8004EDCC 23105000 */  subu       $v0, $v0, $s0
    /* 3F5D0 8004EDD0 00110200 */  sll        $v0, $v0, 4
    /* 3F5D4 8004EDD4 23105000 */  subu       $v0, $v0, $s0
    /* 3F5D8 8004EDD8 C0100200 */  sll        $v0, $v0, 3
    /* 3F5DC 8004EDDC 1180013C */  lui        $at, %hi(D_80117694)
    /* 3F5E0 8004EDE0 21082200 */  addu       $at, $at, $v0
    /* 3F5E4 8004EDE4 9476238C */  lw         $v1, %lo(D_80117694)($at)
    /* 3F5E8 8004EDE8 00000000 */  nop
    /* 3F5EC 8004EDEC 23187200 */  subu       $v1, $v1, $s2
    /* 3F5F0 8004EDF0 1180013C */  lui        $at, %hi(D_80117694)
    /* 3F5F4 8004EDF4 21082200 */  addu       $at, $at, $v0
    /* 3F5F8 8004EDF8 947623AC */  sw         $v1, %lo(D_80117694)($at)
    /* 3F5FC 8004EDFC 40101100 */  sll        $v0, $s1, 1
    /* 3F600 8004EE00 21105100 */  addu       $v0, $v0, $s1
    /* 3F604 8004EE04 80100200 */  sll        $v0, $v0, 2
    /* 3F608 8004EE08 23105100 */  subu       $v0, $v0, $s1
    /* 3F60C 8004EE0C 00110200 */  sll        $v0, $v0, 4
    /* 3F610 8004EE10 23105100 */  subu       $v0, $v0, $s1
    /* 3F614 8004EE14 C0100200 */  sll        $v0, $v0, 3
    /* 3F618 8004EE18 1180013C */  lui        $at, %hi(D_80117694)
    /* 3F61C 8004EE1C 21082200 */  addu       $at, $at, $v0
    /* 3F620 8004EE20 9476238C */  lw         $v1, %lo(D_80117694)($at)
    /* 3F624 8004EE24 00000000 */  nop
    /* 3F628 8004EE28 21184302 */  addu       $v1, $s2, $v1
    /* 3F62C 8004EE2C 1180013C */  lui        $at, %hi(D_80117694)
    /* 3F630 8004EE30 21082200 */  addu       $at, $at, $v0
    /* 3F634 8004EE34 947623AC */  sw         $v1, %lo(D_80117694)($at)
    /* 3F638 8004EE38 9FBF000C */  jal        func_8002FE7C
    /* 3F63C 8004EE3C 01000424 */   addiu     $a0, $zero, 0x1
  .L8004EE40:
    /* 3F640 8004EE40 01000224 */  addiu      $v0, $zero, 0x1
  .L8004EE44:
    /* 3F644 8004EE44 07008216 */  bne        $s4, $v0, .L8004EE64
    /* 3F648 8004EE48 00000000 */   nop
  .L8004EE4C:
    /* 3F64C 8004EE4C 21202002 */  addu       $a0, $s1, $zero
    /* 3F650 8004EE50 21286002 */  addu       $a1, $s3, $zero
    /* 3F654 8004EE54 3839010C */  jal        func_8004E4E0
    /* 3F658 8004EE58 21300002 */   addu      $a2, $s0, $zero
    /* 3F65C 8004EE5C B43B0108 */  j          .L8004EED0
    /* 3F660 8004EE60 00000000 */   nop
  .L8004EE64:
    /* 3F664 8004EE64 1280023C */  lui        $v0, %hi(D_8011A2F4)
    /* 3F668 8004EE68 F4A24280 */  lb         $v0, %lo(D_8011A2F4)($v0)
    /* 3F66C 8004EE6C 1380073C */  lui        $a3, %hi(D_80135A70)
    /* 3F670 8004EE70 705AE724 */  addiu      $a3, $a3, %lo(D_80135A70)
    /* 3F674 8004EE74 03004010 */  beqz       $v0, .L8004EE84
    /* 3F678 8004EE78 00000000 */   nop
    /* 3F67C 8004EE7C 1380073C */  lui        $a3, %hi(D_80135B04)
    /* 3F680 8004EE80 045BE724 */  addiu      $a3, $a3, %lo(D_80135B04)
  .L8004EE84:
    /* 3F684 8004EE84 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3F688 8004EE88 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3F68C 8004EE8C F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3F690 8004EE90 6F380524 */  addiu      $a1, $zero, 0x386F
    /* 3F694 8004EE94 18E3020C */  jal        func_800B8C60
    /* 3F698 8004EE98 21300000 */   addu      $a2, $zero, $zero
    /* 3F69C 8004EE9C 7C01828F */  lw         $v0, %gp_rel(D_80158654)($gp)
    /* 3F6A0 8004EEA0 00000000 */  nop
    /* 3F6A4 8004EEA4 33004228 */  slti       $v0, $v0, 0x33
    /* 3F6A8 8004EEA8 06004014 */  bnez       $v0, .L8004EEC4
    /* 3F6AC 8004EEAC 21200002 */   addu      $a0, $s0, $zero
    /* 3F6B0 8004EEB0 21202002 */  addu       $a0, $s1, $zero
    /* 3F6B4 8004EEB4 5A77030C */  jal        func_800DDD68
    /* 3F6B8 8004EEB8 21280002 */   addu      $a1, $s0, $zero
    /* 3F6BC 8004EEBC B43B0108 */  j          .L8004EED0
    /* 3F6C0 8004EEC0 00000000 */   nop
  .L8004EEC4:
    /* 3F6C4 8004EEC4 21282002 */  addu       $a1, $s1, $zero
    /* 3F6C8 8004EEC8 F427010C */  jal        func_80049FD0
    /* 3F6CC 8004EECC 64000624 */   addiu     $a2, $zero, 0x64
  .L8004EED0:
    /* 3F6D0 8004EED0 6832010C */  jal        func_8004C9A0
    /* 3F6D4 8004EED4 00000000 */   nop
  .L8004EED8:
    /* 3F6D8 8004EED8 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 3F6DC 8004EEDC 2800B48F */  lw         $s4, 0x28($sp)
    /* 3F6E0 8004EEE0 2400B38F */  lw         $s3, 0x24($sp)
    /* 3F6E4 8004EEE4 2000B28F */  lw         $s2, 0x20($sp)
    /* 3F6E8 8004EEE8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3F6EC 8004EEEC 1800B08F */  lw         $s0, 0x18($sp)
    /* 3F6F0 8004EEF0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 3F6F4 8004EEF4 0800E003 */  jr         $ra
    /* 3F6F8 8004EEF8 00000000 */   nop
endlabel func_8004EA94
