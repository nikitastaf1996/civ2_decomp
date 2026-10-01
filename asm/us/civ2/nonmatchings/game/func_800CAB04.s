.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CAB04, 0x148

glabel func_800CAB04
    /* BB304 800CAB04 28FDBD27 */  addiu      $sp, $sp, -0x2D8
    /* BB308 800CAB08 D002BFAF */  sw         $ra, 0x2D0($sp)
    /* BB30C 800CAB0C CC02B1AF */  sw         $s1, 0x2CC($sp)
    /* BB310 800CAB10 C802B0AF */  sw         $s0, 0x2C8($sp)
    /* BB314 800CAB14 2800A427 */  addiu      $a0, $sp, 0x28
    /* BB318 800CAB18 ADC5020C */  jal        func_800B16B4
    /* BB31C 800CAB1C 00200524 */   addiu     $a1, $zero, 0x2000
    /* BB320 800CAB20 01000224 */  addiu      $v0, $zero, 0x1
    /* BB324 800CAB24 1000A0AF */  sw         $zero, 0x10($sp)
    /* BB328 800CAB28 1400A0AF */  sw         $zero, 0x14($sp)
    /* BB32C 800CAB2C 1800A0AF */  sw         $zero, 0x18($sp)
    /* BB330 800CAB30 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* BB334 800CAB34 2000A2AF */  sw         $v0, 0x20($sp)
    /* BB338 800CAB38 2800A427 */  addiu      $a0, $sp, 0x28
    /* BB33C 800CAB3C 1680053C */  lui        $a1, %hi(D_80158EF0)
    /* BB340 800CAB40 F08EA524 */  addiu      $a1, $a1, %lo(D_80158EF0)
    /* BB344 800CAB44 0100063C */  lui        $a2, (0x1007F >> 16)
    /* BB348 800CAB48 7F00C634 */  ori        $a2, $a2, (0x1007F & 0xFFFF)
    /* BB34C 800CAB4C 2CE0020C */  jal        func_800B80B0
    /* BB350 800CAB50 21380000 */   addu      $a3, $zero, $zero
    /* BB354 800CAB54 21800000 */  addu       $s0, $zero, $zero
    /* BB358 800CAB58 01001124 */  addiu      $s1, $zero, 0x1
  .L800CAB5C:
    /* BB35C 800CAB5C 57DF010C */  jal        func_80077D5C
    /* BB360 800CAB60 21202002 */   addu      $a0, $s1, $zero
    /* BB364 800CAB64 08004010 */  beqz       $v0, .L800CAB88
    /* BB368 800CAB68 00000000 */   nop
    /* BB36C 800CAB6C 5D54020C */  jal        func_80095174
    /* BB370 800CAB70 21202002 */   addu      $a0, $s1, $zero
    /* BB374 800CAB74 2800A427 */  addiu      $a0, $sp, 0x28
    /* BB378 800CAB78 21284000 */  addu       $a1, $v0, $zero
    /* BB37C 800CAB7C A8C9020C */  jal        func_800B26A0
    /* BB380 800CAB80 21302002 */   addu      $a2, $s1, $zero
    /* BB384 800CAB84 01001024 */  addiu      $s0, $zero, 0x1
  .L800CAB88:
    /* BB388 800CAB88 01003126 */  addiu      $s1, $s1, 0x1
    /* BB38C 800CAB8C 0800222A */  slti       $v0, $s1, 0x8
    /* BB390 800CAB90 F2FF4014 */  bnez       $v0, .L800CAB5C
    /* BB394 800CAB94 00000000 */   nop
    /* BB398 800CAB98 0D000016 */  bnez       $s0, .L800CABD0
    /* BB39C 800CAB9C 2800B027 */   addiu     $s0, $sp, 0x28
    /* BB3A0 800CABA0 1000A0AF */  sw         $zero, 0x10($sp)
    /* BB3A4 800CABA4 1400A0AF */  sw         $zero, 0x14($sp)
    /* BB3A8 800CABA8 1800A0AF */  sw         $zero, 0x18($sp)
    /* BB3AC 800CABAC 1680043C */  lui        $a0, %hi(D_80158EF0)
    /* BB3B0 800CABB0 F08E8424 */  addiu      $a0, $a0, %lo(D_80158EF0)
    /* BB3B4 800CABB4 0100053C */  lui        $a1, (0x117D8 >> 16)
    /* BB3B8 800CABB8 D817A534 */  ori        $a1, $a1, (0x117D8 & 0xFFFF)
    /* BB3BC 800CABBC 21300000 */  addu       $a2, $zero, $zero
    /* BB3C0 800CABC0 B4E2020C */  jal        func_800B8AD0
    /* BB3C4 800CABC4 21380000 */   addu      $a3, $zero, $zero
    /* BB3C8 800CABC8 0B2B0308 */  j          .L800CAC2C
    /* BB3CC 800CABCC 2800A427 */   addiu     $a0, $sp, 0x28
  .L800CABD0:
    /* BB3D0 800CABD0 21200002 */  addu       $a0, $s0, $zero
    /* BB3D4 800CABD4 52DF020C */  jal        func_800B7D48
    /* BB3D8 800CABD8 21280000 */   addu      $a1, $zero, $zero
    /* BB3DC 800CABDC 21884000 */  addu       $s1, $v0, $zero
    /* BB3E0 800CABE0 12002006 */  bltz       $s1, .L800CAC2C
    /* BB3E4 800CABE4 21200002 */   addu      $a0, $s0, $zero
    /* BB3E8 800CABE8 00841100 */  sll        $s0, $s1, 16
    /* BB3EC 800CABEC 03841000 */  sra        $s0, $s0, 16
    /* BB3F0 800CABF0 742C030C */  jal        func_800CB1D0
    /* BB3F4 800CABF4 21200002 */   addu      $a0, $s0, $zero
    /* BB3F8 800CABF8 952C030C */  jal        func_800CB254
    /* BB3FC 800CABFC 21200002 */   addu      $a0, $s0, $zero
    /* BB400 800CAC00 00140200 */  sll        $v0, $v0, 16
    /* BB404 800CAC04 09004014 */  bnez       $v0, .L800CAC2C
    /* BB408 800CAC08 2800A427 */   addiu     $a0, $sp, 0x28
    /* BB40C 800CAC0C 1280023C */  lui        $v0, %hi(D_8011A275)
    /* BB410 800CAC10 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* BB414 800CAC14 01000524 */  addiu      $a1, $zero, 0x1
    /* BB418 800CAC18 04282502 */  sllv       $a1, $a1, $s1
    /* BB41C 800CAC1C 21202002 */  addu       $a0, $s1, $zero
    /* BB420 800CAC20 A824030C */  jal        func_800C92A0
    /* BB424 800CAC24 24284500 */   and       $a1, $v0, $a1
    /* BB428 800CAC28 2800A427 */  addiu      $a0, $sp, 0x28
  .L800CAC2C:
    /* BB42C 800CAC2C 0AC7020C */  jal        func_800B1C28
    /* BB430 800CAC30 02000524 */   addiu     $a1, $zero, 0x2
    /* BB434 800CAC34 D002BF8F */  lw         $ra, 0x2D0($sp)
    /* BB438 800CAC38 CC02B18F */  lw         $s1, 0x2CC($sp)
    /* BB43C 800CAC3C C802B08F */  lw         $s0, 0x2C8($sp)
    /* BB440 800CAC40 D802BD27 */  addiu      $sp, $sp, 0x2D8
    /* BB444 800CAC44 0800E003 */  jr         $ra
    /* BB448 800CAC48 00000000 */   nop
endlabel func_800CAB04
