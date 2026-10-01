.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002BD38, 0x50

glabel func_8002BD38
    /* 1C538 8002BD38 21300000 */  addu       $a2, $zero, $zero
    /* 1C53C 8002BD3C FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 1C540 8002BD40 01000524 */  addiu      $a1, $zero, 0x1
    /* 1C544 8002BD44 780B838F */  lw         $v1, %gp_rel(D_80055288)($gp)
    /* 1C548 8002BD48 FF008430 */  andi       $a0, $a0, 0xFF
  .L8002BD4C:
    /* 1C54C 8002BD4C 00006290 */  lbu        $v0, 0x0($v1)
    /* 1C550 8002BD50 00000000 */  nop
    /* 1C554 8002BD54 03004414 */  bne        $v0, $a0, .L8002BD64
    /* 1C558 8002BD58 00000000 */   nop
    /* 1C55C 8002BD5C 2138C000 */  addu       $a3, $a2, $zero
    /* 1C560 8002BD60 21280000 */  addu       $a1, $zero, $zero
  .L8002BD64:
    /* 1C564 8002BD64 03004014 */  bnez       $v0, .L8002BD74
    /* 1C568 8002BD68 00000000 */   nop
    /* 1C56C 8002BD6C 21280000 */  addu       $a1, $zero, $zero
    /* 1C570 8002BD70 FFFF0724 */  addiu      $a3, $zero, -0x1
  .L8002BD74:
    /* 1C574 8002BD74 01006324 */  addiu      $v1, $v1, 0x1
    /* 1C578 8002BD78 F4FFA014 */  bnez       $a1, .L8002BD4C
    /* 1C57C 8002BD7C 0100C624 */   addiu     $a2, $a2, 0x1
    /* 1C580 8002BD80 0800E003 */  jr         $ra
    /* 1C584 8002BD84 2110E000 */   addu      $v0, $a3, $zero
endlabel func_8002BD38
