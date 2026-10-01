.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B588, 0x40

glabel func_8001B588
    /* BD88 8001B588 F8FFBD27 */  addiu      $sp, $sp, -0x8
    /* BD8C 8001B58C 0A00C018 */  blez       $a2, .L8001B5B8
    /* BD90 8001B590 21180000 */   addu      $v1, $zero, $zero
    /* BD94 8001B594 FF008430 */  andi       $a0, $a0, 0xFF
  .L8001B598:
    /* BD98 8001B598 0000A290 */  lbu        $v0, 0x0($a1)
    /* BD9C 8001B59C 00000000 */  nop
    /* BDA0 8001B5A0 06004410 */  beq        $v0, $a0, .L8001B5BC
    /* BDA4 8001B5A4 2110A000 */   addu      $v0, $a1, $zero
    /* BDA8 8001B5A8 01006324 */  addiu      $v1, $v1, 0x1
    /* BDAC 8001B5AC 2A106600 */  slt        $v0, $v1, $a2
    /* BDB0 8001B5B0 F9FF4014 */  bnez       $v0, .L8001B598
    /* BDB4 8001B5B4 FFFFA524 */   addiu     $a1, $a1, -0x1
  .L8001B5B8:
    /* BDB8 8001B5B8 2110A000 */  addu       $v0, $a1, $zero
  .L8001B5BC:
    /* BDBC 8001B5BC 0800BD27 */  addiu      $sp, $sp, 0x8
    /* BDC0 8001B5C0 0800E003 */  jr         $ra
    /* BDC4 8001B5C4 00000000 */   nop
endlabel func_8001B588
