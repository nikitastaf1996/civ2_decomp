.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEE38, 0x64

glabel func_800CEE38
    /* BF638 800CEE38 0300801C */  bgtz       $a0, .L800CEE48
    /* BF63C 800CEE3C 21108000 */   addu      $v0, $a0, $zero
    /* BF640 800CEE40 27100400 */  nor        $v0, $zero, $a0
    /* BF644 800CEE44 01004224 */  addiu      $v0, $v0, 0x1
  .L800CEE48:
    /* BF648 800CEE48 21204000 */  addu       $a0, $v0, $zero
    /* BF64C 800CEE4C 0300A01C */  bgtz       $a1, .L800CEE5C
    /* BF650 800CEE50 2110A000 */   addu      $v0, $a1, $zero
    /* BF654 800CEE54 27100500 */  nor        $v0, $zero, $a1
    /* BF658 800CEE58 01004224 */  addiu      $v0, $v0, 0x1
  .L800CEE5C:
    /* BF65C 800CEE5C 21284000 */  addu       $a1, $v0, $zero
    /* BF660 800CEE60 21188500 */  addu       $v1, $a0, $a1
    /* BF664 800CEE64 2A10A400 */  slt        $v0, $a1, $a0
    /* BF668 800CEE68 06004010 */  beqz       $v0, .L800CEE84
    /* BF66C 800CEE6C 43180300 */   sra       $v1, $v1, 1
    /* BF670 800CEE70 23106500 */  subu       $v0, $v1, $a1
    /* BF674 800CEE74 01004224 */  addiu      $v0, $v0, 0x1
    /* BF678 800CEE78 43100200 */  sra        $v0, $v0, 1
    /* BF67C 800CEE7C A53B0308 */  j          .L800CEE94
    /* BF680 800CEE80 23108200 */   subu      $v0, $a0, $v0
  .L800CEE84:
    /* BF684 800CEE84 23106400 */  subu       $v0, $v1, $a0
    /* BF688 800CEE88 01004224 */  addiu      $v0, $v0, 0x1
    /* BF68C 800CEE8C 43100200 */  sra        $v0, $v0, 1
    /* BF690 800CEE90 2310A200 */  subu       $v0, $a1, $v0
  .L800CEE94:
    /* BF694 800CEE94 0800E003 */  jr         $ra
    /* BF698 800CEE98 00000000 */   nop
endlabel func_800CEE38
