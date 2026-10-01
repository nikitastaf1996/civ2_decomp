.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001470C, 0x38

glabel func_8001470C
    /* 4F0C 8001470C 10008228 */  slti       $v0, $a0, 0x10
    /* 4F10 80014710 09004010 */  beqz       $v0, .L80014738
    /* 4F14 80014714 40200400 */   sll       $a0, $a0, 1
    /* 4F18 80014718 1680023C */  lui        $v0, %hi(D_80158864)
    /* 4F1C 8001471C 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* 4F20 80014720 00000000 */  nop
    /* 4F24 80014724 1800428C */  lw         $v0, 0x18($v0)
    /* 4F28 80014728 00000000 */  nop
    /* 4F2C 8001472C 07108200 */  srav       $v0, $v0, $a0
    /* 4F30 80014730 CF510008 */  j          .L8001473C
    /* 4F34 80014734 03004230 */   andi      $v0, $v0, 0x3
  .L80014738:
    /* 4F38 80014738 01000224 */  addiu      $v0, $zero, 0x1
  .L8001473C:
    /* 4F3C 8001473C 0800E003 */  jr         $ra
    /* 4F40 80014740 00000000 */   nop
endlabel func_8001470C
