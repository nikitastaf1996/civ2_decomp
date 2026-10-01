.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001A648, 0x2DC

glabel func_8001A648
    /* AE48 8001A648 21280000 */  addu       $a1, $zero, $zero
    /* AE4C 8001A64C FF008230 */  andi       $v0, $a0, 0xFF
    /* AE50 8001A650 FFFF4624 */  addiu      $a2, $v0, -0x1
    /* AE54 8001A654 00140500 */  sll        $v0, $a1, 16
  .L8001A658:
    /* AE58 8001A658 03140200 */  sra        $v0, $v0, 16
    /* AE5C 8001A65C C0180200 */  sll        $v1, $v0, 3
    /* AE60 8001A660 21186200 */  addu       $v1, $v1, $v0
    /* AE64 8001A664 80180300 */  sll        $v1, $v1, 2
    /* AE68 8001A668 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* AE6C 8001A66C 21082300 */  addu       $at, $at, $v1
    /* AE70 8001A670 F4A02290 */  lbu        $v0, %lo(D_8012A0F4)($at)
    /* AE74 8001A674 00000000 */  nop
    /* AE78 8001A678 2A10C200 */  slt        $v0, $a2, $v0
    /* AE7C 8001A67C 1B004010 */  beqz       $v0, .L8001A6EC
    /* AE80 8001A680 00000000 */   nop
    /* AE84 8001A684 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* AE88 8001A688 21082300 */  addu       $at, $at, $v1
    /* AE8C 8001A68C F4A02290 */  lbu        $v0, %lo(D_8012A0F4)($at)
    /* AE90 8001A690 00000000 */  nop
    /* AE94 8001A694 23104400 */  subu       $v0, $v0, $a0
    /* AE98 8001A698 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* AE9C 8001A69C 21082300 */  addu       $at, $at, $v1
    /* AEA0 8001A6A0 F4A022A0 */  sb         $v0, %lo(D_8012A0F4)($at)
    /* AEA4 8001A6A4 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* AEA8 8001A6A8 21082300 */  addu       $at, $at, $v1
    /* AEAC 8001A6AC F5A02290 */  lbu        $v0, %lo(D_8012A0F5)($at)
    /* AEB0 8001A6B0 00000000 */  nop
    /* AEB4 8001A6B4 23104400 */  subu       $v0, $v0, $a0
    /* AEB8 8001A6B8 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* AEBC 8001A6BC 21082300 */  addu       $at, $at, $v1
    /* AEC0 8001A6C0 F5A022A0 */  sb         $v0, %lo(D_8012A0F5)($at)
    /* AEC4 8001A6C4 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* AEC8 8001A6C8 21082300 */  addu       $at, $at, $v1
    /* AECC 8001A6CC F6A02290 */  lbu        $v0, %lo(D_8012A0F6)($at)
    /* AED0 8001A6D0 00000000 */  nop
    /* AED4 8001A6D4 23104400 */  subu       $v0, $v0, $a0
    /* AED8 8001A6D8 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* AEDC 8001A6DC 21082300 */  addu       $at, $at, $v1
    /* AEE0 8001A6E0 F6A022A0 */  sb         $v0, %lo(D_8012A0F6)($at)
    /* AEE4 8001A6E4 CA690008 */  j          .L8001A728
    /* AEE8 8001A6E8 0100A224 */   addiu     $v0, $a1, 0x1
  .L8001A6EC:
    /* AEEC 8001A6EC 001C0500 */  sll        $v1, $a1, 16
    /* AEF0 8001A6F0 031C0300 */  sra        $v1, $v1, 16
    /* AEF4 8001A6F4 C0100300 */  sll        $v0, $v1, 3
    /* AEF8 8001A6F8 21104300 */  addu       $v0, $v0, $v1
    /* AEFC 8001A6FC 80100200 */  sll        $v0, $v0, 2
    /* AF00 8001A700 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* AF04 8001A704 21082200 */  addu       $at, $at, $v0
    /* AF08 8001A708 F4A020A0 */  sb         $zero, %lo(D_8012A0F4)($at)
    /* AF0C 8001A70C 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* AF10 8001A710 21082200 */  addu       $at, $at, $v0
    /* AF14 8001A714 F5A020A0 */  sb         $zero, %lo(D_8012A0F5)($at)
    /* AF18 8001A718 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* AF1C 8001A71C 21082200 */  addu       $at, $at, $v0
    /* AF20 8001A720 F6A020A0 */  sb         $zero, %lo(D_8012A0F6)($at)
    /* AF24 8001A724 0100A224 */  addiu      $v0, $a1, 0x1
  .L8001A728:
    /* AF28 8001A728 21284000 */  addu       $a1, $v0, $zero
    /* AF2C 8001A72C 00140200 */  sll        $v0, $v0, 16
    /* AF30 8001A730 03140200 */  sra        $v0, $v0, 16
    /* AF34 8001A734 00074228 */  slti       $v0, $v0, 0x700
    /* AF38 8001A738 C7FF4014 */  bnez       $v0, .L8001A658
    /* AF3C 8001A73C 00140500 */   sll       $v0, $a1, 16
    /* AF40 8001A740 21280000 */  addu       $a1, $zero, $zero
    /* AF44 8001A744 FF008230 */  andi       $v0, $a0, 0xFF
    /* AF48 8001A748 FFFF4624 */  addiu      $a2, $v0, -0x1
    /* AF4C 8001A74C 00140500 */  sll        $v0, $a1, 16
  .L8001A750:
    /* AF50 8001A750 03140200 */  sra        $v0, $v0, 16
    /* AF54 8001A754 C0180200 */  sll        $v1, $v0, 3
    /* AF58 8001A758 21186200 */  addu       $v1, $v1, $v0
    /* AF5C 8001A75C 80180300 */  sll        $v1, $v1, 2
    /* AF60 8001A760 1780013C */  lui        $at, %hi(D_80172E98)
    /* AF64 8001A764 21082300 */  addu       $at, $at, $v1
    /* AF68 8001A768 982E2290 */  lbu        $v0, %lo(D_80172E98)($at)
    /* AF6C 8001A76C 00000000 */  nop
    /* AF70 8001A770 2A10C200 */  slt        $v0, $a2, $v0
    /* AF74 8001A774 1B004010 */  beqz       $v0, .L8001A7E4
    /* AF78 8001A778 00000000 */   nop
    /* AF7C 8001A77C 1780013C */  lui        $at, %hi(D_80172E98)
    /* AF80 8001A780 21082300 */  addu       $at, $at, $v1
    /* AF84 8001A784 982E2290 */  lbu        $v0, %lo(D_80172E98)($at)
    /* AF88 8001A788 00000000 */  nop
    /* AF8C 8001A78C 23104400 */  subu       $v0, $v0, $a0
    /* AF90 8001A790 1780013C */  lui        $at, %hi(D_80172E98)
    /* AF94 8001A794 21082300 */  addu       $at, $at, $v1
    /* AF98 8001A798 982E22A0 */  sb         $v0, %lo(D_80172E98)($at)
    /* AF9C 8001A79C 1780013C */  lui        $at, %hi(D_80172E99)
    /* AFA0 8001A7A0 21082300 */  addu       $at, $at, $v1
    /* AFA4 8001A7A4 992E2290 */  lbu        $v0, %lo(D_80172E99)($at)
    /* AFA8 8001A7A8 00000000 */  nop
    /* AFAC 8001A7AC 23104400 */  subu       $v0, $v0, $a0
    /* AFB0 8001A7B0 1780013C */  lui        $at, %hi(D_80172E99)
    /* AFB4 8001A7B4 21082300 */  addu       $at, $at, $v1
    /* AFB8 8001A7B8 992E22A0 */  sb         $v0, %lo(D_80172E99)($at)
    /* AFBC 8001A7BC 1780013C */  lui        $at, %hi(D_80172E9A)
    /* AFC0 8001A7C0 21082300 */  addu       $at, $at, $v1
    /* AFC4 8001A7C4 9A2E2290 */  lbu        $v0, %lo(D_80172E9A)($at)
    /* AFC8 8001A7C8 00000000 */  nop
    /* AFCC 8001A7CC 23104400 */  subu       $v0, $v0, $a0
    /* AFD0 8001A7D0 1780013C */  lui        $at, %hi(D_80172E9A)
    /* AFD4 8001A7D4 21082300 */  addu       $at, $at, $v1
    /* AFD8 8001A7D8 9A2E22A0 */  sb         $v0, %lo(D_80172E9A)($at)
    /* AFDC 8001A7DC 086A0008 */  j          .L8001A820
    /* AFE0 8001A7E0 0100A224 */   addiu     $v0, $a1, 0x1
  .L8001A7E4:
    /* AFE4 8001A7E4 001C0500 */  sll        $v1, $a1, 16
    /* AFE8 8001A7E8 031C0300 */  sra        $v1, $v1, 16
    /* AFEC 8001A7EC C0100300 */  sll        $v0, $v1, 3
    /* AFF0 8001A7F0 21104300 */  addu       $v0, $v0, $v1
    /* AFF4 8001A7F4 80100200 */  sll        $v0, $v0, 2
    /* AFF8 8001A7F8 1780013C */  lui        $at, %hi(D_80172E98)
    /* AFFC 8001A7FC 21082200 */  addu       $at, $at, $v0
    /* B000 8001A800 982E20A0 */  sb         $zero, %lo(D_80172E98)($at)
    /* B004 8001A804 1780013C */  lui        $at, %hi(D_80172E99)
    /* B008 8001A808 21082200 */  addu       $at, $at, $v0
    /* B00C 8001A80C 992E20A0 */  sb         $zero, %lo(D_80172E99)($at)
    /* B010 8001A810 1780013C */  lui        $at, %hi(D_80172E9A)
    /* B014 8001A814 21082200 */  addu       $at, $at, $v0
    /* B018 8001A818 9A2E20A0 */  sb         $zero, %lo(D_80172E9A)($at)
    /* B01C 8001A81C 0100A224 */  addiu      $v0, $a1, 0x1
  .L8001A820:
    /* B020 8001A820 21284000 */  addu       $a1, $v0, $zero
    /* B024 8001A824 00140200 */  sll        $v0, $v0, 16
    /* B028 8001A828 03140200 */  sra        $v0, $v0, 16
    /* B02C 8001A82C 04004228 */  slti       $v0, $v0, 0x4
    /* B030 8001A830 C7FF4014 */  bnez       $v0, .L8001A750
    /* B034 8001A834 00140500 */   sll       $v0, $a1, 16
    /* B038 8001A838 21280000 */  addu       $a1, $zero, $zero
    /* B03C 8001A83C 001C0500 */  sll        $v1, $a1, 16
  .L8001A840:
    /* B040 8001A840 031C0300 */  sra        $v1, $v1, 16
    /* B044 8001A844 C0100300 */  sll        $v0, $v1, 3
    /* B048 8001A848 21104300 */  addu       $v0, $v0, $v1
    /* B04C 8001A84C 80100200 */  sll        $v0, $v0, 2
    /* B050 8001A850 1380013C */  lui        $at, %hi(D_8012A0F4)
    /* B054 8001A854 21082200 */  addu       $at, $at, $v0
    /* B058 8001A858 F4A02490 */  lbu        $a0, %lo(D_8012A0F4)($at)
    /* B05C 8001A85C 1380013C */  lui        $at, %hi(D_8012A0F5)
    /* B060 8001A860 21082200 */  addu       $at, $at, $v0
    /* B064 8001A864 F5A02390 */  lbu        $v1, %lo(D_8012A0F5)($at)
    /* B068 8001A868 00000000 */  nop
    /* B06C 8001A86C 21208300 */  addu       $a0, $a0, $v1
    /* B070 8001A870 1380013C */  lui        $at, %hi(D_8012A0F6)
    /* B074 8001A874 21082200 */  addu       $at, $at, $v0
    /* B078 8001A878 F6A02290 */  lbu        $v0, %lo(D_8012A0F6)($at)
    /* B07C 8001A87C 00000000 */  nop
    /* B080 8001A880 21208200 */  addu       $a0, $a0, $v0
    /* B084 8001A884 25008014 */  bnez       $a0, .L8001A91C
    /* B088 8001A888 21100000 */   addu      $v0, $zero, $zero
    /* B08C 8001A88C 0100A224 */  addiu      $v0, $a1, 0x1
    /* B090 8001A890 21284000 */  addu       $a1, $v0, $zero
    /* B094 8001A894 00140200 */  sll        $v0, $v0, 16
    /* B098 8001A898 03140200 */  sra        $v0, $v0, 16
    /* B09C 8001A89C 00074228 */  slti       $v0, $v0, 0x700
    /* B0A0 8001A8A0 E7FF4014 */  bnez       $v0, .L8001A840
    /* B0A4 8001A8A4 001C0500 */   sll       $v1, $a1, 16
    /* B0A8 8001A8A8 21280000 */  addu       $a1, $zero, $zero
    /* B0AC 8001A8AC 001C0500 */  sll        $v1, $a1, 16
  .L8001A8B0:
    /* B0B0 8001A8B0 031C0300 */  sra        $v1, $v1, 16
    /* B0B4 8001A8B4 C0100300 */  sll        $v0, $v1, 3
    /* B0B8 8001A8B8 21104300 */  addu       $v0, $v0, $v1
    /* B0BC 8001A8BC 80100200 */  sll        $v0, $v0, 2
    /* B0C0 8001A8C0 1780013C */  lui        $at, %hi(D_80172E98)
    /* B0C4 8001A8C4 21082200 */  addu       $at, $at, $v0
    /* B0C8 8001A8C8 982E2490 */  lbu        $a0, %lo(D_80172E98)($at)
    /* B0CC 8001A8CC 1780013C */  lui        $at, %hi(D_80172E99)
    /* B0D0 8001A8D0 21082200 */  addu       $at, $at, $v0
    /* B0D4 8001A8D4 992E2390 */  lbu        $v1, %lo(D_80172E99)($at)
    /* B0D8 8001A8D8 00000000 */  nop
    /* B0DC 8001A8DC 21208300 */  addu       $a0, $a0, $v1
    /* B0E0 8001A8E0 1780013C */  lui        $at, %hi(D_80172E9A)
    /* B0E4 8001A8E4 21082200 */  addu       $at, $at, $v0
    /* B0E8 8001A8E8 9A2E2290 */  lbu        $v0, %lo(D_80172E9A)($at)
    /* B0EC 8001A8EC 00000000 */  nop
    /* B0F0 8001A8F0 21208200 */  addu       $a0, $a0, $v0
    /* B0F4 8001A8F4 09008014 */  bnez       $a0, .L8001A91C
    /* B0F8 8001A8F8 21100000 */   addu      $v0, $zero, $zero
    /* B0FC 8001A8FC 0100A224 */  addiu      $v0, $a1, 0x1
    /* B100 8001A900 21284000 */  addu       $a1, $v0, $zero
    /* B104 8001A904 00140200 */  sll        $v0, $v0, 16
    /* B108 8001A908 03140200 */  sra        $v0, $v0, 16
    /* B10C 8001A90C 04004228 */  slti       $v0, $v0, 0x4
    /* B110 8001A910 E7FF4014 */  bnez       $v0, .L8001A8B0
    /* B114 8001A914 001C0500 */   sll       $v1, $a1, 16
    /* B118 8001A918 01000224 */  addiu      $v0, $zero, 0x1
  .L8001A91C:
    /* B11C 8001A91C 0800E003 */  jr         $ra
    /* B120 8001A920 00000000 */   nop
endlabel func_8001A648
