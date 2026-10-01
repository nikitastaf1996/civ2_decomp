.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002BCC0, 0x78

glabel func_8002BCC0
    /* 1C4C0 8002BCC0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1C4C4 8002BCC4 1400BFAF */  sw         $ra, 0x14($sp)
    /* 1C4C8 8002BCC8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 1C4CC 8002BCCC 00008390 */  lbu        $v1, 0x0($a0)
    /* 1C4D0 8002BCD0 00000000 */  nop
    /* 1C4D4 8002BCD4 001A0300 */  sll        $v1, $v1, 8
    /* 1C4D8 8002BCD8 01008290 */  lbu        $v0, 0x1($a0)
    /* 1C4DC 8002BCDC 00000000 */  nop
    /* 1C4E0 8002BCE0 25104300 */  or         $v0, $v0, $v1
    /* 1C4E4 8002BCE4 21184000 */  addu       $v1, $v0, $zero
    /* 1C4E8 8002BCE8 C07E4224 */  addiu      $v0, $v0, 0x7EC0
    /* 1C4EC 8002BCEC FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 1C4F0 8002BCF0 7F03422C */  sltiu      $v0, $v0, 0x37F
    /* 1C4F4 8002BCF4 0A004010 */  beqz       $v0, .L8002BD20
    /* 1C4F8 8002BCF8 00000000 */   nop
    /* 1C4FC 8002BCFC 9DAD000C */  jal        func_8002B674
    /* 1C500 8002BD00 FFFF6430 */   andi      $a0, $v1, 0xFFFF
    /* 1C504 8002BD04 40180200 */  sll        $v1, $v0, 1
    /* 1C508 8002BD08 21186200 */  addu       $v1, $v1, $v0
    /* 1C50C 8002BD0C 80180300 */  sll        $v1, $v1, 2
    /* 1C510 8002BD10 23186200 */  subu       $v1, $v1, $v0
    /* 1C514 8002BD14 40180300 */  sll        $v1, $v1, 1
    /* 1C518 8002BD18 49AF0008 */  j          .L8002BD24
    /* 1C51C 8002BD1C 21100302 */   addu      $v0, $s0, $v1
  .L8002BD20:
    /* 1C520 8002BD20 21100000 */  addu       $v0, $zero, $zero
  .L8002BD24:
    /* 1C524 8002BD24 1400BF8F */  lw         $ra, 0x14($sp)
    /* 1C528 8002BD28 1000B08F */  lw         $s0, 0x10($sp)
    /* 1C52C 8002BD2C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1C530 8002BD30 0800E003 */  jr         $ra
    /* 1C534 8002BD34 00000000 */   nop
endlabel func_8002BCC0
