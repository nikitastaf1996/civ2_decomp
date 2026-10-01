.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CC530, 0x1080

glabel func_800CC530
    /* BCD30 800CC530 A0F8BD27 */  addiu      $sp, $sp, -0x760
    /* BCD34 800CC534 5C07BFAF */  sw         $ra, 0x75C($sp)
    /* BCD38 800CC538 5807B4AF */  sw         $s4, 0x758($sp)
    /* BCD3C 800CC53C 5407B3AF */  sw         $s3, 0x754($sp)
    /* BCD40 800CC540 5007B2AF */  sw         $s2, 0x750($sp)
    /* BCD44 800CC544 4C07B1AF */  sw         $s1, 0x74C($sp)
    /* BCD48 800CC548 4807B0AF */  sw         $s0, 0x748($sp)
    /* BCD4C 800CC54C 21808000 */  addu       $s0, $a0, $zero
    /* BCD50 800CC550 9AE0030C */  jal        func_800F8268
    /* BCD54 800CC554 2000A427 */   addiu     $a0, $sp, 0x20
    /* BCD58 800CC558 9AE0030C */  jal        func_800F8268
    /* BCD5C 800CC55C 5000A427 */   addiu     $a0, $sp, 0x50
    /* BCD60 800CC560 9AE0030C */  jal        func_800F8268
    /* BCD64 800CC564 8000A427 */   addiu     $a0, $sp, 0x80
    /* BCD68 800CC568 9AE0030C */  jal        func_800F8268
    /* BCD6C 800CC56C B000A427 */   addiu     $a0, $sp, 0xB0
    /* BCD70 800CC570 9AE0030C */  jal        func_800F8268
    /* BCD74 800CC574 E000A427 */   addiu     $a0, $sp, 0xE0
    /* BCD78 800CC578 9AE0030C */  jal        func_800F8268
    /* BCD7C 800CC57C 1001A427 */   addiu     $a0, $sp, 0x110
    /* BCD80 800CC580 9AE0030C */  jal        func_800F8268
    /* BCD84 800CC584 4001A427 */   addiu     $a0, $sp, 0x140
    /* BCD88 800CC588 9AE0030C */  jal        func_800F8268
    /* BCD8C 800CC58C 7001A427 */   addiu     $a0, $sp, 0x170
    /* BCD90 800CC590 9AE0030C */  jal        func_800F8268
    /* BCD94 800CC594 A001A427 */   addiu     $a0, $sp, 0x1A0
    /* BCD98 800CC598 9AE0030C */  jal        func_800F8268
    /* BCD9C 800CC59C D001A427 */   addiu     $a0, $sp, 0x1D0
    /* BCDA0 800CC5A0 9AE0030C */  jal        func_800F8268
    /* BCDA4 800CC5A4 0002A427 */   addiu     $a0, $sp, 0x200
    /* BCDA8 800CC5A8 9AE0030C */  jal        func_800F8268
    /* BCDAC 800CC5AC 3002A427 */   addiu     $a0, $sp, 0x230
    /* BCDB0 800CC5B0 6002A727 */  addiu      $a3, $sp, 0x260
    /* BCDB4 800CC5B4 0180063C */  lui        $a2, %hi(D_80012758)
    /* BCDB8 800CC5B8 5827C624 */  addiu      $a2, $a2, %lo(D_80012758)
    /* BCDBC 800CC5BC 2510E600 */  or         $v0, $a3, $a2
    /* BCDC0 800CC5C0 03004230 */  andi       $v0, $v0, 0x3
    /* BCDC4 800CC5C4 16004010 */  beqz       $v0, .L800CC620
    /* BCDC8 800CC5C8 D004C824 */   addiu     $t0, $a2, 0x4D0
  .L800CC5CC:
    /* BCDCC 800CC5CC 0300C288 */  lwl        $v0, 0x3($a2)
    /* BCDD0 800CC5D0 0000C298 */  lwr        $v0, 0x0($a2)
    /* BCDD4 800CC5D4 0700C388 */  lwl        $v1, 0x7($a2)
    /* BCDD8 800CC5D8 0400C398 */  lwr        $v1, 0x4($a2)
    /* BCDDC 800CC5DC 0B00C488 */  lwl        $a0, 0xB($a2)
    /* BCDE0 800CC5E0 0800C498 */  lwr        $a0, 0x8($a2)
    /* BCDE4 800CC5E4 0F00C588 */  lwl        $a1, 0xF($a2)
    /* BCDE8 800CC5E8 0C00C598 */  lwr        $a1, 0xC($a2)
    /* BCDEC 800CC5EC 0300E2A8 */  swl        $v0, 0x3($a3)
    /* BCDF0 800CC5F0 0000E2B8 */  swr        $v0, 0x0($a3)
    /* BCDF4 800CC5F4 0700E3A8 */  swl        $v1, 0x7($a3)
    /* BCDF8 800CC5F8 0400E3B8 */  swr        $v1, 0x4($a3)
    /* BCDFC 800CC5FC 0B00E4A8 */  swl        $a0, 0xB($a3)
    /* BCE00 800CC600 0800E4B8 */  swr        $a0, 0x8($a3)
    /* BCE04 800CC604 0F00E5A8 */  swl        $a1, 0xF($a3)
    /* BCE08 800CC608 0C00E5B8 */  swr        $a1, 0xC($a3)
    /* BCE0C 800CC60C 1000C624 */  addiu      $a2, $a2, 0x10
    /* BCE10 800CC610 EEFFC814 */  bne        $a2, $t0, .L800CC5CC
    /* BCE14 800CC614 1000E724 */   addiu     $a3, $a3, 0x10
    /* BCE18 800CC618 94310308 */  j          .L800CC650
    /* BCE1C 800CC61C 5000B127 */   addiu     $s1, $sp, 0x50
  .L800CC620:
    /* BCE20 800CC620 0000C28C */  lw         $v0, 0x0($a2)
    /* BCE24 800CC624 0400C38C */  lw         $v1, 0x4($a2)
    /* BCE28 800CC628 0800C48C */  lw         $a0, 0x8($a2)
    /* BCE2C 800CC62C 0C00C58C */  lw         $a1, 0xC($a2)
    /* BCE30 800CC630 0000E2AC */  sw         $v0, 0x0($a3)
    /* BCE34 800CC634 0400E3AC */  sw         $v1, 0x4($a3)
    /* BCE38 800CC638 0800E4AC */  sw         $a0, 0x8($a3)
    /* BCE3C 800CC63C 0C00E5AC */  sw         $a1, 0xC($a3)
    /* BCE40 800CC640 1000C624 */  addiu      $a2, $a2, 0x10
    /* BCE44 800CC644 F6FFC814 */  bne        $a2, $t0, .L800CC620
    /* BCE48 800CC648 1000E724 */   addiu     $a3, $a3, 0x10
    /* BCE4C 800CC64C 5000B127 */  addiu      $s1, $sp, 0x50
  .L800CC650:
    /* BCE50 800CC650 21202002 */  addu       $a0, $s1, $zero
    /* BCE54 800CC654 B9010524 */  addiu      $a1, $zero, 0x1B9
    /* BCE58 800CC658 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* BCE5C 800CC65C 44E3030C */  jal        func_800F8D10
    /* BCE60 800CC660 EC000724 */   addiu     $a3, $zero, 0xEC
    /* BCE64 800CC664 21004014 */  bnez       $v0, .L800CC6EC
    /* BCE68 800CC668 E0010524 */   addiu     $a1, $zero, 0x1E0
    /* BCE6C 800CC66C 3002A427 */  addiu      $a0, $sp, 0x230
    /* BCE70 800CC670 4CE1030C */  jal        func_800F8530
    /* BCE74 800CC674 02000524 */   addiu     $a1, $zero, 0x2
    /* BCE78 800CC678 0002A427 */  addiu      $a0, $sp, 0x200
    /* BCE7C 800CC67C 4CE1030C */  jal        func_800F8530
    /* BCE80 800CC680 02000524 */   addiu     $a1, $zero, 0x2
    /* BCE84 800CC684 D001A427 */  addiu      $a0, $sp, 0x1D0
    /* BCE88 800CC688 4CE1030C */  jal        func_800F8530
    /* BCE8C 800CC68C 02000524 */   addiu     $a1, $zero, 0x2
    /* BCE90 800CC690 A001A427 */  addiu      $a0, $sp, 0x1A0
    /* BCE94 800CC694 4CE1030C */  jal        func_800F8530
    /* BCE98 800CC698 02000524 */   addiu     $a1, $zero, 0x2
    /* BCE9C 800CC69C 7001A427 */  addiu      $a0, $sp, 0x170
    /* BCEA0 800CC6A0 4CE1030C */  jal        func_800F8530
    /* BCEA4 800CC6A4 02000524 */   addiu     $a1, $zero, 0x2
    /* BCEA8 800CC6A8 4001A427 */  addiu      $a0, $sp, 0x140
    /* BCEAC 800CC6AC 4CE1030C */  jal        func_800F8530
    /* BCEB0 800CC6B0 02000524 */   addiu     $a1, $zero, 0x2
    /* BCEB4 800CC6B4 1001A427 */  addiu      $a0, $sp, 0x110
    /* BCEB8 800CC6B8 4CE1030C */  jal        func_800F8530
    /* BCEBC 800CC6BC 02000524 */   addiu     $a1, $zero, 0x2
    /* BCEC0 800CC6C0 E000A427 */  addiu      $a0, $sp, 0xE0
    /* BCEC4 800CC6C4 4CE1030C */  jal        func_800F8530
    /* BCEC8 800CC6C8 02000524 */   addiu     $a1, $zero, 0x2
    /* BCECC 800CC6CC B000A427 */  addiu      $a0, $sp, 0xB0
    /* BCED0 800CC6D0 4CE1030C */  jal        func_800F8530
    /* BCED4 800CC6D4 02000524 */   addiu     $a1, $zero, 0x2
    /* BCED8 800CC6D8 8000A427 */  addiu      $a0, $sp, 0x80
    /* BCEDC 800CC6DC 4CE1030C */  jal        func_800F8530
    /* BCEE0 800CC6E0 02000524 */   addiu     $a1, $zero, 0x2
    /* BCEE4 800CC6E4 4F340308 */  j          .L800CD13C
    /* BCEE8 800CC6E8 21202002 */   addu      $a0, $s1, $zero
  .L800CC6EC:
    /* BCEEC 800CC6EC 8000B127 */  addiu      $s1, $sp, 0x80
    /* BCEF0 800CC6F0 21202002 */  addu       $a0, $s1, $zero
    /* BCEF4 800CC6F4 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* BCEF8 800CC6F8 44E3030C */  jal        func_800F8D10
    /* BCEFC 800CC6FC EC000724 */   addiu     $a3, $zero, 0xEC
    /* BCF00 800CC700 1E004014 */  bnez       $v0, .L800CC77C
    /* BCF04 800CC704 C7010524 */   addiu     $a1, $zero, 0x1C7
    /* BCF08 800CC708 3002A427 */  addiu      $a0, $sp, 0x230
    /* BCF0C 800CC70C 4CE1030C */  jal        func_800F8530
    /* BCF10 800CC710 02000524 */   addiu     $a1, $zero, 0x2
    /* BCF14 800CC714 0002A427 */  addiu      $a0, $sp, 0x200
    /* BCF18 800CC718 4CE1030C */  jal        func_800F8530
    /* BCF1C 800CC71C 02000524 */   addiu     $a1, $zero, 0x2
    /* BCF20 800CC720 D001A427 */  addiu      $a0, $sp, 0x1D0
    /* BCF24 800CC724 4CE1030C */  jal        func_800F8530
    /* BCF28 800CC728 02000524 */   addiu     $a1, $zero, 0x2
    /* BCF2C 800CC72C A001A427 */  addiu      $a0, $sp, 0x1A0
    /* BCF30 800CC730 4CE1030C */  jal        func_800F8530
    /* BCF34 800CC734 02000524 */   addiu     $a1, $zero, 0x2
    /* BCF38 800CC738 7001A427 */  addiu      $a0, $sp, 0x170
    /* BCF3C 800CC73C 4CE1030C */  jal        func_800F8530
    /* BCF40 800CC740 02000524 */   addiu     $a1, $zero, 0x2
    /* BCF44 800CC744 4001A427 */  addiu      $a0, $sp, 0x140
    /* BCF48 800CC748 4CE1030C */  jal        func_800F8530
    /* BCF4C 800CC74C 02000524 */   addiu     $a1, $zero, 0x2
    /* BCF50 800CC750 1001A427 */  addiu      $a0, $sp, 0x110
    /* BCF54 800CC754 4CE1030C */  jal        func_800F8530
    /* BCF58 800CC758 02000524 */   addiu     $a1, $zero, 0x2
    /* BCF5C 800CC75C E000A427 */  addiu      $a0, $sp, 0xE0
    /* BCF60 800CC760 4CE1030C */  jal        func_800F8530
    /* BCF64 800CC764 02000524 */   addiu     $a1, $zero, 0x2
    /* BCF68 800CC768 B000A427 */  addiu      $a0, $sp, 0xB0
    /* BCF6C 800CC76C 4CE1030C */  jal        func_800F8530
    /* BCF70 800CC770 02000524 */   addiu     $a1, $zero, 0x2
    /* BCF74 800CC774 4C340308 */  j          .L800CD130
    /* BCF78 800CC778 21202002 */   addu      $a0, $s1, $zero
  .L800CC77C:
    /* BCF7C 800CC77C B000B127 */  addiu      $s1, $sp, 0xB0
    /* BCF80 800CC780 21202002 */  addu       $a0, $s1, $zero
    /* BCF84 800CC784 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* BCF88 800CC788 44E3030C */  jal        func_800F8D10
    /* BCF8C 800CC78C EC000724 */   addiu     $a3, $zero, 0xEC
    /* BCF90 800CC790 1B004014 */  bnez       $v0, .L800CC800
    /* BCF94 800CC794 EA010524 */   addiu     $a1, $zero, 0x1EA
    /* BCF98 800CC798 3002A427 */  addiu      $a0, $sp, 0x230
    /* BCF9C 800CC79C 4CE1030C */  jal        func_800F8530
    /* BCFA0 800CC7A0 02000524 */   addiu     $a1, $zero, 0x2
    /* BCFA4 800CC7A4 0002A427 */  addiu      $a0, $sp, 0x200
    /* BCFA8 800CC7A8 4CE1030C */  jal        func_800F8530
    /* BCFAC 800CC7AC 02000524 */   addiu     $a1, $zero, 0x2
    /* BCFB0 800CC7B0 D001A427 */  addiu      $a0, $sp, 0x1D0
    /* BCFB4 800CC7B4 4CE1030C */  jal        func_800F8530
    /* BCFB8 800CC7B8 02000524 */   addiu     $a1, $zero, 0x2
    /* BCFBC 800CC7BC A001A427 */  addiu      $a0, $sp, 0x1A0
    /* BCFC0 800CC7C0 4CE1030C */  jal        func_800F8530
    /* BCFC4 800CC7C4 02000524 */   addiu     $a1, $zero, 0x2
    /* BCFC8 800CC7C8 7001A427 */  addiu      $a0, $sp, 0x170
    /* BCFCC 800CC7CC 4CE1030C */  jal        func_800F8530
    /* BCFD0 800CC7D0 02000524 */   addiu     $a1, $zero, 0x2
    /* BCFD4 800CC7D4 4001A427 */  addiu      $a0, $sp, 0x140
    /* BCFD8 800CC7D8 4CE1030C */  jal        func_800F8530
    /* BCFDC 800CC7DC 02000524 */   addiu     $a1, $zero, 0x2
    /* BCFE0 800CC7E0 1001A427 */  addiu      $a0, $sp, 0x110
    /* BCFE4 800CC7E4 4CE1030C */  jal        func_800F8530
    /* BCFE8 800CC7E8 02000524 */   addiu     $a1, $zero, 0x2
    /* BCFEC 800CC7EC E000A427 */  addiu      $a0, $sp, 0xE0
    /* BCFF0 800CC7F0 4CE1030C */  jal        func_800F8530
    /* BCFF4 800CC7F4 02000524 */   addiu     $a1, $zero, 0x2
    /* BCFF8 800CC7F8 49340308 */  j          .L800CD124
    /* BCFFC 800CC7FC 21202002 */   addu      $a0, $s1, $zero
  .L800CC800:
    /* BD000 800CC800 E000B127 */  addiu      $s1, $sp, 0xE0
    /* BD004 800CC804 21202002 */  addu       $a0, $s1, $zero
    /* BD008 800CC808 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* BD00C 800CC80C 44E3030C */  jal        func_800F8D10
    /* BD010 800CC810 EC000724 */   addiu     $a3, $zero, 0xEC
    /* BD014 800CC814 18004014 */  bnez       $v0, .L800CC878
    /* BD018 800CC818 D6010524 */   addiu     $a1, $zero, 0x1D6
    /* BD01C 800CC81C 3002A427 */  addiu      $a0, $sp, 0x230
    /* BD020 800CC820 4CE1030C */  jal        func_800F8530
    /* BD024 800CC824 02000524 */   addiu     $a1, $zero, 0x2
    /* BD028 800CC828 0002A427 */  addiu      $a0, $sp, 0x200
    /* BD02C 800CC82C 4CE1030C */  jal        func_800F8530
    /* BD030 800CC830 02000524 */   addiu     $a1, $zero, 0x2
    /* BD034 800CC834 D001A427 */  addiu      $a0, $sp, 0x1D0
    /* BD038 800CC838 4CE1030C */  jal        func_800F8530
    /* BD03C 800CC83C 02000524 */   addiu     $a1, $zero, 0x2
    /* BD040 800CC840 A001A427 */  addiu      $a0, $sp, 0x1A0
    /* BD044 800CC844 4CE1030C */  jal        func_800F8530
    /* BD048 800CC848 02000524 */   addiu     $a1, $zero, 0x2
    /* BD04C 800CC84C 7001A427 */  addiu      $a0, $sp, 0x170
    /* BD050 800CC850 4CE1030C */  jal        func_800F8530
    /* BD054 800CC854 02000524 */   addiu     $a1, $zero, 0x2
    /* BD058 800CC858 4001A427 */  addiu      $a0, $sp, 0x140
    /* BD05C 800CC85C 4CE1030C */  jal        func_800F8530
    /* BD060 800CC860 02000524 */   addiu     $a1, $zero, 0x2
    /* BD064 800CC864 1001A427 */  addiu      $a0, $sp, 0x110
    /* BD068 800CC868 4CE1030C */  jal        func_800F8530
    /* BD06C 800CC86C 02000524 */   addiu     $a1, $zero, 0x2
    /* BD070 800CC870 46340308 */  j          .L800CD118
    /* BD074 800CC874 21202002 */   addu      $a0, $s1, $zero
  .L800CC878:
    /* BD078 800CC878 1001B127 */  addiu      $s1, $sp, 0x110
    /* BD07C 800CC87C 21202002 */  addu       $a0, $s1, $zero
    /* BD080 800CC880 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* BD084 800CC884 44E3030C */  jal        func_800F8D10
    /* BD088 800CC888 EC000724 */   addiu     $a3, $zero, 0xEC
    /* BD08C 800CC88C 15004014 */  bnez       $v0, .L800CC8E4
    /* BD090 800CC890 EB010524 */   addiu     $a1, $zero, 0x1EB
    /* BD094 800CC894 3002A427 */  addiu      $a0, $sp, 0x230
    /* BD098 800CC898 4CE1030C */  jal        func_800F8530
    /* BD09C 800CC89C 02000524 */   addiu     $a1, $zero, 0x2
    /* BD0A0 800CC8A0 0002A427 */  addiu      $a0, $sp, 0x200
    /* BD0A4 800CC8A4 4CE1030C */  jal        func_800F8530
    /* BD0A8 800CC8A8 02000524 */   addiu     $a1, $zero, 0x2
    /* BD0AC 800CC8AC D001A427 */  addiu      $a0, $sp, 0x1D0
    /* BD0B0 800CC8B0 4CE1030C */  jal        func_800F8530
    /* BD0B4 800CC8B4 02000524 */   addiu     $a1, $zero, 0x2
    /* BD0B8 800CC8B8 A001A427 */  addiu      $a0, $sp, 0x1A0
    /* BD0BC 800CC8BC 4CE1030C */  jal        func_800F8530
    /* BD0C0 800CC8C0 02000524 */   addiu     $a1, $zero, 0x2
    /* BD0C4 800CC8C4 7001A427 */  addiu      $a0, $sp, 0x170
    /* BD0C8 800CC8C8 4CE1030C */  jal        func_800F8530
    /* BD0CC 800CC8CC 02000524 */   addiu     $a1, $zero, 0x2
    /* BD0D0 800CC8D0 4001A427 */  addiu      $a0, $sp, 0x140
    /* BD0D4 800CC8D4 4CE1030C */  jal        func_800F8530
    /* BD0D8 800CC8D8 02000524 */   addiu     $a1, $zero, 0x2
    /* BD0DC 800CC8DC 43340308 */  j          .L800CD10C
    /* BD0E0 800CC8E0 21202002 */   addu      $a0, $s1, $zero
  .L800CC8E4:
    /* BD0E4 800CC8E4 4001B127 */  addiu      $s1, $sp, 0x140
    /* BD0E8 800CC8E8 21202002 */  addu       $a0, $s1, $zero
    /* BD0EC 800CC8EC 0A000624 */  addiu      $a2, $zero, 0xA
    /* BD0F0 800CC8F0 44E3030C */  jal        func_800F8D10
    /* BD0F4 800CC8F4 EC000724 */   addiu     $a3, $zero, 0xEC
    /* BD0F8 800CC8F8 F1014010 */  beqz       $v0, .L800CD0C0
    /* BD0FC 800CC8FC 03000224 */   addiu     $v0, $zero, 0x3
    /* BD100 800CC900 FC08038E */  lw         $v1, 0x8FC($s0)
    /* BD104 800CC904 00000000 */  nop
    /* BD108 800CC908 21006210 */  beq        $v1, $v0, .L800CC990
    /* BD10C 800CC90C 40010224 */   addiu     $v0, $zero, 0x140
    /* BD110 800CC910 3007A0A7 */  sh         $zero, 0x730($sp)
    /* BD114 800CC914 3207A0A7 */  sh         $zero, 0x732($sp)
    /* BD118 800CC918 3407A2A7 */  sh         $v0, 0x734($sp)
    /* BD11C 800CC91C F0000224 */  addiu      $v0, $zero, 0xF0
    /* BD120 800CC920 3607A2A7 */  sh         $v0, 0x736($sp)
    /* BD124 800CC924 3007A727 */  addiu      $a3, $sp, 0x730
    /* BD128 800CC928 20040426 */  addiu      $a0, $s0, 0x420
    /* BD12C 800CC92C B0000526 */  addiu      $a1, $s0, 0xB0
    /* BD130 800CC930 1FE4030C */  jal        func_800F907C
    /* BD134 800CC934 2130E000 */   addu      $a2, $a3, $zero
    /* BD138 800CC938 57000224 */  addiu      $v0, $zero, 0x57
    /* BD13C 800CC93C 3807A2A7 */  sh         $v0, 0x738($sp)
    /* BD140 800CC940 31000224 */  addiu      $v0, $zero, 0x31
    /* BD144 800CC944 3A07A2A7 */  sh         $v0, 0x73A($sp)
    /* BD148 800CC948 E4000224 */  addiu      $v0, $zero, 0xE4
    /* BD14C 800CC94C 3C07A2A7 */  sh         $v0, 0x73C($sp)
    /* BD150 800CC950 98000224 */  addiu      $v0, $zero, 0x98
    /* BD154 800CC954 3E07A2A7 */  sh         $v0, 0x73E($sp)
    /* BD158 800CC958 1680023C */  lui        $v0, %hi(D_8015933C)
    /* BD15C 800CC95C 3C934280 */  lb         $v0, %lo(D_8015933C)($v0)
    /* BD160 800CC960 00000000 */  nop
    /* BD164 800CC964 02004014 */  bnez       $v0, .L800CC970
    /* BD168 800CC968 21010224 */   addiu     $v0, $zero, 0x121
    /* BD16C 800CC96C 3A07A2A7 */  sh         $v0, 0x73A($sp)
  .L800CC970:
    /* BD170 800CC970 1004028E */  lw         $v0, 0x410($s0)
    /* BD174 800CC974 00000000 */  nop
    /* BD178 800CC978 0C004584 */  lh         $a1, 0xC($v0)
    /* BD17C 800CC97C 0E004684 */  lh         $a2, 0xE($v0)
    /* BD180 800CC980 078E030C */  jal        MoveImage
    /* BD184 800CC984 3807A427 */   addiu     $a0, $sp, 0x738
    /* BD188 800CC988 6C320308 */  j          .L800CC9B0
    /* BD18C 800CC98C 21900000 */   addu      $s2, $zero, $zero
  .L800CC990:
    /* BD190 800CC990 1004048E */  lw         $a0, 0x410($s0)
    /* BD194 800CC994 00000000 */  nop
    /* BD198 800CC998 0C008424 */  addiu      $a0, $a0, 0xC
    /* BD19C 800CC99C 21280000 */  addu       $a1, $zero, $zero
    /* BD1A0 800CC9A0 21300000 */  addu       $a2, $zero, $zero
    /* BD1A4 800CC9A4 8D8D030C */  jal        ClearImage
    /* BD1A8 800CC9A8 21380000 */   addu      $a3, $zero, $zero
    /* BD1AC 800CC9AC 21900000 */  addu       $s2, $zero, $zero
  .L800CC9B0:
    /* BD1B0 800CC9B0 6002B327 */  addiu      $s3, $sp, 0x260
    /* BD1B4 800CC9B4 01001424 */  addiu      $s4, $zero, 0x1
  .L800CC9B8:
    /* BD1B8 800CC9B8 00141200 */  sll        $v0, $s2, 16
    /* BD1BC 800CC9BC 031C0200 */  sra        $v1, $v0, 16
    /* BD1C0 800CC9C0 07006228 */  slti       $v0, $v1, 0x7
    /* BD1C4 800CC9C4 E2004010 */  beqz       $v0, .L800CCD50
    /* BD1C8 800CC9C8 C0100300 */   sll       $v0, $v1, 3
    /* BD1CC 800CC9CC 23104300 */  subu       $v0, $v0, $v1
    /* BD1D0 800CC9D0 40100200 */  sll        $v0, $v0, 1
    /* BD1D4 800CC9D4 21106202 */  addu       $v0, $s3, $v0
    /* BD1D8 800CC9D8 01004390 */  lbu        $v1, 0x1($v0)
    /* BD1DC 800CC9DC 00004290 */  lbu        $v0, 0x0($v0)
    /* BD1E0 800CC9E0 00000000 */  nop
    /* BD1E4 800CC9E4 80100200 */  sll        $v0, $v0, 2
    /* BD1E8 800CC9E8 1680013C */  lui        $at, %hi(D_8015EE70)
    /* BD1EC 800CC9EC 21082200 */  addu       $at, $at, $v0
    /* BD1F0 800CC9F0 70EE228C */  lw         $v0, %lo(D_8015EE70)($at)
    /* BD1F4 800CC9F4 00000000 */  nop
    /* BD1F8 800CC9F8 2A104300 */  slt        $v0, $v0, $v1
    /* BD1FC 800CC9FC D2004014 */  bnez       $v0, .L800CCD48
    /* BD200 800CCA00 80000324 */   addiu     $v1, $zero, 0x80
    /* BD204 800CCA04 340503A2 */  sb         $v1, 0x534($s0)
    /* BD208 800CCA08 350503A2 */  sb         $v1, 0x535($s0)
    /* BD20C 800CCA0C 360503A2 */  sb         $v1, 0x536($s0)
    /* BD210 800CCA10 72050286 */  lh         $v0, 0x572($s0)
    /* BD214 800CCA14 00000000 */  nop
    /* BD218 800CCA18 02004228 */  slti       $v0, $v0, 0x2
    /* BD21C 800CCA1C 04004014 */  bnez       $v0, .L800CCA30
    /* BD220 800CCA20 30050426 */   addiu     $a0, $s0, 0x530
    /* BD224 800CCA24 480503A2 */  sb         $v1, 0x548($s0)
    /* BD228 800CCA28 490503A2 */  sb         $v1, 0x549($s0)
    /* BD22C 800CCA2C 4A0503A2 */  sb         $v1, 0x54A($s0)
  .L800CCA30:
    /* BD230 800CCA30 999E030C */  jal        SetSemiTrans
    /* BD234 800CCA34 21280000 */   addu      $a1, $zero, $zero
    /* BD238 800CCA38 72050286 */  lh         $v0, 0x572($s0)
    /* BD23C 800CCA3C 00000000 */  nop
    /* BD240 800CCA40 02004228 */  slti       $v0, $v0, 0x2
    /* BD244 800CCA44 05004014 */  bnez       $v0, .L800CCA5C
    /* BD248 800CCA48 001C1200 */   sll       $v1, $s2, 16
    /* BD24C 800CCA4C 44050426 */  addiu      $a0, $s0, 0x544
    /* BD250 800CCA50 999E030C */  jal        SetSemiTrans
    /* BD254 800CCA54 21280000 */   addu      $a1, $zero, $zero
    /* BD258 800CCA58 001C1200 */  sll        $v1, $s2, 16
  .L800CCA5C:
    /* BD25C 800CCA5C 031C0300 */  sra        $v1, $v1, 16
    /* BD260 800CCA60 C0100300 */  sll        $v0, $v1, 3
    /* BD264 800CCA64 23104300 */  subu       $v0, $v0, $v1
    /* BD268 800CCA68 40100200 */  sll        $v0, $v0, 1
    /* BD26C 800CCA6C 21886202 */  addu       $s1, $s3, $v0
    /* BD270 800CCA70 00002292 */  lbu        $v0, 0x0($s1)
    /* BD274 800CCA74 00000000 */  nop
    /* BD278 800CCA78 10005414 */  bne        $v0, $s4, .L800CCABC
    /* BD27C 800CCA7C 001C1200 */   sll       $v1, $s2, 16
    /* BD280 800CCA80 0C002786 */  lh         $a3, 0xC($s1)
    /* BD284 800CCA84 1000A2AF */  sw         $v0, 0x10($sp)
    /* BD288 800CCA88 08002286 */  lh         $v0, 0x8($s1)
    /* BD28C 800CCA8C 00000000 */  nop
    /* BD290 800CCA90 1400A2AF */  sw         $v0, 0x14($sp)
    /* BD294 800CCA94 0A002286 */  lh         $v0, 0xA($s1)
    /* BD298 800CCA98 00000000 */  nop
    /* BD29C 800CCA9C 1800A2AF */  sw         $v0, 0x18($sp)
    /* BD2A0 800CCAA0 F0040426 */  addiu      $a0, $s0, 0x4F0
    /* BD2A4 800CCAA4 5000A527 */  addiu      $a1, $sp, 0x50
    /* BD2A8 800CCAA8 67ED030C */  jal        func_800FB59C
    /* BD2AC 800CCAAC 09000624 */   addiu     $a2, $zero, 0x9
    /* BD2B0 800CCAB0 48010486 */  lh         $a0, 0x148($s0)
    /* BD2B4 800CCAB4 0E330308 */  j          .L800CCC38
    /* BD2B8 800CCAB8 01000524 */   addiu     $a1, $zero, 0x1
  .L800CCABC:
    /* BD2BC 800CCABC 031C0300 */  sra        $v1, $v1, 16
    /* BD2C0 800CCAC0 C0100300 */  sll        $v0, $v1, 3
    /* BD2C4 800CCAC4 23104300 */  subu       $v0, $v0, $v1
    /* BD2C8 800CCAC8 40100200 */  sll        $v0, $v0, 1
    /* BD2CC 800CCACC 21886202 */  addu       $s1, $s3, $v0
    /* BD2D0 800CCAD0 00002392 */  lbu        $v1, 0x0($s1)
    /* BD2D4 800CCAD4 04000224 */  addiu      $v0, $zero, 0x4
    /* BD2D8 800CCAD8 10006214 */  bne        $v1, $v0, .L800CCB1C
    /* BD2DC 800CCADC 001C1200 */   sll       $v1, $s2, 16
    /* BD2E0 800CCAE0 0C002786 */  lh         $a3, 0xC($s1)
    /* BD2E4 800CCAE4 1000B4AF */  sw         $s4, 0x10($sp)
    /* BD2E8 800CCAE8 08002286 */  lh         $v0, 0x8($s1)
    /* BD2EC 800CCAEC 00000000 */  nop
    /* BD2F0 800CCAF0 1400A2AF */  sw         $v0, 0x14($sp)
    /* BD2F4 800CCAF4 0A002286 */  lh         $v0, 0xA($s1)
    /* BD2F8 800CCAF8 00000000 */  nop
    /* BD2FC 800CCAFC 1800A2AF */  sw         $v0, 0x18($sp)
    /* BD300 800CCB00 F0040426 */  addiu      $a0, $s0, 0x4F0
    /* BD304 800CCB04 8000A527 */  addiu      $a1, $sp, 0x80
    /* BD308 800CCB08 67ED030C */  jal        func_800FB59C
    /* BD30C 800CCB0C 09000624 */   addiu     $a2, $zero, 0x9
    /* BD310 800CCB10 48010486 */  lh         $a0, 0x148($s0)
    /* BD314 800CCB14 0E330308 */  j          .L800CCC38
    /* BD318 800CCB18 04000524 */   addiu     $a1, $zero, 0x4
  .L800CCB1C:
    /* BD31C 800CCB1C 031C0300 */  sra        $v1, $v1, 16
    /* BD320 800CCB20 C0100300 */  sll        $v0, $v1, 3
    /* BD324 800CCB24 23104300 */  subu       $v0, $v0, $v1
    /* BD328 800CCB28 40100200 */  sll        $v0, $v0, 1
    /* BD32C 800CCB2C 21886202 */  addu       $s1, $s3, $v0
    /* BD330 800CCB30 00002392 */  lbu        $v1, 0x0($s1)
    /* BD334 800CCB34 02000224 */  addiu      $v0, $zero, 0x2
    /* BD338 800CCB38 10006214 */  bne        $v1, $v0, .L800CCB7C
    /* BD33C 800CCB3C 001C1200 */   sll       $v1, $s2, 16
    /* BD340 800CCB40 0C002786 */  lh         $a3, 0xC($s1)
    /* BD344 800CCB44 1000B4AF */  sw         $s4, 0x10($sp)
    /* BD348 800CCB48 08002286 */  lh         $v0, 0x8($s1)
    /* BD34C 800CCB4C 00000000 */  nop
    /* BD350 800CCB50 1400A2AF */  sw         $v0, 0x14($sp)
    /* BD354 800CCB54 0A002286 */  lh         $v0, 0xA($s1)
    /* BD358 800CCB58 00000000 */  nop
    /* BD35C 800CCB5C 1800A2AF */  sw         $v0, 0x18($sp)
    /* BD360 800CCB60 F0040426 */  addiu      $a0, $s0, 0x4F0
    /* BD364 800CCB64 B000A527 */  addiu      $a1, $sp, 0xB0
    /* BD368 800CCB68 67ED030C */  jal        func_800FB59C
    /* BD36C 800CCB6C 09000624 */   addiu     $a2, $zero, 0x9
    /* BD370 800CCB70 48010486 */  lh         $a0, 0x148($s0)
    /* BD374 800CCB74 0E330308 */  j          .L800CCC38
    /* BD378 800CCB78 02000524 */   addiu     $a1, $zero, 0x2
  .L800CCB7C:
    /* BD37C 800CCB7C 031C0300 */  sra        $v1, $v1, 16
    /* BD380 800CCB80 C0100300 */  sll        $v0, $v1, 3
    /* BD384 800CCB84 23104300 */  subu       $v0, $v0, $v1
    /* BD388 800CCB88 40100200 */  sll        $v0, $v0, 1
    /* BD38C 800CCB8C 21886202 */  addu       $s1, $s3, $v0
    /* BD390 800CCB90 00002392 */  lbu        $v1, 0x0($s1)
    /* BD394 800CCB94 05000224 */  addiu      $v0, $zero, 0x5
    /* BD398 800CCB98 10006214 */  bne        $v1, $v0, .L800CCBDC
    /* BD39C 800CCB9C 001C1200 */   sll       $v1, $s2, 16
    /* BD3A0 800CCBA0 0C002786 */  lh         $a3, 0xC($s1)
    /* BD3A4 800CCBA4 1000B4AF */  sw         $s4, 0x10($sp)
    /* BD3A8 800CCBA8 08002286 */  lh         $v0, 0x8($s1)
    /* BD3AC 800CCBAC 00000000 */  nop
    /* BD3B0 800CCBB0 1400A2AF */  sw         $v0, 0x14($sp)
    /* BD3B4 800CCBB4 0A002286 */  lh         $v0, 0xA($s1)
    /* BD3B8 800CCBB8 00000000 */  nop
    /* BD3BC 800CCBBC 1800A2AF */  sw         $v0, 0x18($sp)
    /* BD3C0 800CCBC0 F0040426 */  addiu      $a0, $s0, 0x4F0
    /* BD3C4 800CCBC4 E000A527 */  addiu      $a1, $sp, 0xE0
    /* BD3C8 800CCBC8 67ED030C */  jal        func_800FB59C
    /* BD3CC 800CCBCC 09000624 */   addiu     $a2, $zero, 0x9
    /* BD3D0 800CCBD0 48010486 */  lh         $a0, 0x148($s0)
    /* BD3D4 800CCBD4 0E330308 */  j          .L800CCC38
    /* BD3D8 800CCBD8 05000524 */   addiu     $a1, $zero, 0x5
  .L800CCBDC:
    /* BD3DC 800CCBDC 031C0300 */  sra        $v1, $v1, 16
    /* BD3E0 800CCBE0 C0100300 */  sll        $v0, $v1, 3
    /* BD3E4 800CCBE4 23104300 */  subu       $v0, $v0, $v1
    /* BD3E8 800CCBE8 40100200 */  sll        $v0, $v0, 1
    /* BD3EC 800CCBEC 21886202 */  addu       $s1, $s3, $v0
    /* BD3F0 800CCBF0 00002392 */  lbu        $v1, 0x0($s1)
    /* BD3F4 800CCBF4 03000224 */  addiu      $v0, $zero, 0x3
    /* BD3F8 800CCBF8 2D006214 */  bne        $v1, $v0, .L800CCCB0
    /* BD3FC 800CCBFC 00141200 */   sll       $v0, $s2, 16
    /* BD400 800CCC00 0C002786 */  lh         $a3, 0xC($s1)
    /* BD404 800CCC04 1000B4AF */  sw         $s4, 0x10($sp)
    /* BD408 800CCC08 08002286 */  lh         $v0, 0x8($s1)
    /* BD40C 800CCC0C 00000000 */  nop
    /* BD410 800CCC10 1400A2AF */  sw         $v0, 0x14($sp)
    /* BD414 800CCC14 0A002286 */  lh         $v0, 0xA($s1)
    /* BD418 800CCC18 00000000 */  nop
    /* BD41C 800CCC1C 1800A2AF */  sw         $v0, 0x18($sp)
    /* BD420 800CCC20 F0040426 */  addiu      $a0, $s0, 0x4F0
    /* BD424 800CCC24 1001A527 */  addiu      $a1, $sp, 0x110
    /* BD428 800CCC28 67ED030C */  jal        func_800FB59C
    /* BD42C 800CCC2C 09000624 */   addiu     $a2, $zero, 0x9
    /* BD430 800CCC30 48010486 */  lh         $a0, 0x148($s0)
    /* BD434 800CCC34 03000524 */  addiu      $a1, $zero, 0x3
  .L800CCC38:
    /* BD438 800CCC38 3C21030C */  jal        func_800C84F0
    /* BD43C 800CCC3C 00000000 */   nop
    /* BD440 800CCC40 01002392 */  lbu        $v1, 0x1($s1)
    /* BD444 800CCC44 00000000 */  nop
    /* BD448 800CCC48 2A104300 */  slt        $v0, $v0, $v1
    /* BD44C 800CCC4C 29004010 */  beqz       $v0, .L800CCCF4
    /* BD450 800CCC50 C0000324 */   addiu     $v1, $zero, 0xC0
    /* BD454 800CCC54 340503A2 */  sb         $v1, 0x534($s0)
    /* BD458 800CCC58 350503A2 */  sb         $v1, 0x535($s0)
    /* BD45C 800CCC5C 360503A2 */  sb         $v1, 0x536($s0)
    /* BD460 800CCC60 72050286 */  lh         $v0, 0x572($s0)
    /* BD464 800CCC64 00000000 */  nop
    /* BD468 800CCC68 02004228 */  slti       $v0, $v0, 0x2
    /* BD46C 800CCC6C 04004014 */  bnez       $v0, .L800CCC80
    /* BD470 800CCC70 30050426 */   addiu     $a0, $s0, 0x530
    /* BD474 800CCC74 480503A2 */  sb         $v1, 0x548($s0)
    /* BD478 800CCC78 490503A2 */  sb         $v1, 0x549($s0)
    /* BD47C 800CCC7C 4A0503A2 */  sb         $v1, 0x54A($s0)
  .L800CCC80:
    /* BD480 800CCC80 999E030C */  jal        SetSemiTrans
    /* BD484 800CCC84 01000524 */   addiu     $a1, $zero, 0x1
    /* BD488 800CCC88 72050286 */  lh         $v0, 0x572($s0)
    /* BD48C 800CCC8C 00000000 */  nop
    /* BD490 800CCC90 02004228 */  slti       $v0, $v0, 0x2
    /* BD494 800CCC94 18004014 */  bnez       $v0, .L800CCCF8
    /* BD498 800CCC98 001C1200 */   sll       $v1, $s2, 16
    /* BD49C 800CCC9C 44050426 */  addiu      $a0, $s0, 0x544
    /* BD4A0 800CCCA0 999E030C */  jal        SetSemiTrans
    /* BD4A4 800CCCA4 01000524 */   addiu     $a1, $zero, 0x1
    /* BD4A8 800CCCA8 3E330308 */  j          .L800CCCF8
    /* BD4AC 800CCCAC 001C1200 */   sll       $v1, $s2, 16
  .L800CCCB0:
    /* BD4B0 800CCCB0 03140200 */  sra        $v0, $v0, 16
    /* BD4B4 800CCCB4 C0180200 */  sll        $v1, $v0, 3
    /* BD4B8 800CCCB8 23186200 */  subu       $v1, $v1, $v0
    /* BD4BC 800CCCBC 40180300 */  sll        $v1, $v1, 1
    /* BD4C0 800CCCC0 21186302 */  addu       $v1, $s3, $v1
    /* BD4C4 800CCCC4 0C006784 */  lh         $a3, 0xC($v1)
    /* BD4C8 800CCCC8 1000B4AF */  sw         $s4, 0x10($sp)
    /* BD4CC 800CCCCC 08006284 */  lh         $v0, 0x8($v1)
    /* BD4D0 800CCCD0 00000000 */  nop
    /* BD4D4 800CCCD4 1400A2AF */  sw         $v0, 0x14($sp)
    /* BD4D8 800CCCD8 0A006284 */  lh         $v0, 0xA($v1)
    /* BD4DC 800CCCDC 00000000 */  nop
    /* BD4E0 800CCCE0 1800A2AF */  sw         $v0, 0x18($sp)
    /* BD4E4 800CCCE4 F0040426 */  addiu      $a0, $s0, 0x4F0
    /* BD4E8 800CCCE8 4001A527 */  addiu      $a1, $sp, 0x140
    /* BD4EC 800CCCEC 67ED030C */  jal        func_800FB59C
    /* BD4F0 800CCCF0 09000624 */   addiu     $a2, $zero, 0x9
  .L800CCCF4:
    /* BD4F4 800CCCF4 001C1200 */  sll        $v1, $s2, 16
  .L800CCCF8:
    /* BD4F8 800CCCF8 031C0300 */  sra        $v1, $v1, 16
    /* BD4FC 800CCCFC C0100300 */  sll        $v0, $v1, 3
    /* BD500 800CCD00 23104300 */  subu       $v0, $v0, $v1
    /* BD504 800CCD04 40100200 */  sll        $v0, $v0, 1
    /* BD508 800CCD08 21106202 */  addu       $v0, $s3, $v0
    /* BD50C 800CCD0C 04004794 */  lhu        $a3, 0x4($v0)
    /* BD510 800CCD10 00000000 */  nop
    /* BD514 800CCD14 A9FFE724 */  addiu      $a3, $a3, -0x57
    /* BD518 800CCD18 003C0700 */  sll        $a3, $a3, 16
    /* BD51C 800CCD1C 06004294 */  lhu        $v0, 0x6($v0)
    /* BD520 800CCD20 00000000 */  nop
    /* BD524 800CCD24 CFFF4224 */  addiu      $v0, $v0, -0x31
    /* BD528 800CCD28 00140200 */  sll        $v0, $v0, 16
    /* BD52C 800CCD2C 03140200 */  sra        $v0, $v0, 16
    /* BD530 800CCD30 1000A2AF */  sw         $v0, 0x10($sp)
    /* BD534 800CCD34 3807A427 */  addiu      $a0, $sp, 0x738
    /* BD538 800CCD38 F0040526 */  addiu      $a1, $s0, 0x4F0
    /* BD53C 800CCD3C F4030626 */  addiu      $a2, $s0, 0x3F4
    /* BD540 800CCD40 89EE030C */  jal        func_800FBA24
    /* BD544 800CCD44 033C0700 */   sra       $a3, $a3, 16
  .L800CCD48:
    /* BD548 800CCD48 6E320308 */  j          .L800CC9B8
    /* BD54C 800CCD4C 01005226 */   addiu     $s2, $s2, 0x1
  .L800CCD50:
    /* BD550 800CCD50 E000A427 */  addiu      $a0, $sp, 0xE0
    /* BD554 800CCD54 21280000 */  addu       $a1, $zero, $zero
    /* BD558 800CCD58 A9E0030C */  jal        func_800F82A4
    /* BD55C 800CCD5C 21300000 */   addu      $a2, $zero, $zero
    /* BD560 800CCD60 1001A427 */  addiu      $a0, $sp, 0x110
    /* BD564 800CCD64 21280000 */  addu       $a1, $zero, $zero
    /* BD568 800CCD68 A9E0030C */  jal        func_800F82A4
    /* BD56C 800CCD6C 21300000 */   addu      $a2, $zero, $zero
    /* BD570 800CCD70 4001A427 */  addiu      $a0, $sp, 0x140
    /* BD574 800CCD74 21280000 */  addu       $a1, $zero, $zero
    /* BD578 800CCD78 A9E0030C */  jal        func_800F82A4
    /* BD57C 800CCD7C 21300000 */   addu      $a2, $zero, $zero
    /* BD580 800CCD80 21880000 */  addu       $s1, $zero, $zero
    /* BD584 800CCD84 07001224 */  addiu      $s2, $zero, 0x7
    /* BD588 800CCD88 6002A427 */  addiu      $a0, $sp, 0x260
    /* BD58C 800CCD8C 1680053C */  lui        $a1, %hi(D_8015EE70)
    /* BD590 800CCD90 70EEA524 */  addiu      $a1, $a1, %lo(D_8015EE70)
    /* BD594 800CCD94 001C1200 */  sll        $v1, $s2, 16
  .L800CCD98:
    /* BD598 800CCD98 031C0300 */  sra        $v1, $v1, 16
    /* BD59C 800CCD9C C0100300 */  sll        $v0, $v1, 3
    /* BD5A0 800CCDA0 23104300 */  subu       $v0, $v0, $v1
    /* BD5A4 800CCDA4 40100200 */  sll        $v0, $v0, 1
    /* BD5A8 800CCDA8 21108200 */  addu       $v0, $a0, $v0
    /* BD5AC 800CCDAC 01004390 */  lbu        $v1, 0x1($v0)
    /* BD5B0 800CCDB0 00004290 */  lbu        $v0, 0x0($v0)
    /* BD5B4 800CCDB4 00000000 */  nop
    /* BD5B8 800CCDB8 80100200 */  sll        $v0, $v0, 2
    /* BD5BC 800CCDBC 21104500 */  addu       $v0, $v0, $a1
    /* BD5C0 800CCDC0 0000428C */  lw         $v0, 0x0($v0)
    /* BD5C4 800CCDC4 00000000 */  nop
    /* BD5C8 800CCDC8 2A104300 */  slt        $v0, $v0, $v1
    /* BD5CC 800CCDCC 02004014 */  bnez       $v0, .L800CCDD8
    /* BD5D0 800CCDD0 01004226 */   addiu     $v0, $s2, 0x1
    /* BD5D4 800CCDD4 21884002 */  addu       $s1, $s2, $zero
  .L800CCDD8:
    /* BD5D8 800CCDD8 21904000 */  addu       $s2, $v0, $zero
    /* BD5DC 800CCDDC 00140200 */  sll        $v0, $v0, 16
    /* BD5E0 800CCDE0 03140200 */  sra        $v0, $v0, 16
    /* BD5E4 800CCDE4 1F004228 */  slti       $v0, $v0, 0x1F
    /* BD5E8 800CCDE8 EBFF4014 */  bnez       $v0, .L800CCD98
    /* BD5EC 800CCDEC 001C1200 */   sll       $v1, $s2, 16
    /* BD5F0 800CCDF0 00141100 */  sll        $v0, $s1, 16
    /* BD5F4 800CCDF4 03140200 */  sra        $v0, $v0, 16
    /* BD5F8 800CCDF8 C0180200 */  sll        $v1, $v0, 3
    /* BD5FC 800CCDFC 23186200 */  subu       $v1, $v1, $v0
    /* BD600 800CCE00 40180300 */  sll        $v1, $v1, 1
    /* BD604 800CCE04 2110A303 */  addu       $v0, $sp, $v1
    /* BD608 800CCE08 2000A427 */  addiu      $a0, $sp, 0x20
    /* BD60C 800CCE0C 62024584 */  lh         $a1, 0x262($v0)
    /* BD610 800CCE10 0A000624 */  addiu      $a2, $zero, 0xA
    /* BD614 800CCE14 44E3030C */  jal        func_800F8D10
    /* BD618 800CCE18 EC000724 */   addiu     $a3, $zero, 0xEC
    /* BD61C 800CCE1C 12004014 */  bnez       $v0, .L800CCE68
    /* BD620 800CCE20 00141100 */   sll       $v0, $s1, 16
    /* BD624 800CCE24 3002A427 */  addiu      $a0, $sp, 0x230
    /* BD628 800CCE28 4CE1030C */  jal        func_800F8530
    /* BD62C 800CCE2C 02000524 */   addiu     $a1, $zero, 0x2
    /* BD630 800CCE30 0002A427 */  addiu      $a0, $sp, 0x200
    /* BD634 800CCE34 4CE1030C */  jal        func_800F8530
    /* BD638 800CCE38 02000524 */   addiu     $a1, $zero, 0x2
    /* BD63C 800CCE3C D001A427 */  addiu      $a0, $sp, 0x1D0
    /* BD640 800CCE40 4CE1030C */  jal        func_800F8530
    /* BD644 800CCE44 02000524 */   addiu     $a1, $zero, 0x2
    /* BD648 800CCE48 A001A427 */  addiu      $a0, $sp, 0x1A0
    /* BD64C 800CCE4C 4CE1030C */  jal        func_800F8530
    /* BD650 800CCE50 02000524 */   addiu     $a1, $zero, 0x2
    /* BD654 800CCE54 7001A427 */  addiu      $a0, $sp, 0x170
    /* BD658 800CCE58 4CE1030C */  jal        func_800F8530
    /* BD65C 800CCE5C 02000524 */   addiu     $a1, $zero, 0x2
    /* BD660 800CCE60 40340308 */  j          .L800CD100
    /* BD664 800CCE64 4001A427 */   addiu     $a0, $sp, 0x140
  .L800CCE68:
    /* BD668 800CCE68 03140200 */  sra        $v0, $v0, 16
    /* BD66C 800CCE6C C0180200 */  sll        $v1, $v0, 3
    /* BD670 800CCE70 23186200 */  subu       $v1, $v1, $v0
    /* BD674 800CCE74 40180300 */  sll        $v1, $v1, 1
    /* BD678 800CCE78 6002A427 */  addiu      $a0, $sp, 0x260
    /* BD67C 800CCE7C 21208300 */  addu       $a0, $a0, $v1
    /* BD680 800CCE80 04008794 */  lhu        $a3, 0x4($a0)
    /* BD684 800CCE84 00000000 */  nop
    /* BD688 800CCE88 C0FFE724 */  addiu      $a3, $a3, -0x40
    /* BD68C 800CCE8C 003C0700 */  sll        $a3, $a3, 16
    /* BD690 800CCE90 06008284 */  lh         $v0, 0x6($a0)
    /* BD694 800CCE94 00000000 */  nop
    /* BD698 800CCE98 1000A2AF */  sw         $v0, 0x10($sp)
    /* BD69C 800CCE9C 08008284 */  lh         $v0, 0x8($a0)
    /* BD6A0 800CCEA0 00000000 */  nop
    /* BD6A4 800CCEA4 1400A2AF */  sw         $v0, 0x14($sp)
    /* BD6A8 800CCEA8 0A008284 */  lh         $v0, 0xA($a0)
    /* BD6AC 800CCEAC 00000000 */  nop
    /* BD6B0 800CCEB0 1800A2AF */  sw         $v0, 0x18($sp)
    /* BD6B4 800CCEB4 F0040426 */  addiu      $a0, $s0, 0x4F0
    /* BD6B8 800CCEB8 2000A527 */  addiu      $a1, $sp, 0x20
    /* BD6BC 800CCEBC 09000624 */  addiu      $a2, $zero, 0x9
    /* BD6C0 800CCEC0 67ED030C */  jal        func_800FB59C
    /* BD6C4 800CCEC4 033C0700 */   sra       $a3, $a3, 16
    /* BD6C8 800CCEC8 80000324 */  addiu      $v1, $zero, 0x80
    /* BD6CC 800CCECC 340503A2 */  sb         $v1, 0x534($s0)
    /* BD6D0 800CCED0 350503A2 */  sb         $v1, 0x535($s0)
    /* BD6D4 800CCED4 360503A2 */  sb         $v1, 0x536($s0)
    /* BD6D8 800CCED8 72050286 */  lh         $v0, 0x572($s0)
    /* BD6DC 800CCEDC 00000000 */  nop
    /* BD6E0 800CCEE0 02004228 */  slti       $v0, $v0, 0x2
    /* BD6E4 800CCEE4 04004014 */  bnez       $v0, .L800CCEF8
    /* BD6E8 800CCEE8 30050426 */   addiu     $a0, $s0, 0x530
    /* BD6EC 800CCEEC 480503A2 */  sb         $v1, 0x548($s0)
    /* BD6F0 800CCEF0 490503A2 */  sb         $v1, 0x549($s0)
    /* BD6F4 800CCEF4 4A0503A2 */  sb         $v1, 0x54A($s0)
  .L800CCEF8:
    /* BD6F8 800CCEF8 999E030C */  jal        SetSemiTrans
    /* BD6FC 800CCEFC 21280000 */   addu      $a1, $zero, $zero
    /* BD700 800CCF00 72050286 */  lh         $v0, 0x572($s0)
    /* BD704 800CCF04 00000000 */  nop
    /* BD708 800CCF08 02004228 */  slti       $v0, $v0, 0x2
    /* BD70C 800CCF0C 05004014 */  bnez       $v0, .L800CCF24
    /* BD710 800CCF10 00141100 */   sll       $v0, $s1, 16
    /* BD714 800CCF14 44050426 */  addiu      $a0, $s0, 0x544
    /* BD718 800CCF18 999E030C */  jal        SetSemiTrans
    /* BD71C 800CCF1C 21280000 */   addu      $a1, $zero, $zero
    /* BD720 800CCF20 00141100 */  sll        $v0, $s1, 16
  .L800CCF24:
    /* BD724 800CCF24 03140200 */  sra        $v0, $v0, 16
    /* BD728 800CCF28 C0180200 */  sll        $v1, $v0, 3
    /* BD72C 800CCF2C 23186200 */  subu       $v1, $v1, $v0
    /* BD730 800CCF30 40180300 */  sll        $v1, $v1, 1
    /* BD734 800CCF34 6002A227 */  addiu      $v0, $sp, 0x260
    /* BD738 800CCF38 21104300 */  addu       $v0, $v0, $v1
    /* BD73C 800CCF3C 04004794 */  lhu        $a3, 0x4($v0)
    /* BD740 800CCF40 00000000 */  nop
    /* BD744 800CCF44 A9FFE724 */  addiu      $a3, $a3, -0x57
    /* BD748 800CCF48 003C0700 */  sll        $a3, $a3, 16
    /* BD74C 800CCF4C 06004294 */  lhu        $v0, 0x6($v0)
    /* BD750 800CCF50 00000000 */  nop
    /* BD754 800CCF54 CFFF4224 */  addiu      $v0, $v0, -0x31
    /* BD758 800CCF58 00140200 */  sll        $v0, $v0, 16
    /* BD75C 800CCF5C 03140200 */  sra        $v0, $v0, 16
    /* BD760 800CCF60 1000A2AF */  sw         $v0, 0x10($sp)
    /* BD764 800CCF64 3807A427 */  addiu      $a0, $sp, 0x738
    /* BD768 800CCF68 F0040526 */  addiu      $a1, $s0, 0x4F0
    /* BD76C 800CCF6C F4030626 */  addiu      $a2, $s0, 0x3F4
    /* BD770 800CCF70 89EE030C */  jal        func_800FBA24
    /* BD774 800CCF74 033C0700 */   sra       $a3, $a3, 16
    /* BD778 800CCF78 2000B227 */  addiu      $s2, $sp, 0x20
    /* BD77C 800CCF7C 21204002 */  addu       $a0, $s2, $zero
    /* BD780 800CCF80 21280000 */  addu       $a1, $zero, $zero
    /* BD784 800CCF84 A9E0030C */  jal        func_800F82A4
    /* BD788 800CCF88 21300000 */   addu      $a2, $zero, $zero
    /* BD78C 800CCF8C E000B127 */  addiu      $s1, $sp, 0xE0
    /* BD790 800CCF90 21202002 */  addu       $a0, $s1, $zero
    /* BD794 800CCF94 EA010524 */  addiu      $a1, $zero, 0x1EA
    /* BD798 800CCF98 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* BD79C 800CCF9C 44E3030C */  jal        func_800F8D10
    /* BD7A0 800CCFA0 EC000724 */   addiu     $a3, $zero, 0xEC
    /* BD7A4 800CCFA4 24004014 */  bnez       $v0, .L800CD038
    /* BD7A8 800CCFA8 D6010524 */   addiu     $a1, $zero, 0x1D6
    /* BD7AC 800CCFAC 3002A427 */  addiu      $a0, $sp, 0x230
    /* BD7B0 800CCFB0 4CE1030C */  jal        func_800F8530
    /* BD7B4 800CCFB4 02000524 */   addiu     $a1, $zero, 0x2
    /* BD7B8 800CCFB8 0002A427 */  addiu      $a0, $sp, 0x200
    /* BD7BC 800CCFBC 4CE1030C */  jal        func_800F8530
    /* BD7C0 800CCFC0 02000524 */   addiu     $a1, $zero, 0x2
    /* BD7C4 800CCFC4 D001A427 */  addiu      $a0, $sp, 0x1D0
    /* BD7C8 800CCFC8 4CE1030C */  jal        func_800F8530
    /* BD7CC 800CCFCC 02000524 */   addiu     $a1, $zero, 0x2
    /* BD7D0 800CCFD0 A001A427 */  addiu      $a0, $sp, 0x1A0
    /* BD7D4 800CCFD4 4CE1030C */  jal        func_800F8530
    /* BD7D8 800CCFD8 02000524 */   addiu     $a1, $zero, 0x2
    /* BD7DC 800CCFDC 7001A427 */  addiu      $a0, $sp, 0x170
    /* BD7E0 800CCFE0 4CE1030C */  jal        func_800F8530
    /* BD7E4 800CCFE4 02000524 */   addiu     $a1, $zero, 0x2
    /* BD7E8 800CCFE8 4001A427 */  addiu      $a0, $sp, 0x140
    /* BD7EC 800CCFEC 4CE1030C */  jal        func_800F8530
    /* BD7F0 800CCFF0 02000524 */   addiu     $a1, $zero, 0x2
    /* BD7F4 800CCFF4 1001A427 */  addiu      $a0, $sp, 0x110
    /* BD7F8 800CCFF8 4CE1030C */  jal        func_800F8530
    /* BD7FC 800CCFFC 02000524 */   addiu     $a1, $zero, 0x2
    /* BD800 800CD000 21202002 */  addu       $a0, $s1, $zero
    /* BD804 800CD004 4CE1030C */  jal        func_800F8530
    /* BD808 800CD008 02000524 */   addiu     $a1, $zero, 0x2
    /* BD80C 800CD00C B000A427 */  addiu      $a0, $sp, 0xB0
    /* BD810 800CD010 4CE1030C */  jal        func_800F8530
    /* BD814 800CD014 02000524 */   addiu     $a1, $zero, 0x2
    /* BD818 800CD018 8000A427 */  addiu      $a0, $sp, 0x80
    /* BD81C 800CD01C 4CE1030C */  jal        func_800F8530
    /* BD820 800CD020 02000524 */   addiu     $a1, $zero, 0x2
    /* BD824 800CD024 5000A427 */  addiu      $a0, $sp, 0x50
    /* BD828 800CD028 4CE1030C */  jal        func_800F8530
    /* BD82C 800CD02C 02000524 */   addiu     $a1, $zero, 0x2
    /* BD830 800CD030 52340308 */  j          .L800CD148
    /* BD834 800CD034 21204002 */   addu      $a0, $s2, $zero
  .L800CD038:
    /* BD838 800CD038 1001B127 */  addiu      $s1, $sp, 0x110
    /* BD83C 800CD03C 21202002 */  addu       $a0, $s1, $zero
    /* BD840 800CD040 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* BD844 800CD044 44E3030C */  jal        func_800F8D10
    /* BD848 800CD048 EC000724 */   addiu     $a3, $zero, 0xEC
    /* BD84C 800CD04C 15004014 */  bnez       $v0, .L800CD0A4
    /* BD850 800CD050 EB010524 */   addiu     $a1, $zero, 0x1EB
    /* BD854 800CD054 3002A427 */  addiu      $a0, $sp, 0x230
    /* BD858 800CD058 4CE1030C */  jal        func_800F8530
    /* BD85C 800CD05C 02000524 */   addiu     $a1, $zero, 0x2
    /* BD860 800CD060 0002A427 */  addiu      $a0, $sp, 0x200
    /* BD864 800CD064 4CE1030C */  jal        func_800F8530
    /* BD868 800CD068 02000524 */   addiu     $a1, $zero, 0x2
    /* BD86C 800CD06C D001A427 */  addiu      $a0, $sp, 0x1D0
    /* BD870 800CD070 4CE1030C */  jal        func_800F8530
    /* BD874 800CD074 02000524 */   addiu     $a1, $zero, 0x2
    /* BD878 800CD078 A001A427 */  addiu      $a0, $sp, 0x1A0
    /* BD87C 800CD07C 4CE1030C */  jal        func_800F8530
    /* BD880 800CD080 02000524 */   addiu     $a1, $zero, 0x2
    /* BD884 800CD084 7001A427 */  addiu      $a0, $sp, 0x170
    /* BD888 800CD088 4CE1030C */  jal        func_800F8530
    /* BD88C 800CD08C 02000524 */   addiu     $a1, $zero, 0x2
    /* BD890 800CD090 4001A427 */  addiu      $a0, $sp, 0x140
    /* BD894 800CD094 4CE1030C */  jal        func_800F8530
    /* BD898 800CD098 02000524 */   addiu     $a1, $zero, 0x2
    /* BD89C 800CD09C 43340308 */  j          .L800CD10C
    /* BD8A0 800CD0A0 21202002 */   addu      $a0, $s1, $zero
  .L800CD0A4:
    /* BD8A4 800CD0A4 4001B127 */  addiu      $s1, $sp, 0x140
    /* BD8A8 800CD0A8 21202002 */  addu       $a0, $s1, $zero
    /* BD8AC 800CD0AC 0A000624 */  addiu      $a2, $zero, 0xA
    /* BD8B0 800CD0B0 44E3030C */  jal        func_800F8D10
    /* BD8B4 800CD0B4 EC000724 */   addiu     $a3, $zero, 0xEC
    /* BD8B8 800CD0B8 27004014 */  bnez       $v0, .L800CD158
    /* BD8BC 800CD0BC 1F001224 */   addiu     $s2, $zero, 0x1F
  .L800CD0C0:
    /* BD8C0 800CD0C0 3002A427 */  addiu      $a0, $sp, 0x230
    /* BD8C4 800CD0C4 4CE1030C */  jal        func_800F8530
    /* BD8C8 800CD0C8 02000524 */   addiu     $a1, $zero, 0x2
    /* BD8CC 800CD0CC 0002A427 */  addiu      $a0, $sp, 0x200
    /* BD8D0 800CD0D0 4CE1030C */  jal        func_800F8530
    /* BD8D4 800CD0D4 02000524 */   addiu     $a1, $zero, 0x2
    /* BD8D8 800CD0D8 D001A427 */  addiu      $a0, $sp, 0x1D0
    /* BD8DC 800CD0DC 4CE1030C */  jal        func_800F8530
    /* BD8E0 800CD0E0 02000524 */   addiu     $a1, $zero, 0x2
    /* BD8E4 800CD0E4 A001A427 */  addiu      $a0, $sp, 0x1A0
    /* BD8E8 800CD0E8 4CE1030C */  jal        func_800F8530
    /* BD8EC 800CD0EC 02000524 */   addiu     $a1, $zero, 0x2
    /* BD8F0 800CD0F0 7001A427 */  addiu      $a0, $sp, 0x170
    /* BD8F4 800CD0F4 4CE1030C */  jal        func_800F8530
    /* BD8F8 800CD0F8 02000524 */   addiu     $a1, $zero, 0x2
    /* BD8FC 800CD0FC 21202002 */  addu       $a0, $s1, $zero
  .L800CD100:
    /* BD900 800CD100 4CE1030C */  jal        func_800F8530
    /* BD904 800CD104 02000524 */   addiu     $a1, $zero, 0x2
    /* BD908 800CD108 1001A427 */  addiu      $a0, $sp, 0x110
  .L800CD10C:
    /* BD90C 800CD10C 4CE1030C */  jal        func_800F8530
    /* BD910 800CD110 02000524 */   addiu     $a1, $zero, 0x2
    /* BD914 800CD114 E000A427 */  addiu      $a0, $sp, 0xE0
  .L800CD118:
    /* BD918 800CD118 4CE1030C */  jal        func_800F8530
    /* BD91C 800CD11C 02000524 */   addiu     $a1, $zero, 0x2
    /* BD920 800CD120 B000A427 */  addiu      $a0, $sp, 0xB0
  .L800CD124:
    /* BD924 800CD124 4CE1030C */  jal        func_800F8530
    /* BD928 800CD128 02000524 */   addiu     $a1, $zero, 0x2
    /* BD92C 800CD12C 8000A427 */  addiu      $a0, $sp, 0x80
  .L800CD130:
    /* BD930 800CD130 4CE1030C */  jal        func_800F8530
    /* BD934 800CD134 02000524 */   addiu     $a1, $zero, 0x2
    /* BD938 800CD138 5000A427 */  addiu      $a0, $sp, 0x50
  .L800CD13C:
    /* BD93C 800CD13C 4CE1030C */  jal        func_800F8530
    /* BD940 800CD140 02000524 */   addiu     $a1, $zero, 0x2
    /* BD944 800CD144 2000A427 */  addiu      $a0, $sp, 0x20
  .L800CD148:
    /* BD948 800CD148 4CE1030C */  jal        func_800F8530
    /* BD94C 800CD14C 02000524 */   addiu     $a1, $zero, 0x2
    /* BD950 800CD150 63350308 */  j          .L800CD58C
    /* BD954 800CD154 21100000 */   addu      $v0, $zero, $zero
  .L800CD158:
    /* BD958 800CD158 6002B327 */  addiu      $s3, $sp, 0x260
    /* BD95C 800CD15C 01001424 */  addiu      $s4, $zero, 0x1
  .L800CD160:
    /* BD960 800CD160 00141200 */  sll        $v0, $s2, 16
    /* BD964 800CD164 031C0200 */  sra        $v1, $v0, 16
    /* BD968 800CD168 58006228 */  slti       $v0, $v1, 0x58
    /* BD96C 800CD16C E2004010 */  beqz       $v0, .L800CD4F8
    /* BD970 800CD170 C0100300 */   sll       $v0, $v1, 3
    /* BD974 800CD174 23104300 */  subu       $v0, $v0, $v1
    /* BD978 800CD178 40100200 */  sll        $v0, $v0, 1
    /* BD97C 800CD17C 21106202 */  addu       $v0, $s3, $v0
    /* BD980 800CD180 01004390 */  lbu        $v1, 0x1($v0)
    /* BD984 800CD184 00004290 */  lbu        $v0, 0x0($v0)
    /* BD988 800CD188 00000000 */  nop
    /* BD98C 800CD18C 80100200 */  sll        $v0, $v0, 2
    /* BD990 800CD190 1680013C */  lui        $at, %hi(D_8015EE70)
    /* BD994 800CD194 21082200 */  addu       $at, $at, $v0
    /* BD998 800CD198 70EE228C */  lw         $v0, %lo(D_8015EE70)($at)
    /* BD99C 800CD19C 00000000 */  nop
    /* BD9A0 800CD1A0 2A104300 */  slt        $v0, $v0, $v1
    /* BD9A4 800CD1A4 D2004014 */  bnez       $v0, .L800CD4F0
    /* BD9A8 800CD1A8 80000324 */   addiu     $v1, $zero, 0x80
    /* BD9AC 800CD1AC 340503A2 */  sb         $v1, 0x534($s0)
    /* BD9B0 800CD1B0 350503A2 */  sb         $v1, 0x535($s0)
    /* BD9B4 800CD1B4 360503A2 */  sb         $v1, 0x536($s0)
    /* BD9B8 800CD1B8 72050286 */  lh         $v0, 0x572($s0)
    /* BD9BC 800CD1BC 00000000 */  nop
    /* BD9C0 800CD1C0 02004228 */  slti       $v0, $v0, 0x2
    /* BD9C4 800CD1C4 04004014 */  bnez       $v0, .L800CD1D8
    /* BD9C8 800CD1C8 30050426 */   addiu     $a0, $s0, 0x530
    /* BD9CC 800CD1CC 480503A2 */  sb         $v1, 0x548($s0)
    /* BD9D0 800CD1D0 490503A2 */  sb         $v1, 0x549($s0)
    /* BD9D4 800CD1D4 4A0503A2 */  sb         $v1, 0x54A($s0)
  .L800CD1D8:
    /* BD9D8 800CD1D8 999E030C */  jal        SetSemiTrans
    /* BD9DC 800CD1DC 21280000 */   addu      $a1, $zero, $zero
    /* BD9E0 800CD1E0 72050286 */  lh         $v0, 0x572($s0)
    /* BD9E4 800CD1E4 00000000 */  nop
    /* BD9E8 800CD1E8 02004228 */  slti       $v0, $v0, 0x2
    /* BD9EC 800CD1EC 05004014 */  bnez       $v0, .L800CD204
    /* BD9F0 800CD1F0 001C1200 */   sll       $v1, $s2, 16
    /* BD9F4 800CD1F4 44050426 */  addiu      $a0, $s0, 0x544
    /* BD9F8 800CD1F8 999E030C */  jal        SetSemiTrans
    /* BD9FC 800CD1FC 21280000 */   addu      $a1, $zero, $zero
    /* BDA00 800CD200 001C1200 */  sll        $v1, $s2, 16
  .L800CD204:
    /* BDA04 800CD204 031C0300 */  sra        $v1, $v1, 16
    /* BDA08 800CD208 C0100300 */  sll        $v0, $v1, 3
    /* BDA0C 800CD20C 23104300 */  subu       $v0, $v0, $v1
    /* BDA10 800CD210 40100200 */  sll        $v0, $v0, 1
    /* BDA14 800CD214 21886202 */  addu       $s1, $s3, $v0
    /* BDA18 800CD218 00002292 */  lbu        $v0, 0x0($s1)
    /* BDA1C 800CD21C 00000000 */  nop
    /* BDA20 800CD220 10005414 */  bne        $v0, $s4, .L800CD264
    /* BDA24 800CD224 001C1200 */   sll       $v1, $s2, 16
    /* BDA28 800CD228 0C002786 */  lh         $a3, 0xC($s1)
    /* BDA2C 800CD22C 1000A2AF */  sw         $v0, 0x10($sp)
    /* BDA30 800CD230 08002286 */  lh         $v0, 0x8($s1)
    /* BDA34 800CD234 00000000 */  nop
    /* BDA38 800CD238 1400A2AF */  sw         $v0, 0x14($sp)
    /* BDA3C 800CD23C 0A002286 */  lh         $v0, 0xA($s1)
    /* BDA40 800CD240 00000000 */  nop
    /* BDA44 800CD244 1800A2AF */  sw         $v0, 0x18($sp)
    /* BDA48 800CD248 F0040426 */  addiu      $a0, $s0, 0x4F0
    /* BDA4C 800CD24C 5000A527 */  addiu      $a1, $sp, 0x50
    /* BDA50 800CD250 67ED030C */  jal        func_800FB59C
    /* BDA54 800CD254 09000624 */   addiu     $a2, $zero, 0x9
    /* BDA58 800CD258 48010486 */  lh         $a0, 0x148($s0)
    /* BDA5C 800CD25C F8340308 */  j          .L800CD3E0
    /* BDA60 800CD260 01000524 */   addiu     $a1, $zero, 0x1
  .L800CD264:
    /* BDA64 800CD264 031C0300 */  sra        $v1, $v1, 16
    /* BDA68 800CD268 C0100300 */  sll        $v0, $v1, 3
    /* BDA6C 800CD26C 23104300 */  subu       $v0, $v0, $v1
    /* BDA70 800CD270 40100200 */  sll        $v0, $v0, 1
    /* BDA74 800CD274 21886202 */  addu       $s1, $s3, $v0
    /* BDA78 800CD278 00002392 */  lbu        $v1, 0x0($s1)
    /* BDA7C 800CD27C 04000224 */  addiu      $v0, $zero, 0x4
    /* BDA80 800CD280 10006214 */  bne        $v1, $v0, .L800CD2C4
    /* BDA84 800CD284 001C1200 */   sll       $v1, $s2, 16
    /* BDA88 800CD288 0C002786 */  lh         $a3, 0xC($s1)
    /* BDA8C 800CD28C 1000B4AF */  sw         $s4, 0x10($sp)
    /* BDA90 800CD290 08002286 */  lh         $v0, 0x8($s1)
    /* BDA94 800CD294 00000000 */  nop
    /* BDA98 800CD298 1400A2AF */  sw         $v0, 0x14($sp)
    /* BDA9C 800CD29C 0A002286 */  lh         $v0, 0xA($s1)
    /* BDAA0 800CD2A0 00000000 */  nop
    /* BDAA4 800CD2A4 1800A2AF */  sw         $v0, 0x18($sp)
    /* BDAA8 800CD2A8 F0040426 */  addiu      $a0, $s0, 0x4F0
    /* BDAAC 800CD2AC 8000A527 */  addiu      $a1, $sp, 0x80
    /* BDAB0 800CD2B0 67ED030C */  jal        func_800FB59C
    /* BDAB4 800CD2B4 09000624 */   addiu     $a2, $zero, 0x9
    /* BDAB8 800CD2B8 48010486 */  lh         $a0, 0x148($s0)
    /* BDABC 800CD2BC F8340308 */  j          .L800CD3E0
    /* BDAC0 800CD2C0 04000524 */   addiu     $a1, $zero, 0x4
  .L800CD2C4:
    /* BDAC4 800CD2C4 031C0300 */  sra        $v1, $v1, 16
    /* BDAC8 800CD2C8 C0100300 */  sll        $v0, $v1, 3
    /* BDACC 800CD2CC 23104300 */  subu       $v0, $v0, $v1
    /* BDAD0 800CD2D0 40100200 */  sll        $v0, $v0, 1
    /* BDAD4 800CD2D4 21886202 */  addu       $s1, $s3, $v0
    /* BDAD8 800CD2D8 00002392 */  lbu        $v1, 0x0($s1)
    /* BDADC 800CD2DC 02000224 */  addiu      $v0, $zero, 0x2
    /* BDAE0 800CD2E0 10006214 */  bne        $v1, $v0, .L800CD324
    /* BDAE4 800CD2E4 001C1200 */   sll       $v1, $s2, 16
    /* BDAE8 800CD2E8 0C002786 */  lh         $a3, 0xC($s1)
    /* BDAEC 800CD2EC 1000B4AF */  sw         $s4, 0x10($sp)
    /* BDAF0 800CD2F0 08002286 */  lh         $v0, 0x8($s1)
    /* BDAF4 800CD2F4 00000000 */  nop
    /* BDAF8 800CD2F8 1400A2AF */  sw         $v0, 0x14($sp)
    /* BDAFC 800CD2FC 0A002286 */  lh         $v0, 0xA($s1)
    /* BDB00 800CD300 00000000 */  nop
    /* BDB04 800CD304 1800A2AF */  sw         $v0, 0x18($sp)
    /* BDB08 800CD308 F0040426 */  addiu      $a0, $s0, 0x4F0
    /* BDB0C 800CD30C B000A527 */  addiu      $a1, $sp, 0xB0
    /* BDB10 800CD310 67ED030C */  jal        func_800FB59C
    /* BDB14 800CD314 09000624 */   addiu     $a2, $zero, 0x9
    /* BDB18 800CD318 48010486 */  lh         $a0, 0x148($s0)
    /* BDB1C 800CD31C F8340308 */  j          .L800CD3E0
    /* BDB20 800CD320 02000524 */   addiu     $a1, $zero, 0x2
  .L800CD324:
    /* BDB24 800CD324 031C0300 */  sra        $v1, $v1, 16
    /* BDB28 800CD328 C0100300 */  sll        $v0, $v1, 3
    /* BDB2C 800CD32C 23104300 */  subu       $v0, $v0, $v1
    /* BDB30 800CD330 40100200 */  sll        $v0, $v0, 1
    /* BDB34 800CD334 21886202 */  addu       $s1, $s3, $v0
    /* BDB38 800CD338 00002392 */  lbu        $v1, 0x0($s1)
    /* BDB3C 800CD33C 05000224 */  addiu      $v0, $zero, 0x5
    /* BDB40 800CD340 10006214 */  bne        $v1, $v0, .L800CD384
    /* BDB44 800CD344 001C1200 */   sll       $v1, $s2, 16
    /* BDB48 800CD348 0C002786 */  lh         $a3, 0xC($s1)
    /* BDB4C 800CD34C 1000B4AF */  sw         $s4, 0x10($sp)
    /* BDB50 800CD350 08002286 */  lh         $v0, 0x8($s1)
    /* BDB54 800CD354 00000000 */  nop
    /* BDB58 800CD358 1400A2AF */  sw         $v0, 0x14($sp)
    /* BDB5C 800CD35C 0A002286 */  lh         $v0, 0xA($s1)
    /* BDB60 800CD360 00000000 */  nop
    /* BDB64 800CD364 1800A2AF */  sw         $v0, 0x18($sp)
    /* BDB68 800CD368 F0040426 */  addiu      $a0, $s0, 0x4F0
    /* BDB6C 800CD36C E000A527 */  addiu      $a1, $sp, 0xE0
    /* BDB70 800CD370 67ED030C */  jal        func_800FB59C
    /* BDB74 800CD374 09000624 */   addiu     $a2, $zero, 0x9
    /* BDB78 800CD378 48010486 */  lh         $a0, 0x148($s0)
    /* BDB7C 800CD37C F8340308 */  j          .L800CD3E0
    /* BDB80 800CD380 05000524 */   addiu     $a1, $zero, 0x5
  .L800CD384:
    /* BDB84 800CD384 031C0300 */  sra        $v1, $v1, 16
    /* BDB88 800CD388 C0100300 */  sll        $v0, $v1, 3
    /* BDB8C 800CD38C 23104300 */  subu       $v0, $v0, $v1
    /* BDB90 800CD390 40100200 */  sll        $v0, $v0, 1
    /* BDB94 800CD394 21886202 */  addu       $s1, $s3, $v0
    /* BDB98 800CD398 00002392 */  lbu        $v1, 0x0($s1)
    /* BDB9C 800CD39C 03000224 */  addiu      $v0, $zero, 0x3
    /* BDBA0 800CD3A0 2D006214 */  bne        $v1, $v0, .L800CD458
    /* BDBA4 800CD3A4 00141200 */   sll       $v0, $s2, 16
    /* BDBA8 800CD3A8 0C002786 */  lh         $a3, 0xC($s1)
    /* BDBAC 800CD3AC 1000B4AF */  sw         $s4, 0x10($sp)
    /* BDBB0 800CD3B0 08002286 */  lh         $v0, 0x8($s1)
    /* BDBB4 800CD3B4 00000000 */  nop
    /* BDBB8 800CD3B8 1400A2AF */  sw         $v0, 0x14($sp)
    /* BDBBC 800CD3BC 0A002286 */  lh         $v0, 0xA($s1)
    /* BDBC0 800CD3C0 00000000 */  nop
    /* BDBC4 800CD3C4 1800A2AF */  sw         $v0, 0x18($sp)
    /* BDBC8 800CD3C8 F0040426 */  addiu      $a0, $s0, 0x4F0
    /* BDBCC 800CD3CC 1001A527 */  addiu      $a1, $sp, 0x110
    /* BDBD0 800CD3D0 67ED030C */  jal        func_800FB59C
    /* BDBD4 800CD3D4 09000624 */   addiu     $a2, $zero, 0x9
    /* BDBD8 800CD3D8 48010486 */  lh         $a0, 0x148($s0)
    /* BDBDC 800CD3DC 03000524 */  addiu      $a1, $zero, 0x3
  .L800CD3E0:
    /* BDBE0 800CD3E0 3C21030C */  jal        func_800C84F0
    /* BDBE4 800CD3E4 00000000 */   nop
    /* BDBE8 800CD3E8 01002392 */  lbu        $v1, 0x1($s1)
    /* BDBEC 800CD3EC 00000000 */  nop
    /* BDBF0 800CD3F0 2A104300 */  slt        $v0, $v0, $v1
    /* BDBF4 800CD3F4 29004010 */  beqz       $v0, .L800CD49C
    /* BDBF8 800CD3F8 C0000324 */   addiu     $v1, $zero, 0xC0
    /* BDBFC 800CD3FC 340503A2 */  sb         $v1, 0x534($s0)
    /* BDC00 800CD400 350503A2 */  sb         $v1, 0x535($s0)
    /* BDC04 800CD404 360503A2 */  sb         $v1, 0x536($s0)
    /* BDC08 800CD408 72050286 */  lh         $v0, 0x572($s0)
    /* BDC0C 800CD40C 00000000 */  nop
    /* BDC10 800CD410 02004228 */  slti       $v0, $v0, 0x2
    /* BDC14 800CD414 04004014 */  bnez       $v0, .L800CD428
    /* BDC18 800CD418 30050426 */   addiu     $a0, $s0, 0x530
    /* BDC1C 800CD41C 480503A2 */  sb         $v1, 0x548($s0)
    /* BDC20 800CD420 490503A2 */  sb         $v1, 0x549($s0)
    /* BDC24 800CD424 4A0503A2 */  sb         $v1, 0x54A($s0)
  .L800CD428:
    /* BDC28 800CD428 999E030C */  jal        SetSemiTrans
    /* BDC2C 800CD42C 01000524 */   addiu     $a1, $zero, 0x1
    /* BDC30 800CD430 72050286 */  lh         $v0, 0x572($s0)
    /* BDC34 800CD434 00000000 */  nop
    /* BDC38 800CD438 02004228 */  slti       $v0, $v0, 0x2
    /* BDC3C 800CD43C 18004014 */  bnez       $v0, .L800CD4A0
    /* BDC40 800CD440 001C1200 */   sll       $v1, $s2, 16
    /* BDC44 800CD444 44050426 */  addiu      $a0, $s0, 0x544
    /* BDC48 800CD448 999E030C */  jal        SetSemiTrans
    /* BDC4C 800CD44C 01000524 */   addiu     $a1, $zero, 0x1
    /* BDC50 800CD450 28350308 */  j          .L800CD4A0
    /* BDC54 800CD454 001C1200 */   sll       $v1, $s2, 16
  .L800CD458:
    /* BDC58 800CD458 03140200 */  sra        $v0, $v0, 16
    /* BDC5C 800CD45C C0180200 */  sll        $v1, $v0, 3
    /* BDC60 800CD460 23186200 */  subu       $v1, $v1, $v0
    /* BDC64 800CD464 40180300 */  sll        $v1, $v1, 1
    /* BDC68 800CD468 21186302 */  addu       $v1, $s3, $v1
    /* BDC6C 800CD46C 0C006784 */  lh         $a3, 0xC($v1)
    /* BDC70 800CD470 1000B4AF */  sw         $s4, 0x10($sp)
    /* BDC74 800CD474 08006284 */  lh         $v0, 0x8($v1)
    /* BDC78 800CD478 00000000 */  nop
    /* BDC7C 800CD47C 1400A2AF */  sw         $v0, 0x14($sp)
    /* BDC80 800CD480 0A006284 */  lh         $v0, 0xA($v1)
    /* BDC84 800CD484 00000000 */  nop
    /* BDC88 800CD488 1800A2AF */  sw         $v0, 0x18($sp)
    /* BDC8C 800CD48C F0040426 */  addiu      $a0, $s0, 0x4F0
    /* BDC90 800CD490 4001A527 */  addiu      $a1, $sp, 0x140
    /* BDC94 800CD494 67ED030C */  jal        func_800FB59C
    /* BDC98 800CD498 09000624 */   addiu     $a2, $zero, 0x9
  .L800CD49C:
    /* BDC9C 800CD49C 001C1200 */  sll        $v1, $s2, 16
  .L800CD4A0:
    /* BDCA0 800CD4A0 031C0300 */  sra        $v1, $v1, 16
    /* BDCA4 800CD4A4 C0100300 */  sll        $v0, $v1, 3
    /* BDCA8 800CD4A8 23104300 */  subu       $v0, $v0, $v1
    /* BDCAC 800CD4AC 40100200 */  sll        $v0, $v0, 1
    /* BDCB0 800CD4B0 21106202 */  addu       $v0, $s3, $v0
    /* BDCB4 800CD4B4 04004794 */  lhu        $a3, 0x4($v0)
    /* BDCB8 800CD4B8 00000000 */  nop
    /* BDCBC 800CD4BC A9FFE724 */  addiu      $a3, $a3, -0x57
    /* BDCC0 800CD4C0 003C0700 */  sll        $a3, $a3, 16
    /* BDCC4 800CD4C4 06004294 */  lhu        $v0, 0x6($v0)
    /* BDCC8 800CD4C8 00000000 */  nop
    /* BDCCC 800CD4CC CFFF4224 */  addiu      $v0, $v0, -0x31
    /* BDCD0 800CD4D0 00140200 */  sll        $v0, $v0, 16
    /* BDCD4 800CD4D4 03140200 */  sra        $v0, $v0, 16
    /* BDCD8 800CD4D8 1000A2AF */  sw         $v0, 0x10($sp)
    /* BDCDC 800CD4DC 4007A427 */  addiu      $a0, $sp, 0x740
    /* BDCE0 800CD4E0 F0040526 */  addiu      $a1, $s0, 0x4F0
    /* BDCE4 800CD4E4 F4030626 */  addiu      $a2, $s0, 0x3F4
    /* BDCE8 800CD4E8 89EE030C */  jal        func_800FBA24
    /* BDCEC 800CD4EC 033C0700 */   sra       $a3, $a3, 16
  .L800CD4F0:
    /* BDCF0 800CD4F0 58340308 */  j          .L800CD160
    /* BDCF4 800CD4F4 01005226 */   addiu     $s2, $s2, 0x1
  .L800CD4F8:
    /* BDCF8 800CD4F8 3002A427 */  addiu      $a0, $sp, 0x230
    /* BDCFC 800CD4FC 4CE1030C */  jal        func_800F8530
    /* BDD00 800CD500 02000524 */   addiu     $a1, $zero, 0x2
    /* BDD04 800CD504 0002A427 */  addiu      $a0, $sp, 0x200
    /* BDD08 800CD508 4CE1030C */  jal        func_800F8530
    /* BDD0C 800CD50C 02000524 */   addiu     $a1, $zero, 0x2
    /* BDD10 800CD510 D001A427 */  addiu      $a0, $sp, 0x1D0
    /* BDD14 800CD514 4CE1030C */  jal        func_800F8530
    /* BDD18 800CD518 02000524 */   addiu     $a1, $zero, 0x2
    /* BDD1C 800CD51C A001A427 */  addiu      $a0, $sp, 0x1A0
    /* BDD20 800CD520 4CE1030C */  jal        func_800F8530
    /* BDD24 800CD524 02000524 */   addiu     $a1, $zero, 0x2
    /* BDD28 800CD528 7001A427 */  addiu      $a0, $sp, 0x170
    /* BDD2C 800CD52C 4CE1030C */  jal        func_800F8530
    /* BDD30 800CD530 02000524 */   addiu     $a1, $zero, 0x2
    /* BDD34 800CD534 4001A427 */  addiu      $a0, $sp, 0x140
    /* BDD38 800CD538 4CE1030C */  jal        func_800F8530
    /* BDD3C 800CD53C 02000524 */   addiu     $a1, $zero, 0x2
    /* BDD40 800CD540 1001A427 */  addiu      $a0, $sp, 0x110
    /* BDD44 800CD544 4CE1030C */  jal        func_800F8530
    /* BDD48 800CD548 02000524 */   addiu     $a1, $zero, 0x2
    /* BDD4C 800CD54C E000A427 */  addiu      $a0, $sp, 0xE0
    /* BDD50 800CD550 4CE1030C */  jal        func_800F8530
    /* BDD54 800CD554 02000524 */   addiu     $a1, $zero, 0x2
    /* BDD58 800CD558 B000A427 */  addiu      $a0, $sp, 0xB0
    /* BDD5C 800CD55C 4CE1030C */  jal        func_800F8530
    /* BDD60 800CD560 02000524 */   addiu     $a1, $zero, 0x2
    /* BDD64 800CD564 8000A427 */  addiu      $a0, $sp, 0x80
    /* BDD68 800CD568 4CE1030C */  jal        func_800F8530
    /* BDD6C 800CD56C 02000524 */   addiu     $a1, $zero, 0x2
    /* BDD70 800CD570 5000A427 */  addiu      $a0, $sp, 0x50
    /* BDD74 800CD574 4CE1030C */  jal        func_800F8530
    /* BDD78 800CD578 02000524 */   addiu     $a1, $zero, 0x2
    /* BDD7C 800CD57C 2000A427 */  addiu      $a0, $sp, 0x20
    /* BDD80 800CD580 4CE1030C */  jal        func_800F8530
    /* BDD84 800CD584 02000524 */   addiu     $a1, $zero, 0x2
    /* BDD88 800CD588 01000224 */  addiu      $v0, $zero, 0x1
  .L800CD58C:
    /* BDD8C 800CD58C 5C07BF8F */  lw         $ra, 0x75C($sp)
    /* BDD90 800CD590 5807B48F */  lw         $s4, 0x758($sp)
    /* BDD94 800CD594 5407B38F */  lw         $s3, 0x754($sp)
    /* BDD98 800CD598 5007B28F */  lw         $s2, 0x750($sp)
    /* BDD9C 800CD59C 4C07B18F */  lw         $s1, 0x74C($sp)
    /* BDDA0 800CD5A0 4807B08F */  lw         $s0, 0x748($sp)
    /* BDDA4 800CD5A4 6007BD27 */  addiu      $sp, $sp, 0x760
    /* BDDA8 800CD5A8 0800E003 */  jr         $ra
    /* BDDAC 800CD5AC 00000000 */   nop
endlabel func_800CC530
