.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AADB4, 0x1F8

glabel func_800AADB4
    /* 9B5B4 800AADB4 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 9B5B8 800AADB8 2800BFAF */  sw         $ra, 0x28($sp)
    /* 9B5BC 800AADBC 2400B1AF */  sw         $s1, 0x24($sp)
    /* 9B5C0 800AADC0 2000B0AF */  sw         $s0, 0x20($sp)
    /* 9B5C4 800AADC4 6C08908F */  lw         $s0, %gp_rel(D_80158D44)($gp)
    /* 9B5C8 800AADC8 00000000 */  nop
    /* 9B5CC 800AADCC 8C001196 */  lhu        $s1, 0x8C($s0)
    /* 9B5D0 800AADD0 040E0286 */  lh         $v0, 0xE04($s0)
    /* 9B5D4 800AADD4 00000000 */  nop
    /* 9B5D8 800AADD8 6C004010 */  beqz       $v0, .L800AAF8C
    /* 9B5DC 800AADDC 2130A000 */   addu      $a2, $a1, $zero
    /* 9B5E0 800AADE0 002C0400 */  sll        $a1, $a0, 16
    /* 9B5E4 800AADE4 00340600 */  sll        $a2, $a2, 16
    /* 9B5E8 800AADE8 080E0226 */  addiu      $v0, $s0, 0xE08
    /* 9B5EC 800AADEC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 9B5F0 800AADF0 80010426 */  addiu      $a0, $s0, 0x180
    /* 9B5F4 800AADF4 032C0500 */  sra        $a1, $a1, 16
    /* 9B5F8 800AADF8 03340600 */  sra        $a2, $a2, 16
    /* 9B5FC 800AADFC 3C2C030C */  jal        func_800CB0F0
    /* 9B600 800AAE00 1800A727 */   addiu     $a3, $sp, 0x18
    /* 9B604 800AAE04 03004104 */  bgez       $v0, .L800AAE14
    /* 9B608 800AAE08 00000000 */   nop
    /* 9B60C 800AAE0C DCAB0208 */  j          .L800AAF70
    /* 9B610 800AAE10 080E00A6 */   sh        $zero, 0xE08($s0)
  .L800AAE14:
    /* 9B614 800AAE14 060E0286 */  lh         $v0, 0xE06($s0)
    /* 9B618 800AAE18 00000000 */  nop
    /* 9B61C 800AAE1C 3D004010 */  beqz       $v0, .L800AAF14
    /* 9B620 800AAE20 00000000 */   nop
    /* 9B624 800AAE24 080E0286 */  lh         $v0, 0xE08($s0)
    /* 9B628 800AAE28 00000000 */  nop
    /* 9B62C 800AAE2C 0A004228 */  slti       $v0, $v0, 0xA
    /* 9B630 800AAE30 50004014 */  bnez       $v0, .L800AAF74
    /* 9B634 800AAE34 5E000424 */   addiu     $a0, $zero, 0x5E
    /* 9B638 800AAE38 080E0496 */  lhu        $a0, 0xE08($s0)
    /* 9B63C 800AAE3C 00000000 */  nop
    /* 9B640 800AAE40 F6FF8224 */  addiu      $v0, $a0, -0xA
    /* 9B644 800AAE44 080E02A6 */  sh         $v0, 0xE08($s0)
    /* 9B648 800AAE48 001C1100 */  sll        $v1, $s1, 16
    /* 9B64C 800AAE4C 031C0300 */  sra        $v1, $v1, 16
    /* 9B650 800AAE50 40100300 */  sll        $v0, $v1, 1
    /* 9B654 800AAE54 21104300 */  addu       $v0, $v0, $v1
    /* 9B658 800AAE58 80100200 */  sll        $v0, $v0, 2
    /* 9B65C 800AAE5C 23104300 */  subu       $v0, $v0, $v1
    /* 9B660 800AAE60 00110200 */  sll        $v0, $v0, 4
    /* 9B664 800AAE64 23104300 */  subu       $v0, $v0, $v1
    /* 9B668 800AAE68 C0100200 */  sll        $v0, $v0, 3
    /* 9B66C 800AAE6C 1180013C */  lui        $at, %hi(D_80117A6F)
    /* 9B670 800AAE70 21082200 */  addu       $at, $at, $v0
    /* 9B674 800AAE74 6F7A2590 */  lbu        $a1, %lo(D_80117A6F)($at)
    /* 9B678 800AAE78 F2FF8424 */  addiu      $a0, $a0, -0xE
    /* 9B67C 800AAE7C 0200842C */  sltiu      $a0, $a0, 0x2
    /* 9B680 800AAE80 10008010 */  beqz       $a0, .L800AAEC4
    /* 9B684 800AAE84 3000A330 */   andi      $v1, $a1, 0x30
    /* 9B688 800AAE88 30000224 */  addiu      $v0, $zero, 0x30
    /* 9B68C 800AAE8C 38006210 */  beq        $v1, $v0, .L800AAF70
    /* 9B690 800AAE90 04000224 */   addiu     $v0, $zero, 0x4
    /* 9B694 800AAE94 080E0386 */  lh         $v1, 0xE08($s0)
    /* 9B698 800AAE98 00000000 */  nop
    /* 9B69C 800AAE9C 06006214 */  bne        $v1, $v0, .L800AAEB8
    /* 9B6A0 800AAEA0 2000A230 */   andi      $v0, $a1, 0x20
    /* 9B6A4 800AAEA4 1000A230 */  andi       $v0, $a1, 0x10
    /* 9B6A8 800AAEA8 06004010 */  beqz       $v0, .L800AAEC4
    /* 9B6AC 800AAEAC 05000224 */   addiu     $v0, $zero, 0x5
    /* 9B6B0 800AAEB0 B1AB0208 */  j          .L800AAEC4
    /* 9B6B4 800AAEB4 080E02A6 */   sh        $v0, 0xE08($s0)
  .L800AAEB8:
    /* 9B6B8 800AAEB8 02004010 */  beqz       $v0, .L800AAEC4
    /* 9B6BC 800AAEBC 04000224 */   addiu     $v0, $zero, 0x4
    /* 9B6C0 800AAEC0 080E02A6 */  sh         $v0, 0xE08($s0)
  .L800AAEC4:
    /* 9B6C4 800AAEC4 001C1100 */  sll        $v1, $s1, 16
    /* 9B6C8 800AAEC8 031C0300 */  sra        $v1, $v1, 16
    /* 9B6CC 800AAECC 40100300 */  sll        $v0, $v1, 1
    /* 9B6D0 800AAED0 21104300 */  addu       $v0, $v0, $v1
    /* 9B6D4 800AAED4 80100200 */  sll        $v0, $v0, 2
    /* 9B6D8 800AAED8 23104300 */  subu       $v0, $v0, $v1
    /* 9B6DC 800AAEDC 00110200 */  sll        $v0, $v0, 4
    /* 9B6E0 800AAEE0 23104300 */  subu       $v0, $v0, $v1
    /* 9B6E4 800AAEE4 C0100200 */  sll        $v0, $v0, 3
    /* 9B6E8 800AAEE8 1180013C */  lui        $at, %hi(D_80117A6F)
    /* 9B6EC 800AAEEC 21082200 */  addu       $at, $at, $v0
    /* 9B6F0 800AAEF0 6F7A2290 */  lbu        $v0, %lo(D_80117A6F)($at)
    /* 9B6F4 800AAEF4 080E0386 */  lh         $v1, 0xE08($s0)
    /* 9B6F8 800AAEF8 00000000 */  nop
    /* 9B6FC 800AAEFC 07106200 */  srav       $v0, $v0, $v1
    /* 9B700 800AAF00 01004230 */  andi       $v0, $v0, 0x1
    /* 9B704 800AAF04 21004010 */  beqz       $v0, .L800AAF8C
    /* 9B708 800AAF08 5E000424 */   addiu     $a0, $zero, 0x5E
    /* 9B70C 800AAF0C DDAB0208 */  j          .L800AAF74
    /* 9B710 800AAF10 00000000 */   nop
  .L800AAF14:
    /* 9B714 800AAF14 080E0286 */  lh         $v0, 0xE08($s0)
    /* 9B718 800AAF18 00000000 */  nop
    /* 9B71C 800AAF1C 0A004228 */  slti       $v0, $v0, 0xA
    /* 9B720 800AAF20 13004010 */  beqz       $v0, .L800AAF70
    /* 9B724 800AAF24 001C1100 */   sll       $v1, $s1, 16
    /* 9B728 800AAF28 031C0300 */  sra        $v1, $v1, 16
    /* 9B72C 800AAF2C 40100300 */  sll        $v0, $v1, 1
    /* 9B730 800AAF30 21104300 */  addu       $v0, $v0, $v1
    /* 9B734 800AAF34 80100200 */  sll        $v0, $v0, 2
    /* 9B738 800AAF38 23104300 */  subu       $v0, $v0, $v1
    /* 9B73C 800AAF3C 00110200 */  sll        $v0, $v0, 4
    /* 9B740 800AAF40 23104300 */  subu       $v0, $v0, $v1
    /* 9B744 800AAF44 C0100200 */  sll        $v0, $v0, 3
    /* 9B748 800AAF48 080E0486 */  lh         $a0, 0xE08($s0)
    /* 9B74C 800AAF4C 1180033C */  lui        $v1, %hi(D_80117A67)
    /* 9B750 800AAF50 677A6324 */  addiu      $v1, $v1, %lo(D_80117A67)
    /* 9B754 800AAF54 21104300 */  addu       $v0, $v0, $v1
    /* 9B758 800AAF58 21104400 */  addu       $v0, $v0, $a0
    /* 9B75C 800AAF5C 00004290 */  lbu        $v0, 0x0($v0)
    /* 9B760 800AAF60 00000000 */  nop
    /* 9B764 800AAF64 0400422C */  sltiu      $v0, $v0, 0x4
    /* 9B768 800AAF68 08004014 */  bnez       $v0, .L800AAF8C
    /* 9B76C 800AAF6C 00000000 */   nop
  .L800AAF70:
    /* 9B770 800AAF70 5E000424 */  addiu      $a0, $zero, 0x5E
  .L800AAF74:
    /* 9B774 800AAF74 01000524 */  addiu      $a1, $zero, 0x1
    /* 9B778 800AAF78 21300000 */  addu       $a2, $zero, $zero
    /* 9B77C 800AAF7C 2B9D020C */  jal        func_800A74AC
    /* 9B780 800AAF80 21380000 */   addu      $a3, $zero, $zero
    /* 9B784 800AAF84 E5AB0208 */  j          .L800AAF94
    /* 9B788 800AAF88 00000000 */   nop
  .L800AAF8C:
    /* 9B78C 800AAF8C 31DE030C */  jal        func_800F78C4
    /* 9B790 800AAF90 BC000426 */   addiu     $a0, $s0, 0xBC
  .L800AAF94:
    /* 9B794 800AAF94 2800BF8F */  lw         $ra, 0x28($sp)
    /* 9B798 800AAF98 2400B18F */  lw         $s1, 0x24($sp)
    /* 9B79C 800AAF9C 2000B08F */  lw         $s0, 0x20($sp)
    /* 9B7A0 800AAFA0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 9B7A4 800AAFA4 0800E003 */  jr         $ra
    /* 9B7A8 800AAFA8 00000000 */   nop
endlabel func_800AADB4
