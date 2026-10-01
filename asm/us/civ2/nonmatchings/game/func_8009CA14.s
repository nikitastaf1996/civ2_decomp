.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009CA14, 0xC4

glabel func_8009CA14
    /* 8D214 8009CA14 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8D218 8009CA18 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8D21C 8009CA1C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 8D220 8009CA20 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8D224 8009CA24 1280043C */  lui        $a0, %hi(D_8011EA30)
    /* 8D228 8009CA28 30EA848C */  lw         $a0, %lo(D_8011EA30)($a0)
    /* 8D22C 8009CA2C 00000000 */  nop
    /* 8D230 8009CA30 03008010 */  beqz       $a0, .L8009CA40
    /* 8D234 8009CA34 00000000 */   nop
    /* 8D238 8009CA38 435D020C */  jal        func_8009750C
    /* 8D23C 8009CA3C 00000000 */   nop
  .L8009CA40:
    /* 8D240 8009CA40 1280043C */  lui        $a0, %hi(D_8011EA1C)
    /* 8D244 8009CA44 1CEA8424 */  addiu      $a0, $a0, %lo(D_8011EA1C)
    /* 8D248 8009CA48 D5D8030C */  jal        func_800F6354
    /* 8D24C 8009CA4C 02000524 */   addiu     $a1, $zero, 0x2
    /* 8D250 8009CA50 1280043C */  lui        $a0, %hi(D_8011EA00)
    /* 8D254 8009CA54 00EA848C */  lw         $a0, %lo(D_8011EA00)($a0)
    /* 8D258 8009CA58 00000000 */  nop
    /* 8D25C 8009CA5C 03008010 */  beqz       $a0, .L8009CA6C
    /* 8D260 8009CA60 00000000 */   nop
    /* 8D264 8009CA64 435D020C */  jal        func_8009750C
    /* 8D268 8009CA68 00000000 */   nop
  .L8009CA6C:
    /* 8D26C 8009CA6C 1280043C */  lui        $a0, %hi(D_8011E9EC)
    /* 8D270 8009CA70 ECE98424 */  addiu      $a0, $a0, %lo(D_8011E9EC)
    /* 8D274 8009CA74 D5D8030C */  jal        func_800F6354
    /* 8D278 8009CA78 02000524 */   addiu     $a1, $zero, 0x2
    /* 8D27C 8009CA7C 1280023C */  lui        $v0, %hi(D_8011E72C)
    /* 8D280 8009CA80 2CE74224 */  addiu      $v0, $v0, %lo(D_8011E72C)
    /* 8D284 8009CA84 0E004010 */  beqz       $v0, .L8009CAC0
    /* 8D288 8009CA88 C0025024 */   addiu     $s0, $v0, 0x2C0
    /* 8D28C 8009CA8C 0C000212 */  beq        $s0, $v0, .L8009CAC0
    /* 8D290 8009CA90 40FD1026 */   addiu     $s0, $s0, -0x2C0
    /* 8D294 8009CA94 1280113C */  lui        $s1, %hi(D_8011E72C)
    /* 8D298 8009CA98 2CE73126 */  addiu      $s1, $s1, %lo(D_8011E72C)
  .L8009CA9C:
    /* 8D29C 8009CA9C 2800028E */  lw         $v0, 0x28($s0)
    /* 8D2A0 8009CAA0 00000000 */  nop
    /* 8D2A4 8009CAA4 20004484 */  lh         $a0, 0x20($v0)
    /* 8D2A8 8009CAA8 2400428C */  lw         $v0, 0x24($v0)
    /* 8D2AC 8009CAAC 21200402 */  addu       $a0, $s0, $a0
    /* 8D2B0 8009CAB0 09F84000 */  jalr       $v0
    /* 8D2B4 8009CAB4 02000524 */   addiu     $a1, $zero, 0x2
    /* 8D2B8 8009CAB8 F8FF1116 */  bne        $s0, $s1, .L8009CA9C
    /* 8D2BC 8009CABC 40FD1026 */   addiu     $s0, $s0, -0x2C0
  .L8009CAC0:
    /* 8D2C0 8009CAC0 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8D2C4 8009CAC4 1400B18F */  lw         $s1, 0x14($sp)
    /* 8D2C8 8009CAC8 1000B08F */  lw         $s0, 0x10($sp)
    /* 8D2CC 8009CACC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8D2D0 8009CAD0 0800E003 */  jr         $ra
    /* 8D2D4 8009CAD4 00000000 */   nop
endlabel func_8009CA14
