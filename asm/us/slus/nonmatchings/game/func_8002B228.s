.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B228, 0xD8

glabel func_8002B228
    /* 1BA28 8002B228 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1BA2C 8002B22C 07008104 */  bgez       $a0, .L8002B24C
    /* 1BA30 8002B230 2148A000 */   addu      $t1, $a1, $zero
    /* 1BA34 8002B234 0B00C228 */  slti       $v0, $a2, 0xB
    /* 1BA38 8002B238 04004010 */  beqz       $v0, .L8002B24C
    /* 1BA3C 8002B23C 2D000224 */   addiu     $v0, $zero, 0x2D
    /* 1BA40 8002B240 23200400 */  negu       $a0, $a0
    /* 1BA44 8002B244 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 1BA48 8002B248 0100A524 */  addiu      $a1, $a1, 0x1
  .L8002B24C:
    /* 1BA4C 8002B24C 21180000 */  addu       $v1, $zero, $zero
  .L8002B250:
    /* 1BA50 8002B250 0A006228 */  slti       $v0, $v1, 0xA
  .L8002B254:
    /* 1BA54 8002B254 19004010 */  beqz       $v0, .L8002B2BC
    /* 1BA58 8002B258 2138A303 */   addu      $a3, $sp, $v1
    /* 1BA5C 8002B25C 1B008600 */  divu       $zero, $a0, $a2
    /* 1BA60 8002B260 0200C014 */  bnez       $a2, .L8002B26C
    /* 1BA64 8002B264 00000000 */   nop
    /* 1BA68 8002B268 0D000700 */  break      7
  .L8002B26C:
    /* 1BA6C 8002B26C 10400000 */  mfhi       $t0
    /* 1BA70 8002B270 00000000 */  nop
    /* 1BA74 8002B274 30000225 */  addiu      $v0, $t0, 0x30
    /* 1BA78 8002B278 0000E2A0 */  sb         $v0, 0x0($a3)
    /* 1BA7C 8002B27C 0000E290 */  lbu        $v0, 0x0($a3)
    /* 1BA80 8002B280 00000000 */  nop
    /* 1BA84 8002B284 3A00422C */  sltiu      $v0, $v0, 0x3A
    /* 1BA88 8002B288 02004014 */  bnez       $v0, .L8002B294
    /* 1BA8C 8002B28C 37000225 */   addiu     $v0, $t0, 0x37
    /* 1BA90 8002B290 0000E2A0 */  sb         $v0, 0x0($a3)
  .L8002B294:
    /* 1BA94 8002B294 1B008600 */  divu       $zero, $a0, $a2
    /* 1BA98 8002B298 0200C014 */  bnez       $a2, .L8002B2A4
    /* 1BA9C 8002B29C 00000000 */   nop
    /* 1BAA0 8002B2A0 0D000700 */  break      7
  .L8002B2A4:
    /* 1BAA4 8002B2A4 12200000 */  mflo       $a0
    /* 1BAA8 8002B2A8 00000000 */  nop
    /* 1BAAC 8002B2AC E8FF8014 */  bnez       $a0, .L8002B250
    /* 1BAB0 8002B2B0 01006324 */   addiu     $v1, $v1, 0x1
    /* 1BAB4 8002B2B4 E7FF6010 */  beqz       $v1, .L8002B254
    /* 1BAB8 8002B2B8 0A006228 */   slti      $v0, $v1, 0xA
  .L8002B2BC:
    /* 1BABC 8002B2BC 05006010 */  beqz       $v1, .L8002B2D4
    /* 1BAC0 8002B2C0 2110A303 */   addu      $v0, $sp, $v1
    /* 1BAC4 8002B2C4 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 1BAC8 8002B2C8 08006004 */  bltz       $v1, .L8002B2EC
    /* 1BACC 8002B2CC 00000000 */   nop
  .L8002B2D0:
    /* 1BAD0 8002B2D0 2110A303 */  addu       $v0, $sp, $v1
  .L8002B2D4:
    /* 1BAD4 8002B2D4 00004290 */  lbu        $v0, 0x0($v0)
    /* 1BAD8 8002B2D8 00000000 */  nop
    /* 1BADC 8002B2DC 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 1BAE0 8002B2E0 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 1BAE4 8002B2E4 FAFF6104 */  bgez       $v1, .L8002B2D0
    /* 1BAE8 8002B2E8 0100A524 */   addiu     $a1, $a1, 0x1
  .L8002B2EC:
    /* 1BAEC 8002B2EC 0000A0A0 */  sb         $zero, 0x0($a1)
    /* 1BAF0 8002B2F0 2310A900 */  subu       $v0, $a1, $t1
    /* 1BAF4 8002B2F4 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 1BAF8 8002B2F8 0800E003 */  jr         $ra
    /* 1BAFC 8002B2FC 00000000 */   nop
endlabel func_8002B228
