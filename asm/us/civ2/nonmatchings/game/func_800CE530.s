.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CE530, 0x308

glabel func_800CE530
    /* BED30 800CE530 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* BED34 800CE534 3000BFAF */  sw         $ra, 0x30($sp)
    /* BED38 800CE538 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* BED3C 800CE53C 2800B2AF */  sw         $s2, 0x28($sp)
    /* BED40 800CE540 2400B1AF */  sw         $s1, 0x24($sp)
    /* BED44 800CE544 2000B0AF */  sw         $s0, 0x20($sp)
    /* BED48 800CE548 B80C938F */  lw         $s3, %gp_rel(D_80159190)($gp)
    /* BED4C 800CE54C BD9E030C */  jal        SetTile
    /* BED50 800CE550 1000A427 */   addiu     $a0, $sp, 0x10
    /* BED54 800CE554 01000224 */  addiu      $v0, $zero, 0x1
    /* BED58 800CE558 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* BED5C 800CE55C 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* BED60 800CE560 21900000 */  addu       $s2, $zero, $zero
  .L800CE564:
    /* BED64 800CE564 00141200 */  sll        $v0, $s2, 16
    /* BED68 800CE568 031C0200 */  sra        $v1, $v0, 16
    /* BED6C 800CE56C 50006228 */  slti       $v0, $v1, 0x50
    /* BED70 800CE570 A9004010 */  beqz       $v0, .L800CE818
    /* BED74 800CE574 40100300 */   sll       $v0, $v1, 1
    /* BED78 800CE578 21104300 */  addu       $v0, $v0, $v1
    /* BED7C 800CE57C 80100200 */  sll        $v0, $v0, 2
    /* BED80 800CE580 21806202 */  addu       $s0, $s3, $v0
    /* BED84 800CE584 9415028E */  lw         $v0, 0x1594($s0)
    /* BED88 800CE588 00000000 */  nop
    /* BED8C 800CE58C FA004224 */  addiu      $v0, $v0, 0xFA
    /* BED90 800CE590 941502AE */  sw         $v0, 0x1594($s0)
    /* BED94 800CE594 9815028E */  lw         $v0, 0x1598($s0)
    /* BED98 800CE598 00000000 */  nop
    /* BED9C 800CE59C 2C014224 */  addiu      $v0, $v0, 0x12C
    /* BEDA0 800CE5A0 981502AE */  sw         $v0, 0x1598($s0)
    /* BEDA4 800CE5A4 9C15028E */  lw         $v0, 0x159C($s0)
    /* BEDA8 800CE5A8 00000000 */  nop
    /* BEDAC 800CE5AC FFFF4224 */  addiu      $v0, $v0, -0x1
    /* BEDB0 800CE5B0 13004014 */  bnez       $v0, .L800CE600
    /* BEDB4 800CE5B4 9C1502AE */   sw        $v0, 0x159C($s0)
    /* BEDB8 800CE5B8 20D10424 */  addiu      $a0, $zero, -0x2EE0
    /* BEDBC 800CE5BC 7253020C */  jal        func_80094DC8
    /* BEDC0 800CE5C0 E02E0524 */   addiu     $a1, $zero, 0x2EE0
    /* BEDC4 800CE5C4 00140200 */  sll        $v0, $v0, 16
    /* BEDC8 800CE5C8 03140200 */  sra        $v0, $v0, 16
    /* BEDCC 800CE5CC 941502AE */  sw         $v0, 0x1594($s0)
    /* BEDD0 800CE5D0 80C10424 */  addiu      $a0, $zero, -0x3E80
    /* BEDD4 800CE5D4 7253020C */  jal        func_80094DC8
    /* BEDD8 800CE5D8 803E0524 */   addiu     $a1, $zero, 0x3E80
    /* BEDDC 800CE5DC 00140200 */  sll        $v0, $v0, 16
    /* BEDE0 800CE5E0 03140200 */  sra        $v0, $v0, 16
    /* BEDE4 800CE5E4 981502AE */  sw         $v0, 0x1598($s0)
    /* BEDE8 800CE5E8 32000424 */  addiu      $a0, $zero, 0x32
    /* BEDEC 800CE5EC 7253020C */  jal        func_80094DC8
    /* BEDF0 800CE5F0 64000524 */   addiu     $a1, $zero, 0x64
    /* BEDF4 800CE5F4 00140200 */  sll        $v0, $v0, 16
    /* BEDF8 800CE5F8 03140200 */  sra        $v0, $v0, 16
    /* BEDFC 800CE5FC 9C1502AE */  sw         $v0, 0x159C($s0)
  .L800CE600:
    /* BEE00 800CE600 00141200 */  sll        $v0, $s2, 16
    /* BEE04 800CE604 03140200 */  sra        $v0, $v0, 16
    /* BEE08 800CE608 40180200 */  sll        $v1, $v0, 1
    /* BEE0C 800CE60C 21186200 */  addu       $v1, $v1, $v0
    /* BEE10 800CE610 80180300 */  sll        $v1, $v1, 2
    /* BEE14 800CE614 21186302 */  addu       $v1, $s3, $v1
    /* BEE18 800CE618 9415648C */  lw         $a0, 0x1594($v1)
    /* BEE1C 800CE61C 9C15658C */  lw         $a1, 0x159C($v1)
    /* BEE20 800CE620 00000000 */  nop
    /* BEE24 800CE624 1A008500 */  div        $zero, $a0, $a1
    /* BEE28 800CE628 0200A014 */  bnez       $a1, .L800CE634
    /* BEE2C 800CE62C 00000000 */   nop
    /* BEE30 800CE630 0D000700 */  break      7
  .L800CE634:
    /* BEE34 800CE634 FFFF0124 */  addiu      $at, $zero, -0x1
    /* BEE38 800CE638 0400A114 */  bne        $a1, $at, .L800CE64C
    /* BEE3C 800CE63C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* BEE40 800CE640 02008114 */  bne        $a0, $at, .L800CE64C
    /* BEE44 800CE644 00000000 */   nop
    /* BEE48 800CE648 0D000600 */  break      6
  .L800CE64C:
    /* BEE4C 800CE64C 12200000 */  mflo       $a0
    /* BEE50 800CE650 00000000 */  nop
    /* BEE54 800CE654 A0008424 */  addiu      $a0, $a0, 0xA0
    /* BEE58 800CE658 21888000 */  addu       $s1, $a0, $zero
    /* BEE5C 800CE65C 9815628C */  lw         $v0, 0x1598($v1)
    /* BEE60 800CE660 00000000 */  nop
    /* BEE64 800CE664 1A004500 */  div        $zero, $v0, $a1
    /* BEE68 800CE668 0200A014 */  bnez       $a1, .L800CE674
    /* BEE6C 800CE66C 00000000 */   nop
    /* BEE70 800CE670 0D000700 */  break      7
  .L800CE674:
    /* BEE74 800CE674 FFFF0124 */  addiu      $at, $zero, -0x1
    /* BEE78 800CE678 0400A114 */  bne        $a1, $at, .L800CE68C
    /* BEE7C 800CE67C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* BEE80 800CE680 02004114 */  bne        $v0, $at, .L800CE68C
    /* BEE84 800CE684 00000000 */   nop
    /* BEE88 800CE688 0D000600 */  break      6
  .L800CE68C:
    /* BEE8C 800CE68C 12100000 */  mflo       $v0
    /* BEE90 800CE690 DD390308 */  j          .L800CE774
    /* BEE94 800CE694 78004224 */   addiu     $v0, $v0, 0x78
  .L800CE698:
    /* BEE98 800CE698 20D10424 */  addiu      $a0, $zero, -0x2EE0
    /* BEE9C 800CE69C 7253020C */  jal        func_80094DC8
    /* BEEA0 800CE6A0 E02E0524 */   addiu     $a1, $zero, 0x2EE0
    /* BEEA4 800CE6A4 001C1200 */  sll        $v1, $s2, 16
    /* BEEA8 800CE6A8 031C0300 */  sra        $v1, $v1, 16
    /* BEEAC 800CE6AC 40800300 */  sll        $s0, $v1, 1
    /* BEEB0 800CE6B0 21800302 */  addu       $s0, $s0, $v1
    /* BEEB4 800CE6B4 80801000 */  sll        $s0, $s0, 2
    /* BEEB8 800CE6B8 21807002 */  addu       $s0, $s3, $s0
    /* BEEBC 800CE6BC 00140200 */  sll        $v0, $v0, 16
    /* BEEC0 800CE6C0 03140200 */  sra        $v0, $v0, 16
    /* BEEC4 800CE6C4 941502AE */  sw         $v0, 0x1594($s0)
    /* BEEC8 800CE6C8 80C10424 */  addiu      $a0, $zero, -0x3E80
    /* BEECC 800CE6CC 7253020C */  jal        func_80094DC8
    /* BEED0 800CE6D0 803E0524 */   addiu     $a1, $zero, 0x3E80
    /* BEED4 800CE6D4 00140200 */  sll        $v0, $v0, 16
    /* BEED8 800CE6D8 03140200 */  sra        $v0, $v0, 16
    /* BEEDC 800CE6DC 981502AE */  sw         $v0, 0x1598($s0)
    /* BEEE0 800CE6E0 32000424 */  addiu      $a0, $zero, 0x32
    /* BEEE4 800CE6E4 7253020C */  jal        func_80094DC8
    /* BEEE8 800CE6E8 64000524 */   addiu     $a1, $zero, 0x64
    /* BEEEC 800CE6EC 00140200 */  sll        $v0, $v0, 16
    /* BEEF0 800CE6F0 03140200 */  sra        $v0, $v0, 16
    /* BEEF4 800CE6F4 9C1502AE */  sw         $v0, 0x159C($s0)
    /* BEEF8 800CE6F8 9415048E */  lw         $a0, 0x1594($s0)
    /* BEEFC 800CE6FC 00000000 */  nop
    /* BEF00 800CE700 1A008200 */  div        $zero, $a0, $v0
    /* BEF04 800CE704 02004014 */  bnez       $v0, .L800CE710
    /* BEF08 800CE708 00000000 */   nop
    /* BEF0C 800CE70C 0D000700 */  break      7
  .L800CE710:
    /* BEF10 800CE710 FFFF0124 */  addiu      $at, $zero, -0x1
    /* BEF14 800CE714 04004114 */  bne        $v0, $at, .L800CE728
    /* BEF18 800CE718 0080013C */   lui       $at, (0x80000000 >> 16)
    /* BEF1C 800CE71C 02008114 */  bne        $a0, $at, .L800CE728
    /* BEF20 800CE720 00000000 */   nop
    /* BEF24 800CE724 0D000600 */  break      6
  .L800CE728:
    /* BEF28 800CE728 12200000 */  mflo       $a0
    /* BEF2C 800CE72C 00000000 */  nop
    /* BEF30 800CE730 A0008424 */  addiu      $a0, $a0, 0xA0
    /* BEF34 800CE734 21888000 */  addu       $s1, $a0, $zero
    /* BEF38 800CE738 9815038E */  lw         $v1, 0x1598($s0)
    /* BEF3C 800CE73C 00000000 */  nop
    /* BEF40 800CE740 1A006200 */  div        $zero, $v1, $v0
    /* BEF44 800CE744 02004014 */  bnez       $v0, .L800CE750
    /* BEF48 800CE748 00000000 */   nop
    /* BEF4C 800CE74C 0D000700 */  break      7
  .L800CE750:
    /* BEF50 800CE750 FFFF0124 */  addiu      $at, $zero, -0x1
    /* BEF54 800CE754 04004114 */  bne        $v0, $at, .L800CE768
    /* BEF58 800CE758 0080013C */   lui       $at, (0x80000000 >> 16)
    /* BEF5C 800CE75C 02006114 */  bne        $v1, $at, .L800CE768
    /* BEF60 800CE760 00000000 */   nop
    /* BEF64 800CE764 0D000600 */  break      6
  .L800CE768:
    /* BEF68 800CE768 12180000 */  mflo       $v1
    /* BEF6C 800CE76C 00000000 */  nop
    /* BEF70 800CE770 78006224 */  addiu      $v0, $v1, 0x78
  .L800CE774:
    /* BEF74 800CE774 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* BEF78 800CE778 4101842C */  sltiu      $a0, $a0, 0x141
    /* BEF7C 800CE77C C6FF8010 */  beqz       $a0, .L800CE698
    /* BEF80 800CE780 21804000 */   addu      $s0, $v0, $zero
    /* BEF84 800CE784 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* BEF88 800CE788 F100422C */  sltiu      $v0, $v0, 0xF1
    /* BEF8C 800CE78C C2FF4010 */  beqz       $v0, .L800CE698
    /* BEF90 800CE790 FFFF2226 */   addiu     $v0, $s1, -0x1
    /* BEF94 800CE794 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* BEF98 800CE798 3F01422C */  sltiu      $v0, $v0, 0x13F
    /* BEF9C 800CE79C 1C004010 */  beqz       $v0, .L800CE810
    /* BEFA0 800CE7A0 FFFF0226 */   addiu     $v0, $s0, -0x1
    /* BEFA4 800CE7A4 FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* BEFA8 800CE7A8 EF00422C */  sltiu      $v0, $v0, 0xEF
    /* BEFAC 800CE7AC 18004010 */  beqz       $v0, .L800CE810
    /* BEFB0 800CE7B0 001C1200 */   sll       $v1, $s2, 16
    /* BEFB4 800CE7B4 031C0300 */  sra        $v1, $v1, 16
    /* BEFB8 800CE7B8 40100300 */  sll        $v0, $v1, 1
    /* BEFBC 800CE7BC 21104300 */  addu       $v0, $v0, $v1
    /* BEFC0 800CE7C0 80100200 */  sll        $v0, $v0, 2
    /* BEFC4 800CE7C4 21106202 */  addu       $v0, $s3, $v0
    /* BEFC8 800CE7C8 9C154294 */  lhu        $v0, 0x159C($v0)
    /* BEFCC 800CE7CC 00000000 */  nop
    /* BEFD0 800CE7D0 CEFF4224 */  addiu      $v0, $v0, -0x32
    /* BEFD4 800CE7D4 80100200 */  sll        $v0, $v0, 2
    /* BEFD8 800CE7D8 FF000424 */  addiu      $a0, $zero, 0xFF
    /* BEFDC 800CE7DC 23208200 */  subu       $a0, $a0, $v0
    /* BEFE0 800CE7E0 00240400 */  sll        $a0, $a0, 16
    /* BEFE4 800CE7E4 88E9030C */  jal        func_800FA620
    /* BEFE8 800CE7E8 03240400 */   sra       $a0, $a0, 16
    /* BEFEC 800CE7EC 1800B1A7 */  sh         $s1, 0x18($sp)
    /* BEFF0 800CE7F0 1A00B0A7 */  sh         $s0, 0x1A($sp)
    /* BEFF4 800CE7F4 1400A2A3 */  sb         $v0, 0x14($sp)
    /* BEFF8 800CE7F8 1500A2A3 */  sb         $v0, 0x15($sp)
    /* BEFFC 800CE7FC 1600A2A3 */  sb         $v0, 0x16($sp)
    /* BF000 800CE800 928E030C */  jal        DrawPrim
    /* BF004 800CE804 1000A427 */   addiu     $a0, $sp, 0x10
    /* BF008 800CE808 2C8D030C */  jal        DrawSync
    /* BF00C 800CE80C 21200000 */   addu      $a0, $zero, $zero
  .L800CE810:
    /* BF010 800CE810 59390308 */  j          .L800CE564
    /* BF014 800CE814 01005226 */   addiu     $s2, $s2, 0x1
  .L800CE818:
    /* BF018 800CE818 3000BF8F */  lw         $ra, 0x30($sp)
    /* BF01C 800CE81C 2C00B38F */  lw         $s3, 0x2C($sp)
    /* BF020 800CE820 2800B28F */  lw         $s2, 0x28($sp)
    /* BF024 800CE824 2400B18F */  lw         $s1, 0x24($sp)
    /* BF028 800CE828 2000B08F */  lw         $s0, 0x20($sp)
    /* BF02C 800CE82C 3800BD27 */  addiu      $sp, $sp, 0x38
    /* BF030 800CE830 0800E003 */  jr         $ra
    /* BF034 800CE834 00000000 */   nop
endlabel func_800CE530
