.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEF38, 0x24

glabel func_800CEF38
    /* BF738 800CEF38 0600A010 */  beqz       $a1, .L800CEF54
    /* BF73C 800CEF3C 21108000 */   addu      $v0, $a0, $zero
    /* BF740 800CEF40 0400A01C */  bgtz       $a1, .L800CEF54
    /* BF744 800CEF44 0410A400 */   sllv      $v0, $a0, $a1
    /* BF748 800CEF48 27100500 */  nor        $v0, $zero, $a1
    /* BF74C 800CEF4C 01004224 */  addiu      $v0, $v0, 0x1
    /* BF750 800CEF50 07104400 */  srav       $v0, $a0, $v0
  .L800CEF54:
    /* BF754 800CEF54 0800E003 */  jr         $ra
    /* BF758 800CEF58 00000000 */   nop
endlabel func_800CEF38
