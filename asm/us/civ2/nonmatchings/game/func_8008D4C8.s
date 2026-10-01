.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008D4C8, 0x378

glabel func_8008D4C8
    /* 7DCC8 8008D4C8 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 7DCCC 8008D4CC 6400BFAF */  sw         $ra, 0x64($sp)
    /* 7DCD0 8008D4D0 6000BEAF */  sw         $fp, 0x60($sp)
    /* 7DCD4 8008D4D4 5C00B7AF */  sw         $s7, 0x5C($sp)
    /* 7DCD8 8008D4D8 5800B6AF */  sw         $s6, 0x58($sp)
    /* 7DCDC 8008D4DC 5400B5AF */  sw         $s5, 0x54($sp)
    /* 7DCE0 8008D4E0 5000B4AF */  sw         $s4, 0x50($sp)
    /* 7DCE4 8008D4E4 4C00B3AF */  sw         $s3, 0x4C($sp)
    /* 7DCE8 8008D4E8 4800B2AF */  sw         $s2, 0x48($sp)
    /* 7DCEC 8008D4EC 4400B1AF */  sw         $s1, 0x44($sp)
    /* 7DCF0 8008D4F0 4000B0AF */  sw         $s0, 0x40($sp)
    /* 7DCF4 8008D4F4 21A88000 */  addu       $s5, $a0, $zero
    /* 7DCF8 8008D4F8 21B8A000 */  addu       $s7, $a1, $zero
    /* 7DCFC 8008D4FC 1800A6AF */  sw         $a2, 0x18($sp)
    /* 7DD00 8008D500 40101500 */  sll        $v0, $s5, 1
    /* 7DD04 8008D504 21184000 */  addu       $v1, $v0, $zero
    /* 7DD08 8008D508 21105500 */  addu       $v0, $v0, $s5
    /* 7DD0C 8008D50C 80100200 */  sll        $v0, $v0, 2
    /* 7DD10 8008D510 23105500 */  subu       $v0, $v0, $s5
    /* 7DD14 8008D514 C0100200 */  sll        $v0, $v0, 3
    /* 7DD18 8008D518 1180013C */  lui        $at, %hi(D_80113F0E)
    /* 7DD1C 8008D51C 21082200 */  addu       $at, $at, $v0
    /* 7DD20 8008D520 0E3F2280 */  lb         $v0, %lo(D_80113F0E)($at)
    /* 7DD24 8008D524 00000000 */  nop
    /* 7DD28 8008D528 23004018 */  blez       $v0, .L8008D5B8
    /* 7DD2C 8008D52C 21A00000 */   addu      $s4, $zero, $zero
    /* 7DD30 8008D530 1180063C */  lui        $a2, %hi(D_80113F18)
    /* 7DD34 8008D534 183FC624 */  addiu      $a2, $a2, %lo(D_80113F18)
    /* 7DD38 8008D538 1180053C */  lui        $a1, %hi(D_80113F15)
    /* 7DD3C 8008D53C 153FA524 */  addiu      $a1, $a1, %lo(D_80113F15)
    /* 7DD40 8008D540 21107500 */  addu       $v0, $v1, $s5
  .L8008D544:
    /* 7DD44 8008D544 80100200 */  sll        $v0, $v0, 2
    /* 7DD48 8008D548 23105500 */  subu       $v0, $v0, $s5
    /* 7DD4C 8008D54C C0200200 */  sll        $a0, $v0, 3
    /* 7DD50 8008D550 40101400 */  sll        $v0, $s4, 1
    /* 7DD54 8008D554 21188600 */  addu       $v1, $a0, $a2
    /* 7DD58 8008D558 21104300 */  addu       $v0, $v0, $v1
    /* 7DD5C 8008D55C 00004284 */  lh         $v0, 0x0($v0)
    /* 7DD60 8008D560 00000000 */  nop
    /* 7DD64 8008D564 07005714 */  bne        $v0, $s7, .L8008D584
    /* 7DD68 8008D568 21108500 */   addu      $v0, $a0, $a1
    /* 7DD6C 8008D56C 21105400 */  addu       $v0, $v0, $s4
    /* 7DD70 8008D570 00004280 */  lb         $v0, 0x0($v0)
    /* 7DD74 8008D574 1800A88F */  lw         $t0, 0x18($sp)
    /* 7DD78 8008D578 00000000 */  nop
    /* 7DD7C 8008D57C A3004810 */  beq        $v0, $t0, .L8008D80C
    /* 7DD80 8008D580 00000000 */   nop
  .L8008D584:
    /* 7DD84 8008D584 01009426 */  addiu      $s4, $s4, 0x1
    /* 7DD88 8008D588 40181500 */  sll        $v1, $s5, 1
    /* 7DD8C 8008D58C 21107500 */  addu       $v0, $v1, $s5
    /* 7DD90 8008D590 80100200 */  sll        $v0, $v0, 2
    /* 7DD94 8008D594 23105500 */  subu       $v0, $v0, $s5
    /* 7DD98 8008D598 C0100200 */  sll        $v0, $v0, 3
    /* 7DD9C 8008D59C 1180013C */  lui        $at, %hi(D_80113F0E)
    /* 7DDA0 8008D5A0 21082200 */  addu       $at, $at, $v0
    /* 7DDA4 8008D5A4 0E3F2280 */  lb         $v0, %lo(D_80113F0E)($at)
    /* 7DDA8 8008D5A8 00000000 */  nop
    /* 7DDAC 8008D5AC 2A108202 */  slt        $v0, $s4, $v0
    /* 7DDB0 8008D5B0 E4FF4014 */  bnez       $v0, .L8008D544
    /* 7DDB4 8008D5B4 21107500 */   addu      $v0, $v1, $s5
  .L8008D5B8:
    /* 7DDB8 8008D5B8 40101500 */  sll        $v0, $s5, 1
    /* 7DDBC 8008D5BC 21105500 */  addu       $v0, $v0, $s5
    /* 7DDC0 8008D5C0 80100200 */  sll        $v0, $v0, 2
    /* 7DDC4 8008D5C4 23105500 */  subu       $v0, $v0, $s5
    /* 7DDC8 8008D5C8 C0200200 */  sll        $a0, $v0, 3
    /* 7DDCC 8008D5CC 1180013C */  lui        $at, %hi(D_80113F0E)
    /* 7DDD0 8008D5D0 21082400 */  addu       $at, $at, $a0
    /* 7DDD4 8008D5D4 0E3F2580 */  lb         $a1, %lo(D_80113F0E)($at)
    /* 7DDD8 8008D5D8 00000000 */  nop
    /* 7DDDC 8008D5DC 0300A228 */  slti       $v0, $a1, 0x3
    /* 7DDE0 8008D5E0 07004010 */  beqz       $v0, .L8008D600
    /* 7DDE4 8008D5E4 2118A000 */   addu      $v1, $a1, $zero
    /* 7DDE8 8008D5E8 01006224 */  addiu      $v0, $v1, 0x1
    /* 7DDEC 8008D5EC 1180013C */  lui        $at, %hi(D_80113F0E)
    /* 7DDF0 8008D5F0 21082400 */  addu       $at, $at, $a0
    /* 7DDF4 8008D5F4 0E3F22A0 */  sb         $v0, %lo(D_80113F0E)($at)
    /* 7DDF8 8008D5F8 FC350208 */  j          .L8008D7F0
    /* 7DDFC 8008D5FC 2120A002 */   addu      $a0, $s5, $zero
  .L8008D600:
    /* 7DE00 8008D600 0F271E24 */  addiu      $fp, $zero, 0x270F
    /* 7DE04 8008D604 21A00000 */  addu       $s4, $zero, $zero
    /* 7DE08 8008D608 40101500 */  sll        $v0, $s5, 1
    /* 7DE0C 8008D60C 21105500 */  addu       $v0, $v0, $s5
    /* 7DE10 8008D610 80100200 */  sll        $v0, $v0, 2
    /* 7DE14 8008D614 23105500 */  subu       $v0, $v0, $s5
    /* 7DE18 8008D618 C0B00200 */  sll        $s6, $v0, 3
    /* 7DE1C 8008D61C 40101500 */  sll        $v0, $s5, 1
    /* 7DE20 8008D620 21105500 */  addu       $v0, $v0, $s5
    /* 7DE24 8008D624 80100200 */  sll        $v0, $v0, 2
    /* 7DE28 8008D628 3000A2AF */  sw         $v0, 0x30($sp)
    /* 7DE2C 8008D62C 21404000 */  addu       $t0, $v0, $zero
    /* 7DE30 8008D630 23401501 */  subu       $t0, $t0, $s5
    /* 7DE34 8008D634 3000A8AF */  sw         $t0, 0x30($sp)
  .L8008D638:
    /* 7DE38 8008D638 1180013C */  lui        $at, %hi(D_80113F0E)
    /* 7DE3C 8008D63C 21083600 */  addu       $at, $at, $s6
    /* 7DE40 8008D640 0E3F2280 */  lb         $v0, %lo(D_80113F0E)($at)
    /* 7DE44 8008D644 00000000 */  nop
    /* 7DE48 8008D648 2A108202 */  slt        $v0, $s4, $v0
    /* 7DE4C 8008D64C 5C004010 */  beqz       $v0, .L8008D7C0
    /* 7DE50 8008D650 40101700 */   sll       $v0, $s7, 1
    /* 7DE54 8008D654 1180023C */  lui        $v0, %hi(D_80113F15)
    /* 7DE58 8008D658 153F4224 */  addiu      $v0, $v0, %lo(D_80113F15)
    /* 7DE5C 8008D65C 2110C202 */  addu       $v0, $s6, $v0
    /* 7DE60 8008D660 21105400 */  addu       $v0, $v0, $s4
    /* 7DE64 8008D664 00004280 */  lb         $v0, 0x0($v0)
    /* 7DE68 8008D668 00000000 */  nop
    /* 7DE6C 8008D66C 05004104 */  bgez       $v0, .L8008D684
    /* 7DE70 8008D670 00000000 */   nop
    /* 7DE74 8008D674 1800A88F */  lw         $t0, 0x18($sp)
    /* 7DE78 8008D678 00000000 */  nop
    /* 7DE7C 8008D67C 63000005 */  bltz       $t0, .L8008D80C
    /* 7DE80 8008D680 00000000 */   nop
  .L8008D684:
    /* 7DE84 8008D684 1180023C */  lui        $v0, %hi(D_80113F18)
    /* 7DE88 8008D688 183F4224 */  addiu      $v0, $v0, %lo(D_80113F18)
    /* 7DE8C 8008D68C 40181400 */  sll        $v1, $s4, 1
    /* 7DE90 8008D690 2110C202 */  addu       $v0, $s6, $v0
    /* 7DE94 8008D694 21186200 */  addu       $v1, $v1, $v0
    /* 7DE98 8008D698 00007284 */  lh         $s2, 0x0($v1)
    /* 7DE9C 8008D69C 00000000 */  nop
    /* 7DEA0 8008D6A0 40101200 */  sll        $v0, $s2, 1
    /* 7DEA4 8008D6A4 21105200 */  addu       $v0, $v0, $s2
    /* 7DEA8 8008D6A8 80100200 */  sll        $v0, $v0, 2
    /* 7DEAC 8008D6AC 23105200 */  subu       $v0, $v0, $s2
    /* 7DEB0 8008D6B0 C0100200 */  sll        $v0, $v0, 3
    /* 7DEB4 8008D6B4 1180013C */  lui        $at, %hi(D_80113EF0)
    /* 7DEB8 8008D6B8 21082200 */  addu       $at, $at, $v0
    /* 7DEBC 8008D6BC F03E3384 */  lh         $s3, %lo(D_80113EF0)($at)
    /* 7DEC0 8008D6C0 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 7DEC4 8008D6C4 21083600 */  addu       $at, $at, $s6
    /* 7DEC8 8008D6C8 D83E2480 */  lb         $a0, %lo(D_80113ED8)($at)
    /* 7DECC 8008D6CC 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 7DED0 8008D6D0 21083600 */  addu       $at, $at, $s6
    /* 7DED4 8008D6D4 D03E2584 */  lh         $a1, %lo(D_80113ED0)($at)
    /* 7DED8 8008D6D8 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 7DEDC 8008D6DC 21083600 */  addu       $at, $at, $s6
    /* 7DEE0 8008D6E0 D23E2684 */  lh         $a2, %lo(D_80113ED2)($at)
    /* 7DEE4 8008D6E4 1180013C */  lui        $at, %hi(D_80113ED0)
    /* 7DEE8 8008D6E8 21082200 */  addu       $at, $at, $v0
    /* 7DEEC 8008D6EC D03E2784 */  lh         $a3, %lo(D_80113ED0)($at)
    /* 7DEF0 8008D6F0 1180013C */  lui        $at, %hi(D_80113ED2)
    /* 7DEF4 8008D6F4 21082200 */  addu       $at, $at, $v0
    /* 7DEF8 8008D6F8 D23E2284 */  lh         $v0, %lo(D_80113ED2)($at)
    /* 7DEFC 8008D6FC 9FA5010C */  jal        func_8006967C
    /* 7DF00 8008D700 1000A2AF */   sw        $v0, 0x10($sp)
    /* 7DF04 8008D704 21804000 */  addu       $s0, $v0, $zero
    /* 7DF08 8008D708 21880000 */  addu       $s1, $zero, $zero
    /* 7DF0C 8008D70C 2120A002 */  addu       $a0, $s5, $zero
    /* 7DF10 8008D710 C826020C */  jal        func_80089B20
    /* 7DF14 8008D714 20000524 */   addiu     $a1, $zero, 0x20
    /* 7DF18 8008D718 04004010 */  beqz       $v0, .L8008D72C
    /* 7DF1C 8008D71C 21204002 */   addu      $a0, $s2, $zero
    /* 7DF20 8008D720 C826020C */  jal        func_80089B20
    /* 7DF24 8008D724 20000524 */   addiu     $a1, $zero, 0x20
    /* 7DF28 8008D728 2B880200 */  sltu       $s1, $zero, $v0
  .L8008D72C:
    /* 7DF2C 8008D72C 06002012 */  beqz       $s1, .L8008D748
    /* 7DF30 8008D730 21180002 */   addu      $v1, $s0, $zero
    /* 7DF34 8008D734 01000224 */  addiu      $v0, $zero, 0x1
    /* 7DF38 8008D738 2A105000 */  slt        $v0, $v0, $s0
    /* 7DF3C 8008D73C 02004010 */  beqz       $v0, .L8008D748
    /* 7DF40 8008D740 01001024 */   addiu     $s0, $zero, 0x1
    /* 7DF44 8008D744 21806000 */  addu       $s0, $v1, $zero
  .L8008D748:
    /* 7DF48 8008D748 04000012 */  beqz       $s0, .L8008D75C
    /* 7DF4C 8008D74C 18007002 */   mult      $s3, $s0
    /* 7DF50 8008D750 12400000 */  mflo       $t0
    /* 7DF54 8008D754 43100800 */  sra        $v0, $t0, 1
    /* 7DF58 8008D758 21986202 */  addu       $s3, $s3, $v0
  .L8008D75C:
    /* 7DF5C 8008D75C 40101200 */  sll        $v0, $s2, 1
    /* 7DF60 8008D760 21105200 */  addu       $v0, $v0, $s2
    /* 7DF64 8008D764 80100200 */  sll        $v0, $v0, 2
    /* 7DF68 8008D768 23105200 */  subu       $v0, $v0, $s2
    /* 7DF6C 8008D76C C0100200 */  sll        $v0, $v0, 3
    /* 7DF70 8008D770 3000A88F */  lw         $t0, 0x30($sp)
    /* 7DF74 8008D774 00000000 */  nop
    /* 7DF78 8008D778 C0180800 */  sll        $v1, $t0, 3
    /* 7DF7C 8008D77C 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 7DF80 8008D780 21082200 */  addu       $at, $at, $v0
    /* 7DF84 8008D784 D83E2480 */  lb         $a0, %lo(D_80113ED8)($at)
    /* 7DF88 8008D788 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 7DF8C 8008D78C 21082300 */  addu       $at, $at, $v1
    /* 7DF90 8008D790 D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* 7DF94 8008D794 00000000 */  nop
    /* 7DF98 8008D798 03008214 */  bne        $a0, $v0, .L8008D7A8
    /* 7DF9C 8008D79C 2A107E02 */   slt       $v0, $s3, $fp
    /* 7DFA0 8008D7A0 43981300 */  sra        $s3, $s3, 1
    /* 7DFA4 8008D7A4 2A107E02 */  slt        $v0, $s3, $fp
  .L8008D7A8:
    /* 7DFA8 8008D7A8 03004010 */  beqz       $v0, .L8008D7B8
    /* 7DFAC 8008D7AC 00000000 */   nop
    /* 7DFB0 8008D7B0 21F06002 */  addu       $fp, $s3, $zero
    /* 7DFB4 8008D7B4 2000B4AF */  sw         $s4, 0x20($sp)
  .L8008D7B8:
    /* 7DFB8 8008D7B8 8E350208 */  j          .L8008D638
    /* 7DFBC 8008D7BC 01009426 */   addiu     $s4, $s4, 0x1
  .L8008D7C0:
    /* 7DFC0 8008D7C0 21105700 */  addu       $v0, $v0, $s7
    /* 7DFC4 8008D7C4 80100200 */  sll        $v0, $v0, 2
    /* 7DFC8 8008D7C8 23105700 */  subu       $v0, $v0, $s7
    /* 7DFCC 8008D7CC C0100200 */  sll        $v0, $v0, 3
    /* 7DFD0 8008D7D0 1180013C */  lui        $at, %hi(D_80113EF0)
    /* 7DFD4 8008D7D4 21082200 */  addu       $at, $at, $v0
    /* 7DFD8 8008D7D8 F03E2284 */  lh         $v0, %lo(D_80113EF0)($at)
    /* 7DFDC 8008D7DC 00000000 */  nop
    /* 7DFE0 8008D7E0 2A105E00 */  slt        $v0, $v0, $fp
    /* 7DFE4 8008D7E4 09004014 */  bnez       $v0, .L8008D80C
    /* 7DFE8 8008D7E8 2120A002 */   addu      $a0, $s5, $zero
    /* 7DFEC 8008D7EC 2000A58F */  lw         $a1, 0x20($sp)
  .L8008D7F0:
    /* 7DFF0 8008D7F0 1800A78F */  lw         $a3, 0x18($sp)
    /* 7DFF4 8008D7F4 0A35020C */  jal        func_8008D428
    /* 7DFF8 8008D7F8 2130E002 */   addu      $a2, $s7, $zero
    /* 7DFFC 8008D7FC 4827020C */  jal        func_80089D20
    /* 7E000 8008D800 2120A002 */   addu      $a0, $s5, $zero
    /* 7E004 8008D804 4827020C */  jal        func_80089D20
    /* 7E008 8008D808 2120E002 */   addu      $a0, $s7, $zero
  .L8008D80C:
    /* 7E00C 8008D80C 6400BF8F */  lw         $ra, 0x64($sp)
    /* 7E010 8008D810 6000BE8F */  lw         $fp, 0x60($sp)
    /* 7E014 8008D814 5C00B78F */  lw         $s7, 0x5C($sp)
    /* 7E018 8008D818 5800B68F */  lw         $s6, 0x58($sp)
    /* 7E01C 8008D81C 5400B58F */  lw         $s5, 0x54($sp)
    /* 7E020 8008D820 5000B48F */  lw         $s4, 0x50($sp)
    /* 7E024 8008D824 4C00B38F */  lw         $s3, 0x4C($sp)
    /* 7E028 8008D828 4800B28F */  lw         $s2, 0x48($sp)
    /* 7E02C 8008D82C 4400B18F */  lw         $s1, 0x44($sp)
    /* 7E030 8008D830 4000B08F */  lw         $s0, 0x40($sp)
    /* 7E034 8008D834 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 7E038 8008D838 0800E003 */  jr         $ra
    /* 7E03C 8008D83C 00000000 */   nop
endlabel func_8008D4C8
