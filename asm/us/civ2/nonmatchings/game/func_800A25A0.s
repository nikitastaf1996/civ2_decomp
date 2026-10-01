.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A25A0, 0x54

glabel func_800A25A0
    /* 92DA0 800A25A0 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* 92DA4 800A25A4 00008290 */  lbu        $v0, 0x0($a0)
    /* 92DA8 800A25A8 00000000 */  nop
    /* 92DAC 800A25AC 0E004010 */  beqz       $v0, .L800A25E8
    /* 92DB0 800A25B0 21184000 */   addu      $v1, $v0, $zero
    /* 92DB4 800A25B4 7C000624 */  addiu      $a2, $zero, 0x7C
    /* 92DB8 800A25B8 09000524 */  addiu      $a1, $zero, 0x9
    /* 92DBC 800A25BC 00160300 */  sll        $v0, $v1, 24
  .L800A25C0:
    /* 92DC0 800A25C0 03160200 */  sra        $v0, $v0, 24
    /* 92DC4 800A25C4 02004614 */  bne        $v0, $a2, .L800A25D0
    /* 92DC8 800A25C8 00000000 */   nop
    /* 92DCC 800A25CC 000085A0 */  sb         $a1, 0x0($a0)
  .L800A25D0:
    /* 92DD0 800A25D0 01008424 */  addiu      $a0, $a0, 0x1
    /* 92DD4 800A25D4 00008390 */  lbu        $v1, 0x0($a0)
    /* 92DD8 800A25D8 00008280 */  lb         $v0, 0x0($a0)
    /* 92DDC 800A25DC 00000000 */  nop
    /* 92DE0 800A25E0 F7FF4014 */  bnez       $v0, .L800A25C0
    /* 92DE4 800A25E4 00160300 */   sll       $v0, $v1, 24
  .L800A25E8:
    /* 92DE8 800A25E8 0800BD27 */  addiu      $sp, $sp, 0x8
    /* 92DEC 800A25EC 0800E003 */  jr         $ra
    /* 92DF0 800A25F0 00000000 */   nop
endlabel func_800A25A0
