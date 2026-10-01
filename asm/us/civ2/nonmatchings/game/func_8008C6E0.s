.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8008C6E0, 0x244

glabel func_8008C6E0
    /* 7CEE0 8008C6E0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 7CEE4 8008C6E4 2400BFAF */  sw         $ra, 0x24($sp)
    /* 7CEE8 8008C6E8 2000B4AF */  sw         $s4, 0x20($sp)
    /* 7CEEC 8008C6EC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 7CEF0 8008C6F0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 7CEF4 8008C6F4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7CEF8 8008C6F8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 7CEFC 8008C6FC 21988000 */  addu       $s3, $a0, $zero
    /* 7CF00 8008C700 21A00000 */  addu       $s4, $zero, $zero
    /* 7CF04 8008C704 40101300 */  sll        $v0, $s3, 1
    /* 7CF08 8008C708 21105300 */  addu       $v0, $v0, $s3
    /* 7CF0C 8008C70C 80100200 */  sll        $v0, $v0, 2
    /* 7CF10 8008C710 23105300 */  subu       $v0, $v0, $s3
    /* 7CF14 8008C714 C0100200 */  sll        $v0, $v0, 3
    /* 7CF18 8008C718 1180013C */  lui        $at, %hi(D_80113ED8)
    /* 7CF1C 8008C71C 21082200 */  addu       $at, $at, $v0
    /* 7CF20 8008C720 D83E3180 */  lb         $s1, %lo(D_80113ED8)($at)
    /* 7CF24 8008C724 01009426 */  addiu      $s4, $s4, 0x1
  .L8008C728:
    /* 7CF28 8008C728 0300822A */  slti       $v0, $s4, 0x3
    /* 7CF2C 8008C72C 72004010 */  beqz       $v0, .L8008C8F8
    /* 7CF30 8008C730 40181100 */   sll       $v1, $s1, 1
    /* 7CF34 8008C734 21187100 */  addu       $v1, $v1, $s1
    /* 7CF38 8008C738 80180300 */  sll        $v1, $v1, 2
    /* 7CF3C 8008C73C 23187100 */  subu       $v1, $v1, $s1
    /* 7CF40 8008C740 00190300 */  sll        $v1, $v1, 4
    /* 7CF44 8008C744 23187100 */  subu       $v1, $v1, $s1
    /* 7CF48 8008C748 C0180300 */  sll        $v1, $v1, 3
    /* 7CF4C 8008C74C 1180013C */  lui        $at, %hi(D_80117698)
    /* 7CF50 8008C750 21082300 */  addu       $at, $at, $v1
    /* 7CF54 8008C754 98762284 */  lh         $v0, %lo(D_80117698)($at)
    /* 7CF58 8008C758 00000000 */  nop
    /* 7CF5C 8008C75C 40200200 */  sll        $a0, $v0, 1
    /* 7CF60 8008C760 21208200 */  addu       $a0, $a0, $v0
    /* 7CF64 8008C764 00210400 */  sll        $a0, $a0, 4
    /* 7CF68 8008C768 1180013C */  lui        $at, %hi(D_80116AD5)
    /* 7CF6C 8008C76C 21082400 */  addu       $at, $at, $a0
    /* 7CF70 8008C770 D56A2290 */  lbu        $v0, %lo(D_80116AD5)($at)
    /* 7CF74 8008C774 00000000 */  nop
    /* 7CF78 8008C778 01004224 */  addiu      $v0, $v0, 0x1
    /* 7CF7C 8008C77C 1180013C */  lui        $at, %hi(D_80116AD5)
    /* 7CF80 8008C780 21082400 */  addu       $at, $at, $a0
    /* 7CF84 8008C784 D56A22A0 */  sb         $v0, %lo(D_80116AD5)($at)
    /* 7CF88 8008C788 FF005030 */  andi       $s0, $v0, 0xFF
    /* 7CF8C 8008C78C 1180013C */  lui        $at, %hi(D_80117698)
    /* 7CF90 8008C790 21082300 */  addu       $at, $at, $v1
    /* 7CF94 8008C794 98762284 */  lh         $v0, %lo(D_80117698)($at)
    /* 7CF98 8008C798 00000000 */  nop
    /* 7CF9C 8008C79C 80100200 */  sll        $v0, $v0, 2
    /* 7CFA0 8008C7A0 1680043C */  lui        $a0, %hi(D_80158814)
    /* 7CFA4 8008C7A4 14888424 */  addiu      $a0, $a0, %lo(D_80158814)
    /* 7CFA8 8008C7A8 1180013C */  lui        $at, %hi(D_8010C0E8)
    /* 7CFAC 8008C7AC 21082200 */  addu       $at, $at, $v0
    /* 7CFB0 8008C7B0 E8C0258C */  lw         $a1, %lo(D_8010C0E8)($at)
    /* 7CFB4 8008C7B4 FCA0020C */  jal        func_800A83F0
    /* 7CFB8 8008C7B8 00000000 */   nop
    /* 7CFBC 8008C7BC 4E004014 */  bnez       $v0, .L8008C8F8
    /* 7CFC0 8008C7C0 00000000 */   nop
    /* 7CFC4 8008C7C4 4100001A */  blez       $s0, .L8008C8CC
    /* 7CFC8 8008C7C8 40201300 */   sll       $a0, $s3, 1
    /* 7CFCC 8008C7CC 1280123C */  lui        $s2, %hi(D_80121340)
    /* 7CFD0 8008C7D0 40135226 */  addiu      $s2, $s2, %lo(D_80121340)
  .L8008C7D4:
    /* 7CFD4 8008C7D4 58A1020C */  jal        func_800A8560
    /* 7CFD8 8008C7D8 00000000 */   nop
    /* 7CFDC 8008C7DC AD87030C */  jal        func_800E1EB4
    /* 7CFE0 8008C7E0 21204002 */   addu      $a0, $s2, $zero
    /* 7CFE4 8008C7E4 0A004010 */  beqz       $v0, .L8008C810
    /* 7CFE8 8008C7E8 21204002 */   addu      $a0, $s2, $zero
    /* 7CFEC 8008C7EC 1680053C */  lui        $a1, %hi(D_8015881C)
    /* 7CFF0 8008C7F0 1C88A524 */  addiu      $a1, $a1, %lo(D_8015881C)
    /* 7CFF4 8008C7F4 CB3A030C */  jal        func_800CEB2C
    /* 7CFF8 8008C7F8 05000624 */   addiu     $a2, $zero, 0x5
    /* 7CFFC 8008C7FC 04004010 */  beqz       $v0, .L8008C810
    /* 7D000 8008C800 00000000 */   nop
    /* 7D004 8008C804 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 7D008 8008C808 F2FF001E */  bgtz       $s0, .L8008C7D4
    /* 7D00C 8008C80C 00000000 */   nop
  .L8008C810:
    /* 7D010 8008C810 2D00001A */  blez       $s0, .L8008C8C8
    /* 7D014 8008C814 21200000 */   addu      $a0, $zero, $zero
    /* 7D018 8008C818 FCA0020C */  jal        func_800A83F0
    /* 7D01C 8008C81C 04190524 */   addiu     $a1, $zero, 0x1904
    /* 7D020 8008C820 16004014 */  bnez       $v0, .L8008C87C
    /* 7D024 8008C824 00000000 */   nop
    /* 7D028 8008C828 2800001A */  blez       $s0, .L8008C8CC
    /* 7D02C 8008C82C 40201300 */   sll       $a0, $s3, 1
    /* 7D030 8008C830 1280123C */  lui        $s2, %hi(D_80121340)
    /* 7D034 8008C834 40135226 */  addiu      $s2, $s2, %lo(D_80121340)
  .L8008C838:
    /* 7D038 8008C838 58A1020C */  jal        func_800A8560
    /* 7D03C 8008C83C 00000000 */   nop
    /* 7D040 8008C840 AD87030C */  jal        func_800E1EB4
    /* 7D044 8008C844 21204002 */   addu      $a0, $s2, $zero
    /* 7D048 8008C848 0A004010 */  beqz       $v0, .L8008C874
    /* 7D04C 8008C84C 21204002 */   addu      $a0, $s2, $zero
    /* 7D050 8008C850 1680053C */  lui        $a1, %hi(D_8015881C)
    /* 7D054 8008C854 1C88A524 */  addiu      $a1, $a1, %lo(D_8015881C)
    /* 7D058 8008C858 CB3A030C */  jal        func_800CEB2C
    /* 7D05C 8008C85C 05000624 */   addiu     $a2, $zero, 0x5
    /* 7D060 8008C860 04004010 */  beqz       $v0, .L8008C874
    /* 7D064 8008C864 00000000 */   nop
    /* 7D068 8008C868 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 7D06C 8008C86C F2FF001E */  bgtz       $s0, .L8008C838
    /* 7D070 8008C870 00000000 */   nop
  .L8008C874:
    /* 7D074 8008C874 1500001A */  blez       $s0, .L8008C8CC
    /* 7D078 8008C878 40201300 */   sll       $a0, $s3, 1
  .L8008C87C:
    /* 7D07C 8008C87C 40101100 */  sll        $v0, $s1, 1
    /* 7D080 8008C880 21105100 */  addu       $v0, $v0, $s1
    /* 7D084 8008C884 80100200 */  sll        $v0, $v0, 2
    /* 7D088 8008C888 23105100 */  subu       $v0, $v0, $s1
    /* 7D08C 8008C88C 00110200 */  sll        $v0, $v0, 4
    /* 7D090 8008C890 23105100 */  subu       $v0, $v0, $s1
    /* 7D094 8008C894 C0100200 */  sll        $v0, $v0, 3
    /* 7D098 8008C898 1180013C */  lui        $at, %hi(D_80117698)
    /* 7D09C 8008C89C 21082200 */  addu       $at, $at, $v0
    /* 7D0A0 8008C8A0 98762384 */  lh         $v1, %lo(D_80117698)($at)
    /* 7D0A4 8008C8A4 00000000 */  nop
    /* 7D0A8 8008C8A8 40100300 */  sll        $v0, $v1, 1
    /* 7D0AC 8008C8AC 21104300 */  addu       $v0, $v0, $v1
    /* 7D0B0 8008C8B0 00110200 */  sll        $v0, $v0, 4
    /* 7D0B4 8008C8B4 1180013C */  lui        $at, %hi(D_80116AD5)
    /* 7D0B8 8008C8B8 21082200 */  addu       $at, $at, $v0
    /* 7D0BC 8008C8BC D56A20A0 */  sb         $zero, %lo(D_80116AD5)($at)
    /* 7D0C0 8008C8C0 CA310208 */  j          .L8008C728
    /* 7D0C4 8008C8C4 01009426 */   addiu     $s4, $s4, 0x1
  .L8008C8C8:
    /* 7D0C8 8008C8C8 40201300 */  sll        $a0, $s3, 1
  .L8008C8CC:
    /* 7D0CC 8008C8CC 21209300 */  addu       $a0, $a0, $s3
    /* 7D0D0 8008C8D0 80200400 */  sll        $a0, $a0, 2
    /* 7D0D4 8008C8D4 23209300 */  subu       $a0, $a0, $s3
    /* 7D0D8 8008C8D8 C0200400 */  sll        $a0, $a0, 3
    /* 7D0DC 8008C8DC 1180023C */  lui        $v0, %hi(D_80113EF2)
    /* 7D0E0 8008C8E0 F23E4224 */  addiu      $v0, $v0, %lo(D_80113EF2)
    /* 7D0E4 8008C8E4 21208200 */  addu       $a0, $a0, $v0
    /* 7D0E8 8008C8E8 1280053C */  lui        $a1, %hi(D_80121340)
    /* 7D0EC 8008C8EC 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* 7D0F0 8008C8F0 A987030C */  jal        func_800E1EA4
    /* 7D0F4 8008C8F4 0F000624 */   addiu     $a2, $zero, 0xF
  .L8008C8F8:
    /* 7D0F8 8008C8F8 E9A0020C */  jal        func_800A83A4
    /* 7D0FC 8008C8FC 00000000 */   nop
    /* 7D100 8008C900 2400BF8F */  lw         $ra, 0x24($sp)
    /* 7D104 8008C904 2000B48F */  lw         $s4, 0x20($sp)
    /* 7D108 8008C908 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 7D10C 8008C90C 1800B28F */  lw         $s2, 0x18($sp)
    /* 7D110 8008C910 1400B18F */  lw         $s1, 0x14($sp)
    /* 7D114 8008C914 1000B08F */  lw         $s0, 0x10($sp)
    /* 7D118 8008C918 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 7D11C 8008C91C 0800E003 */  jr         $ra
    /* 7D120 8008C920 00000000 */   nop
endlabel func_8008C6E0
