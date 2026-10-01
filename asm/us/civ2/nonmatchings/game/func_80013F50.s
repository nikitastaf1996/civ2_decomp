.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80013F50, 0xC4

glabel func_80013F50
    /* 4750 80013F50 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 4754 80013F54 07008104 */  bgez       $a0, .L80013F74
    /* 4758 80013F58 2148A000 */   addu      $t1, $a1, $zero
    /* 475C 80013F5C 0B00C228 */  slti       $v0, $a2, 0xB
    /* 4760 80013F60 04004010 */  beqz       $v0, .L80013F74
    /* 4764 80013F64 2D000224 */   addiu     $v0, $zero, 0x2D
    /* 4768 80013F68 23200400 */  negu       $a0, $a0
    /* 476C 80013F6C 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 4770 80013F70 0100A524 */  addiu      $a1, $a1, 0x1
  .L80013F74:
    /* 4774 80013F74 21180000 */  addu       $v1, $zero, $zero
    /* 4778 80013F78 2140A003 */  addu       $t0, $sp, $zero
  .L80013F7C:
    /* 477C 80013F7C 0A006228 */  slti       $v0, $v1, 0xA
  .L80013F80:
    /* 4780 80013F80 13004010 */  beqz       $v0, .L80013FD0
    /* 4784 80013F84 00000000 */   nop
    /* 4788 80013F88 1B008600 */  divu       $zero, $a0, $a2
    /* 478C 80013F8C 0200C014 */  bnez       $a2, .L80013F98
    /* 4790 80013F90 00000000 */   nop
    /* 4794 80013F94 0D000700 */  break      7
  .L80013F98:
    /* 4798 80013F98 12200000 */  mflo       $a0
    /* 479C 80013F9C 10380000 */  mfhi       $a3
    /* 47A0 80013FA0 3000E224 */  addiu      $v0, $a3, 0x30
    /* 47A4 80013FA4 000002A1 */  sb         $v0, 0x0($t0)
    /* 47A8 80013FA8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 47AC 80013FAC 3A00422C */  sltiu      $v0, $v0, 0x3A
    /* 47B0 80013FB0 02004014 */  bnez       $v0, .L80013FBC
    /* 47B4 80013FB4 3700E224 */   addiu     $v0, $a3, 0x37
    /* 47B8 80013FB8 000002A1 */  sb         $v0, 0x0($t0)
  .L80013FBC:
    /* 47BC 80013FBC 01000825 */  addiu      $t0, $t0, 0x1
    /* 47C0 80013FC0 EEFF8014 */  bnez       $a0, .L80013F7C
    /* 47C4 80013FC4 01006324 */   addiu     $v1, $v1, 0x1
    /* 47C8 80013FC8 EDFF6010 */  beqz       $v1, .L80013F80
    /* 47CC 80013FCC 0A006228 */   slti      $v0, $v1, 0xA
  .L80013FD0:
    /* 47D0 80013FD0 04006010 */  beqz       $v1, .L80013FE4
    /* 47D4 80013FD4 00000000 */   nop
    /* 47D8 80013FD8 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 47DC 80013FDC 08006004 */  bltz       $v1, .L80014000
    /* 47E0 80013FE0 00000000 */   nop
  .L80013FE4:
    /* 47E4 80013FE4 21207D00 */  addu       $a0, $v1, $sp
  .L80013FE8:
    /* 47E8 80013FE8 00008290 */  lbu        $v0, 0x0($a0)
    /* 47EC 80013FEC FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 47F0 80013FF0 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 47F4 80013FF4 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 47F8 80013FF8 FBFF6104 */  bgez       $v1, .L80013FE8
    /* 47FC 80013FFC 0100A524 */   addiu     $a1, $a1, 0x1
  .L80014000:
    /* 4800 80014000 0000A0A0 */  sb         $zero, 0x0($a1)
    /* 4804 80014004 2310A900 */  subu       $v0, $a1, $t1
    /* 4808 80014008 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 480C 8001400C 0800E003 */  jr         $ra
    /* 4810 80014010 00000000 */   nop
endlabel func_80013F50
