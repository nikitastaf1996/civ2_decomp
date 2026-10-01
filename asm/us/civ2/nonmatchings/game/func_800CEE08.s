.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEE08, 0x30

glabel func_800CEE08
    /* BF608 800CEE08 0300801C */  bgtz       $a0, .L800CEE18
    /* BF60C 800CEE0C 21188000 */   addu      $v1, $a0, $zero
    /* BF610 800CEE10 27180400 */  nor        $v1, $zero, $a0
    /* BF614 800CEE14 01006324 */  addiu      $v1, $v1, 0x1
  .L800CEE18:
    /* BF618 800CEE18 21206000 */  addu       $a0, $v1, $zero
    /* BF61C 800CEE1C 0300A01C */  bgtz       $a1, .L800CEE2C
    /* BF620 800CEE20 2118A000 */   addu      $v1, $a1, $zero
    /* BF624 800CEE24 27180500 */  nor        $v1, $zero, $a1
    /* BF628 800CEE28 01006324 */  addiu      $v1, $v1, 0x1
  .L800CEE2C:
    /* BF62C 800CEE2C 21108300 */  addu       $v0, $a0, $v1
    /* BF630 800CEE30 0800E003 */  jr         $ra
    /* BF634 800CEE34 43100200 */   sra       $v0, $v0, 1
endlabel func_800CEE08
