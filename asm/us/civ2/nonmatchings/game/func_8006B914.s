.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8006B914, 0x5E8

glabel func_8006B914
    /* 5C114 8006B914 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 5C118 8006B918 3000BFAF */  sw         $ra, 0x30($sp)
    /* 5C11C 8006B91C 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 5C120 8006B920 2800B2AF */  sw         $s2, 0x28($sp)
    /* 5C124 8006B924 2400B1AF */  sw         $s1, 0x24($sp)
    /* 5C128 8006B928 2000B0AF */  sw         $s0, 0x20($sp)
    /* 5C12C 8006B92C 1280053C */  lui        $a1, %hi(D_8011A262)
    /* 5C130 8006B930 62A2A524 */  addiu      $a1, $a1, %lo(D_8011A262)
    /* 5C134 8006B934 0000A484 */  lh         $a0, 0x0($a1)
    /* 5C138 8006B938 00000000 */  nop
    /* 5C13C 8006B93C 02008228 */  slti       $v0, $a0, 0x2
    /* 5C140 8006B940 A1004014 */  bnez       $v0, .L8006BBC8
    /* 5C144 8006B944 FFFF1324 */   addiu     $s3, $zero, -0x1
    /* 5C148 8006B948 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 5C14C 8006B94C EB51023C */  lui        $v0, (0x51EB851F >> 16)
    /* 5C150 8006B950 1F854234 */  ori        $v0, $v0, (0x51EB851F & 0xFFFF)
    /* 5C154 8006B954 18008200 */  mult       $a0, $v0
    /* 5C158 8006B958 10400000 */  mfhi       $t0
    /* 5C15C 8006B95C 03190800 */  sra        $v1, $t0, 4
    /* 5C160 8006B960 C3170400 */  sra        $v0, $a0, 31
    /* 5C164 8006B964 23186200 */  subu       $v1, $v1, $v0
    /* 5C168 8006B968 40100300 */  sll        $v0, $v1, 1
    /* 5C16C 8006B96C 21104300 */  addu       $v0, $v0, $v1
    /* 5C170 8006B970 C0100200 */  sll        $v0, $v0, 3
    /* 5C174 8006B974 21104300 */  addu       $v0, $v0, $v1
    /* 5C178 8006B978 40100200 */  sll        $v0, $v0, 1
    /* 5C17C 8006B97C 92008214 */  bne        $a0, $v0, .L8006BBC8
    /* 5C180 8006B980 1000033C */   lui       $v1, (0x100000 >> 16)
    /* 5C184 8006B984 F2FFA28C */  lw         $v0, -0xE($a1)
    /* 5C188 8006B988 00000000 */  nop
    /* 5C18C 8006B98C 24104300 */  and        $v0, $v0, $v1
    /* 5C190 8006B990 8D004010 */  beqz       $v0, .L8006BBC8
    /* 5C194 8006B994 FFFF1224 */   addiu     $s2, $zero, -0x1
    /* 5C198 8006B998 2000A284 */  lh         $v0, 0x20($a1)
    /* 5C19C 8006B99C 00000000 */  nop
    /* 5C1A0 8006B9A0 38004018 */  blez       $v0, .L8006BA84
    /* 5C1A4 8006B9A4 21880000 */   addu      $s1, $zero, $zero
    /* 5C1A8 8006B9A8 40101100 */  sll        $v0, $s1, 1
  .L8006B9AC:
    /* 5C1AC 8006B9AC 21105100 */  addu       $v0, $v0, $s1
    /* 5C1B0 8006B9B0 80100200 */  sll        $v0, $v0, 2
    /* 5C1B4 8006B9B4 23105100 */  subu       $v0, $v0, $s1
    /* 5C1B8 8006B9B8 C0200200 */  sll        $a0, $v0, 3
    /* 5C1BC 8006B9BC 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 5C1C0 8006B9C0 21082400 */  addu       $at, $at, $a0
    /* 5C1C4 8006B9C4 D83E2380 */  lb         $v1, %lo(D_80113ED8)($at)
    /* 5C1C8 8006B9C8 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 5C1CC 8006B9CC B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 5C1D0 8006B9D0 00000000 */  nop
    /* 5C1D4 8006B9D4 24004314 */  bne        $v0, $v1, .L8006BA68
    /* 5C1D8 8006B9D8 00000000 */   nop
    /* 5C1DC 8006B9DC 1180013C */  lui        $at, %hi(D_80113ED9)
    /* 5C1E0 8006B9E0 21082400 */  addu       $at, $at, $a0
    /* 5C1E4 8006B9E4 D93E3080 */  lb         $s0, %lo(D_80113ED9)($at)
    /* 5C1E8 8006B9E8 21202002 */  addu       $a0, $s1, $zero
    /* 5C1EC 8006B9EC C826020C */  jal        func_80089B20
    /* 5C1F0 8006B9F0 01000524 */   addiu     $a1, $zero, 0x1
    /* 5C1F4 8006B9F4 03004010 */  beqz       $v0, .L8006BA04
    /* 5C1F8 8006B9F8 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* 5C1FC 8006B9FC 40801000 */  sll        $s0, $s0, 1
    /* 5C200 8006BA00 FFFF0226 */  addiu      $v0, $s0, -0x1
  .L8006BA04:
    /* 5C204 8006BA04 12004018 */  blez       $v0, .L8006BA50
    /* 5C208 8006BA08 21180000 */   addu      $v1, $zero, $zero
    /* 5C20C 8006BA0C E6E9030C */  jal        func_800FA798
    /* 5C210 8006BA10 00000000 */   nop
    /* 5C214 8006BA14 00140200 */  sll        $v0, $v0, 16
    /* 5C218 8006BA18 031C0200 */  sra        $v1, $v0, 16
    /* 5C21C 8006BA1C 1A007000 */  div        $zero, $v1, $s0
    /* 5C220 8006BA20 02000016 */  bnez       $s0, .L8006BA2C
    /* 5C224 8006BA24 00000000 */   nop
    /* 5C228 8006BA28 0D000700 */  break      7
  .L8006BA2C:
    /* 5C22C 8006BA2C FFFF0124 */  addiu      $at, $zero, -0x1
    /* 5C230 8006BA30 04000116 */  bne        $s0, $at, .L8006BA44
    /* 5C234 8006BA34 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 5C238 8006BA38 02006114 */  bne        $v1, $at, .L8006BA44
    /* 5C23C 8006BA3C 00000000 */   nop
    /* 5C240 8006BA40 0D000600 */  break      6
  .L8006BA44:
    /* 5C244 8006BA44 10180000 */  mfhi       $v1
    /* 5C248 8006BA48 95AE0108 */  j          .L8006BA54
    /* 5C24C 8006BA4C 21806000 */   addu      $s0, $v1, $zero
  .L8006BA50:
    /* 5C250 8006BA50 21806000 */  addu       $s0, $v1, $zero
  .L8006BA54:
    /* 5C254 8006BA54 2A105002 */  slt        $v0, $s2, $s0
    /* 5C258 8006BA58 03004010 */  beqz       $v0, .L8006BA68
    /* 5C25C 8006BA5C 00000000 */   nop
    /* 5C260 8006BA60 21900002 */  addu       $s2, $s0, $zero
    /* 5C264 8006BA64 21982002 */  addu       $s3, $s1, $zero
  .L8006BA68:
    /* 5C268 8006BA68 01003126 */  addiu      $s1, $s1, 0x1
    /* 5C26C 8006BA6C 1280023C */  lui        $v0, %hi(D_8011A282)
    /* 5C270 8006BA70 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* 5C274 8006BA74 00000000 */  nop
    /* 5C278 8006BA78 2A102202 */  slt        $v0, $s1, $v0
    /* 5C27C 8006BA7C CBFF4014 */  bnez       $v0, .L8006B9AC
    /* 5C280 8006BA80 40101100 */   sll       $v0, $s1, 1
  .L8006BA84:
    /* 5C284 8006BA84 1280043C */  lui        $a0, %hi(D_8011ACB4)
    /* 5C288 8006BA88 B4AC848C */  lw         $a0, %lo(D_8011ACB4)($a0)
    /* 5C28C 8006BA8C 5D54020C */  jal        func_80095174
    /* 5C290 8006BA90 21886002 */   addu      $s1, $s3, $zero
    /* 5C294 8006BA94 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 5C298 8006BA98 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 5C29C 8006BA9C A587030C */  jal        func_800E1E94
    /* 5C2A0 8006BAA0 21284000 */   addu      $a1, $v0, $zero
    /* 5C2A4 8006BAA4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 5C2A8 8006BAA8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 5C2AC 8006BAAC CB1A030C */  jal        func_800C6B2C
    /* 5C2B0 8006BAB0 00000000 */   nop
    /* 5C2B4 8006BAB4 1280043C */  lui        $a0, %hi(D_80121340)
    /* 5C2B8 8006BAB8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 5C2BC 8006BABC 1280053C */  lui        $a1, %hi(D_8011A264)
    /* 5C2C0 8006BAC0 64A2A584 */  lh         $a1, %lo(D_8011A264)($a1)
    /* 5C2C4 8006BAC4 AD98010C */  jal        func_800662B4
    /* 5C2C8 8006BAC8 00000000 */   nop
    /* 5C2CC 8006BACC 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* 5C2D0 8006BAD0 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* 5C2D4 8006BAD4 1280053C */  lui        $a1, %hi(D_80121340)
    /* 5C2D8 8006BAD8 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 5C2DC 8006BADC A587030C */  jal        func_800E1E94
    /* 5C2E0 8006BAE0 00000000 */   nop
    /* 5C2E4 8006BAE4 0B002106 */  bgez       $s1, .L8006BB14
    /* 5C2E8 8006BAE8 40801100 */   sll       $s0, $s1, 1
    /* 5C2EC 8006BAEC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 5C2F0 8006BAF0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 5C2F4 8006BAF4 CB1A030C */  jal        func_800C6B2C
    /* 5C2F8 8006BAF8 00000000 */   nop
    /* 5C2FC 8006BAFC 1280043C */  lui        $a0, %hi(D_80121340)
    /* 5C300 8006BB00 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 5C304 8006BB04 731B030C */  jal        func_800C6DCC
    /* 5C308 8006BB08 0E000524 */   addiu     $a1, $zero, 0xE
    /* 5C30C 8006BB0C DDAE0108 */  j          .L8006BB74
    /* 5C310 8006BB10 00000000 */   nop
  .L8006BB14:
    /* 5C314 8006BB14 21801102 */  addu       $s0, $s0, $s1
    /* 5C318 8006BB18 80801000 */  sll        $s0, $s0, 2
    /* 5C31C 8006BB1C 23801102 */  subu       $s0, $s0, $s1
    /* 5C320 8006BB20 C0801000 */  sll        $s0, $s0, 3
    /* 5C324 8006BB24 1280043C */  lui        $a0, %hi(D_8011E72C)
    /* 5C328 8006BB28 2CE78424 */  addiu      $a0, $a0, %lo(D_8011E72C)
    /* 5C32C 8006BB2C 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 5C330 8006BB30 21083000 */  addu       $at, $at, $s0
    /* 5C334 8006BB34 D03E2584 */  lh         $a1, %lo(D_80113ED0)($at)
    /* 5C338 8006BB38 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 5C33C 8006BB3C 21083000 */  addu       $at, $at, $s0
    /* 5C340 8006BB40 D23E2684 */  lh         $a2, %lo(D_80113ED2)($at)
    /* 5C344 8006BB44 BC7B020C */  jal        func_8009EEF0
    /* 5C348 8006BB48 00000000 */   nop
    /* 5C34C 8006BB4C 1280043C */  lui        $a0, %hi(D_80121340)
    /* 5C350 8006BB50 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 5C354 8006BB54 CB1A030C */  jal        func_800C6B2C
    /* 5C358 8006BB58 00000000 */   nop
    /* 5C35C 8006BB5C 1180053C */  lui        $a1, %hi(D_80113EF2)
    /* 5C360 8006BB60 F23EA524 */  addiu      $a1, $a1, %lo(D_80113EF2)
    /* 5C364 8006BB64 1280043C */  lui        $a0, %hi(D_80121340)
    /* 5C368 8006BB68 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 5C36C 8006BB6C 9987030C */  jal        func_800E1E64
    /* 5C370 8006BB70 21280502 */   addu      $a1, $s0, $a1
  .L8006BB74:
    /* 5C374 8006BB74 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 5C378 8006BB78 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 5C37C 8006BB7C 1280053C */  lui        $a1, %hi(D_80121340)
    /* 5C380 8006BB80 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 5C384 8006BB84 A587030C */  jal        func_800E1E94
    /* 5C388 8006BB88 00000000 */   nop
    /* 5C38C 8006BB8C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 5C390 8006BB90 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 5C394 8006BB94 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 5C398 8006BB98 0100053C */  lui        $a1, (0x12536 >> 16)
    /* 5C39C 8006BB9C 3625A534 */  ori        $a1, $a1, (0x12536 & 0xFFFF)
    /* 5C3A0 8006BBA0 1380073C */  lui        $a3, %hi(D_80135B98)
    /* 5C3A4 8006BBA4 985BE724 */  addiu      $a3, $a3, %lo(D_80135B98)
    /* 5C3A8 8006BBA8 18E3020C */  jal        func_800B8C60
    /* 5C3AC 8006BBAC 21300000 */   addu      $a2, $zero, $zero
    /* 5C3B0 8006BBB0 05004014 */  bnez       $v0, .L8006BBC8
    /* 5C3B4 8006BBB4 00000000 */   nop
    /* 5C3B8 8006BBB8 1280043C */  lui        $a0, %hi(D_8011ACB4)
    /* 5C3BC 8006BBBC B4AC8484 */  lh         $a0, %lo(D_8011ACB4)($a0)
    /* 5C3C0 8006BBC0 814B020C */  jal        func_80092E04
    /* 5C3C4 8006BBC4 21280000 */   addu      $a1, $zero, $zero
  .L8006BBC8:
    /* 5C3C8 8006BBC8 1280033C */  lui        $v1, %hi(D_8011A254)
    /* 5C3CC 8006BBCC 54A26324 */  addiu      $v1, $v1, %lo(D_8011A254)
    /* 5C3D0 8006BBD0 0000628C */  lw         $v0, 0x0($v1)
    /* 5C3D4 8006BBD4 00000000 */  nop
    /* 5C3D8 8006BBD8 00014230 */  andi       $v0, $v0, 0x100
    /* 5C3DC 8006BBDC BF004010 */  beqz       $v0, .L8006BEDC
    /* 5C3E0 8006BBE0 01000224 */   addiu     $v0, $zero, 0x1
    /* 5C3E4 8006BBE4 0E006384 */  lh         $v1, 0xE($v1)
    /* 5C3E8 8006BBE8 00000000 */  nop
    /* 5C3EC 8006BBEC 08006214 */  bne        $v1, $v0, .L8006BC10
    /* 5C3F0 8006BBF0 B9000524 */   addiu     $a1, $zero, 0xB9
    /* 5C3F4 8006BBF4 1680043C */  lui        $a0, %hi(D_8015885C)
    /* 5C3F8 8006BBF8 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* 5C3FC 8006BBFC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 5C400 8006BC00 1380073C */  lui        $a3, %hi(D_80135C2C)
    /* 5C404 8006BC04 2C5CE724 */  addiu      $a3, $a3, %lo(D_80135C2C)
    /* 5C408 8006BC08 18E3020C */  jal        func_800B8C60
    /* 5C40C 8006BC0C 21300000 */   addu      $a2, $zero, $zero
  .L8006BC10:
    /* 5C410 8006BC10 1280033C */  lui        $v1, %hi(D_8011A262)
    /* 5C414 8006BC14 62A26384 */  lh         $v1, %lo(D_8011A262)($v1)
    /* 5C418 8006BC18 14000224 */  addiu      $v0, $zero, 0x14
    /* 5C41C 8006BC1C 03006210 */  beq        $v1, $v0, .L8006BC2C
    /* 5C420 8006BC20 3C000224 */   addiu     $v0, $zero, 0x3C
    /* 5C424 8006BC24 0C006214 */  bne        $v1, $v0, .L8006BC58
    /* 5C428 8006BC28 28000224 */   addiu     $v0, $zero, 0x28
  .L8006BC2C:
    /* 5C42C 8006BC2C 1680043C */  lui        $a0, %hi(D_8015885C)
    /* 5C430 8006BC30 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* 5C434 8006BC34 1000A0AF */  sw         $zero, 0x10($sp)
    /* 5C438 8006BC38 880F0524 */  addiu      $a1, $zero, 0xF88
    /* 5C43C 8006BC3C 1380073C */  lui        $a3, %hi(D_80135C2C)
    /* 5C440 8006BC40 2C5CE724 */  addiu      $a3, $a3, %lo(D_80135C2C)
    /* 5C444 8006BC44 18E3020C */  jal        func_800B8C60
    /* 5C448 8006BC48 21300000 */   addu      $a2, $zero, $zero
    /* 5C44C 8006BC4C 1280033C */  lui        $v1, %hi(D_8011A262)
    /* 5C450 8006BC50 62A26384 */  lh         $v1, %lo(D_8011A262)($v1)
    /* 5C454 8006BC54 28000224 */  addiu      $v0, $zero, 0x28
  .L8006BC58:
    /* 5C458 8006BC58 03006210 */  beq        $v1, $v0, .L8006BC68
    /* 5C45C 8006BC5C 50000224 */   addiu     $v0, $zero, 0x50
    /* 5C460 8006BC60 09006214 */  bne        $v1, $v0, .L8006BC88
    /* 5C464 8006BC64 00000000 */   nop
  .L8006BC68:
    /* 5C468 8006BC68 1680043C */  lui        $a0, %hi(D_8015885C)
    /* 5C46C 8006BC6C 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* 5C470 8006BC70 1000A0AF */  sw         $zero, 0x10($sp)
    /* 5C474 8006BC74 F3100524 */  addiu      $a1, $zero, 0x10F3
    /* 5C478 8006BC78 1380073C */  lui        $a3, %hi(D_80135C2C)
    /* 5C47C 8006BC7C 2C5CE724 */  addiu      $a3, $a3, %lo(D_80135C2C)
    /* 5C480 8006BC80 18E3020C */  jal        func_800B8C60
    /* 5C484 8006BC84 21300000 */   addu      $a2, $zero, $zero
  .L8006BC88:
    /* 5C488 8006BC88 1280103C */  lui        $s0, %hi(D_8011ACB4)
    /* 5C48C 8006BC8C B4AC1026 */  addiu      $s0, $s0, %lo(D_8011ACB4)
    /* 5C490 8006BC90 0000038E */  lw         $v1, 0x0($s0)
    /* 5C494 8006BC94 00000000 */  nop
    /* 5C498 8006BC98 40100300 */  sll        $v0, $v1, 1
    /* 5C49C 8006BC9C 21104300 */  addu       $v0, $v0, $v1
    /* 5C4A0 8006BCA0 80100200 */  sll        $v0, $v0, 2
    /* 5C4A4 8006BCA4 23104300 */  subu       $v0, $v0, $v1
    /* 5C4A8 8006BCA8 00110200 */  sll        $v0, $v0, 4
    /* 5C4AC 8006BCAC 23104300 */  subu       $v0, $v0, $v1
    /* 5C4B0 8006BCB0 C0200200 */  sll        $a0, $v0, 3
    /* 5C4B4 8006BCB4 1180013C */  lui        $at, %hi(D_801176FA)
    /* 5C4B8 8006BCB8 21082400 */  addu       $at, $at, $a0
    /* 5C4BC 8006BCBC FA762384 */  lh         $v1, %lo(D_801176FA)($at)
    /* 5C4C0 8006BCC0 01000224 */  addiu      $v0, $zero, 0x1
    /* 5C4C4 8006BCC4 4E006214 */  bne        $v1, $v0, .L8006BE00
    /* 5C4C8 8006BCC8 00000000 */   nop
    /* 5C4CC 8006BCCC 1180013C */  lui        $at, %hi(D_801176FE)
    /* 5C4D0 8006BCD0 21082400 */  addu       $at, $at, $a0
    /* 5C4D4 8006BCD4 FE762284 */  lh         $v0, %lo(D_801176FE)($at)
    /* 5C4D8 8006BCD8 00000000 */  nop
    /* 5C4DC 8006BCDC 03004228 */  slti       $v0, $v0, 0x3
    /* 5C4E0 8006BCE0 47004014 */  bnez       $v0, .L8006BE00
    /* 5C4E4 8006BCE4 23000224 */   addiu     $v0, $zero, 0x23
    /* 5C4E8 8006BCE8 1280123C */  lui        $s2, %hi(D_8011A262)
    /* 5C4EC 8006BCEC 62A25226 */  addiu      $s2, $s2, %lo(D_8011A262)
    /* 5C4F0 8006BCF0 00004386 */  lh         $v1, 0x0($s2)
    /* 5C4F4 8006BCF4 00000000 */  nop
    /* 5C4F8 8006BCF8 41006214 */  bne        $v1, $v0, .L8006BE00
    /* 5C4FC 8006BCFC 00000000 */   nop
    /* 5C500 8006BD00 1180013C */  lui        $at, %hi(D_80117763)
    /* 5C504 8006BD04 21082400 */  addu       $at, $at, $a0
    /* 5C508 8006BD08 63772290 */  lbu        $v0, %lo(D_80117763)($at)
    /* 5C50C 8006BD0C 00000000 */  nop
    /* 5C510 8006BD10 3B004014 */  bnez       $v0, .L8006BE00
    /* 5C514 8006BD14 00000000 */   nop
    /* 5C518 8006BD18 1180013C */  lui        $at, %hi(D_801177CF)
    /* 5C51C 8006BD1C 21082400 */  addu       $at, $at, $a0
    /* 5C520 8006BD20 CF772290 */  lbu        $v0, %lo(D_801177CF)($at)
    /* 5C524 8006BD24 00000000 */  nop
    /* 5C528 8006BD28 35004014 */  bnez       $v0, .L8006BE00
    /* 5C52C 8006BD2C 00000000 */   nop
    /* 5C530 8006BD30 1280033C */  lui        $v1, %hi(D_8011C308)
    /* 5C534 8006BD34 08C36324 */  addiu      $v1, $v1, %lo(D_8011C308)
    /* 5C538 8006BD38 00006294 */  lhu        $v0, 0x0($v1)
    /* 5C53C 8006BD3C 00000000 */  nop
    /* 5C540 8006BD40 00140200 */  sll        $v0, $v0, 16
    /* 5C544 8006BD44 03240200 */  sra        $a0, $v0, 16
    /* 5C548 8006BD48 C2170200 */  srl        $v0, $v0, 31
    /* 5C54C 8006BD4C 21208200 */  addu       $a0, $a0, $v0
    /* 5C550 8006BD50 02006294 */  lhu        $v0, 0x2($v1)
    /* 5C554 8006BD54 00000000 */  nop
    /* 5C558 8006BD58 00140200 */  sll        $v0, $v0, 16
    /* 5C55C 8006BD5C 032C0200 */  sra        $a1, $v0, 16
    /* 5C560 8006BD60 C2170200 */  srl        $v0, $v0, 31
    /* 5C564 8006BD64 2128A200 */  addu       $a1, $a1, $v0
    /* 5C568 8006BD68 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 5C56C 8006BD6C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 5C570 8006BD70 43200400 */  sra        $a0, $a0, 1
    /* 5C574 8006BD74 43280500 */  sra        $a1, $a1, 1
    /* 5C578 8006BD78 0000068E */  lw         $a2, 0x0($s0)
    /* 5C57C 8006BD7C 6026020C */  jal        func_80089980
    /* 5C580 8006BD80 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 5C584 8006BD84 21884000 */  addu       $s1, $v0, $zero
    /* 5C588 8006BD88 54002006 */  bltz       $s1, .L8006BEDC
    /* 5C58C 8006BD8C 40281100 */   sll       $a1, $s1, 1
    /* 5C590 8006BD90 2128B100 */  addu       $a1, $a1, $s1
    /* 5C594 8006BD94 80280500 */  sll        $a1, $a1, 2
    /* 5C598 8006BD98 2328B100 */  subu       $a1, $a1, $s1
    /* 5C59C 8006BD9C C0280500 */  sll        $a1, $a1, 3
    /* 5C5A0 8006BDA0 1180023C */  lui        $v0, %hi(D_80113EF2)
    /* 5C5A4 8006BDA4 F23E4224 */  addiu      $v0, $v0, %lo(D_80113EF2)
    /* 5C5A8 8006BDA8 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 5C5AC 8006BDAC F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 5C5B0 8006BDB0 A587030C */  jal        func_800E1E94
    /* 5C5B4 8006BDB4 2128A200 */   addu      $a1, $a1, $v0
    /* 5C5B8 8006BDB8 1680043C */  lui        $a0, %hi(D_8015885C)
    /* 5C5BC 8006BDBC 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* 5C5C0 8006BDC0 93080524 */  addiu      $a1, $zero, 0x893
    /* 5C5C4 8006BDC4 21300000 */  addu       $a2, $zero, $zero
    /* 5C5C8 8006BDC8 04E4020C */  jal        func_800B9010
    /* 5C5CC 8006BDCC 21382002 */   addu      $a3, $s1, $zero
    /* 5C5D0 8006BDD0 0000038E */  lw         $v1, 0x0($s0)
    /* 5C5D4 8006BDD4 00000000 */  nop
    /* 5C5D8 8006BDD8 40100300 */  sll        $v0, $v1, 1
    /* 5C5DC 8006BDDC 21104300 */  addu       $v0, $v0, $v1
    /* 5C5E0 8006BDE0 80100200 */  sll        $v0, $v0, 2
    /* 5C5E4 8006BDE4 23104300 */  subu       $v0, $v0, $v1
    /* 5C5E8 8006BDE8 00110200 */  sll        $v0, $v0, 4
    /* 5C5EC 8006BDEC 23104300 */  subu       $v0, $v0, $v1
    /* 5C5F0 8006BDF0 C0100200 */  sll        $v0, $v0, 3
    /* 5C5F4 8006BDF4 00004396 */  lhu        $v1, 0x0($s2)
    /* 5C5F8 8006BDF8 B4AF0108 */  j          .L8006BED0
    /* 5C5FC 8006BDFC E7FF6324 */   addiu     $v1, $v1, -0x19
  .L8006BE00:
    /* 5C600 8006BE00 1280113C */  lui        $s1, %hi(D_8011A262)
    /* 5C604 8006BE04 62A23126 */  addiu      $s1, $s1, %lo(D_8011A262)
    /* 5C608 8006BE08 00002486 */  lh         $a0, 0x0($s1)
    /* 5C60C 8006BE0C 1280103C */  lui        $s0, %hi(D_8011ACB4)
    /* 5C610 8006BE10 B4AC1026 */  addiu      $s0, $s0, %lo(D_8011ACB4)
    /* 5C614 8006BE14 0000038E */  lw         $v1, 0x0($s0)
    /* 5C618 8006BE18 00000000 */  nop
    /* 5C61C 8006BE1C 40100300 */  sll        $v0, $v1, 1
    /* 5C620 8006BE20 21104300 */  addu       $v0, $v0, $v1
    /* 5C624 8006BE24 80100200 */  sll        $v0, $v0, 2
    /* 5C628 8006BE28 23104300 */  subu       $v0, $v0, $v1
    /* 5C62C 8006BE2C 00110200 */  sll        $v0, $v0, 4
    /* 5C630 8006BE30 23104300 */  subu       $v0, $v0, $v1
    /* 5C634 8006BE34 C0180200 */  sll        $v1, $v0, 3
    /* 5C638 8006BE38 1180013C */  lui        $at, %hi(D_801176A0)
    /* 5C63C 8006BE3C 21082300 */  addu       $at, $at, $v1
    /* 5C640 8006BE40 A0762284 */  lh         $v0, %lo(D_801176A0)($at)
    /* 5C644 8006BE44 00000000 */  nop
    /* 5C648 8006BE48 23208200 */  subu       $a0, $a0, $v0
    /* 5C64C 8006BE4C 19008428 */  slti       $a0, $a0, 0x19
    /* 5C650 8006BE50 22008014 */  bnez       $a0, .L8006BEDC
    /* 5C654 8006BE54 00000000 */   nop
    /* 5C658 8006BE58 1180013C */  lui        $at, %hi(D_801176FA)
    /* 5C65C 8006BE5C 21082300 */  addu       $at, $at, $v1
    /* 5C660 8006BE60 FA762284 */  lh         $v0, %lo(D_801176FA)($at)
    /* 5C664 8006BE64 00000000 */  nop
    /* 5C668 8006BE68 06004228 */  slti       $v0, $v0, 0x6
    /* 5C66C 8006BE6C 1B004010 */  beqz       $v0, .L8006BEDC
    /* 5C670 8006BE70 00000000 */   nop
    /* 5C674 8006BE74 1180013C */  lui        $at, %hi(D_80117763)
    /* 5C678 8006BE78 21082300 */  addu       $at, $at, $v1
    /* 5C67C 8006BE7C 63772290 */  lbu        $v0, %lo(D_80117763)($at)
    /* 5C680 8006BE80 00000000 */  nop
    /* 5C684 8006BE84 15004014 */  bnez       $v0, .L8006BEDC
    /* 5C688 8006BE88 122E0524 */   addiu     $a1, $zero, 0x2E12
    /* 5C68C 8006BE8C 1680043C */  lui        $a0, %hi(D_8015885C)
    /* 5C690 8006BE90 5C88848C */  lw         $a0, %lo(D_8015885C)($a0)
    /* 5C694 8006BE94 1000A0AF */  sw         $zero, 0x10($sp)
    /* 5C698 8006BE98 1380073C */  lui        $a3, %hi(D_80135C2C)
    /* 5C69C 8006BE9C 2C5CE724 */  addiu      $a3, $a3, %lo(D_80135C2C)
    /* 5C6A0 8006BEA0 18E3020C */  jal        func_800B8C60
    /* 5C6A4 8006BEA4 21300000 */   addu      $a2, $zero, $zero
    /* 5C6A8 8006BEA8 0000038E */  lw         $v1, 0x0($s0)
    /* 5C6AC 8006BEAC 00000000 */  nop
    /* 5C6B0 8006BEB0 40100300 */  sll        $v0, $v1, 1
    /* 5C6B4 8006BEB4 21104300 */  addu       $v0, $v0, $v1
    /* 5C6B8 8006BEB8 80100200 */  sll        $v0, $v0, 2
    /* 5C6BC 8006BEBC 23104300 */  subu       $v0, $v0, $v1
    /* 5C6C0 8006BEC0 00110200 */  sll        $v0, $v0, 4
    /* 5C6C4 8006BEC4 23104300 */  subu       $v0, $v0, $v1
    /* 5C6C8 8006BEC8 C0100200 */  sll        $v0, $v0, 3
    /* 5C6CC 8006BECC 00002396 */  lhu        $v1, 0x0($s1)
  .L8006BED0:
    /* 5C6D0 8006BED0 1180013C */  lui        $at, %hi(D_801176A0)
    /* 5C6D4 8006BED4 21082200 */  addu       $at, $at, $v0
    /* 5C6D8 8006BED8 A07623A4 */  sh         $v1, %lo(D_801176A0)($at)
  .L8006BEDC:
    /* 5C6DC 8006BEDC 3000BF8F */  lw         $ra, 0x30($sp)
    /* 5C6E0 8006BEE0 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 5C6E4 8006BEE4 2800B28F */  lw         $s2, 0x28($sp)
    /* 5C6E8 8006BEE8 2400B18F */  lw         $s1, 0x24($sp)
    /* 5C6EC 8006BEEC 2000B08F */  lw         $s0, 0x20($sp)
    /* 5C6F0 8006BEF0 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 5C6F4 8006BEF4 0800E003 */  jr         $ra
    /* 5C6F8 8006BEF8 00000000 */   nop
endlabel func_8006B914
