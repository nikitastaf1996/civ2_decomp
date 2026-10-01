.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C8368, 0x6C

glabel func_800C8368
    /* B8B68 800C8368 FFFF8B24 */  addiu      $t3, $a0, -0x1
  .L800C836C:
    /* B8B6C 800C836C 21480000 */  addu       $t1, $zero, $zero
    /* B8B70 800C8370 21500000 */  addu       $t2, $zero, $zero
  .L800C8374:
    /* B8B74 800C8374 2A104B01 */  slt        $v0, $t2, $t3
    /* B8B78 800C8378 12004010 */  beqz       $v0, .L800C83C4
    /* B8B7C 800C837C 80400A00 */   sll       $t0, $t2, 2
    /* B8B80 800C8380 21200601 */  addu       $a0, $t0, $a2
    /* B8B84 800C8384 0000878C */  lw         $a3, 0x0($a0)
    /* B8B88 800C8388 0400838C */  lw         $v1, 0x4($a0)
    /* B8B8C 800C838C 00000000 */  nop
    /* B8B90 800C8390 2A106700 */  slt        $v0, $v1, $a3
    /* B8B94 800C8394 09004010 */  beqz       $v0, .L800C83BC
    /* B8B98 800C8398 21100501 */   addu      $v0, $t0, $a1
    /* B8B9C 800C839C 000083AC */  sw         $v1, 0x0($a0)
    /* B8BA0 800C83A0 040087AC */  sw         $a3, 0x4($a0)
    /* B8BA4 800C83A4 0000448C */  lw         $a0, 0x0($v0)
    /* B8BA8 800C83A8 0400438C */  lw         $v1, 0x4($v0)
    /* B8BAC 800C83AC 00000000 */  nop
    /* B8BB0 800C83B0 000043AC */  sw         $v1, 0x0($v0)
    /* B8BB4 800C83B4 040044AC */  sw         $a0, 0x4($v0)
    /* B8BB8 800C83B8 01000924 */  addiu      $t1, $zero, 0x1
  .L800C83BC:
    /* B8BBC 800C83BC EDFF2011 */  beqz       $t1, .L800C8374
    /* B8BC0 800C83C0 01004A25 */   addiu     $t2, $t2, 0x1
  .L800C83C4:
    /* B8BC4 800C83C4 E9FF2015 */  bnez       $t1, .L800C836C
    /* B8BC8 800C83C8 00000000 */   nop
    /* B8BCC 800C83CC 0800E003 */  jr         $ra
    /* B8BD0 800C83D0 00000000 */   nop
endlabel func_800C8368
