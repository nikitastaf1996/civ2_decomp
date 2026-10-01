.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009B488, 0x130

glabel func_8009B488
    /* 8BC88 8009B488 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 8BC8C 8009B48C 3400BFAF */  sw         $ra, 0x34($sp)
    /* 8BC90 8009B490 3000B2AF */  sw         $s2, 0x30($sp)
    /* 8BC94 8009B494 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 8BC98 8009B498 2800B0AF */  sw         $s0, 0x28($sp)
    /* 8BC9C 8009B49C 21808000 */  addu       $s0, $a0, $zero
    /* 8BCA0 8009B4A0 2110A000 */  addu       $v0, $a1, $zero
    /* 8BCA4 8009B4A4 2188E000 */  addu       $s1, $a3, $zero
    /* 8BCA8 8009B4A8 4800B28F */  lw         $s2, 0x48($sp)
    /* 8BCAC 8009B4AC 1000A6AF */  sw         $a2, 0x10($sp)
    /* 8BCB0 8009B4B0 2000A527 */  addiu      $a1, $sp, 0x20
    /* 8BCB4 8009B4B4 2400A627 */  addiu      $a2, $sp, 0x24
    /* 8BCB8 8009B4B8 0A66020C */  jal        func_80099828
    /* 8BCBC 8009B4BC 21384000 */   addu      $a3, $v0, $zero
    /* 8BCC0 8009B4C0 4A020286 */  lh         $v0, 0x24A($s0)
    /* 8BCC4 8009B4C4 40281100 */  sll        $a1, $s1, 1
    /* 8BCC8 8009B4C8 0100A524 */  addiu      $a1, $a1, 0x1
    /* 8BCCC 8009B4CC 18004500 */  mult       $v0, $a1
    /* 8BCD0 8009B4D0 12100000 */  mflo       $v0
    /* 8BCD4 8009B4D4 2400A48F */  lw         $a0, 0x24($sp)
    /* 8BCD8 8009B4D8 00000000 */  nop
    /* 8BCDC 8009B4DC 23208200 */  subu       $a0, $a0, $v0
    /* 8BCE0 8009B4E0 2400A4AF */  sw         $a0, 0x24($sp)
    /* 8BCE4 8009B4E4 4A020686 */  lh         $a2, 0x24A($s0)
    /* 8BCE8 8009B4E8 80101100 */  sll        $v0, $s1, 2
    /* 8BCEC 8009B4EC 03004224 */  addiu      $v0, $v0, 0x3
    /* 8BCF0 8009B4F0 1800C200 */  mult       $a2, $v0
    /* 8BCF4 8009B4F4 12300000 */  mflo       $a2
    /* 8BCF8 8009B4F8 48020286 */  lh         $v0, 0x248($s0)
    /* 8BCFC 8009B4FC 00000000 */  nop
    /* 8BD00 8009B500 40100200 */  sll        $v0, $v0, 1
    /* 8BD04 8009B504 18005100 */  mult       $v0, $s1
    /* 8BD08 8009B508 12180000 */  mflo       $v1
    /* 8BD0C 8009B50C 2000A28F */  lw         $v0, 0x20($sp)
    /* 8BD10 8009B510 00000000 */  nop
    /* 8BD14 8009B514 23104300 */  subu       $v0, $v0, $v1
    /* 8BD18 8009B518 2000A2AF */  sw         $v0, 0x20($sp)
    /* 8BD1C 8009B51C 44020386 */  lh         $v1, 0x244($s0)
    /* 8BD20 8009B520 00000000 */  nop
    /* 8BD24 8009B524 18006500 */  mult       $v1, $a1
    /* 8BD28 8009B528 12180000 */  mflo       $v1
    /* 8BD2C 8009B52C 000042A6 */  sh         $v0, 0x0($s2)
    /* 8BD30 8009B530 020044A6 */  sh         $a0, 0x2($s2)
    /* 8BD34 8009B534 21104300 */  addu       $v0, $v0, $v1
    /* 8BD38 8009B538 040042A6 */  sh         $v0, 0x4($s2)
    /* 8BD3C 8009B53C 21208600 */  addu       $a0, $a0, $a2
    /* 8BD40 8009B540 060044A6 */  sh         $a0, 0x6($s2)
    /* 8BD44 8009B544 00004286 */  lh         $v0, 0x0($s2)
    /* 8BD48 8009B548 00000000 */  nop
    /* 8BD4C 8009B54C 02004104 */  bgez       $v0, .L8009B558
    /* 8BD50 8009B550 00000000 */   nop
    /* 8BD54 8009B554 000040A6 */  sh         $zero, 0x0($s2)
  .L8009B558:
    /* 8BD58 8009B558 04004286 */  lh         $v0, 0x4($s2)
    /* 8BD5C 8009B55C 00000000 */  nop
    /* 8BD60 8009B560 41014228 */  slti       $v0, $v0, 0x141
    /* 8BD64 8009B564 02004014 */  bnez       $v0, .L8009B570
    /* 8BD68 8009B568 40010224 */   addiu     $v0, $zero, 0x140
    /* 8BD6C 8009B56C 040042A6 */  sh         $v0, 0x4($s2)
  .L8009B570:
    /* 8BD70 8009B570 02004286 */  lh         $v0, 0x2($s2)
    /* 8BD74 8009B574 00000000 */  nop
    /* 8BD78 8009B578 02004104 */  bgez       $v0, .L8009B584
    /* 8BD7C 8009B57C 00000000 */   nop
    /* 8BD80 8009B580 020040A6 */  sh         $zero, 0x2($s2)
  .L8009B584:
    /* 8BD84 8009B584 06004286 */  lh         $v0, 0x6($s2)
    /* 8BD88 8009B588 00000000 */  nop
    /* 8BD8C 8009B58C F1004228 */  slti       $v0, $v0, 0xF1
    /* 8BD90 8009B590 02004014 */  bnez       $v0, .L8009B59C
    /* 8BD94 8009B594 F0000224 */   addiu     $v0, $zero, 0xF0
    /* 8BD98 8009B598 060042A6 */  sh         $v0, 0x6($s2)
  .L8009B59C:
    /* 8BD9C 8009B59C 3400BF8F */  lw         $ra, 0x34($sp)
    /* 8BDA0 8009B5A0 3000B28F */  lw         $s2, 0x30($sp)
    /* 8BDA4 8009B5A4 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 8BDA8 8009B5A8 2800B08F */  lw         $s0, 0x28($sp)
    /* 8BDAC 8009B5AC 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 8BDB0 8009B5B0 0800E003 */  jr         $ra
    /* 8BDB4 8009B5B4 00000000 */   nop
endlabel func_8009B488
