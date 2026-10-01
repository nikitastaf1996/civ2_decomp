.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEB2C, 0xA8

glabel func_800CEB2C
    /* BF32C 800CEB2C F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* BF330 800CEB30 2148C000 */  addu       $t1, $a2, $zero
    /* BF334 800CEB34 00340600 */  sll        $a2, $a2, 16
    /* BF338 800CEB38 1D00C018 */  blez       $a2, .L800CEBB0
    /* BF33C 800CEB3C 21380000 */   addu      $a3, $zero, $zero
    /* BF340 800CEB40 00140900 */  sll        $v0, $t1, 16
    /* BF344 800CEB44 03440200 */  sra        $t0, $v0, 16
  .L800CEB48:
    /* BF348 800CEB48 00008390 */  lbu        $v1, 0x0($a0)
    /* BF34C 800CEB4C 0000A690 */  lbu        $a2, 0x0($a1)
    /* BF350 800CEB50 9FFF6224 */  addiu      $v0, $v1, -0x61
    /* BF354 800CEB54 1A00422C */  sltiu      $v0, $v0, 0x1A
    /* BF358 800CEB58 02004010 */  beqz       $v0, .L800CEB64
    /* BF35C 800CEB5C 9FFFC224 */   addiu     $v0, $a2, -0x61
    /* BF360 800CEB60 E0FF6324 */  addiu      $v1, $v1, -0x20
  .L800CEB64:
    /* BF364 800CEB64 FF004230 */  andi       $v0, $v0, 0xFF
    /* BF368 800CEB68 1A00422C */  sltiu      $v0, $v0, 0x1A
    /* BF36C 800CEB6C 02004010 */  beqz       $v0, .L800CEB78
    /* BF370 800CEB70 00000000 */   nop
    /* BF374 800CEB74 E0FFC624 */  addiu      $a2, $a2, -0x20
  .L800CEB78:
    /* BF378 800CEB78 FF006330 */  andi       $v1, $v1, 0xFF
    /* BF37C 800CEB7C FF00C230 */  andi       $v0, $a2, 0xFF
    /* BF380 800CEB80 07006214 */  bne        $v1, $v0, .L800CEBA0
    /* BF384 800CEB84 00140900 */   sll       $v0, $t1, 16
    /* BF388 800CEB88 01008424 */  addiu      $a0, $a0, 0x1
    /* BF38C 800CEB8C 0100E724 */  addiu      $a3, $a3, 0x1
    /* BF390 800CEB90 2A10E800 */  slt        $v0, $a3, $t0
    /* BF394 800CEB94 ECFF4014 */  bnez       $v0, .L800CEB48
    /* BF398 800CEB98 0100A524 */   addiu     $a1, $a1, 0x1
    /* BF39C 800CEB9C 00140900 */  sll        $v0, $t1, 16
  .L800CEBA0:
    /* BF3A0 800CEBA0 03140200 */  sra        $v0, $v0, 16
    /* BF3A4 800CEBA4 2A10E200 */  slt        $v0, $a3, $v0
    /* BF3A8 800CEBA8 03004014 */  bnez       $v0, .L800CEBB8
    /* BF3AC 800CEBAC 00000000 */   nop
  .L800CEBB0:
    /* BF3B0 800CEBB0 F23A0308 */  j          .L800CEBC8
    /* BF3B4 800CEBB4 21100000 */   addu      $v0, $zero, $zero
  .L800CEBB8:
    /* BF3B8 800CEBB8 00008390 */  lbu        $v1, 0x0($a0)
    /* BF3BC 800CEBBC 0000A290 */  lbu        $v0, 0x0($a1)
    /* BF3C0 800CEBC0 00000000 */  nop
    /* BF3C4 800CEBC4 23106200 */  subu       $v0, $v1, $v0
  .L800CEBC8:
    /* BF3C8 800CEBC8 0800BD27 */  addiu      $sp, $sp, 0x8
    /* BF3CC 800CEBCC 0800E003 */  jr         $ra
    /* BF3D0 800CEBD0 00000000 */   nop
endlabel func_800CEB2C
