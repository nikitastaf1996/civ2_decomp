.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80089CCC, 0x54

glabel func_80089CCC
    /* 7A4CC 80089CCC 21300000 */  addu       $a2, $zero, $zero
    /* 7A4D0 80089CD0 40100400 */  sll        $v0, $a0, 1
    /* 7A4D4 80089CD4 21104400 */  addu       $v0, $v0, $a0
    /* 7A4D8 80089CD8 80100200 */  sll        $v0, $v0, 2
    /* 7A4DC 80089CDC 23104400 */  subu       $v0, $v0, $a0
    /* 7A4E0 80089CE0 C0100200 */  sll        $v0, $v0, 3
    /* 7A4E4 80089CE4 1180033C */  lui        $v1, %hi(D_80113F12)
    /* 7A4E8 80089CE8 123F6324 */  addiu      $v1, $v1, %lo(D_80113F12)
    /* 7A4EC 80089CEC 21184300 */  addu       $v1, $v0, $v1
    /* 7A4F0 80089CF0 21106600 */  addu       $v0, $v1, $a2
  .L80089CF4:
    /* 7A4F4 80089CF4 00004280 */  lb         $v0, 0x0($v0)
    /* 7A4F8 80089CF8 00000000 */  nop
    /* 7A4FC 80089CFC 06004510 */  beq        $v0, $a1, .L80089D18
    /* 7A500 80089D00 01000224 */   addiu     $v0, $zero, 0x1
    /* 7A504 80089D04 0100C624 */  addiu      $a2, $a2, 0x1
    /* 7A508 80089D08 0300C228 */  slti       $v0, $a2, 0x3
    /* 7A50C 80089D0C F9FF4014 */  bnez       $v0, .L80089CF4
    /* 7A510 80089D10 21106600 */   addu      $v0, $v1, $a2
    /* 7A514 80089D14 21100000 */  addu       $v0, $zero, $zero
  .L80089D18:
    /* 7A518 80089D18 0800E003 */  jr         $ra
    /* 7A51C 80089D1C 00000000 */   nop
endlabel func_80089CCC
