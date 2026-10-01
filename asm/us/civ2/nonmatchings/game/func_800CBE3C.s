.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CBE3C, 0x200

glabel func_800CBE3C
    /* BC63C 800CBE3C B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* BC640 800CBE40 4800BFAF */  sw         $ra, 0x48($sp)
    /* BC644 800CBE44 4400B1AF */  sw         $s1, 0x44($sp)
    /* BC648 800CBE48 4000B0AF */  sw         $s0, 0x40($sp)
    /* BC64C 800CBE4C 21888000 */  addu       $s1, $a0, $zero
    /* BC650 800CBE50 9AE0030C */  jal        func_800F8268
    /* BC654 800CBE54 1000A427 */   addiu     $a0, $sp, 0x10
    /* BC658 800CBE58 48012486 */  lh         $a0, 0x148($s1)
    /* BC65C 800CBE5C 742C030C */  jal        func_800CB1D0
    /* BC660 800CBE60 00000000 */   nop
    /* BC664 800CBE64 180D80AF */  sw         $zero, %gp_rel(D_801591F0)($gp)
    /* BC668 800CBE68 EA0420A6 */  sh         $zero, 0x4EA($s1)
    /* BC66C 800CBE6C 4C31030C */  jal        func_800CC530
    /* BC670 800CBE70 21202002 */   addu      $a0, $s1, $zero
    /* BC674 800CBE74 00140200 */  sll        $v0, $v0, 16
    /* BC678 800CBE78 67004010 */  beqz       $v0, .L800CC018
    /* BC67C 800CBE7C 02000224 */   addiu     $v0, $zero, 0x2
    /* BC680 800CBE80 FC08238E */  lw         $v1, 0x8FC($s1)
    /* BC684 800CBE84 00000000 */  nop
    /* BC688 800CBE88 0A006210 */  beq        $v1, $v0, .L800CBEB4
    /* BC68C 800CBE8C 03006228 */   slti      $v0, $v1, 0x3
    /* BC690 800CBE90 08004014 */  bnez       $v0, .L800CBEB4
    /* BC694 800CBE94 03000224 */   addiu     $v0, $zero, 0x3
    /* BC698 800CBE98 06006214 */  bne        $v1, $v0, .L800CBEB4
    /* BC69C 800CBE9C 00000000 */   nop
    /* BC6A0 800CBEA0 AD37030C */  jal        func_800CDEB4
    /* BC6A4 800CBEA4 21202002 */   addu      $a0, $s1, $zero
    /* BC6A8 800CBEA8 48012486 */  lh         $a0, 0x148($s1)
    /* BC6AC 800CBEAC 212D030C */  jal        func_800CB484
    /* BC6B0 800CBEB0 00000000 */   nop
  .L800CBEB4:
    /* BC6B4 800CBEB4 5C012486 */  lh         $a0, 0x15C($s1)
    /* BC6B8 800CBEB8 00000000 */  nop
    /* BC6BC 800CBEBC 03008010 */  beqz       $a0, .L800CBECC
    /* BC6C0 800CBEC0 00000000 */   nop
    /* BC6C4 800CBEC4 7DF3030C */  jal        func_800FCDF4
    /* BC6C8 800CBEC8 00000000 */   nop
  .L800CBECC:
    /* BC6CC 800CBECC FC08238E */  lw         $v1, 0x8FC($s1)
    /* BC6D0 800CBED0 03000224 */  addiu      $v0, $zero, 0x3
    /* BC6D4 800CBED4 06006210 */  beq        $v1, $v0, .L800CBEF0
    /* BC6D8 800CBED8 1E000524 */   addiu     $a1, $zero, 0x1E
    /* BC6DC 800CBEDC 0D80043C */  lui        $a0, %hi(func_800CE4D8)
    /* BC6E0 800CBEE0 D8E48424 */  addiu      $a0, $a0, %lo(func_800CE4D8)
    /* BC6E4 800CBEE4 5AF3030C */  jal        func_800FCD68
    /* BC6E8 800CBEE8 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* BC6EC 800CBEEC 5C0122A6 */  sh         $v0, 0x15C($s1)
  .L800CBEF0:
    /* BC6F0 800CBEF0 F8EA030C */  jal        func_800FABE0
    /* BC6F4 800CBEF4 21202002 */   addu      $a0, $s1, $zero
    /* BC6F8 800CBEF8 B0003026 */  addiu      $s0, $s1, 0xB0
    /* BC6FC 800CBEFC F8EA030C */  jal        func_800FABE0
    /* BC700 800CBF00 21200002 */   addu      $a0, $s0, $zero
    /* BC704 800CBF04 05DD030C */  jal        func_800F7414
    /* BC708 800CBF08 21200002 */   addu      $a0, $s0, $zero
    /* BC70C 800CBF0C A8E9030C */  jal        func_800FA6A0
    /* BC710 800CBF10 00000000 */   nop
    /* BC714 800CBF14 8C38030C */  jal        func_800CE230
    /* BC718 800CBF18 21202002 */   addu      $a0, $s1, $zero
    /* BC71C 800CBF1C FC08238E */  lw         $v1, 0x8FC($s1)
    /* BC720 800CBF20 03000224 */  addiu      $v0, $zero, 0x3
    /* BC724 800CBF24 03006214 */  bne        $v1, $v0, .L800CBF34
    /* BC728 800CBF28 01000224 */   addiu     $v0, $zero, 0x1
    /* BC72C 800CBF2C CE2F0308 */  j          .L800CBF38
    /* BC730 800CBF30 F20322A6 */   sh        $v0, 0x3F2($s1)
  .L800CBF34:
    /* BC734 800CBF34 F20320A6 */  sh         $zero, 0x3F2($s1)
  .L800CBF38:
    /* BC738 800CBF38 01000224 */  addiu      $v0, $zero, 0x1
    /* BC73C 800CBF3C 901522AE */  sw         $v0, 0x1590($s1)
    /* BC740 800CBF40 14DE030C */  jal        func_800F7850
    /* BC744 800CBF44 B0002426 */   addiu     $a0, $s1, 0xB0
    /* BC748 800CBF48 98E9030C */  jal        func_800FA660
    /* BC74C 800CBF4C 00000000 */   nop
    /* BC750 800CBF50 80000224 */  addiu      $v0, $zero, 0x80
    /* BC754 800CBF54 1680013C */  lui        $at, %hi(D_801592E4)
    /* BC758 800CBF58 E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* BC75C 800CBF5C 60012486 */  lh         $a0, 0x160($s1)
    /* BC760 800CBF60 00000000 */  nop
    /* BC764 800CBF64 04008010 */  beqz       $a0, .L800CBF78
    /* BC768 800CBF68 00000000 */   nop
    /* BC76C 800CBF6C 7DF3030C */  jal        func_800FCDF4
    /* BC770 800CBF70 00000000 */   nop
    /* BC774 800CBF74 600120A6 */  sh         $zero, 0x160($s1)
  .L800CBF78:
    /* BC778 800CBF78 5C012486 */  lh         $a0, 0x15C($s1)
    /* BC77C 800CBF7C 00000000 */  nop
    /* BC780 800CBF80 04008010 */  beqz       $a0, .L800CBF94
    /* BC784 800CBF84 00000000 */   nop
    /* BC788 800CBF88 7DF3030C */  jal        func_800FCDF4
    /* BC78C 800CBF8C 00000000 */   nop
    /* BC790 800CBF90 5C0120A6 */  sh         $zero, 0x15C($s1)
  .L800CBF94:
    /* BC794 800CBF94 5E012486 */  lh         $a0, 0x15E($s1)
    /* BC798 800CBF98 00000000 */  nop
    /* BC79C 800CBF9C 04008010 */  beqz       $a0, .L800CBFB0
    /* BC7A0 800CBFA0 00000000 */   nop
    /* BC7A4 800CBFA4 7DF3030C */  jal        func_800FCDF4
    /* BC7A8 800CBFA8 00000000 */   nop
    /* BC7AC 800CBFAC 5E0120A6 */  sh         $zero, 0x15E($s1)
  .L800CBFB0:
    /* BC7B0 800CBFB0 FC08238E */  lw         $v1, 0x8FC($s1)
    /* BC7B4 800CBFB4 02000224 */  addiu      $v0, $zero, 0x2
    /* BC7B8 800CBFB8 13006214 */  bne        $v1, $v0, .L800CC008
    /* BC7BC 800CBFBC 00000000 */   nop
    /* BC7C0 800CBFC0 5038030C */  jal        func_800CE140
    /* BC7C4 800CBFC4 21202002 */   addu      $a0, $s1, $zero
    /* BC7C8 800CBFC8 1680013C */  lui        $at, %hi(D_801592E4)
    /* BC7CC 800CBFCC E49220A4 */  sh         $zero, %lo(D_801592E4)($at)
    /* BC7D0 800CBFD0 8E12040C */  jal        func_80104A38
    /* BC7D4 800CBFD4 00000000 */   nop
    /* BC7D8 800CBFD8 80000224 */  addiu      $v0, $zero, 0x80
    /* BC7DC 800CBFDC 1680013C */  lui        $at, %hi(D_801592E4)
    /* BC7E0 800CBFE0 E49222A4 */  sh         $v0, %lo(D_801592E4)($at)
    /* BC7E4 800CBFE4 03000224 */  addiu      $v0, $zero, 0x3
    /* BC7E8 800CBFE8 FC0822AE */  sw         $v0, 0x8FC($s1)
    /* BC7EC 800CBFEC 48012486 */  lh         $a0, 0x148($s1)
    /* BC7F0 800CBFF0 C623030C */  jal        func_800C8F18
    /* BC7F4 800CBFF4 00000000 */   nop
    /* BC7F8 800CBFF8 8F2F030C */  jal        func_800CBE3C
    /* BC7FC 800CBFFC 21202002 */   addu      $a0, $s1, $zero
    /* BC800 800CC000 04300308 */  j          .L800CC010
    /* BC804 800CC004 00000000 */   nop
  .L800CC008:
    /* BC808 800CC008 EFEA030C */  jal        func_800FABBC
    /* BC80C 800CC00C B0002426 */   addiu     $a0, $s1, 0xB0
  .L800CC010:
    /* BC810 800CC010 EFEA030C */  jal        func_800FABBC
    /* BC814 800CC014 21202002 */   addu      $a0, $s1, $zero
  .L800CC018:
    /* BC818 800CC018 1000A427 */  addiu      $a0, $sp, 0x10
    /* BC81C 800CC01C 4CE1030C */  jal        func_800F8530
    /* BC820 800CC020 02000524 */   addiu     $a1, $zero, 0x2
    /* BC824 800CC024 4800BF8F */  lw         $ra, 0x48($sp)
    /* BC828 800CC028 4400B18F */  lw         $s1, 0x44($sp)
    /* BC82C 800CC02C 4000B08F */  lw         $s0, 0x40($sp)
    /* BC830 800CC030 5000BD27 */  addiu      $sp, $sp, 0x50
    /* BC834 800CC034 0800E003 */  jr         $ra
    /* BC838 800CC038 00000000 */   nop
endlabel func_800CBE3C
