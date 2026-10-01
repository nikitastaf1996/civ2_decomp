.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E0350, 0x5C

glabel func_800E0350
    /* D0B50 800E0350 FF00C232 */  andi       $v0, $s6, 0xFF
    /* D0B54 800E0354 F8FFF726 */  addiu      $s7, $s7, -0x8
    /* D0B58 800E0358 0500E016 */  bnez       $s7, .L800E0370
    /* D0B5C 800E035C 02B21600 */   srl       $s6, $s6, 8
    /* D0B60 800E0360 0000968C */  lw         $s6, 0x0($a0)
    /* D0B64 800E0364 04008424 */  addiu      $a0, $a0, 0x4
    /* D0B68 800E0368 0800E003 */  jr         $ra
    /* D0B6C 800E036C 20001724 */   addiu     $s7, $zero, 0x20
  .L800E0370:
    /* D0B70 800E0370 2A18E002 */  slt        $v1, $s7, $zero
    /* D0B74 800E0374 0B006010 */  beqz       $v1, .L800E03A4
    /* D0B78 800E0378 08001924 */   addiu     $t9, $zero, 0x8
    /* D0B7C 800E037C 0000968C */  lw         $s6, 0x0($a0)
    /* D0B80 800E0380 04008424 */  addiu      $a0, $a0, 0x4
    /* D0B84 800E0384 23B81700 */  negu       $s7, $s7
    /* D0B88 800E0388 23C83703 */  subu       $t9, $t9, $s7
    /* D0B8C 800E038C 04183603 */  sllv       $v1, $s6, $t9
    /* D0B90 800E0390 25104300 */  or         $v0, $v0, $v1
    /* D0B94 800E0394 FF004230 */  andi       $v0, $v0, 0xFF
    /* D0B98 800E0398 06B0F602 */  srlv       $s6, $s6, $s7
    /* D0B9C 800E039C 20001824 */  addiu      $t8, $zero, 0x20
    /* D0BA0 800E03A0 23B81703 */  subu       $s7, $t8, $s7
  .L800E03A4:
    /* D0BA4 800E03A4 0800E003 */  jr         $ra
    /* D0BA8 800E03A8 00000000 */   nop
endlabel func_800E0350
