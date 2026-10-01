.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B5C8, 0x40

glabel func_8001B5C8
    /* BDC8 8001B5C8 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* BDCC 8001B5CC 0A00C018 */  blez       $a2, .L8001B5F8
    /* BDD0 8001B5D0 21180000 */   addu      $v1, $zero, $zero
    /* BDD4 8001B5D4 FF008430 */  andi       $a0, $a0, 0xFF
  .L8001B5D8:
    /* BDD8 8001B5D8 0000A290 */  lbu        $v0, 0x0($a1)
    /* BDDC 8001B5DC 00000000 */  nop
    /* BDE0 8001B5E0 06004410 */  beq        $v0, $a0, .L8001B5FC
    /* BDE4 8001B5E4 2110A000 */   addu      $v0, $a1, $zero
    /* BDE8 8001B5E8 01006324 */  addiu      $v1, $v1, 0x1
    /* BDEC 8001B5EC 2A106600 */  slt        $v0, $v1, $a2
    /* BDF0 8001B5F0 F9FF4014 */  bnez       $v0, .L8001B5D8
    /* BDF4 8001B5F4 0100A524 */   addiu     $a1, $a1, 0x1
  .L8001B5F8:
    /* BDF8 8001B5F8 2110A000 */  addu       $v0, $a1, $zero
  .L8001B5FC:
    /* BDFC 8001B5FC 0800BD27 */  addiu      $sp, $sp, 0x8
    /* BE00 8001B600 0800E003 */  jr         $ra
    /* BE04 8001B604 00000000 */   nop
endlabel func_8001B5C8
