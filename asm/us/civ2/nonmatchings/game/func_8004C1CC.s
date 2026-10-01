.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8004C1CC, 0x414

glabel func_8004C1CC
    /* 3C9CC 8004C1CC 18FDBD27 */  addiu      $sp, $sp, -0x2E8
    /* 3C9D0 8004C1D0 E002BFAF */  sw         $ra, 0x2E0($sp)
    /* 3C9D4 8004C1D4 DC02B3AF */  sw         $s3, 0x2DC($sp)
    /* 3C9D8 8004C1D8 D802B2AF */  sw         $s2, 0x2D8($sp)
    /* 3C9DC 8004C1DC D402B1AF */  sw         $s1, 0x2D4($sp)
    /* 3C9E0 8004C1E0 D002B0AF */  sw         $s0, 0x2D0($sp)
    /* 3C9E4 8004C1E4 21988000 */  addu       $s3, $a0, $zero
    /* 3C9E8 8004C1E8 2188A000 */  addu       $s1, $a1, $zero
    /* 3C9EC 8004C1EC 2800A427 */  addiu      $a0, $sp, 0x28
    /* 3C9F0 8004C1F0 ADC5020C */  jal        func_800B16B4
    /* 3C9F4 8004C1F4 00200524 */   addiu     $a1, $zero, 0x2000
    /* 3C9F8 8004C1F8 01000224 */  addiu      $v0, $zero, 0x1
    /* 3C9FC 8004C1FC 5C0182AF */  sw         $v0, %gp_rel(D_80158634)($gp)
    /* 3CA00 8004C200 1280023C */  lui        $v0, %hi(D_8011A254)
    /* 3CA04 8004C204 54A2428C */  lw         $v0, %lo(D_8011A254)($v0)
    /* 3CA08 8004C208 0400033C */  lui        $v1, (0x40000 >> 16)
    /* 3CA0C 8004C20C 24104300 */  and        $v0, $v0, $v1
    /* 3CA10 8004C210 2F004010 */  beqz       $v0, .L8004C2D0
    /* 3CA14 8004C214 00000000 */   nop
    /* 3CA18 8004C218 221B040C */  jal        func_80106C88
    /* 3CA1C 8004C21C C802A427 */   addiu     $a0, $sp, 0x2C8
    /* 3CA20 8004C220 CC02A487 */  lh         $a0, 0x2CC($sp)
    /* 3CA24 8004C224 00000000 */  nop
    /* 3CA28 8004C228 C0FE8424 */  addiu      $a0, $a0, -0x140
    /* 3CA2C 8004C22C 5555103C */  lui        $s0, (0x55555556 >> 16)
    /* 3CA30 8004C230 56551036 */  ori        $s0, $s0, (0x55555556 & 0xFFFF)
    /* 3CA34 8004C234 18009000 */  mult       $a0, $s0
    /* 3CA38 8004C238 C3270400 */  sra        $a0, $a0, 31
    /* 3CA3C 8004C23C 10400000 */  mfhi       $t0
    /* 3CA40 8004C240 23200401 */  subu       $a0, $t0, $a0
    /* 3CA44 8004C244 01000524 */  addiu      $a1, $zero, 0x1
    /* 3CA48 8004C248 F53A030C */  jal        func_800CEBD4
    /* 3CA4C 8004C24C 0F270624 */   addiu     $a2, $zero, 0x270F
    /* 3CA50 8004C250 23900200 */  negu       $s2, $v0
    /* 3CA54 8004C254 CE02A487 */  lh         $a0, 0x2CE($sp)
    /* 3CA58 8004C258 00000000 */  nop
    /* 3CA5C 8004C25C 10FF8424 */  addiu      $a0, $a0, -0xF0
    /* 3CA60 8004C260 18009000 */  mult       $a0, $s0
    /* 3CA64 8004C264 C3270400 */  sra        $a0, $a0, 31
    /* 3CA68 8004C268 10400000 */  mfhi       $t0
    /* 3CA6C 8004C26C 23200401 */  subu       $a0, $t0, $a0
    /* 3CA70 8004C270 01000524 */  addiu      $a1, $zero, 0x1
    /* 3CA74 8004C274 F53A030C */  jal        func_800CEBD4
    /* 3CA78 8004C278 0F270624 */   addiu     $a2, $zero, 0x270F
    /* 3CA7C 8004C27C 23800200 */  negu       $s0, $v0
    /* 3CA80 8004C280 00241200 */  sll        $a0, $s2, 16
    /* 3CA84 8004C284 002C1000 */  sll        $a1, $s0, 16
    /* 3CA88 8004C288 03240400 */  sra        $a0, $a0, 16
    /* 3CA8C 8004C28C A8C4020C */  jal        func_800B12A0
    /* 3CA90 8004C290 032C0500 */   sra       $a1, $a1, 16
    /* 3CA94 8004C294 2800A427 */  addiu      $a0, $sp, 0x28
    /* 3CA98 8004C298 21284002 */  addu       $a1, $s2, $zero
    /* 3CA9C 8004C29C 5AC8020C */  jal        func_800B2168
    /* 3CAA0 8004C2A0 21300002 */   addu      $a2, $s0, $zero
    /* 3CAA4 8004C2A4 1280043C */  lui        $a0, %hi(D_8011E748)
    /* 3CAA8 8004C2A8 48E7848C */  lw         $a0, %lo(D_8011E748)($a0)
    /* 3CAAC 8004C2AC 331F040C */  jal        func_80107CCC
    /* 3CAB0 8004C2B0 00000000 */   nop
    /* 3CAB4 8004C2B4 1280013C */  lui        $at, %hi(D_8011E748)
    /* 3CAB8 8004C2B8 48E720AC */  sw         $zero, %lo(D_8011E748)($at)
    /* 3CABC 8004C2BC 00241300 */  sll        $a0, $s3, 16
    /* 3CAC0 8004C2C0 002C1100 */  sll        $a1, $s1, 16
    /* 3CAC4 8004C2C4 03240400 */  sra        $a0, $a0, 16
    /* 3CAC8 8004C2C8 258D020C */  jal        func_800A3494
    /* 3CACC 8004C2CC 032C0500 */   sra       $a1, $a1, 16
  .L8004C2D0:
    /* 3CAD0 8004C2D0 21206002 */  addu       $a0, $s3, $zero
    /* 3CAD4 8004C2D4 4130010C */  jal        func_8004C104
    /* 3CAD8 8004C2D8 21282002 */   addu      $a1, $s1, $zero
    /* 3CADC 8004C2DC F853020C */  jal        func_80094FE0
    /* 3CAE0 8004C2E0 21202002 */   addu      $a0, $s1, $zero
    /* 3CAE4 8004C2E4 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 3CAE8 8004C2E8 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 3CAEC 8004C2EC A587030C */  jal        func_800E1E94
    /* 3CAF0 8004C2F0 21284000 */   addu      $a1, $v0, $zero
    /* 3CAF4 8004C2F4 2554020C */  jal        func_80095094
    /* 3CAF8 8004C2F8 21202002 */   addu      $a0, $s1, $zero
    /* 3CAFC 8004C2FC 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* 3CB00 8004C300 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* 3CB04 8004C304 A587030C */  jal        func_800E1E94
    /* 3CB08 8004C308 21284000 */   addu      $a1, $v0, $zero
    /* 3CB0C 8004C30C 5D54020C */  jal        func_80095174
    /* 3CB10 8004C310 21202002 */   addu      $a0, $s1, $zero
    /* 3CB14 8004C314 1280043C */  lui        $a0, %hi(D_8011FDE8)
    /* 3CB18 8004C318 E8FD8424 */  addiu      $a0, $a0, %lo(D_8011FDE8)
    /* 3CB1C 8004C31C A587030C */  jal        func_800E1E94
    /* 3CB20 8004C320 21284000 */   addu      $a1, $v0, $zero
    /* 3CB24 8004C324 40101100 */  sll        $v0, $s1, 1
    /* 3CB28 8004C328 21105100 */  addu       $v0, $v0, $s1
    /* 3CB2C 8004C32C 80100200 */  sll        $v0, $v0, 2
    /* 3CB30 8004C330 23105100 */  subu       $v0, $v0, $s1
    /* 3CB34 8004C334 00110200 */  sll        $v0, $v0, 4
    /* 3CB38 8004C338 23105100 */  subu       $v0, $v0, $s1
    /* 3CB3C 8004C33C C0100200 */  sll        $v0, $v0, 3
    /* 3CB40 8004C340 1180013C */  lui        $at, %hi(D_80117698)
    /* 3CB44 8004C344 21082200 */  addu       $at, $at, $v0
    /* 3CB48 8004C348 98762384 */  lh         $v1, %lo(D_80117698)($at)
    /* 3CB4C 8004C34C 00000000 */  nop
    /* 3CB50 8004C350 40100300 */  sll        $v0, $v1, 1
    /* 3CB54 8004C354 21104300 */  addu       $v0, $v0, $v1
    /* 3CB58 8004C358 00110200 */  sll        $v0, $v0, 4
    /* 3CB5C 8004C35C 1180013C */  lui        $at, %hi(D_80116AD4)
    /* 3CB60 8004C360 21082200 */  addu       $at, $at, $v0
    /* 3CB64 8004C364 D46A2290 */  lbu        $v0, %lo(D_80116AD4)($at)
    /* 3CB68 8004C368 00000000 */  nop
    /* 3CB6C 8004C36C 05004010 */  beqz       $v0, .L8004C384
    /* 3CB70 8004C370 00000000 */   nop
    /* 3CB74 8004C374 1680023C */  lui        $v0, %hi(D_8015894C)
    /* 3CB78 8004C378 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* 3CB7C 8004C37C E5300108 */  j          .L8004C394
    /* 3CB80 8004C380 A8014224 */   addiu     $v0, $v0, 0x1A8
  .L8004C384:
    /* 3CB84 8004C384 1680023C */  lui        $v0, %hi(D_8015894C)
    /* 3CB88 8004C388 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* 3CB8C 8004C38C 00000000 */  nop
    /* 3CB90 8004C390 A4014224 */  addiu      $v0, $v0, 0x1A4
  .L8004C394:
    /* 3CB94 8004C394 0000458C */  lw         $a1, 0x0($v0)
    /* 3CB98 8004C398 ABAC020C */  jal        func_800AB2AC
    /* 3CB9C 8004C39C 05000424 */   addiu     $a0, $zero, 0x5
    /* 3CBA0 8004C3A0 5D54020C */  jal        func_80095174
    /* 3CBA4 8004C3A4 21206002 */   addu      $a0, $s3, $zero
    /* 3CBA8 8004C3A8 1280043C */  lui        $a0, %hi(D_8011FED8)
    /* 3CBAC 8004C3AC D8FE8424 */  addiu      $a0, $a0, %lo(D_8011FED8)
    /* 3CBB0 8004C3B0 A587030C */  jal        func_800E1E94
    /* 3CBB4 8004C3B4 21284000 */   addu      $a1, $v0, $zero
    /* 3CBB8 8004C3B8 21200000 */  addu       $a0, $zero, $zero
    /* 3CBBC 8004C3BC 7253020C */  jal        func_80094DC8
    /* 3CBC0 8004C3C0 03000524 */   addiu     $a1, $zero, 0x3
    /* 3CBC4 8004C3C4 00140200 */  sll        $v0, $v0, 16
    /* 3CBC8 8004C3C8 032C0200 */  sra        $a1, $v0, 16
    /* 3CBCC 8004C3CC 1180063C */  lui        $a2, %hi(D_8010BCC0)
    /* 3CBD0 8004C3D0 C0BCC624 */  addiu      $a2, $a2, %lo(D_8010BCC0)
    /* 3CBD4 8004C3D4 40101100 */  sll        $v0, $s1, 1
    /* 3CBD8 8004C3D8 21105100 */  addu       $v0, $v0, $s1
    /* 3CBDC 8004C3DC 80100200 */  sll        $v0, $v0, 2
    /* 3CBE0 8004C3E0 23105100 */  subu       $v0, $v0, $s1
    /* 3CBE4 8004C3E4 00110200 */  sll        $v0, $v0, 4
    /* 3CBE8 8004C3E8 23105100 */  subu       $v0, $v0, $s1
    /* 3CBEC 8004C3EC C0100200 */  sll        $v0, $v0, 3
    /* 3CBF0 8004C3F0 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 3CBF4 8004C3F4 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 3CBF8 8004C3F8 80181300 */  sll        $v1, $s3, 2
    /* 3CBFC 8004C3FC 21104400 */  addu       $v0, $v0, $a0
    /* 3CC00 8004C400 21186200 */  addu       $v1, $v1, $v0
    /* 3CC04 8004C404 0000628C */  lw         $v0, 0x0($v1)
    /* 3CC08 8004C408 00000000 */  nop
    /* 3CC0C 8004C40C 10004230 */  andi       $v0, $v0, 0x10
    /* 3CC10 8004C410 03004010 */  beqz       $v0, .L8004C420
    /* 3CC14 8004C414 0400A224 */   addiu     $v0, $a1, 0x4
    /* 3CC18 8004C418 09310108 */  j          .L8004C424
    /* 3CC1C 8004C41C 80100200 */   sll       $v0, $v0, 2
  .L8004C420:
    /* 3CC20 8004C420 80100500 */  sll        $v0, $a1, 2
  .L8004C424:
    /* 3CC24 8004C424 2110C200 */  addu       $v0, $a2, $v0
    /* 3CC28 8004C428 2800B027 */  addiu      $s0, $sp, 0x28
    /* 3CC2C 8004C42C 0000468C */  lw         $a2, 0x0($v0)
    /* 3CC30 8004C430 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3CC34 8004C434 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3CC38 8004C438 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3CC3C 8004C43C 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3CC40 8004C440 2000A0AF */  sw         $zero, 0x20($sp)
    /* 3CC44 8004C444 21200002 */  addu       $a0, $s0, $zero
    /* 3CC48 8004C448 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* 3CC4C 8004C44C F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* 3CC50 8004C450 2CE0020C */  jal        func_800B80B0
    /* 3CC54 8004C454 21380000 */   addu      $a3, $zero, $zero
    /* 3CC58 8004C458 40101100 */  sll        $v0, $s1, 1
    /* 3CC5C 8004C45C 21105100 */  addu       $v0, $v0, $s1
    /* 3CC60 8004C460 80100200 */  sll        $v0, $v0, 2
    /* 3CC64 8004C464 23105100 */  subu       $v0, $v0, $s1
    /* 3CC68 8004C468 00110200 */  sll        $v0, $v0, 4
    /* 3CC6C 8004C46C 23105100 */  subu       $v0, $v0, $s1
    /* 3CC70 8004C470 C0100200 */  sll        $v0, $v0, 3
    /* 3CC74 8004C474 1180013C */  lui        $at, %hi(D_80117790)
    /* 3CC78 8004C478 21082200 */  addu       $at, $at, $v0
    /* 3CC7C 8004C47C 90772290 */  lbu        $v0, %lo(D_80117790)($at)
    /* 3CC80 8004C480 00000000 */  nop
    /* 3CC84 8004C484 0C004010 */  beqz       $v0, .L8004C4B8
    /* 3CC88 8004C488 00800234 */   ori       $v0, $zero, 0x8000
    /* 3CC8C 8004C48C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3CC90 8004C490 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3CC94 8004C494 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3CC98 8004C498 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3CC9C 8004C49C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3CCA0 8004C4A0 21200002 */  addu       $a0, $s0, $zero
    /* 3CCA4 8004C4A4 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* 3CCA8 8004C4A8 F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* 3CCAC 8004C4AC 204C0624 */  addiu      $a2, $zero, 0x4C20
    /* 3CCB0 8004C4B0 2CE0020C */  jal        func_800B80B0
    /* 3CCB4 8004C4B4 21380000 */   addu      $a3, $zero, $zero
  .L8004C4B8:
    /* 3CCB8 8004C4B8 2800A427 */  addiu      $a0, $sp, 0x28
    /* 3CCBC 8004C4BC 52DF020C */  jal        func_800B7D48
    /* 3CCC0 8004C4C0 21280000 */   addu      $a1, $zero, $zero
    /* 3CCC4 8004C4C4 40101300 */  sll        $v0, $s3, 1
    /* 3CCC8 8004C4C8 21105300 */  addu       $v0, $v0, $s3
    /* 3CCCC 8004C4CC 80100200 */  sll        $v0, $v0, 2
    /* 3CCD0 8004C4D0 23105300 */  subu       $v0, $v0, $s3
    /* 3CCD4 8004C4D4 00110200 */  sll        $v0, $v0, 4
    /* 3CCD8 8004C4D8 23105300 */  subu       $v0, $v0, $s3
    /* 3CCDC 8004C4DC C0200200 */  sll        $a0, $v0, 3
    /* 3CCE0 8004C4E0 1180013C */  lui        $at, %hi(D_80117790)
    /* 3CCE4 8004C4E4 21082400 */  addu       $at, $at, $a0
    /* 3CCE8 8004C4E8 90772290 */  lbu        $v0, %lo(D_80117790)($at)
    /* 3CCEC 8004C4EC 00000000 */  nop
    /* 3CCF0 8004C4F0 30004010 */  beqz       $v0, .L8004C5B4
    /* 3CCF4 8004C4F4 80181100 */   sll       $v1, $s1, 2
    /* 3CCF8 8004C4F8 1180023C */  lui        $v0, %hi(D_801176B4)
    /* 3CCFC 8004C4FC B4764224 */  addiu      $v0, $v0, %lo(D_801176B4)
    /* 3CD00 8004C500 21108200 */  addu       $v0, $a0, $v0
    /* 3CD04 8004C504 21186200 */  addu       $v1, $v1, $v0
    /* 3CD08 8004C508 0000628C */  lw         $v0, 0x0($v1)
    /* 3CD0C 8004C50C 00000000 */  nop
    /* 3CD10 8004C510 04014230 */  andi       $v0, $v0, 0x104
    /* 3CD14 8004C514 00010324 */  addiu      $v1, $zero, 0x100
    /* 3CD18 8004C518 26004310 */  beq        $v0, $v1, .L8004C5B4
    /* 3CD1C 8004C51C 40101100 */   sll       $v0, $s1, 1
    /* 3CD20 8004C520 21105100 */  addu       $v0, $v0, $s1
    /* 3CD24 8004C524 80100200 */  sll        $v0, $v0, 2
    /* 3CD28 8004C528 23105100 */  subu       $v0, $v0, $s1
    /* 3CD2C 8004C52C 00110200 */  sll        $v0, $v0, 4
    /* 3CD30 8004C530 23105100 */  subu       $v0, $v0, $s1
    /* 3CD34 8004C534 C0100200 */  sll        $v0, $v0, 3
    /* 3CD38 8004C538 1180013C */  lui        $at, %hi(D_80117790)
    /* 3CD3C 8004C53C 21082200 */  addu       $at, $at, $v0
    /* 3CD40 8004C540 90772290 */  lbu        $v0, %lo(D_80117790)($at)
    /* 3CD44 8004C544 00000000 */  nop
    /* 3CD48 8004C548 02004010 */  beqz       $v0, .L8004C554
    /* 3CD4C 8004C54C 624C0524 */   addiu     $a1, $zero, 0x4C62
    /* 3CD50 8004C550 2C4D0524 */  addiu      $a1, $zero, 0x4D2C
  .L8004C554:
    /* 3CD54 8004C554 1000A0AF */  sw         $zero, 0x10($sp)
    /* 3CD58 8004C558 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3CD5C 8004C55C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3CD60 8004C560 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 3CD64 8004C564 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 3CD68 8004C568 21300000 */  addu       $a2, $zero, $zero
    /* 3CD6C 8004C56C B4E2020C */  jal        func_800B8AD0
    /* 3CD70 8004C570 21380000 */   addu      $a3, $zero, $zero
    /* 3CD74 8004C574 40101300 */  sll        $v0, $s3, 1
    /* 3CD78 8004C578 21105300 */  addu       $v0, $v0, $s3
    /* 3CD7C 8004C57C 80100200 */  sll        $v0, $v0, 2
    /* 3CD80 8004C580 23105300 */  subu       $v0, $v0, $s3
    /* 3CD84 8004C584 00110200 */  sll        $v0, $v0, 4
    /* 3CD88 8004C588 23105300 */  subu       $v0, $v0, $s3
    /* 3CD8C 8004C58C C0100200 */  sll        $v0, $v0, 3
    /* 3CD90 8004C590 1180043C */  lui        $a0, %hi(D_801176B4)
    /* 3CD94 8004C594 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* 3CD98 8004C598 80181100 */  sll        $v1, $s1, 2
    /* 3CD9C 8004C59C 21104400 */  addu       $v0, $v0, $a0
    /* 3CDA0 8004C5A0 21186200 */  addu       $v1, $v1, $v0
    /* 3CDA4 8004C5A4 0000628C */  lw         $v0, 0x0($v1)
    /* 3CDA8 8004C5A8 00000000 */  nop
    /* 3CDAC 8004C5AC 00014234 */  ori        $v0, $v0, 0x100
    /* 3CDB0 8004C5B0 000062AC */  sw         $v0, 0x0($v1)
  .L8004C5B4:
    /* 3CDB4 8004C5B4 2800A427 */  addiu      $a0, $sp, 0x28
    /* 3CDB8 8004C5B8 0AC7020C */  jal        func_800B1C28
    /* 3CDBC 8004C5BC 02000524 */   addiu     $a1, $zero, 0x2
    /* 3CDC0 8004C5C0 E002BF8F */  lw         $ra, 0x2E0($sp)
    /* 3CDC4 8004C5C4 DC02B38F */  lw         $s3, 0x2DC($sp)
    /* 3CDC8 8004C5C8 D802B28F */  lw         $s2, 0x2D8($sp)
    /* 3CDCC 8004C5CC D402B18F */  lw         $s1, 0x2D4($sp)
    /* 3CDD0 8004C5D0 D002B08F */  lw         $s0, 0x2D0($sp)
    /* 3CDD4 8004C5D4 E802BD27 */  addiu      $sp, $sp, 0x2E8
    /* 3CDD8 8004C5D8 0800E003 */  jr         $ra
    /* 3CDDC 8004C5DC 00000000 */   nop
endlabel func_8004C1CC
