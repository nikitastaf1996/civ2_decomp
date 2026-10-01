.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E03AC, 0x5C

glabel func_800E03AC
    /* D0BAC 800E03AC FF0FC232 */  andi       $v0, $s6, 0xFFF
    /* D0BB0 800E03B0 F4FFF726 */  addiu      $s7, $s7, -0xC
    /* D0BB4 800E03B4 0500E016 */  bnez       $s7, .L800E03CC
    /* D0BB8 800E03B8 02B31600 */   srl       $s6, $s6, 12
    /* D0BBC 800E03BC 0000968C */  lw         $s6, 0x0($a0)
    /* D0BC0 800E03C0 04008424 */  addiu      $a0, $a0, 0x4
    /* D0BC4 800E03C4 0800E003 */  jr         $ra
    /* D0BC8 800E03C8 20001724 */   addiu     $s7, $zero, 0x20
  .L800E03CC:
    /* D0BCC 800E03CC 2A18E002 */  slt        $v1, $s7, $zero
    /* D0BD0 800E03D0 0B006010 */  beqz       $v1, .L800E0400
    /* D0BD4 800E03D4 0C001924 */   addiu     $t9, $zero, 0xC
    /* D0BD8 800E03D8 0000968C */  lw         $s6, 0x0($a0)
    /* D0BDC 800E03DC 04008424 */  addiu      $a0, $a0, 0x4
    /* D0BE0 800E03E0 23B81700 */  negu       $s7, $s7
    /* D0BE4 800E03E4 23C83703 */  subu       $t9, $t9, $s7
    /* D0BE8 800E03E8 04183603 */  sllv       $v1, $s6, $t9
    /* D0BEC 800E03EC 25104300 */  or         $v0, $v0, $v1
    /* D0BF0 800E03F0 FF0F4230 */  andi       $v0, $v0, 0xFFF
    /* D0BF4 800E03F4 06B0F602 */  srlv       $s6, $s6, $s7
    /* D0BF8 800E03F8 20001824 */  addiu      $t8, $zero, 0x20
    /* D0BFC 800E03FC 23B81703 */  subu       $s7, $t8, $s7
  .L800E0400:
    /* D0C00 800E0400 0800E003 */  jr         $ra
    /* D0C04 800E0404 00000000 */   nop
endlabel func_800E03AC
