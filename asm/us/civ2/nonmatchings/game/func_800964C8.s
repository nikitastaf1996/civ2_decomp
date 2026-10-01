.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800964C8, 0x140

glabel func_800964C8
    /* 86CC8 800964C8 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* 86CCC 800964CC 4000BFAF */  sw         $ra, 0x40($sp)
    /* 86CD0 800964D0 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 86CD4 800964D4 3800B4AF */  sw         $s4, 0x38($sp)
    /* 86CD8 800964D8 3400B3AF */  sw         $s3, 0x34($sp)
    /* 86CDC 800964DC 3000B2AF */  sw         $s2, 0x30($sp)
    /* 86CE0 800964E0 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 86CE4 800964E4 2800B0AF */  sw         $s0, 0x28($sp)
    /* 86CE8 800964E8 21908000 */  addu       $s2, $a0, $zero
    /* 86CEC 800964EC 2188A000 */  addu       $s1, $a1, $zero
    /* 86CF0 800964F0 21A8E000 */  addu       $s5, $a3, $zero
    /* 86CF4 800964F4 7C57020C */  jal        func_80095DF0
    /* 86CF8 800964F8 21A0C000 */   addu      $s4, $a2, $zero
    /* 86CFC 800964FC 21804000 */  addu       $s0, $v0, $zero
    /* 86D00 80096500 36000012 */  beqz       $s0, .L800965DC
    /* 86D04 80096504 01020224 */   addiu     $v0, $zero, 0x201
    /* 86D08 80096508 0400138E */  lw         $s3, 0x4($s0)
    /* 86D0C 8009650C 0C002212 */  beq        $s1, $v0, .L80096540
    /* 86D10 80096510 0202222E */   sltiu     $v0, $s1, 0x202
    /* 86D14 80096514 05004010 */  beqz       $v0, .L8009652C
    /* 86D18 80096518 00010224 */   addiu     $v0, $zero, 0x100
    /* 86D1C 8009651C 20002212 */  beq        $s1, $v0, .L800965A0
    /* 86D20 80096520 21204002 */   addu      $a0, $s2, $zero
    /* 86D24 80096524 71590208 */  j          .L800965C4
    /* 86D28 80096528 00000000 */   nop
  .L8009652C:
    /* 86D2C 8009652C 02020224 */  addiu      $v0, $zero, 0x202
    /* 86D30 80096530 09002212 */  beq        $s1, $v0, .L80096558
    /* 86D34 80096534 00000000 */   nop
    /* 86D38 80096538 71590208 */  j          .L800965C4
    /* 86D3C 8009653C 21204002 */   addu      $a0, $s2, $zero
  .L80096540:
    /* 86D40 80096540 BDDA030C */  jal        func_800F6AF4
    /* 86D44 80096544 21206002 */   addu      $a0, $s3, $zero
    /* 86D48 80096548 00140200 */  sll        $v0, $v0, 16
    /* 86D4C 8009654C 23004010 */  beqz       $v0, .L800965DC
    /* 86D50 80096550 01000224 */   addiu     $v0, $zero, 0x1
    /* 86D54 80096554 0C0002A6 */  sh         $v0, 0xC($s0)
  .L80096558:
    /* 86D58 80096558 0C000286 */  lh         $v0, 0xC($s0)
    /* 86D5C 8009655C 00000000 */  nop
    /* 86D60 80096560 1F004010 */  beqz       $v0, .L800965E0
    /* 86D64 80096564 21100000 */   addu      $v0, $zero, $zero
    /* 86D68 80096568 0C0000A6 */  sh         $zero, 0xC($s0)
    /* 86D6C 8009656C 0A0000A6 */  sh         $zero, 0xA($s0)
    /* 86D70 80096570 21D9030C */  jal        func_800F6484
    /* 86D74 80096574 21206002 */   addu      $a0, $s3, $zero
    /* 86D78 80096578 39DE030C */  jal        func_800F78E4
    /* 86D7C 8009657C 21204000 */   addu      $a0, $v0, $zero
    /* 86D80 80096580 24D9030C */  jal        func_800F6490
    /* 86D84 80096584 21206002 */   addu      $a0, $s3, $zero
    /* 86D88 80096588 00140200 */  sll        $v0, $v0, 16
    /* 86D8C 8009658C 21206002 */  addu       $a0, $s3, $zero
    /* 86D90 80096590 A5DA030C */  jal        func_800F6A94
    /* 86D94 80096594 032C0200 */   sra       $a1, $v0, 16
    /* 86D98 80096598 78590208 */  j          .L800965E0
    /* 86D9C 8009659C 21100000 */   addu      $v0, $zero, $zero
  .L800965A0:
    /* 86DA0 800965A0 061C040C */  jal        func_80107018
    /* 86DA4 800965A4 21204002 */   addu      $a0, $s2, $zero
    /* 86DA8 800965A8 21204000 */  addu       $a0, $v0, $zero
    /* 86DAC 800965AC FFFF2532 */  andi       $a1, $s1, 0xFFFF
    /* 86DB0 800965B0 FFFF8632 */  andi       $a2, $s4, 0xFFFF
    /* 86DB4 800965B4 551B040C */  jal        func_80106D54
    /* 86DB8 800965B8 2138A002 */   addu      $a3, $s5, $zero
    /* 86DBC 800965BC 78590208 */  j          .L800965E0
    /* 86DC0 800965C0 21100000 */   addu      $v0, $zero, $zero
  .L800965C4:
    /* 86DC4 800965C4 21282002 */  addu       $a1, $s1, $zero
    /* 86DC8 800965C8 FFFF8632 */  andi       $a2, $s4, 0xFFFF
    /* 86DCC 800965CC FF56020C */  jal        func_80095BFC
    /* 86DD0 800965D0 2138A002 */   addu      $a3, $s5, $zero
    /* 86DD4 800965D4 78590208 */  j          .L800965E0
    /* 86DD8 800965D8 00000000 */   nop
  .L800965DC:
    /* 86DDC 800965DC 21100000 */  addu       $v0, $zero, $zero
  .L800965E0:
    /* 86DE0 800965E0 4000BF8F */  lw         $ra, 0x40($sp)
    /* 86DE4 800965E4 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 86DE8 800965E8 3800B48F */  lw         $s4, 0x38($sp)
    /* 86DEC 800965EC 3400B38F */  lw         $s3, 0x34($sp)
    /* 86DF0 800965F0 3000B28F */  lw         $s2, 0x30($sp)
    /* 86DF4 800965F4 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 86DF8 800965F8 2800B08F */  lw         $s0, 0x28($sp)
    /* 86DFC 800965FC 4800BD27 */  addiu      $sp, $sp, 0x48
    /* 86E00 80096600 0800E003 */  jr         $ra
    /* 86E04 80096604 00000000 */   nop
endlabel func_800964C8
