.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001DCD4, 0x344

glabel func_8001DCD4
    /* E4D4 8001DCD4 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* E4D8 8001DCD8 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* E4DC 8001DCDC 3800BEAF */  sw         $fp, 0x38($sp)
    /* E4E0 8001DCE0 3400B7AF */  sw         $s7, 0x34($sp)
    /* E4E4 8001DCE4 3000B6AF */  sw         $s6, 0x30($sp)
    /* E4E8 8001DCE8 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* E4EC 8001DCEC 2800B4AF */  sw         $s4, 0x28($sp)
    /* E4F0 8001DCF0 2400B3AF */  sw         $s3, 0x24($sp)
    /* E4F4 8001DCF4 2000B2AF */  sw         $s2, 0x20($sp)
    /* E4F8 8001DCF8 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* E4FC 8001DCFC 1800B0AF */  sw         $s0, 0x18($sp)
    /* E500 8001DD00 21A08000 */  addu       $s4, $a0, $zero
    /* E504 8001DD04 1000A5A7 */  sh         $a1, 0x10($sp)
    /* E508 8001DD08 21B80000 */  addu       $s7, $zero, $zero
    /* E50C 8001DD0C 1000838E */  lw         $v1, 0x10($s4)
    /* E510 8001DD10 00000000 */  nop
    /* E514 8001DD14 00006290 */  lbu        $v0, 0x0($v1)
    /* E518 8001DD18 00000000 */  nop
    /* E51C 8001DD1C 06004010 */  beqz       $v0, .L8001DD38
    /* E520 8001DD20 21F00000 */   addu      $fp, $zero, $zero
  .L8001DD24:
    /* E524 8001DD24 01006324 */  addiu      $v1, $v1, 0x1
    /* E528 8001DD28 00006290 */  lbu        $v0, 0x0($v1)
    /* E52C 8001DD2C 00000000 */  nop
    /* E530 8001DD30 FCFF4014 */  bnez       $v0, .L8001DD24
    /* E534 8001DD34 0100F726 */   addiu     $s7, $s7, 0x1
  .L8001DD38:
    /* E538 8001DD38 0100E226 */  addiu      $v0, $s7, 0x1
    /* E53C 8001DD3C 00140200 */  sll        $v0, $v0, 16
    /* E540 8001DD40 031C0200 */  sra        $v1, $v0, 16
    /* E544 8001DD44 C2170200 */  srl        $v0, $v0, 31
    /* E548 8001DD48 21186200 */  addu       $v1, $v1, $v0
    /* E54C 8001DD4C 42B80300 */  srl        $s7, $v1, 1
    /* E550 8001DD50 0C008292 */  lbu        $v0, 0xC($s4)
    /* E554 8001DD54 00000000 */  nop
    /* E558 8001DD58 02B10200 */  srl        $s6, $v0, 4
    /* E55C 8001DD5C 40A81600 */  sll        $s5, $s6, 1
    /* E560 8001DD60 4500B626 */  addiu      $s6, $s5, 0x45
    /* E564 8001DD64 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* E568 8001DD68 E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* E56C 8001DD6C 1580053C */  lui        $a1, %hi(D_8014C59C)
    /* E570 8001DD70 9CC5A524 */  addiu      $a1, $a1, %lo(D_8014C59C)
    /* E574 8001DD74 1D6C000C */  jal        func_8001B074
    /* E578 8001DD78 2130C002 */   addu      $a2, $s6, $zero
    /* E57C 8001DD7C C0181600 */  sll        $v1, $s6, 3
    /* E580 8001DD80 21187600 */  addu       $v1, $v1, $s6
    /* E584 8001DD84 80180300 */  sll        $v1, $v1, 2
    /* E588 8001DD88 1580103C */  lui        $s0, %hi(D_8014C59E)
    /* E58C 8001DD8C 9EC51026 */  addiu      $s0, $s0, %lo(D_8014C59E)
    /* E590 8001DD90 00000296 */  lhu        $v0, 0x0($s0)
    /* E594 8001DD94 1380013C */  lui        $at, %hi(D_8012A0F0)
    /* E598 8001DD98 21082300 */  addu       $at, $at, $v1
    /* E59C 8001DD9C F0A022A4 */  sh         $v0, %lo(D_8012A0F0)($at)
    /* E5A0 8001DDA0 20000296 */  lhu        $v0, 0x20($s0)
    /* E5A4 8001DDA4 1380013C */  lui        $at, %hi(D_8012A0F2)
    /* E5A8 8001DDA8 21082300 */  addu       $at, $at, $v1
    /* E5AC 8001DDAC F2A022A4 */  sh         $v0, %lo(D_8012A0F2)($at)
    /* E5B0 8001DDB0 08008796 */  lhu        $a3, 0x8($s4)
    /* E5B4 8001DDB4 00000000 */  nop
    /* E5B8 8001DDB8 0100E224 */  addiu      $v0, $a3, 0x1
    /* E5BC 8001DDBC 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* E5C0 8001DDC0 21082300 */  addu       $at, $at, $v1
    /* E5C4 8001DDC4 E4A022A4 */  sh         $v0, %lo(D_8012A0E4)($at)
    /* E5C8 8001DDC8 0A009396 */  lhu        $s3, 0xA($s4)
    /* E5CC 8001DDCC 00000000 */  nop
    /* E5D0 8001DDD0 01006226 */  addiu      $v0, $s3, 0x1
    /* E5D4 8001DDD4 1380013C */  lui        $at, %hi(D_8012A0E6)
    /* E5D8 8001DDD8 21082300 */  addu       $at, $at, $v1
    /* E5DC 8001DDDC E6A022A4 */  sh         $v0, %lo(D_8012A0E6)($at)
    /* E5E0 8001DDE0 1380013C */  lui        $at, %hi(D_8012A0E8)
    /* E5E4 8001DDE4 21082300 */  addu       $at, $at, $v1
    /* E5E8 8001DDE8 E8A020A4 */  sh         $zero, %lo(D_8012A0E8)($at)
    /* E5EC 8001DDEC 10001224 */  addiu      $s2, $zero, 0x10
    /* E5F0 8001DDF0 1380013C */  lui        $at, %hi(D_8012A0EA)
    /* E5F4 8001DDF4 21082300 */  addu       $at, $at, $v1
    /* E5F8 8001DDF8 EAA032A4 */  sh         $s2, %lo(D_8012A0EA)($at)
    /* E5FC 8001DDFC 1380013C */  lui        $at, %hi(D_8012A0EE)
    /* E600 8001DE00 21082300 */  addu       $at, $at, $v1
    /* E604 8001DE04 EEA020A0 */  sb         $zero, %lo(D_8012A0EE)($at)
    /* E608 8001DE08 0C009192 */  lbu        $s1, 0xC($s4)
    /* E60C 8001DE0C 1380013C */  lui        $at, %hi(D_8012A0EF)
    /* E610 8001DE10 21082300 */  addu       $at, $at, $v1
    /* E614 8001DE14 EFA031A0 */  sb         $s1, %lo(D_8012A0EF)($at)
    /* E618 8001DE18 1380043C */  lui        $a0, %hi(D_8012A0E0)
    /* E61C 8001DE1C E0A08424 */  addiu      $a0, $a0, %lo(D_8012A0E0)
    /* E620 8001DE20 21106400 */  addu       $v0, $v1, $a0
    /* E624 8001DE24 160040A0 */  sb         $zero, 0x16($v0)
    /* E628 8001DE28 150040A0 */  sb         $zero, 0x15($v0)
    /* E62C 8001DE2C 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* E630 8001DE30 21082300 */  addu       $at, $at, $v1
    /* E634 8001DE34 F4A020A0 */  sb         $zero, %lo(D_8012A0F4)($at)
    /* E638 8001DE38 4600B526 */  addiu      $s5, $s5, 0x46
    /* E63C 8001DE3C FEFF0526 */  addiu      $a1, $s0, -0x2
    /* E640 8001DE40 1D6C000C */  jal        func_8001B074
    /* E644 8001DE44 2130A002 */   addu      $a2, $s5, $zero
    /* E648 8001DE48 C0101500 */  sll        $v0, $s5, 3
    /* E64C 8001DE4C 21105500 */  addu       $v0, $v0, $s5
    /* E650 8001DE50 80100200 */  sll        $v0, $v0, 2
    /* E654 8001DE54 00000396 */  lhu        $v1, 0x0($s0)
    /* E658 8001DE58 1380013C */  lui        $at, %hi(D_8012A0F0)
    /* E65C 8001DE5C 21082200 */  addu       $at, $at, $v0
    /* E660 8001DE60 F0A023A4 */  sh         $v1, %lo(D_8012A0F0)($at)
    /* E664 8001DE64 20000396 */  lhu        $v1, 0x20($s0)
    /* E668 8001DE68 1380013C */  lui        $at, %hi(D_8012A0F2)
    /* E66C 8001DE6C 21082200 */  addu       $at, $at, $v0
    /* E670 8001DE70 F2A023A4 */  sh         $v1, %lo(D_8012A0F2)($at)
    /* E674 8001DE74 08008796 */  lhu        $a3, 0x8($s4)
    /* E678 8001DE78 1380013C */  lui        $at, %hi(D_8012A0E4)
    /* E67C 8001DE7C 21082200 */  addu       $at, $at, $v0
    /* E680 8001DE80 E4A027A4 */  sh         $a3, %lo(D_8012A0E4)($at)
    /* E684 8001DE84 1380013C */  lui        $at, %hi(D_8012A0E6)
    /* E688 8001DE88 21082200 */  addu       $at, $at, $v0
    /* E68C 8001DE8C E6A033A4 */  sh         $s3, %lo(D_8012A0E6)($at)
    /* E690 8001DE90 1380013C */  lui        $at, %hi(D_8012A0E8)
    /* E694 8001DE94 21082200 */  addu       $at, $at, $v0
    /* E698 8001DE98 E8A020A4 */  sh         $zero, %lo(D_8012A0E8)($at)
    /* E69C 8001DE9C 1380013C */  lui        $at, %hi(D_8012A0EA)
    /* E6A0 8001DEA0 21082200 */  addu       $at, $at, $v0
    /* E6A4 8001DEA4 EAA032A4 */  sh         $s2, %lo(D_8012A0EA)($at)
    /* E6A8 8001DEA8 1380013C */  lui        $at, %hi(D_8012A0EE)
    /* E6AC 8001DEAC 21082200 */  addu       $at, $at, $v0
    /* E6B0 8001DEB0 EEA020A0 */  sb         $zero, %lo(D_8012A0EE)($at)
    /* E6B4 8001DEB4 1380013C */  lui        $at, %hi(D_8012A0EF)
    /* E6B8 8001DEB8 21082200 */  addu       $at, $at, $v0
    /* E6BC 8001DEBC EFA031A0 */  sb         $s1, %lo(D_8012A0EF)($at)
    /* E6C0 8001DEC0 1000A797 */  lhu        $a3, 0x10($sp)
    /* E6C4 8001DEC4 00000000 */  nop
    /* E6C8 8001DEC8 00140700 */  sll        $v0, $a3, 16
    /* E6CC 8001DECC 2E004010 */  beqz       $v0, .L8001DF88
    /* E6D0 8001DED0 2190E002 */   addu      $s2, $s7, $zero
    /* E6D4 8001DED4 C0101600 */  sll        $v0, $s6, 3
    /* E6D8 8001DED8 21105600 */  addu       $v0, $v0, $s6
    /* E6DC 8001DEDC 80880200 */  sll        $s1, $v0, 2
    /* E6E0 8001DEE0 C0101500 */  sll        $v0, $s5, 3
    /* E6E4 8001DEE4 21105500 */  addu       $v0, $v0, $s5
    /* E6E8 8001DEE8 80800200 */  sll        $s0, $v0, 2
    /* E6EC 8001DEEC 00141E00 */  sll        $v0, $fp, 16
  .L8001DEF0:
    /* E6F0 8001DEF0 17004014 */  bnez       $v0, .L8001DF50
    /* E6F4 8001DEF4 00000000 */   nop
    /* E6F8 8001DEF8 1380013C */  lui        $at, %hi(D_8012A0E8)
    /* E6FC 8001DEFC 21083100 */  addu       $at, $at, $s1
    /* E700 8001DF00 E8A02294 */  lhu        $v0, %lo(D_8012A0E8)($at)
    /* E704 8001DF04 00000000 */  nop
    /* E708 8001DF08 10004224 */  addiu      $v0, $v0, 0x10
    /* E70C 8001DF0C 1380013C */  lui        $at, %hi(D_8012A0E8)
    /* E710 8001DF10 21083100 */  addu       $at, $at, $s1
    /* E714 8001DF14 E8A022A4 */  sh         $v0, %lo(D_8012A0E8)($at)
    /* E718 8001DF18 1380013C */  lui        $at, %hi(D_8012A0E8)
    /* E71C 8001DF1C 21083000 */  addu       $at, $at, $s0
    /* E720 8001DF20 E8A02294 */  lhu        $v0, %lo(D_8012A0E8)($at)
    /* E724 8001DF24 00000000 */  nop
    /* E728 8001DF28 10004224 */  addiu      $v0, $v0, 0x10
    /* E72C 8001DF2C 1380013C */  lui        $at, %hi(D_8012A0E8)
    /* E730 8001DF30 21083000 */  addu       $at, $at, $s0
    /* E734 8001DF34 E8A022A4 */  sh         $v0, %lo(D_8012A0E8)($at)
    /* E738 8001DF38 21F00000 */  addu       $fp, $zero, $zero
    /* E73C 8001DF3C FFFFF726 */  addiu      $s7, $s7, -0x1
    /* E740 8001DF40 CE6D000C */  jal        func_8001B738
    /* E744 8001DF44 09000424 */   addiu     $a0, $zero, 0x9
    /* E748 8001DF48 DB770008 */  j          .L8001DF6C
    /* E74C 8001DF4C 00000000 */   nop
  .L8001DF50:
    /* E750 8001DF50 0580023C */  lui        $v0, %hi(D_80056510)
    /* E754 8001DF54 1065428C */  lw         $v0, %lo(D_80056510)($v0)
    /* E758 8001DF58 00000000 */  nop
    /* E75C 8001DF5C 40004230 */  andi       $v0, $v0, 0x40
    /* E760 8001DF60 02004010 */  beqz       $v0, .L8001DF6C
    /* E764 8001DF64 FFFFDE27 */   addiu     $fp, $fp, -0x1
    /* E768 8001DF68 21F00000 */  addu       $fp, $zero, $zero
  .L8001DF6C:
    /* E76C 8001DF6C E976000C */  jal        func_8001DBA4
    /* E770 8001DF70 01000424 */   addiu     $a0, $zero, 0x1
    /* E774 8001DF74 00141700 */  sll        $v0, $s7, 16
    /* E778 8001DF78 DDFF401C */  bgtz       $v0, .L8001DEF0
    /* E77C 8001DF7C 00141E00 */   sll       $v0, $fp, 16
    /* E780 8001DF80 F1770008 */  j          .L8001DFC4
    /* E784 8001DF84 00141200 */   sll       $v0, $s2, 16
  .L8001DF88:
    /* E788 8001DF88 C0201600 */  sll        $a0, $s6, 3
    /* E78C 8001DF8C 21209600 */  addu       $a0, $a0, $s6
    /* E790 8001DF90 80200400 */  sll        $a0, $a0, 2
    /* E794 8001DF94 C0181500 */  sll        $v1, $s5, 3
    /* E798 8001DF98 21187500 */  addu       $v1, $v1, $s5
    /* E79C 8001DF9C 80180300 */  sll        $v1, $v1, 2
    /* E7A0 8001DFA0 00141700 */  sll        $v0, $s7, 16
    /* E7A4 8001DFA4 02130200 */  srl        $v0, $v0, 12
    /* E7A8 8001DFA8 1380013C */  lui        $at, %hi(D_8012A0E8)
    /* E7AC 8001DFAC 21082300 */  addu       $at, $at, $v1
    /* E7B0 8001DFB0 E8A022A4 */  sh         $v0, %lo(D_8012A0E8)($at)
    /* E7B4 8001DFB4 1380013C */  lui        $at, %hi(D_8012A0E8)
    /* E7B8 8001DFB8 21082400 */  addu       $at, $at, $a0
    /* E7BC 8001DFBC E8A022A4 */  sh         $v0, %lo(D_8012A0E8)($at)
    /* E7C0 8001DFC0 00141200 */  sll        $v0, $s2, 16
  .L8001DFC4:
    /* E7C4 8001DFC4 03130200 */  sra        $v0, $v0, 12
    /* E7C8 8001DFC8 08008396 */  lhu        $v1, 0x8($s4)
    /* E7CC 8001DFCC 00000000 */  nop
    /* E7D0 8001DFD0 21186200 */  addu       $v1, $v1, $v0
    /* E7D4 8001DFD4 C00B83A7 */  sh         $v1, %gp_rel(D_800552D0)($gp)
    /* E7D8 8001DFD8 0A008296 */  lhu        $v0, 0xA($s4)
    /* E7DC 8001DFDC 00000000 */  nop
    /* E7E0 8001DFE0 C20B82A7 */  sh         $v0, %gp_rel(D_800552D2)($gp)
    /* E7E4 8001DFE4 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* E7E8 8001DFE8 3800BE8F */  lw         $fp, 0x38($sp)
    /* E7EC 8001DFEC 3400B78F */  lw         $s7, 0x34($sp)
    /* E7F0 8001DFF0 3000B68F */  lw         $s6, 0x30($sp)
    /* E7F4 8001DFF4 2C00B58F */  lw         $s5, 0x2C($sp)
    /* E7F8 8001DFF8 2800B48F */  lw         $s4, 0x28($sp)
    /* E7FC 8001DFFC 2400B38F */  lw         $s3, 0x24($sp)
    /* E800 8001E000 2000B28F */  lw         $s2, 0x20($sp)
    /* E804 8001E004 1C00B18F */  lw         $s1, 0x1C($sp)
    /* E808 8001E008 1800B08F */  lw         $s0, 0x18($sp)
    /* E80C 8001E00C 4000BD27 */  addiu      $sp, $sp, 0x40
    /* E810 8001E010 0800E003 */  jr         $ra
    /* E814 8001E014 00000000 */   nop
endlabel func_8001DCD4
