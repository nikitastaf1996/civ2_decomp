.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B4514, 0x4C

glabel func_800B4514
    /* A4D14 800B4514 2C00838C */  lw         $v1, 0x2C($a0)
    /* A4D18 800B4518 01000224 */  addiu      $v0, $zero, 0x1
    /* A4D1C 800B451C 0E006210 */  beq        $v1, $v0, .L800B4558
    /* A4D20 800B4520 2110A000 */   addu      $v0, $a1, $zero
    /* A4D24 800B4524 4400828C */  lw         $v0, 0x44($a0)
    /* A4D28 800B4528 00000000 */  nop
    /* A4D2C 800B452C 1A00A200 */  div        $zero, $a1, $v0
    /* A4D30 800B4530 02004014 */  bnez       $v0, .L800B453C
    /* A4D34 800B4534 00000000 */   nop
    /* A4D38 800B4538 0D000700 */  break      7
  .L800B453C:
    /* A4D3C 800B453C FFFF0124 */  addiu      $at, $zero, -0x1
    /* A4D40 800B4540 04004114 */  bne        $v0, $at, .L800B4554
    /* A4D44 800B4544 0080013C */   lui       $at, (0x80000000 >> 16)
    /* A4D48 800B4548 0200A114 */  bne        $a1, $at, .L800B4554
    /* A4D4C 800B454C 00000000 */   nop
    /* A4D50 800B4550 0D000600 */  break      6
  .L800B4554:
    /* A4D54 800B4554 12100000 */  mflo       $v0
  .L800B4558:
    /* A4D58 800B4558 0800E003 */  jr         $ra
    /* A4D5C 800B455C 00000000 */   nop
endlabel func_800B4514
