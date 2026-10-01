.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E028C, 0x30

glabel func_800E028C
    /* D0A8C 800E028C 01004230 */  andi       $v0, $v0, 0x1
    /* D0A90 800E0290 0410E202 */  sllv       $v0, $v0, $s7
    /* D0A94 800E0294 0100F726 */  addiu      $s7, $s7, 0x1
    /* D0A98 800E0298 2000E32E */  sltiu      $v1, $s7, 0x20
    /* D0A9C 800E029C 05006014 */  bnez       $v1, .L800E02B4
    /* D0AA0 800E02A0 25B0C202 */   or        $s6, $s6, $v0
    /* D0AA4 800E02A4 0000B6AC */  sw         $s6, 0x0($a1)
    /* D0AA8 800E02A8 0400A524 */  addiu      $a1, $a1, 0x4
    /* D0AAC 800E02AC 21B00000 */  addu       $s6, $zero, $zero
    /* D0AB0 800E02B0 21B80000 */  addu       $s7, $zero, $zero
  .L800E02B4:
    /* D0AB4 800E02B4 0800E003 */  jr         $ra
    /* D0AB8 800E02B8 00000000 */   nop
endlabel func_800E028C
