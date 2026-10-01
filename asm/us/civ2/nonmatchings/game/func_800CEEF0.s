.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEEF0, 0x2C

glabel func_800CEEF0
    /* BF6F0 800CEEF0 0100A224 */  addiu      $v0, $a1, 0x1
    /* BF6F4 800CEEF4 07004230 */  andi       $v0, $v0, 0x7
    /* BF6F8 800CEEF8 05008210 */  beq        $a0, $v0, .L800CEF10
    /* BF6FC 800CEEFC 21180000 */   addu      $v1, $zero, $zero
    /* BF700 800CEF00 FFFFA224 */  addiu      $v0, $a1, -0x1
    /* BF704 800CEF04 07004230 */  andi       $v0, $v0, 0x7
    /* BF708 800CEF08 02008214 */  bne        $a0, $v0, .L800CEF14
    /* BF70C 800CEF0C 00000000 */   nop
  .L800CEF10:
    /* BF710 800CEF10 01000324 */  addiu      $v1, $zero, 0x1
  .L800CEF14:
    /* BF714 800CEF14 0800E003 */  jr         $ra
    /* BF718 800CEF18 21106000 */   addu      $v0, $v1, $zero
endlabel func_800CEEF0
