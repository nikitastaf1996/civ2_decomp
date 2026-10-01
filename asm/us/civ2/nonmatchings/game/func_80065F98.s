.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80065F98, 0x58

glabel func_80065F98
    /* 56798 80065F98 1280023C */  lui        $v0, %hi(D_8011A390)
    /* 5679C 80065F9C 90A34224 */  addiu      $v0, $v0, %lo(D_8011A390)
    /* 567A0 80065FA0 000040A4 */  sh         $zero, 0x0($v0)
    /* 567A4 80065FA4 020040A0 */  sb         $zero, 0x2($v0)
    /* 567A8 80065FA8 0A000324 */  addiu      $v1, $zero, 0xA
    /* 567AC 80065FAC 520043A4 */  sh         $v1, 0x52($v0)
    /* 567B0 80065FB0 540040A4 */  sh         $zero, 0x54($v0)
    /* 567B4 80065FB4 560040A4 */  sh         $zero, 0x56($v0)
    /* 567B8 80065FB8 580040A4 */  sh         $zero, 0x58($v0)
    /* 567BC 80065FBC 5A0040A4 */  sh         $zero, 0x5A($v0)
    /* 567C0 80065FC0 21180000 */  addu       $v1, $zero, $zero
    /* 567C4 80065FC4 1280043C */  lui        $a0, %hi(D_8011A3EC)
    /* 567C8 80065FC8 ECA38424 */  addiu      $a0, $a0, %lo(D_8011A3EC)
  .L80065FCC:
    /* 567CC 80065FCC 40100300 */  sll        $v0, $v1, 1
    /* 567D0 80065FD0 21104400 */  addu       $v0, $v0, $a0
    /* 567D4 80065FD4 000040A4 */  sh         $zero, 0x0($v0)
    /* 567D8 80065FD8 01006324 */  addiu      $v1, $v1, 0x1
    /* 567DC 80065FDC 04006228 */  slti       $v0, $v1, 0x4
    /* 567E0 80065FE0 FAFF4014 */  bnez       $v0, .L80065FCC
    /* 567E4 80065FE4 00000000 */   nop
    /* 567E8 80065FE8 0800E003 */  jr         $ra
    /* 567EC 80065FEC 00000000 */   nop
endlabel func_80065F98
