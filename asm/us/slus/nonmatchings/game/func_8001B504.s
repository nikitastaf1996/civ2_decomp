.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B504, 0x3C

glabel func_8001B504
    /* BD04 8001B504 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* BD08 8001B508 0A00C018 */  blez       $a2, .L8001B534
    /* BD0C 8001B50C 21380000 */   addu      $a3, $zero, $zero
    /* BD10 8001B510 2118A700 */  addu       $v1, $a1, $a3
  .L8001B514:
    /* BD14 8001B514 21108700 */  addu       $v0, $a0, $a3
    /* BD18 8001B518 00004290 */  lbu        $v0, 0x0($v0)
    /* BD1C 8001B51C 00000000 */  nop
    /* BD20 8001B520 000062A0 */  sb         $v0, 0x0($v1)
    /* BD24 8001B524 0100E724 */  addiu      $a3, $a3, 0x1
    /* BD28 8001B528 2A10E600 */  slt        $v0, $a3, $a2
    /* BD2C 8001B52C F9FF4014 */  bnez       $v0, .L8001B514
    /* BD30 8001B530 2118A700 */   addu      $v1, $a1, $a3
  .L8001B534:
    /* BD34 8001B534 0800BD27 */  addiu      $sp, $sp, 0x8
    /* BD38 8001B538 0800E003 */  jr         $ra
    /* BD3C 8001B53C 00000000 */   nop
endlabel func_8001B504
