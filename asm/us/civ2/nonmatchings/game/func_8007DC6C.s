.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007DC6C, 0x69C

glabel func_8007DC6C
    /* 6E46C 8007DC6C 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 6E470 8007DC70 6400BFAF */  sw         $ra, 0x64($sp)
    /* 6E474 8007DC74 6000BEAF */  sw         $fp, 0x60($sp)
    /* 6E478 8007DC78 5C00B7AF */  sw         $s7, 0x5C($sp)
    /* 6E47C 8007DC7C 5800B6AF */  sw         $s6, 0x58($sp)
    /* 6E480 8007DC80 5400B5AF */  sw         $s5, 0x54($sp)
    /* 6E484 8007DC84 5000B4AF */  sw         $s4, 0x50($sp)
    /* 6E488 8007DC88 4C00B3AF */  sw         $s3, 0x4C($sp)
    /* 6E48C 8007DC8C 4800B2AF */  sw         $s2, 0x48($sp)
    /* 6E490 8007DC90 4400B1AF */  sw         $s1, 0x44($sp)
    /* 6E494 8007DC94 4000B0AF */  sw         $s0, 0x40($sp)
    /* 6E498 8007DC98 21A08000 */  addu       $s4, $a0, $zero
    /* 6E49C 8007DC9C 1000A5AF */  sw         $a1, 0x10($sp)
    /* 6E4A0 8007DCA0 3000A0AF */  sw         $zero, 0x30($sp)
    /* 6E4A4 8007DCA4 0300A010 */  beqz       $a1, .L8007DCB4
    /* 6E4A8 8007DCA8 3800A0AF */   sw        $zero, 0x38($sp)
    /* 6E4AC 8007DCAC 2FF0010C */  jal        func_8007C0BC
    /* 6E4B0 8007DCB0 00000000 */   nop
  .L8007DCB4:
    /* 6E4B4 8007DCB4 E6ED010C */  jal        func_8007B798
    /* 6E4B8 8007DCB8 21208002 */   addu      $a0, $s4, $zero
    /* 6E4BC 8007DCBC 21F04000 */  addu       $fp, $v0, $zero
    /* 6E4C0 8007DCC0 0500D417 */  bne        $fp, $s4, .L8007DCD8
    /* 6E4C4 8007DCC4 40101400 */   sll       $v0, $s4, 1
    /* 6E4C8 8007DCC8 BFED010C */  jal        func_8007B6FC
    /* 6E4CC 8007DCCC 21208002 */   addu      $a0, $s4, $zero
    /* 6E4D0 8007DCD0 21F04000 */  addu       $fp, $v0, $zero
    /* 6E4D4 8007DCD4 40101400 */  sll        $v0, $s4, 1
  .L8007DCD8:
    /* 6E4D8 8007DCD8 21105400 */  addu       $v0, $v0, $s4
    /* 6E4DC 8007DCDC 80100200 */  sll        $v0, $v0, 2
    /* 6E4E0 8007DCE0 21105400 */  addu       $v0, $v0, $s4
    /* 6E4E4 8007DCE4 40100200 */  sll        $v0, $v0, 1
    /* 6E4E8 8007DCE8 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 6E4EC 8007DCEC 21082200 */  addu       $at, $at, $v0
    /* 6E4F0 8007DCF0 B4D62684 */  lh         $a2, %lo(D_8010D6B4)($at)
    /* 6E4F4 8007DCF4 00000000 */  nop
    /* 6E4F8 8007DCF8 1800A6AF */  sw         $a2, 0x18($sp)
    /* 6E4FC 8007DCFC 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 6E500 8007DD00 21082200 */  addu       $at, $at, $v0
    /* 6E504 8007DD04 B6D62284 */  lh         $v0, %lo(D_8010D6B6)($at)
    /* 6E508 8007DD08 00000000 */  nop
    /* 6E50C 8007DD0C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 6E510 8007DD10 10004004 */  bltz       $v0, .L8007DD54
    /* 6E514 8007DD14 21180000 */   addu      $v1, $zero, $zero
    /* 6E518 8007DD18 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 6E51C 8007DD1C 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 6E520 8007DD20 2000A68F */  lw         $a2, 0x20($sp)
    /* 6E524 8007DD24 00000000 */  nop
    /* 6E528 8007DD28 2A10C200 */  slt        $v0, $a2, $v0
    /* 6E52C 8007DD2C 09004010 */  beqz       $v0, .L8007DD54
    /* 6E530 8007DD30 00000000 */   nop
    /* 6E534 8007DD34 1800A68F */  lw         $a2, 0x18($sp)
    /* 6E538 8007DD38 00000000 */  nop
    /* 6E53C 8007DD3C 0500C004 */  bltz       $a2, .L8007DD54
    /* 6E540 8007DD40 00000000 */   nop
    /* 6E544 8007DD44 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 6E548 8007DD48 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 6E54C 8007DD4C 00000000 */  nop
    /* 6E550 8007DD50 2A18C200 */  slt        $v1, $a2, $v0
  .L8007DD54:
    /* 6E554 8007DD54 07006010 */  beqz       $v1, .L8007DD74
    /* 6E558 8007DD58 01000624 */   addiu     $a2, $zero, 0x1
    /* 6E55C 8007DD5C 3000A6AF */  sw         $a2, 0x30($sp)
    /* 6E560 8007DD60 1800A48F */  lw         $a0, 0x18($sp)
    /* 6E564 8007DD64 2000A58F */  lw         $a1, 0x20($sp)
    /* 6E568 8007DD68 F760020C */  jal        func_800983DC
    /* 6E56C 8007DD6C 00000000 */   nop
    /* 6E570 8007DD70 3800A2AF */  sw         $v0, 0x38($sp)
  .L8007DD74:
    /* 6E574 8007DD74 1000A68F */  lw         $a2, 0x10($sp)
    /* 6E578 8007DD78 00000000 */  nop
    /* 6E57C 8007DD7C 1800C014 */  bnez       $a2, .L8007DDE0
    /* 6E580 8007DD80 21208002 */   addu      $a0, $s4, $zero
    /* 6E584 8007DD84 2180C003 */  addu       $s0, $fp, $zero
    /* 6E588 8007DD88 17000006 */  bltz       $s0, .L8007DDE8
    /* 6E58C 8007DD8C FFEF1124 */   addiu     $s1, $zero, -0x1001
    /* 6E590 8007DD90 40101000 */  sll        $v0, $s0, 1
  .L8007DD94:
    /* 6E594 8007DD94 21105000 */  addu       $v0, $v0, $s0
    /* 6E598 8007DD98 80100200 */  sll        $v0, $v0, 2
    /* 6E59C 8007DD9C 21105000 */  addu       $v0, $v0, $s0
    /* 6E5A0 8007DDA0 40100200 */  sll        $v0, $v0, 1
    /* 6E5A4 8007DDA4 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 6E5A8 8007DDA8 21082200 */  addu       $at, $at, $v0
    /* 6E5AC 8007DDAC B8D62394 */  lhu        $v1, %lo(D_8010D6B8)($at)
    /* 6E5B0 8007DDB0 00000000 */  nop
    /* 6E5B4 8007DDB4 24187100 */  and        $v1, $v1, $s1
    /* 6E5B8 8007DDB8 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 6E5BC 8007DDBC 21082200 */  addu       $at, $at, $v0
    /* 6E5C0 8007DDC0 B8D623A4 */  sh         $v1, %lo(D_8010D6B8)($at)
    /* 6E5C4 8007DDC4 BFED010C */  jal        func_8007B6FC
    /* 6E5C8 8007DDC8 21200002 */   addu      $a0, $s0, $zero
    /* 6E5CC 8007DDCC 21804000 */  addu       $s0, $v0, $zero
    /* 6E5D0 8007DDD0 F0FF0106 */  bgez       $s0, .L8007DD94
    /* 6E5D4 8007DDD4 40101000 */   sll       $v0, $s0, 1
    /* 6E5D8 8007DDD8 7BF70108 */  j          .L8007DDEC
    /* 6E5DC 8007DDDC 21808002 */   addu      $s0, $s4, $zero
  .L8007DDE0:
    /* 6E5E0 8007DDE0 4AEF010C */  jal        func_8007BD28
    /* 6E5E4 8007DDE4 FEFF0524 */   addiu     $a1, $zero, -0x2
  .L8007DDE8:
    /* 6E5E8 8007DDE8 21808002 */  addu       $s0, $s4, $zero
  .L8007DDEC:
    /* 6E5EC 8007DDEC 40101000 */  sll        $v0, $s0, 1
    /* 6E5F0 8007DDF0 21105000 */  addu       $v0, $v0, $s0
    /* 6E5F4 8007DDF4 80100200 */  sll        $v0, $v0, 2
    /* 6E5F8 8007DDF8 21105000 */  addu       $v0, $v0, $s0
    /* 6E5FC 8007DDFC 40100200 */  sll        $v0, $v0, 1
    /* 6E600 8007DE00 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6E604 8007DE04 21082200 */  addu       $at, $at, $v0
    /* 6E608 8007DE08 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6E60C 8007DE0C 00000000 */  nop
    /* 6E610 8007DE10 80100300 */  sll        $v0, $v1, 2
    /* 6E614 8007DE14 21104300 */  addu       $v0, $v0, $v1
    /* 6E618 8007DE18 80100200 */  sll        $v0, $v0, 2
    /* 6E61C 8007DE1C 1180013C */  lui        $at, %hi(D_8010D28D)
    /* 6E620 8007DE20 21082200 */  addu       $at, $at, $v0
    /* 6E624 8007DE24 8DD23280 */  lb         $s2, %lo(D_8010D28D)($at)
    /* 6E628 8007DE28 1180013C */  lui        $at, %hi(D_8010D280)
    /* 6E62C 8007DE2C 21082200 */  addu       $at, $at, $v0
    /* 6E630 8007DE30 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 6E634 8007DE34 00000000 */  nop
    /* 6E638 8007DE38 80004630 */  andi       $a2, $v0, 0x80
    /* 6E63C 8007DE3C 2800A6AF */  sw         $a2, 0x28($sp)
    /* 6E640 8007DE40 04004016 */  bnez       $s2, .L8007DE54
    /* 6E644 8007DE44 21B80000 */   addu      $s7, $zero, $zero
    /* 6E648 8007DE48 0800C014 */  bnez       $a2, .L8007DE6C
    /* 6E64C 8007DE4C 08004230 */   andi      $v0, $v0, 0x8
    /* 6E650 8007DE50 2BB80200 */  sltu       $s7, $zero, $v0
  .L8007DE54:
    /* 6E654 8007DE54 2800A68F */  lw         $a2, 0x28($sp)
    /* 6E658 8007DE58 00000000 */  nop
    /* 6E65C 8007DE5C 0300C014 */  bnez       $a2, .L8007DE6C
    /* 6E660 8007DE60 00000000 */   nop
    /* 6E664 8007DE64 0300E012 */  beqz       $s7, .L8007DE74
    /* 6E668 8007DE68 40101000 */   sll       $v0, $s0, 1
  .L8007DE6C:
    /* 6E66C 8007DE6C 14001224 */  addiu      $s2, $zero, 0x14
    /* 6E670 8007DE70 40101000 */  sll        $v0, $s0, 1
  .L8007DE74:
    /* 6E674 8007DE74 21105000 */  addu       $v0, $v0, $s0
    /* 6E678 8007DE78 80100200 */  sll        $v0, $v0, 2
    /* 6E67C 8007DE7C 21105000 */  addu       $v0, $v0, $s0
    /* 6E680 8007DE80 40100200 */  sll        $v0, $v0, 1
    /* 6E684 8007DE84 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 6E688 8007DE88 21082200 */  addu       $at, $at, $v0
    /* 6E68C 8007DE8C BBD62280 */  lb         $v0, %lo(D_8010D6BB)($at)
    /* 6E690 8007DE90 00000000 */  nop
    /* 6E694 8007DE94 02004014 */  bnez       $v0, .L8007DEA0
    /* 6E698 8007DE98 00000000 */   nop
    /* 6E69C 8007DE9C 14001224 */  addiu      $s2, $zero, 0x14
  .L8007DEA0:
    /* 6E6A0 8007DEA0 2800A68F */  lw         $a2, 0x28($sp)
    /* 6E6A4 8007DEA4 00000000 */  nop
    /* 6E6A8 8007DEA8 2110D700 */  addu       $v0, $a2, $s7
    /* 6E6AC 8007DEAC 04004014 */  bnez       $v0, .L8007DEC0
    /* 6E6B0 8007DEB0 21980000 */   addu      $s3, $zero, $zero
  .L8007DEB4:
    /* 6E6B4 8007DEB4 0200622A */  slti       $v0, $s3, 0x2
    /* 6E6B8 8007DEB8 06014010 */  beqz       $v0, .L8007E2D4
    /* 6E6BC 8007DEBC 21104002 */   addu      $v0, $s2, $zero
  .L8007DEC0:
    /* 6E6C0 8007DEC0 03014012 */  beqz       $s2, .L8007E2D0
    /* 6E6C4 8007DEC4 2180C003 */   addu      $s0, $fp, $zero
    /* 6E6C8 8007DEC8 FA000006 */  bltz       $s0, .L8007E2B4
    /* 6E6CC 8007DECC 00000000 */   nop
    /* 6E6D0 8007DED0 2800A68F */  lw         $a2, 0x28($sp)
    /* 6E6D4 8007DED4 00000000 */  nop
    /* 6E6D8 8007DED8 21B0D700 */  addu       $s6, $a2, $s7
  .L8007DEDC:
    /* 6E6DC 8007DEDC F5004012 */  beqz       $s2, .L8007E2B4
    /* 6E6E0 8007DEE0 00000000 */   nop
    /* 6E6E4 8007DEE4 BFED010C */  jal        func_8007B6FC
    /* 6E6E8 8007DEE8 21200002 */   addu      $a0, $s0, $zero
    /* 6E6EC 8007DEEC 21A84000 */  addu       $s5, $v0, $zero
    /* 6E6F0 8007DEF0 40101000 */  sll        $v0, $s0, 1
    /* 6E6F4 8007DEF4 21105000 */  addu       $v0, $v0, $s0
    /* 6E6F8 8007DEF8 80100200 */  sll        $v0, $v0, 2
    /* 6E6FC 8007DEFC 21105000 */  addu       $v0, $v0, $s0
    /* 6E700 8007DF00 40100200 */  sll        $v0, $v0, 1
    /* 6E704 8007DF04 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6E708 8007DF08 21082200 */  addu       $at, $at, $v0
    /* 6E70C 8007DF0C BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6E710 8007DF10 00000000 */  nop
    /* 6E714 8007DF14 80100300 */  sll        $v0, $v1, 2
    /* 6E718 8007DF18 21104300 */  addu       $v0, $v0, $v1
    /* 6E71C 8007DF1C 80100200 */  sll        $v0, $v0, 2
    /* 6E720 8007DF20 1180013C */  lui        $at, %hi(D_8010D285)
    /* 6E724 8007DF24 21082200 */  addu       $at, $at, $v0
    /* 6E728 8007DF28 85D22280 */  lb         $v0, %lo(D_8010D285)($at)
    /* 6E72C 8007DF2C 0200C012 */  beqz       $s6, .L8007DF38
    /* 6E730 8007DF30 21880000 */   addu      $s1, $zero, $zero
    /* 6E734 8007DF34 01004238 */  xori       $v0, $v0, 0x1
  .L8007DF38:
    /* 6E738 8007DF38 0100422C */  sltiu      $v0, $v0, 0x1
    /* 6E73C 8007DF3C 94004010 */  beqz       $v0, .L8007E190
    /* 6E740 8007DF40 00000000 */   nop
    /* 6E744 8007DF44 1300E012 */  beqz       $s7, .L8007DF94
    /* 6E748 8007DF48 40101000 */   sll       $v0, $s0, 1
    /* 6E74C 8007DF4C 21105000 */  addu       $v0, $v0, $s0
    /* 6E750 8007DF50 80100200 */  sll        $v0, $v0, 2
    /* 6E754 8007DF54 21105000 */  addu       $v0, $v0, $s0
    /* 6E758 8007DF58 40100200 */  sll        $v0, $v0, 1
    /* 6E75C 8007DF5C 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6E760 8007DF60 21082200 */  addu       $at, $at, $v0
    /* 6E764 8007DF64 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 6E768 8007DF68 00000000 */  nop
    /* 6E76C 8007DF6C 80100300 */  sll        $v0, $v1, 2
    /* 6E770 8007DF70 21104300 */  addu       $v0, $v0, $v1
    /* 6E774 8007DF74 80100200 */  sll        $v0, $v0, 2
    /* 6E778 8007DF78 1180013C */  lui        $at, %hi(D_8010D280)
    /* 6E77C 8007DF7C 21082200 */  addu       $at, $at, $v0
    /* 6E780 8007DF80 80D2228C */  lw         $v0, %lo(D_8010D280)($at)
    /* 6E784 8007DF84 00000000 */  nop
    /* 6E788 8007DF88 00104230 */  andi       $v0, $v0, 0x1000
    /* 6E78C 8007DF8C C6004010 */  beqz       $v0, .L8007E2A8
    /* 6E790 8007DF90 00000000 */   nop
  .L8007DF94:
    /* 6E794 8007DF94 05006012 */  beqz       $s3, .L8007DFAC
    /* 6E798 8007DF98 01000224 */   addiu     $v0, $zero, 0x1
    /* 6E79C 8007DF9C 17006212 */  beq        $s3, $v0, .L8007DFFC
    /* 6E7A0 8007DFA0 40181000 */   sll       $v1, $s0, 1
    /* 6E7A4 8007DFA4 64F80108 */  j          .L8007E190
    /* 6E7A8 8007DFA8 00000000 */   nop
  .L8007DFAC:
    /* 6E7AC 8007DFAC 7700C016 */  bnez       $s6, .L8007E18C
    /* 6E7B0 8007DFB0 40101000 */   sll       $v0, $s0, 1
    /* 6E7B4 8007DFB4 21105000 */  addu       $v0, $v0, $s0
    /* 6E7B8 8007DFB8 80100200 */  sll        $v0, $v0, 2
    /* 6E7BC 8007DFBC 21105000 */  addu       $v0, $v0, $s0
    /* 6E7C0 8007DFC0 40180200 */  sll        $v1, $v0, 1
    /* 6E7C4 8007DFC4 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6E7C8 8007DFC8 21082300 */  addu       $at, $at, $v1
    /* 6E7CC 8007DFCC C3D62280 */  lb         $v0, %lo(D_8010D6C3)($at)
    /* 6E7D0 8007DFD0 03000624 */  addiu      $a2, $zero, 0x3
    /* 6E7D4 8007DFD4 6E004614 */  bne        $v0, $a2, .L8007E190
    /* 6E7D8 8007DFD8 00000000 */   nop
    /* 6E7DC 8007DFDC 1180013C */  lui        $at, %hi(D_8010D6C6)
    /* 6E7E0 8007DFE0 21082300 */  addu       $at, $at, $v1
    /* 6E7E4 8007DFE4 C6D62284 */  lh         $v0, %lo(D_8010D6C6)($at)
    /* 6E7E8 8007DFE8 00000000 */  nop
    /* 6E7EC 8007DFEC 68005414 */  bne        $v0, $s4, .L8007E190
    /* 6E7F0 8007DFF0 00000000 */   nop
    /* 6E7F4 8007DFF4 64F80108 */  j          .L8007E190
    /* 6E7F8 8007DFF8 01001124 */   addiu     $s1, $zero, 0x1
  .L8007DFFC:
    /* 6E7FC 8007DFFC 1280023C */  lui        $v0, %hi(D_8011A275)
    /* 6E800 8007E000 75A24290 */  lbu        $v0, %lo(D_8011A275)($v0)
    /* 6E804 8007E004 21187000 */  addu       $v1, $v1, $s0
    /* 6E808 8007E008 80180300 */  sll        $v1, $v1, 2
    /* 6E80C 8007E00C 21187000 */  addu       $v1, $v1, $s0
    /* 6E810 8007E010 40200300 */  sll        $a0, $v1, 1
    /* 6E814 8007E014 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 6E818 8007E018 21082400 */  addu       $at, $at, $a0
    /* 6E81C 8007E01C BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* 6E820 8007E020 00000000 */  nop
    /* 6E824 8007E024 07106200 */  srav       $v0, $v0, $v1
    /* 6E828 8007E028 01004230 */  andi       $v0, $v0, 0x1
    /* 6E82C 8007E02C 41004014 */  bnez       $v0, .L8007E134
    /* 6E830 8007E030 40101000 */   sll       $v0, $s0, 1
    /* 6E834 8007E034 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6E838 8007E038 21082400 */  addu       $at, $at, $a0
    /* 6E83C 8007E03C C3D62290 */  lbu        $v0, %lo(D_8010D6C3)($at)
    /* 6E840 8007E040 00000000 */  nop
    /* 6E844 8007E044 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 6E848 8007E048 0200422C */  sltiu      $v0, $v0, 0x2
    /* 6E84C 8007E04C 05004010 */  beqz       $v0, .L8007E064
    /* 6E850 8007E050 00000000 */   nop
    /* 6E854 8007E054 3800A68F */  lw         $a2, 0x38($sp)
    /* 6E858 8007E058 00000000 */  nop
    /* 6E85C 8007E05C 4C00C010 */  beqz       $a2, .L8007E190
    /* 6E860 8007E060 00000000 */   nop
  .L8007E064:
    /* 6E864 8007E064 3000A68F */  lw         $a2, 0x30($sp)
    /* 6E868 8007E068 00000000 */  nop
    /* 6E86C 8007E06C 4700C010 */  beqz       $a2, .L8007E18C
    /* 6E870 8007E070 00000000 */   nop
    /* 6E874 8007E074 3800A68F */  lw         $a2, 0x38($sp)
    /* 6E878 8007E078 00000000 */  nop
    /* 6E87C 8007E07C 4300C014 */  bnez       $a2, .L8007E18C
    /* 6E880 8007E080 00000000 */   nop
    /* 6E884 8007E084 1800A48F */  lw         $a0, 0x18($sp)
    /* 6E888 8007E088 2000A58F */  lw         $a1, 0x20($sp)
    /* 6E88C 8007E08C 2561020C */  jal        func_80098494
    /* 6E890 8007E090 00000000 */   nop
    /* 6E894 8007E094 40181000 */  sll        $v1, $s0, 1
    /* 6E898 8007E098 21187000 */  addu       $v1, $v1, $s0
    /* 6E89C 8007E09C 80180300 */  sll        $v1, $v1, 2
    /* 6E8A0 8007E0A0 21187000 */  addu       $v1, $v1, $s0
    /* 6E8A4 8007E0A4 40280300 */  sll        $a1, $v1, 1
    /* 6E8A8 8007E0A8 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 6E8AC 8007E0AC 21082500 */  addu       $at, $at, $a1
    /* 6E8B0 8007E0B0 BBD62480 */  lb         $a0, %lo(D_8010D6BB)($at)
    /* 6E8B4 8007E0B4 00000000 */  nop
    /* 6E8B8 8007E0B8 40180400 */  sll        $v1, $a0, 1
    /* 6E8BC 8007E0BC 21186400 */  addu       $v1, $v1, $a0
    /* 6E8C0 8007E0C0 80180300 */  sll        $v1, $v1, 2
    /* 6E8C4 8007E0C4 23186400 */  subu       $v1, $v1, $a0
    /* 6E8C8 8007E0C8 00190300 */  sll        $v1, $v1, 4
    /* 6E8CC 8007E0CC 23186400 */  subu       $v1, $v1, $a0
    /* 6E8D0 8007E0D0 C0180300 */  sll        $v1, $v1, 3
    /* 6E8D4 8007E0D4 1180043C */  lui        $a0, %hi(D_80117A06)
    /* 6E8D8 8007E0D8 067A8424 */  addiu      $a0, $a0, %lo(D_80117A06)
    /* 6E8DC 8007E0DC 21186400 */  addu       $v1, $v1, $a0
    /* 6E8E0 8007E0E0 21186200 */  addu       $v1, $v1, $v0
    /* 6E8E4 8007E0E4 00006390 */  lbu        $v1, 0x0($v1)
    /* 6E8E8 8007E0E8 01000224 */  addiu      $v0, $zero, 0x1
    /* 6E8EC 8007E0EC 27006214 */  bne        $v1, $v0, .L8007E18C
    /* 6E8F0 8007E0F0 00000000 */   nop
    /* 6E8F4 8007E0F4 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 6E8F8 8007E0F8 21082500 */  addu       $at, $at, $a1
    /* 6E8FC 8007E0FC BAD62290 */  lbu        $v0, %lo(D_8010D6BA)($at)
    /* 6E900 8007E100 00000000 */  nop
    /* 6E904 8007E104 80180200 */  sll        $v1, $v0, 2
    /* 6E908 8007E108 21186200 */  addu       $v1, $v1, $v0
    /* 6E90C 8007E10C 80180300 */  sll        $v1, $v1, 2
    /* 6E910 8007E110 1180013C */  lui        $at, %hi(D_8010D28E)
    /* 6E914 8007E114 21082300 */  addu       $at, $at, $v1
    /* 6E918 8007E118 8ED22280 */  lb         $v0, %lo(D_8010D28E)($at)
    /* 6E91C 8007E11C 00000000 */  nop
    /* 6E920 8007E120 05004228 */  slti       $v0, $v0, 0x5
    /* 6E924 8007E124 1A004014 */  bnez       $v0, .L8007E190
    /* 6E928 8007E128 00000000 */   nop
    /* 6E92C 8007E12C 64F80108 */  j          .L8007E190
    /* 6E930 8007E130 01001124 */   addiu     $s1, $zero, 0x1
  .L8007E134:
    /* 6E934 8007E134 21105000 */  addu       $v0, $v0, $s0
    /* 6E938 8007E138 80100200 */  sll        $v0, $v0, 2
    /* 6E93C 8007E13C 21105000 */  addu       $v0, $v0, $s0
    /* 6E940 8007E140 40180200 */  sll        $v1, $v0, 1
    /* 6E944 8007E144 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6E948 8007E148 21082300 */  addu       $at, $at, $v1
    /* 6E94C 8007E14C C3D62280 */  lb         $v0, %lo(D_8010D6C3)($at)
    /* 6E950 8007E150 03000624 */  addiu      $a2, $zero, 0x3
    /* 6E954 8007E154 09004614 */  bne        $v0, $a2, .L8007E17C
    /* 6E958 8007E158 00000000 */   nop
    /* 6E95C 8007E15C 1180013C */  lui        $at, %hi(D_8010D6C6)
    /* 6E960 8007E160 21082300 */  addu       $at, $at, $v1
    /* 6E964 8007E164 C6D62284 */  lh         $v0, %lo(D_8010D6C6)($at)
    /* 6E968 8007E168 00000000 */  nop
    /* 6E96C 8007E16C 08004104 */  bgez       $v0, .L8007E190
    /* 6E970 8007E170 00000000 */   nop
    /* 6E974 8007E174 64F80108 */  j          .L8007E190
    /* 6E978 8007E178 01001124 */   addiu     $s1, $zero, 0x1
  .L8007E17C:
    /* 6E97C 8007E17C 3800A68F */  lw         $a2, 0x38($sp)
    /* 6E980 8007E180 00000000 */  nop
    /* 6E984 8007E184 0200C010 */  beqz       $a2, .L8007E190
    /* 6E988 8007E188 00000000 */   nop
  .L8007E18C:
    /* 6E98C 8007E18C 01001124 */  addiu      $s1, $zero, 0x1
  .L8007E190:
    /* 6E990 8007E190 1000A68F */  lw         $a2, 0x10($sp)
    /* 6E994 8007E194 00000000 */  nop
    /* 6E998 8007E198 0D00C014 */  bnez       $a2, .L8007E1D0
    /* 6E99C 8007E19C 40101000 */   sll       $v0, $s0, 1
    /* 6E9A0 8007E1A0 21105000 */  addu       $v0, $v0, $s0
    /* 6E9A4 8007E1A4 80100200 */  sll        $v0, $v0, 2
    /* 6E9A8 8007E1A8 21105000 */  addu       $v0, $v0, $s0
    /* 6E9AC 8007E1AC 40100200 */  sll        $v0, $v0, 1
    /* 6E9B0 8007E1B0 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 6E9B4 8007E1B4 21082200 */  addu       $at, $at, $v0
    /* 6E9B8 8007E1B8 B8D62294 */  lhu        $v0, %lo(D_8010D6B8)($at)
    /* 6E9BC 8007E1BC 00000000 */  nop
    /* 6E9C0 8007E1C0 00104230 */  andi       $v0, $v0, 0x1000
    /* 6E9C4 8007E1C4 02004010 */  beqz       $v0, .L8007E1D0
    /* 6E9C8 8007E1C8 00000000 */   nop
    /* 6E9CC 8007E1CC 21880000 */  addu       $s1, $zero, $zero
  .L8007E1D0:
    /* 6E9D0 8007E1D0 35002012 */  beqz       $s1, .L8007E2A8
    /* 6E9D4 8007E1D4 00000000 */   nop
    /* 6E9D8 8007E1D8 02001E16 */  bne        $s0, $fp, .L8007E1E4
    /* 6E9DC 8007E1DC 00000000 */   nop
    /* 6E9E0 8007E1E0 21F0A002 */  addu       $fp, $s5, $zero
  .L8007E1E4:
    /* 6E9E4 8007E1E4 1000C012 */  beqz       $s6, .L8007E228
    /* 6E9E8 8007E1E8 40101000 */   sll       $v0, $s0, 1
    /* 6E9EC 8007E1EC 21105000 */  addu       $v0, $v0, $s0
    /* 6E9F0 8007E1F0 80100200 */  sll        $v0, $v0, 2
    /* 6E9F4 8007E1F4 21105000 */  addu       $v0, $v0, $s0
    /* 6E9F8 8007E1F8 40180200 */  sll        $v1, $v0, 1
    /* 6E9FC 8007E1FC 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6EA00 8007E200 21082300 */  addu       $at, $at, $v1
    /* 6EA04 8007E204 C3D62280 */  lb         $v0, %lo(D_8010D6C3)($at)
    /* 6EA08 8007E208 03000624 */  addiu      $a2, $zero, 0x3
    /* 6EA0C 8007E20C 10004610 */  beq        $v0, $a2, .L8007E250
    /* 6EA10 8007E210 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 6EA14 8007E214 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 6EA18 8007E218 21082300 */  addu       $at, $at, $v1
    /* 6EA1C 8007E21C C3D622A0 */  sb         $v0, %lo(D_8010D6C3)($at)
    /* 6EA20 8007E220 94F80108 */  j          .L8007E250
    /* 6EA24 8007E224 00000000 */   nop
  .L8007E228:
    /* 6EA28 8007E228 47EE010C */  jal        func_8007B91C
    /* 6EA2C 8007E22C 21200002 */   addu      $a0, $s0, $zero
    /* 6EA30 8007E230 40101000 */  sll        $v0, $s0, 1
    /* 6EA34 8007E234 21105000 */  addu       $v0, $v0, $s0
    /* 6EA38 8007E238 80100200 */  sll        $v0, $v0, 2
    /* 6EA3C 8007E23C 21105000 */  addu       $v0, $v0, $s0
    /* 6EA40 8007E240 40100200 */  sll        $v0, $v0, 1
    /* 6EA44 8007E244 1180013C */  lui        $at, %hi(D_8010D6C6)
    /* 6EA48 8007E248 21082200 */  addu       $at, $at, $v0
    /* 6EA4C 8007E24C C6D634A4 */  sh         $s4, %lo(D_8010D6C6)($at)
  .L8007E250:
    /* 6EA50 8007E250 1000A68F */  lw         $a2, 0x10($sp)
    /* 6EA54 8007E254 00000000 */  nop
    /* 6EA58 8007E258 0500C010 */  beqz       $a2, .L8007E270
    /* 6EA5C 8007E25C 21200002 */   addu      $a0, $s0, $zero
    /* 6EA60 8007E260 4AEF010C */  jal        func_8007BD28
    /* 6EA64 8007E264 FEFF0524 */   addiu     $a1, $zero, -0x2
    /* 6EA68 8007E268 AAF80108 */  j          .L8007E2A8
    /* 6EA6C 8007E26C FFFF5226 */   addiu     $s2, $s2, -0x1
  .L8007E270:
    /* 6EA70 8007E270 40101000 */  sll        $v0, $s0, 1
    /* 6EA74 8007E274 21105000 */  addu       $v0, $v0, $s0
    /* 6EA78 8007E278 80100200 */  sll        $v0, $v0, 2
    /* 6EA7C 8007E27C 21105000 */  addu       $v0, $v0, $s0
    /* 6EA80 8007E280 40100200 */  sll        $v0, $v0, 1
    /* 6EA84 8007E284 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 6EA88 8007E288 21082200 */  addu       $at, $at, $v0
    /* 6EA8C 8007E28C B8D62394 */  lhu        $v1, %lo(D_8010D6B8)($at)
    /* 6EA90 8007E290 00000000 */  nop
    /* 6EA94 8007E294 00106334 */  ori        $v1, $v1, 0x1000
    /* 6EA98 8007E298 1180013C */  lui        $at, %hi(D_8010D6B8)
    /* 6EA9C 8007E29C 21082200 */  addu       $at, $at, $v0
    /* 6EAA0 8007E2A0 B8D623A4 */  sh         $v1, %lo(D_8010D6B8)($at)
    /* 6EAA4 8007E2A4 FFFF5226 */  addiu      $s2, $s2, -0x1
  .L8007E2A8:
    /* 6EAA8 8007E2A8 2180A002 */  addu       $s0, $s5, $zero
    /* 6EAAC 8007E2AC 0BFF0106 */  bgez       $s0, .L8007DEDC
    /* 6EAB0 8007E2B0 00000000 */   nop
  .L8007E2B4:
    /* 6EAB4 8007E2B4 2800A68F */  lw         $a2, 0x28($sp)
    /* 6EAB8 8007E2B8 00000000 */  nop
    /* 6EABC 8007E2BC 2110D700 */  addu       $v0, $a2, $s7
    /* 6EAC0 8007E2C0 FCFE4010 */  beqz       $v0, .L8007DEB4
    /* 6EAC4 8007E2C4 01007326 */   addiu     $s3, $s3, 0x1
    /* 6EAC8 8007E2C8 FDFE601A */  blez       $s3, .L8007DEC0
    /* 6EACC 8007E2CC 00000000 */   nop
  .L8007E2D0:
    /* 6EAD0 8007E2D0 21104002 */  addu       $v0, $s2, $zero
  .L8007E2D4:
    /* 6EAD4 8007E2D4 6400BF8F */  lw         $ra, 0x64($sp)
    /* 6EAD8 8007E2D8 6000BE8F */  lw         $fp, 0x60($sp)
    /* 6EADC 8007E2DC 5C00B78F */  lw         $s7, 0x5C($sp)
    /* 6EAE0 8007E2E0 5800B68F */  lw         $s6, 0x58($sp)
    /* 6EAE4 8007E2E4 5400B58F */  lw         $s5, 0x54($sp)
    /* 6EAE8 8007E2E8 5000B48F */  lw         $s4, 0x50($sp)
    /* 6EAEC 8007E2EC 4C00B38F */  lw         $s3, 0x4C($sp)
    /* 6EAF0 8007E2F0 4800B28F */  lw         $s2, 0x48($sp)
    /* 6EAF4 8007E2F4 4400B18F */  lw         $s1, 0x44($sp)
    /* 6EAF8 8007E2F8 4000B08F */  lw         $s0, 0x40($sp)
    /* 6EAFC 8007E2FC 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 6EB00 8007E300 0800E003 */  jr         $ra
    /* 6EB04 8007E304 00000000 */   nop
endlabel func_8007DC6C
