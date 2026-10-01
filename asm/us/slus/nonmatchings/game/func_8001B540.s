.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B540, 0x48

glabel func_8001B540
    /* BD40 8001B540 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* BD44 8001B544 0C00C018 */  blez       $a2, .L8001B578
    /* BD48 8001B548 21180000 */   addu      $v1, $zero, $zero
    /* BD4C 8001B54C FF008430 */  andi       $a0, $a0, 0xFF
    /* BD50 8001B550 2110A300 */  addu       $v0, $a1, $v1
  .L8001B554:
    /* BD54 8001B554 00004290 */  lbu        $v0, 0x0($v0)
    /* BD58 8001B558 00000000 */  nop
    /* BD5C 8001B55C 03004414 */  bne        $v0, $a0, .L8001B56C
    /* BD60 8001B560 01006324 */   addiu     $v1, $v1, 0x1
    /* BD64 8001B564 5F6D0008 */  j          .L8001B57C
    /* BD68 8001B568 01000224 */   addiu     $v0, $zero, 0x1
  .L8001B56C:
    /* BD6C 8001B56C 2A106600 */  slt        $v0, $v1, $a2
    /* BD70 8001B570 F8FF4014 */  bnez       $v0, .L8001B554
    /* BD74 8001B574 2110A300 */   addu      $v0, $a1, $v1
  .L8001B578:
    /* BD78 8001B578 21100000 */  addu       $v0, $zero, $zero
  .L8001B57C:
    /* BD7C 8001B57C 0800BD27 */  addiu      $sp, $sp, 0x8
    /* BD80 8001B580 0800E003 */  jr         $ra
    /* BD84 8001B584 00000000 */   nop
endlabel func_8001B540
