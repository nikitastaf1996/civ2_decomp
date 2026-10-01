.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80071AE8, 0x100

glabel func_80071AE8
    /* 622E8 80071AE8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 622EC 80071AEC 2000BFAF */  sw         $ra, 0x20($sp)
    /* 622F0 80071AF0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 622F4 80071AF4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 622F8 80071AF8 F853020C */  jal        func_80094FE0
    /* 622FC 80071AFC 21888000 */   addu      $s1, $a0, $zero
    /* 62300 80071B00 1280043C */  lui        $a0, %hi(D_8011FCF8)
    /* 62304 80071B04 F8FC8424 */  addiu      $a0, $a0, %lo(D_8011FCF8)
    /* 62308 80071B08 A587030C */  jal        func_800E1E94
    /* 6230C 80071B0C 21284000 */   addu      $a1, $v0, $zero
    /* 62310 80071B10 5D54020C */  jal        func_80095174
    /* 62314 80071B14 21202002 */   addu      $a0, $s1, $zero
    /* 62318 80071B18 1280043C */  lui        $a0, %hi(D_8011FD48)
    /* 6231C 80071B1C 48FD8424 */  addiu      $a0, $a0, %lo(D_8011FD48)
    /* 62320 80071B20 A587030C */  jal        func_800E1E94
    /* 62324 80071B24 21284000 */   addu      $a1, $v0, $zero
    /* 62328 80071B28 1280043C */  lui        $a0, %hi(D_80121340)
    /* 6232C 80071B2C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 62330 80071B30 CB1A030C */  jal        func_800C6B2C
    /* 62334 80071B34 21800000 */   addu      $s0, $zero, $zero
  .L80071B38:
    /* 62338 80071B38 5D00022A */  slti       $v0, $s0, 0x5D
    /* 6233C 80071B3C 16004010 */  beqz       $v0, .L80071B98
    /* 62340 80071B40 21202002 */   addu      $a0, $s1, $zero
    /* 62344 80071B44 8ACA010C */  jal        func_80072A28
    /* 62348 80071B48 21280002 */   addu      $a1, $s0, $zero
    /* 6234C 80071B4C 10004010 */  beqz       $v0, .L80071B90
    /* 62350 80071B50 00111000 */   sll       $v0, $s0, 4
    /* 62354 80071B54 1280043C */  lui        $a0, %hi(D_80121340)
    /* 62358 80071B58 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 6235C 80071B5C 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* 62360 80071B60 21082200 */  addu       $at, $at, $v0
    /* 62364 80071B64 A0C2258C */  lw         $a1, %lo(D_8010C2A0)($at)
    /* 62368 80071B68 651B030C */  jal        func_800C6D94
    /* 6236C 80071B6C 00000000 */   nop
    /* 62370 80071B70 1280043C */  lui        $a0, %hi(D_80121340)
    /* 62374 80071B74 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 62378 80071B78 ED1A030C */  jal        func_800C6BB4
    /* 6237C 80071B7C 00000000 */   nop
    /* 62380 80071B80 1280043C */  lui        $a0, %hi(D_80121340)
    /* 62384 80071B84 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* 62388 80071B88 CD1A030C */  jal        func_800C6B34
    /* 6238C 80071B8C 00000000 */   nop
  .L80071B90:
    /* 62390 80071B90 CEC60108 */  j          .L80071B38
    /* 62394 80071B94 01001026 */   addiu     $s0, $s0, 0x1
  .L80071B98:
    /* 62398 80071B98 1280043C */  lui        $a0, %hi(D_8011FD98)
    /* 6239C 80071B9C 98FD8424 */  addiu      $a0, $a0, %lo(D_8011FD98)
    /* 623A0 80071BA0 1280053C */  lui        $a1, %hi(D_80121340)
    /* 623A4 80071BA4 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 623A8 80071BA8 A587030C */  jal        func_800E1E94
    /* 623AC 80071BAC 00000000 */   nop
    /* 623B0 80071BB0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 623B4 80071BB4 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* 623B8 80071BB8 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* 623BC 80071BBC 2A0B0524 */  addiu      $a1, $zero, 0xB2A
    /* 623C0 80071BC0 1380073C */  lui        $a3, %hi(D_80135B98)
    /* 623C4 80071BC4 985BE724 */  addiu      $a3, $a3, %lo(D_80135B98)
    /* 623C8 80071BC8 18E3020C */  jal        func_800B8C60
    /* 623CC 80071BCC 21300000 */   addu      $a2, $zero, $zero
    /* 623D0 80071BD0 2000BF8F */  lw         $ra, 0x20($sp)
    /* 623D4 80071BD4 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 623D8 80071BD8 1800B08F */  lw         $s0, 0x18($sp)
    /* 623DC 80071BDC 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 623E0 80071BE0 0800E003 */  jr         $ra
    /* 623E4 80071BE4 00000000 */   nop
endlabel func_80071AE8
