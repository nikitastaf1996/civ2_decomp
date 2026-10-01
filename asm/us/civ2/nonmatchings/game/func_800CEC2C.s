.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEC2C, 0x30

glabel func_800CEC2C
    /* BF42C 800CEC2C 21280000 */  addu       $a1, $zero, $zero
    /* BF430 800CEC30 21180000 */  addu       $v1, $zero, $zero
  .L800CEC34:
    /* BF434 800CEC34 01008230 */  andi       $v0, $a0, 0x1
    /* BF438 800CEC38 02004010 */  beqz       $v0, .L800CEC44
    /* BF43C 800CEC3C 00000000 */   nop
    /* BF440 800CEC40 0100A524 */  addiu      $a1, $a1, 0x1
  .L800CEC44:
    /* BF444 800CEC44 01006324 */  addiu      $v1, $v1, 0x1
    /* BF448 800CEC48 08006228 */  slti       $v0, $v1, 0x8
    /* BF44C 800CEC4C F9FF4014 */  bnez       $v0, .L800CEC34
    /* BF450 800CEC50 43200400 */   sra       $a0, $a0, 1
    /* BF454 800CEC54 0800E003 */  jr         $ra
    /* BF458 800CEC58 2110A000 */   addu      $v0, $a1, $zero
endlabel func_800CEC2C
