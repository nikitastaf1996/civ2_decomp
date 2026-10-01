.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1F28, 0x1C

glabel func_800B1F28
    /* A2728 800B1F28 5801828C */  lw         $v0, 0x158($a0)
    /* A272C 800B1F2C 00000000 */  nop
    /* A2730 800B1F30 02004014 */  bnez       $v0, .L800B1F3C
    /* A2734 800B1F34 00000000 */   nop
    /* A2738 800B1F38 0C000224 */  addiu      $v0, $zero, 0xC
  .L800B1F3C:
    /* A273C 800B1F3C 0800E003 */  jr         $ra
    /* A2740 800B1F40 00000000 */   nop
endlabel func_800B1F28
