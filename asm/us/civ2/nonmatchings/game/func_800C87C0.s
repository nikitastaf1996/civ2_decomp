.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C87C0, 0x50

glabel func_800C87C0
    /* B8FC0 800C87C0 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* B8FC4 800C87C4 21280000 */  addu       $a1, $zero, $zero
    /* B8FC8 800C87C8 0D008018 */  blez       $a0, .L800C8800
    /* B8FCC 800C87CC 21180000 */   addu      $v1, $zero, $zero
    /* B8FD0 800C87D0 0400A228 */  slti       $v0, $a1, 0x4
  .L800C87D4:
    /* B8FD4 800C87D4 02004014 */  bnez       $v0, .L800C87E0
    /* B8FD8 800C87D8 01006324 */   addiu     $v1, $v1, 0x1
    /* B8FDC 800C87DC 01006324 */  addiu      $v1, $v1, 0x1
  .L800C87E0:
    /* B8FE0 800C87E0 0600A228 */  slti       $v0, $a1, 0x6
    /* B8FE4 800C87E4 02004014 */  bnez       $v0, .L800C87F0
    /* B8FE8 800C87E8 00000000 */   nop
    /* B8FEC 800C87EC 01006324 */  addiu      $v1, $v1, 0x1
  .L800C87F0:
    /* B8FF0 800C87F0 0100A524 */  addiu      $a1, $a1, 0x1
    /* B8FF4 800C87F4 2A10A400 */  slt        $v0, $a1, $a0
    /* B8FF8 800C87F8 F6FF4014 */  bnez       $v0, .L800C87D4
    /* B8FFC 800C87FC 0400A228 */   slti      $v0, $a1, 0x4
  .L800C8800:
    /* B9000 800C8800 21106000 */  addu       $v0, $v1, $zero
    /* B9004 800C8804 0800BD27 */  addiu      $sp, $sp, 0x8
    /* B9008 800C8808 0800E003 */  jr         $ra
    /* B900C 800C880C 00000000 */   nop
endlabel func_800C87C0
