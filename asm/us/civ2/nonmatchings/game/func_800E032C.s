.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E032C, 0x24

glabel func_800E032C
    /* D0B2C 800E032C 0100C232 */  andi       $v0, $s6, 0x1
    /* D0B30 800E0330 FFFFF726 */  addiu      $s7, $s7, -0x1
    /* D0B34 800E0334 0400E016 */  bnez       $s7, .L800E0348
    /* D0B38 800E0338 42B01600 */   srl       $s6, $s6, 1
    /* D0B3C 800E033C 0000968C */  lw         $s6, 0x0($a0)
    /* D0B40 800E0340 04008424 */  addiu      $a0, $a0, 0x4
    /* D0B44 800E0344 20001724 */  addiu      $s7, $zero, 0x20
  .L800E0348:
    /* D0B48 800E0348 0800E003 */  jr         $ra
    /* D0B4C 800E034C 00000000 */   nop
endlabel func_800E032C
