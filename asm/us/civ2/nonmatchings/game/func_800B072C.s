.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B072C, 0xA0

glabel func_800B072C
    /* A0F2C 800B072C F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* A0F30 800B0730 40100500 */  sll        $v0, $a1, 1
    /* A0F34 800B0734 21104500 */  addu       $v0, $v0, $a1
    /* A0F38 800B0738 40100200 */  sll        $v0, $v0, 1
    /* A0F3C 800B073C 40180400 */  sll        $v1, $a0, 1
    /* A0F40 800B0740 21186400 */  addu       $v1, $v1, $a0
    /* A0F44 800B0744 80180300 */  sll        $v1, $v1, 2
    /* A0F48 800B0748 23186400 */  subu       $v1, $v1, $a0
    /* A0F4C 800B074C 00190300 */  sll        $v1, $v1, 4
    /* A0F50 800B0750 23186400 */  subu       $v1, $v1, $a0
    /* A0F54 800B0754 C0180300 */  sll        $v1, $v1, 3
    /* A0F58 800B0758 21304300 */  addu       $a2, $v0, $v1
    /* A0F5C 800B075C 1180013C */  lui        $at, %hi(D_80117A8D)
    /* A0F60 800B0760 21082600 */  addu       $at, $at, $a2
    /* A0F64 800B0764 8D7A2280 */  lb         $v0, %lo(D_80117A8D)($at)
    /* A0F68 800B0768 00000000 */  nop
    /* A0F6C 800B076C 03004018 */  blez       $v0, .L800B077C
    /* A0F70 800B0770 21184000 */   addu      $v1, $v0, $zero
    /* A0F74 800B0774 EDC10208 */  j          .L800B07B4
    /* A0F78 800B0778 23100300 */   negu      $v0, $v1
  .L800B077C:
    /* A0F7C 800B077C 40180500 */  sll        $v1, $a1, 1
    /* A0F80 800B0780 21186500 */  addu       $v1, $v1, $a1
    /* A0F84 800B0784 40180300 */  sll        $v1, $v1, 1
    /* A0F88 800B0788 40100400 */  sll        $v0, $a0, 1
    /* A0F8C 800B078C 21104400 */  addu       $v0, $v0, $a0
    /* A0F90 800B0790 80100200 */  sll        $v0, $v0, 2
    /* A0F94 800B0794 23104400 */  subu       $v0, $v0, $a0
    /* A0F98 800B0798 00110200 */  sll        $v0, $v0, 4
    /* A0F9C 800B079C 23104400 */  subu       $v0, $v0, $a0
    /* A0FA0 800B07A0 C0100200 */  sll        $v0, $v0, 3
    /* A0FA4 800B07A4 21186200 */  addu       $v1, $v1, $v0
    /* A0FA8 800B07A8 1180013C */  lui        $at, %hi(D_80117A8D)
    /* A0FAC 800B07AC 21082300 */  addu       $at, $at, $v1
    /* A0FB0 800B07B0 8D7A2290 */  lbu        $v0, %lo(D_80117A8D)($at)
  .L800B07B4:
    /* A0FB4 800B07B4 1180013C */  lui        $at, %hi(D_80117A8D)
    /* A0FB8 800B07B8 21082600 */  addu       $at, $at, $a2
    /* A0FBC 800B07BC 8D7A22A0 */  sb         $v0, %lo(D_80117A8D)($at)
    /* A0FC0 800B07C0 0800BD27 */  addiu      $sp, $sp, 0x8
    /* A0FC4 800B07C4 0800E003 */  jr         $ra
    /* A0FC8 800B07C8 00000000 */   nop
endlabel func_800B072C
