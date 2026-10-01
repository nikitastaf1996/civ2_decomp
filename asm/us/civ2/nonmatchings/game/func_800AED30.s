.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AED30, 0x89C

glabel func_800AED30
    /* 9F530 800AED30 20FFBD27 */  addiu      $sp, $sp, -0xE0
    /* 9F534 800AED34 DC00BFAF */  sw         $ra, 0xDC($sp)
    /* 9F538 800AED38 D800BEAF */  sw         $fp, 0xD8($sp)
    /* 9F53C 800AED3C D400B7AF */  sw         $s7, 0xD4($sp)
    /* 9F540 800AED40 D000B6AF */  sw         $s6, 0xD0($sp)
    /* 9F544 800AED44 CC00B5AF */  sw         $s5, 0xCC($sp)
    /* 9F548 800AED48 C800B4AF */  sw         $s4, 0xC8($sp)
    /* 9F54C 800AED4C C400B3AF */  sw         $s3, 0xC4($sp)
    /* 9F550 800AED50 C000B2AF */  sw         $s2, 0xC0($sp)
    /* 9F554 800AED54 BC00B1AF */  sw         $s1, 0xBC($sp)
    /* 9F558 800AED58 B800B0AF */  sw         $s0, 0xB8($sp)
    /* 9F55C 800AED5C A800A4AF */  sw         $a0, 0xA8($sp)
    /* 9F560 800AED60 2180A000 */  addu       $s0, $a1, $zero
    /* 9F564 800AED64 21F0C000 */  addu       $fp, $a2, $zero
    /* 9F568 800AED68 B000A7AF */  sw         $a3, 0xB0($sp)
    /* 9F56C 800AED6C F400A88F */  lw         $t0, 0xF4($sp)
    /* 9F570 800AED70 00000000 */  nop
    /* 9F574 800AED74 08000425 */  addiu      $a0, $t0, 0x8
    /* 9F578 800AED78 00240400 */  sll        $a0, $a0, 16
    /* 9F57C 800AED7C 03240400 */  sra        $a0, $a0, 16
    /* 9F580 800AED80 D0EC030C */  jal        func_800FB340
    /* 9F584 800AED84 08000524 */   addiu     $a1, $zero, 0x8
    /* 9F588 800AED88 0200C233 */  andi       $v0, $fp, 0x2
    /* 9F58C 800AED8C 06004010 */  beqz       $v0, .L800AEDA8
    /* 9F590 800AED90 21B00002 */   addu      $s6, $s0, $zero
    /* 9F594 800AED94 CCBA020C */  jal        func_800AEB30
    /* 9F598 800AED98 2120C002 */   addu      $a0, $s6, $zero
    /* 9F59C 800AED9C 21B04000 */  addu       $s6, $v0, $zero
    /* 9F5A0 800AEDA0 FB01C006 */  bltz       $s6, .L800AF590
    /* 9F5A4 800AEDA4 01000424 */   addiu     $a0, $zero, 0x1
  .L800AEDA8:
    /* 9F5A8 800AEDA8 A800A88F */  lw         $t0, 0xA8($sp)
    /* 9F5AC 800AEDAC 00000000 */  nop
    /* 9F5B0 800AEDB0 1C00048D */  lw         $a0, 0x1C($t0)
    /* 9F5B4 800AEDB4 3307040C */  jal        func_80101CCC
    /* 9F5B8 800AEDB8 21280000 */   addu      $a1, $zero, $zero
    /* 9F5BC 800AEDBC 40101600 */  sll        $v0, $s6, 1
    /* 9F5C0 800AEDC0 21105600 */  addu       $v0, $v0, $s6
    /* 9F5C4 800AEDC4 80100200 */  sll        $v0, $v0, 2
    /* 9F5C8 800AEDC8 21105600 */  addu       $v0, $v0, $s6
    /* 9F5CC 800AEDCC 40100200 */  sll        $v0, $v0, 1
    /* 9F5D0 800AEDD0 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 9F5D4 800AEDD4 21082200 */  addu       $at, $at, $v0
    /* 9F5D8 800AEDD8 BBD62480 */  lb         $a0, %lo(D_8010D6BB)($at)
    /* 9F5DC 800AEDDC 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 9F5E0 800AEDE0 21082200 */  addu       $at, $at, $v0
    /* 9F5E4 800AEDE4 BAD63790 */  lbu        $s7, %lo(D_8010D6BA)($at)
    /* 9F5E8 800AEDE8 2E000224 */  addiu      $v0, $zero, 0x2E
    /* 9F5EC 800AEDEC 0400E216 */  bne        $s7, $v0, .L800AEE00
    /* 9F5F0 800AEDF0 00000000 */   nop
    /* 9F5F4 800AEDF4 04008014 */  bnez       $a0, .L800AEE08
    /* 9F5F8 800AEDF8 40100400 */   sll       $v0, $a0, 1
    /* 9F5FC 800AEDFC 36001724 */  addiu      $s7, $zero, 0x36
  .L800AEE00:
    /* 9F600 800AEE00 13008010 */  beqz       $a0, .L800AEE50
    /* 9F604 800AEE04 40100400 */   sll       $v0, $a0, 1
  .L800AEE08:
    /* 9F608 800AEE08 21104400 */  addu       $v0, $v0, $a0
    /* 9F60C 800AEE0C 80100200 */  sll        $v0, $v0, 2
    /* 9F610 800AEE10 23104400 */  subu       $v0, $v0, $a0
    /* 9F614 800AEE14 00110200 */  sll        $v0, $v0, 4
    /* 9F618 800AEE18 23104400 */  subu       $v0, $v0, $a0
    /* 9F61C 800AEE1C C0100200 */  sll        $v0, $v0, 3
    /* 9F620 800AEE20 1180013C */  lui        $at, %hi(D_80117698)
    /* 9F624 800AEE24 21082200 */  addu       $at, $at, $v0
    /* 9F628 800AEE28 98762384 */  lh         $v1, %lo(D_80117698)($at)
    /* 9F62C 800AEE2C 00000000 */  nop
    /* 9F630 800AEE30 40100300 */  sll        $v0, $v1, 1
    /* 9F634 800AEE34 21104300 */  addu       $v0, $v0, $v1
    /* 9F638 800AEE38 00110200 */  sll        $v0, $v0, 4
    /* 9F63C 800AEE3C 1180013C */  lui        $at, %hi(D_80116AD6)
    /* 9F640 800AEE40 21082200 */  addu       $at, $at, $v0
    /* 9F644 800AEE44 D66A2284 */  lh         $v0, %lo(D_80116AD6)($at)
    /* 9F648 800AEE48 95BB0208 */  j          .L800AEE54
    /* 9F64C 800AEE4C C0100200 */   sll       $v0, $v0, 3
  .L800AEE50:
    /* 9F650 800AEE50 21100000 */  addu       $v0, $zero, $zero
  .L800AEE54:
    /* 9F654 800AEE54 1180013C */  lui        $at, %hi(D_80117650)
    /* 9F658 800AEE58 21082200 */  addu       $at, $at, $v0
    /* 9F65C 800AEE5C 50763184 */  lh         $s1, %lo(D_80117650)($at)
    /* 9F660 800AEE60 13008010 */  beqz       $a0, .L800AEEB0
    /* 9F664 800AEE64 40100400 */   sll       $v0, $a0, 1
    /* 9F668 800AEE68 21104400 */  addu       $v0, $v0, $a0
    /* 9F66C 800AEE6C 80100200 */  sll        $v0, $v0, 2
    /* 9F670 800AEE70 23104400 */  subu       $v0, $v0, $a0
    /* 9F674 800AEE74 00110200 */  sll        $v0, $v0, 4
    /* 9F678 800AEE78 23104400 */  subu       $v0, $v0, $a0
    /* 9F67C 800AEE7C C0100200 */  sll        $v0, $v0, 3
    /* 9F680 800AEE80 1180013C */  lui        $at, %hi(D_80117698)
    /* 9F684 800AEE84 21082200 */  addu       $at, $at, $v0
    /* 9F688 800AEE88 98762384 */  lh         $v1, %lo(D_80117698)($at)
    /* 9F68C 800AEE8C 00000000 */  nop
    /* 9F690 800AEE90 40100300 */  sll        $v0, $v1, 1
    /* 9F694 800AEE94 21104300 */  addu       $v0, $v0, $v1
    /* 9F698 800AEE98 00110200 */  sll        $v0, $v0, 4
    /* 9F69C 800AEE9C 1180013C */  lui        $at, %hi(D_80116AD6)
    /* 9F6A0 800AEEA0 21082200 */  addu       $at, $at, $v0
    /* 9F6A4 800AEEA4 D66A2284 */  lh         $v0, %lo(D_80116AD6)($at)
    /* 9F6A8 800AEEA8 ADBB0208 */  j          .L800AEEB4
    /* 9F6AC 800AEEAC C0100200 */   sll       $v0, $v0, 3
  .L800AEEB0:
    /* 9F6B0 800AEEB0 21100000 */  addu       $v0, $zero, $zero
  .L800AEEB4:
    /* 9F6B4 800AEEB4 1180013C */  lui        $at, %hi(D_80117652)
    /* 9F6B8 800AEEB8 21082200 */  addu       $at, $at, $v0
    /* 9F6BC 800AEEBC 52762484 */  lh         $a0, %lo(D_80117652)($at)
    /* 9F6C0 800AEEC0 1480013C */  lui        $at, %hi(D_8013883C)
    /* 9F6C4 800AEEC4 21083700 */  addu       $at, $at, $s7
    /* 9F6C8 800AEEC8 3C882390 */  lbu        $v1, %lo(D_8013883C)($at)
    /* 9F6CC 800AEECC B000A88F */  lw         $t0, 0xB0($sp)
    /* 9F6D0 800AEED0 00000000 */  nop
    /* 9F6D4 800AEED4 21900301 */  addu       $s2, $t0, $v1
    /* 9F6D8 800AEED8 1480013C */  lui        $at, %hi(D_80138874)
    /* 9F6DC 800AEEDC 21083700 */  addu       $at, $at, $s7
    /* 9F6E0 800AEEE0 74882290 */  lbu        $v0, %lo(D_80138874)($at)
    /* 9F6E4 800AEEE4 F000A88F */  lw         $t0, 0xF0($sp)
    /* 9F6E8 800AEEE8 00000000 */  nop
    /* 9F6EC 800AEEEC 21A80201 */  addu       $s5, $t0, $v0
    /* 9F6F0 800AEEF0 08001424 */  addiu      $s4, $zero, 0x8
    /* 9F6F4 800AEEF4 1000632C */  sltiu      $v1, $v1, 0x10
    /* 9F6F8 800AEEF8 02006010 */  beqz       $v1, .L800AEF04
    /* 9F6FC 800AEEFC 01001024 */   addiu     $s0, $zero, 0x1
    /* 9F700 800AEF00 FFFF1024 */  addiu      $s0, $zero, -0x1
  .L800AEF04:
    /* 9F704 800AEF04 0100C233 */  andi       $v0, $fp, 0x1
    /* 9F708 800AEF08 31004010 */  beqz       $v0, .L800AEFD0
    /* 9F70C 800AEF0C 40101600 */   sll       $v0, $s6, 1
    /* 9F710 800AEF10 21105600 */  addu       $v0, $v0, $s6
    /* 9F714 800AEF14 80100200 */  sll        $v0, $v0, 2
    /* 9F718 800AEF18 21105600 */  addu       $v0, $v0, $s6
    /* 9F71C 800AEF1C 40180200 */  sll        $v1, $v0, 1
    /* 9F720 800AEF20 1180013C */  lui        $at, %hi(D_8010D6CA)
    /* 9F724 800AEF24 21082300 */  addu       $at, $at, $v1
    /* 9F728 800AEF28 CAD62284 */  lh         $v0, %lo(D_8010D6CA)($at)
    /* 9F72C 800AEF2C 00000000 */  nop
    /* 9F730 800AEF30 07004104 */  bgez       $v0, .L800AEF50
    /* 9F734 800AEF34 00000000 */   nop
    /* 9F738 800AEF38 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 9F73C 800AEF3C 21082300 */  addu       $at, $at, $v1
    /* 9F740 800AEF40 CCD62284 */  lh         $v0, %lo(D_8010D6CC)($at)
    /* 9F744 800AEF44 00000000 */  nop
    /* 9F748 800AEF48 21004004 */  bltz       $v0, .L800AEFD0
    /* 9F74C 800AEF4C 00000000 */   nop
  .L800AEF50:
    /* 9F750 800AEF50 80801000 */  sll        $s0, $s0, 2
    /* 9F754 800AEF54 21805002 */  addu       $s0, $s2, $s0
    /* 9F758 800AEF58 8800B0A7 */  sh         $s0, 0x88($sp)
    /* 9F75C 800AEF5C 8A00B5A7 */  sh         $s5, 0x8A($sp)
    /* 9F760 800AEF60 21101402 */  addu       $v0, $s0, $s4
    /* 9F764 800AEF64 8C00A2A7 */  sh         $v0, 0x8C($sp)
    /* 9F768 800AEF68 0C00A226 */  addiu      $v0, $s5, 0xC
    /* 9F76C 800AEF6C 8E00A2A7 */  sh         $v0, 0x8E($sp)
    /* 9F770 800AEF70 40100400 */  sll        $v0, $a0, 1
    /* 9F774 800AEF74 21104400 */  addu       $v0, $v0, $a0
    /* 9F778 800AEF78 1380043C */  lui        $a0, %hi(D_801299EC)
    /* 9F77C 800AEF7C EC998424 */  addiu      $a0, $a0, %lo(D_801299EC)
    /* 9F780 800AEF80 1180013C */  lui        $at, %hi(D_8010CB00)
    /* 9F784 800AEF84 21082200 */  addu       $at, $at, $v0
    /* 9F788 800AEF88 00CB2590 */  lbu        $a1, %lo(D_8010CB00)($at)
    /* 9F78C 800AEF8C 1180013C */  lui        $at, %hi(D_8010CB01)
    /* 9F790 800AEF90 21082200 */  addu       $at, $at, $v0
    /* 9F794 800AEF94 01CB2690 */  lbu        $a2, %lo(D_8010CB01)($at)
    /* 9F798 800AEF98 1180013C */  lui        $at, %hi(D_8010CB02)
    /* 9F79C 800AEF9C 21082200 */  addu       $at, $at, $v0
    /* 9F7A0 800AEFA0 02CB2790 */  lbu        $a3, %lo(D_8010CB02)($at)
    /* 9F7A4 800AEFA4 62EF030C */  jal        func_800FBD88
    /* 9F7A8 800AEFA8 00841000 */   sll       $s0, $s0, 16
    /* 9F7AC 800AEFAC 00141500 */  sll        $v0, $s5, 16
    /* 9F7B0 800AEFB0 03140200 */  sra        $v0, $v0, 16
    /* 9F7B4 800AEFB4 1000A2AF */  sw         $v0, 0x10($sp)
    /* 9F7B8 800AEFB8 9000A427 */  addiu      $a0, $sp, 0x90
    /* 9F7BC 800AEFBC 1380053C */  lui        $a1, %hi(D_801299EC)
    /* 9F7C0 800AEFC0 EC99A524 */  addiu      $a1, $a1, %lo(D_801299EC)
    /* 9F7C4 800AEFC4 A800A68F */  lw         $a2, 0xA8($sp)
    /* 9F7C8 800AEFC8 89EE030C */  jal        func_800FBA24
    /* 9F7CC 800AEFCC 033C1000 */   sra       $a3, $s0, 16
  .L800AEFD0:
    /* 9F7D0 800AEFD0 8800B2A7 */  sh         $s2, 0x88($sp)
    /* 9F7D4 800AEFD4 8A00B5A7 */  sh         $s5, 0x8A($sp)
    /* 9F7D8 800AEFD8 21984002 */  addu       $s3, $s2, $zero
    /* 9F7DC 800AEFDC 21805402 */  addu       $s0, $s2, $s4
    /* 9F7E0 800AEFE0 8C00B0A7 */  sh         $s0, 0x8C($sp)
    /* 9F7E4 800AEFE4 0C00A226 */  addiu      $v0, $s5, 0xC
    /* 9F7E8 800AEFE8 8E00A2A7 */  sh         $v0, 0x8E($sp)
    /* 9F7EC 800AEFEC 40101100 */  sll        $v0, $s1, 1
    /* 9F7F0 800AEFF0 21105100 */  addu       $v0, $v0, $s1
    /* 9F7F4 800AEFF4 1380043C */  lui        $a0, %hi(D_801299EC)
    /* 9F7F8 800AEFF8 EC998424 */  addiu      $a0, $a0, %lo(D_801299EC)
    /* 9F7FC 800AEFFC 1180013C */  lui        $at, %hi(D_8010CB00)
    /* 9F800 800AF000 21082200 */  addu       $at, $at, $v0
    /* 9F804 800AF004 00CB2590 */  lbu        $a1, %lo(D_8010CB00)($at)
    /* 9F808 800AF008 1180013C */  lui        $at, %hi(D_8010CB01)
    /* 9F80C 800AF00C 21082200 */  addu       $at, $at, $v0
    /* 9F810 800AF010 01CB2690 */  lbu        $a2, %lo(D_8010CB01)($at)
    /* 9F814 800AF014 1180013C */  lui        $at, %hi(D_8010CB02)
    /* 9F818 800AF018 21082200 */  addu       $at, $at, $v0
    /* 9F81C 800AF01C 02CB2790 */  lbu        $a3, %lo(D_8010CB02)($at)
    /* 9F820 800AF020 62EF030C */  jal        func_800FBD88
    /* 9F824 800AF024 21A0A002 */   addu      $s4, $s5, $zero
    /* 9F828 800AF028 00941200 */  sll        $s2, $s2, 16
    /* 9F82C 800AF02C 03941200 */  sra        $s2, $s2, 16
    /* 9F830 800AF030 008C1500 */  sll        $s1, $s5, 16
    /* 9F834 800AF034 038C1100 */  sra        $s1, $s1, 16
    /* 9F838 800AF038 1000B1AF */  sw         $s1, 0x10($sp)
    /* 9F83C 800AF03C 9000A427 */  addiu      $a0, $sp, 0x90
    /* 9F840 800AF040 1380053C */  lui        $a1, %hi(D_801299EC)
    /* 9F844 800AF044 EC99A524 */  addiu      $a1, $a1, %lo(D_801299EC)
    /* 9F848 800AF048 A800A68F */  lw         $a2, 0xA8($sp)
    /* 9F84C 800AF04C 89EE030C */  jal        func_800FBA24
    /* 9F850 800AF050 21384002 */   addu      $a3, $s2, $zero
    /* 9F854 800AF054 8000B3A7 */  sh         $s3, 0x80($sp)
    /* 9F858 800AF058 8200B4A7 */  sh         $s4, 0x82($sp)
    /* 9F85C 800AF05C 8400B0A7 */  sh         $s0, 0x84($sp)
    /* 9F860 800AF060 0200A226 */  addiu      $v0, $s5, 0x2
    /* 9F864 800AF064 8600A2A7 */  sh         $v0, 0x86($sp)
    /* 9F868 800AF068 00140200 */  sll        $v0, $v0, 16
    /* 9F86C 800AF06C 03140200 */  sra        $v0, $v0, 16
    /* 9F870 800AF070 23105100 */  subu       $v0, $v0, $s1
    /* 9F874 800AF074 8A00A397 */  lhu        $v1, 0x8A($sp)
    /* 9F878 800AF078 00000000 */  nop
    /* 9F87C 800AF07C 21104300 */  addu       $v0, $v0, $v1
    /* 9F880 800AF080 8A00A2A7 */  sh         $v0, 0x8A($sp)
    /* 9F884 800AF084 00240200 */  sll        $a0, $v0, 16
    /* 9F888 800AF088 03240400 */  sra        $a0, $a0, 16
    /* 9F88C 800AF08C 7800B3A7 */  sh         $s3, 0x78($sp)
    /* 9F890 800AF090 7A00A4A7 */  sh         $a0, 0x7A($sp)
    /* 9F894 800AF094 7C00B0A7 */  sh         $s0, 0x7C($sp)
    /* 9F898 800AF098 03008324 */  addiu      $v1, $a0, 0x3
    /* 9F89C 800AF09C 7E00A3A7 */  sh         $v1, 0x7E($sp)
    /* 9F8A0 800AF0A0 001C0300 */  sll        $v1, $v1, 16
    /* 9F8A4 800AF0A4 031C0300 */  sra        $v1, $v1, 16
    /* 9F8A8 800AF0A8 23186400 */  subu       $v1, $v1, $a0
    /* 9F8AC 800AF0AC 21186200 */  addu       $v1, $v1, $v0
    /* 9F8B0 800AF0B0 8A00A3A7 */  sh         $v1, 0x8A($sp)
    /* 9F8B4 800AF0B4 00240300 */  sll        $a0, $v1, 16
    /* 9F8B8 800AF0B8 03240400 */  sra        $a0, $a0, 16
    /* 9F8BC 800AF0BC 8000B3A7 */  sh         $s3, 0x80($sp)
    /* 9F8C0 800AF0C0 8200A4A7 */  sh         $a0, 0x82($sp)
    /* 9F8C4 800AF0C4 8400B0A7 */  sh         $s0, 0x84($sp)
    /* 9F8C8 800AF0C8 02008224 */  addiu      $v0, $a0, 0x2
    /* 9F8CC 800AF0CC 8600A2A7 */  sh         $v0, 0x86($sp)
    /* 9F8D0 800AF0D0 00140200 */  sll        $v0, $v0, 16
    /* 9F8D4 800AF0D4 03140200 */  sra        $v0, $v0, 16
    /* 9F8D8 800AF0D8 23104400 */  subu       $v0, $v0, $a0
    /* 9F8DC 800AF0DC 21104300 */  addu       $v0, $v0, $v1
    /* 9F8E0 800AF0E0 8A00A2A7 */  sh         $v0, 0x8A($sp)
    /* 9F8E4 800AF0E4 00841000 */  sll        $s0, $s0, 16
    /* 9F8E8 800AF0E8 03841000 */  sra        $s0, $s0, 16
    /* 9F8EC 800AF0EC 23801202 */  subu       $s0, $s0, $s2
    /* 9F8F0 800AF0F0 00841000 */  sll        $s0, $s0, 16
    /* 9F8F4 800AF0F4 40181600 */  sll        $v1, $s6, 1
    /* 9F8F8 800AF0F8 21187600 */  addu       $v1, $v1, $s6
    /* 9F8FC 800AF0FC 80180300 */  sll        $v1, $v1, 2
    /* 9F900 800AF100 21187600 */  addu       $v1, $v1, $s6
    /* 9F904 800AF104 40180300 */  sll        $v1, $v1, 1
    /* 9F908 800AF108 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 9F90C 800AF10C 21082300 */  addu       $at, $at, $v1
    /* 9F910 800AF110 BAD62490 */  lbu        $a0, %lo(D_8010D6BA)($at)
    /* 9F914 800AF114 00000000 */  nop
    /* 9F918 800AF118 80100400 */  sll        $v0, $a0, 2
    /* 9F91C 800AF11C 21104400 */  addu       $v0, $v0, $a0
    /* 9F920 800AF120 80100200 */  sll        $v0, $v0, 2
    /* 9F924 800AF124 1180013C */  lui        $at, %hi(D_8010D28A)
    /* 9F928 800AF128 21082200 */  addu       $at, $at, $v0
    /* 9F92C 800AF12C 8AD23180 */  lb         $s1, %lo(D_8010D28A)($at)
    /* 9F930 800AF130 1180013C */  lui        $at, %hi(D_8010D6BE)
    /* 9F934 800AF134 21082300 */  addu       $at, $at, $v1
    /* 9F938 800AF138 BED63390 */  lbu        $s3, %lo(D_8010D6BE)($at)
    /* 9F93C 800AF13C 02002016 */  bnez       $s1, .L800AF148
    /* 9F940 800AF140 03841000 */   sra       $s0, $s0, 16
    /* 9F944 800AF144 0A001124 */  addiu      $s1, $zero, 0xA
  .L800AF148:
    /* 9F948 800AF148 1280023C */  lui        $v0, %hi(D_8011A250)
    /* 9F94C 800AF14C 50A24294 */  lhu        $v0, %lo(D_8011A250)($v0)
    /* 9F950 800AF150 00000000 */  nop
    /* 9F954 800AF154 10004230 */  andi       $v0, $v0, 0x10
    /* 9F958 800AF158 02004014 */  bnez       $v0, .L800AF164
    /* 9F95C 800AF15C 0400C233 */   andi      $v0, $fp, 0x4
    /* 9F960 800AF160 21980000 */  addu       $s3, $zero, $zero
  .L800AF164:
    /* 9F964 800AF164 02004014 */  bnez       $v0, .L800AF170
    /* 9F968 800AF168 00000000 */   nop
    /* 9F96C 800AF16C 21980000 */  addu       $s3, $zero, $zero
  .L800AF170:
    /* 9F970 800AF170 F400A88F */  lw         $t0, 0xF4($sp)
    /* 9F974 800AF174 00000000 */  nop
    /* 9F978 800AF178 FDFF0229 */  slti       $v0, $t0, -0x3
    /* 9F97C 800AF17C 03004010 */  beqz       $v0, .L800AF18C
    /* 9F980 800AF180 23903302 */   subu      $s2, $s1, $s3
    /* 9F984 800AF184 21980000 */  addu       $s3, $zero, $zero
    /* 9F988 800AF188 23903302 */  subu       $s2, $s1, $s3
  .L800AF18C:
    /* 9F98C 800AF18C 18005002 */  mult       $s2, $s0
    /* 9F990 800AF190 12900000 */  mflo       $s2
    /* 9F994 800AF194 00000000 */  nop
    /* 9F998 800AF198 00000000 */  nop
    /* 9F99C 800AF19C 1A005102 */  div        $zero, $s2, $s1
    /* 9F9A0 800AF1A0 02002016 */  bnez       $s1, .L800AF1AC
    /* 9F9A4 800AF1A4 00000000 */   nop
    /* 9F9A8 800AF1A8 0D000700 */  break      7
  .L800AF1AC:
    /* 9F9AC 800AF1AC FFFF0124 */  addiu      $at, $zero, -0x1
    /* 9F9B0 800AF1B0 04002116 */  bne        $s1, $at, .L800AF1C4
    /* 9F9B4 800AF1B4 0080013C */   lui       $at, (0x80000000 >> 16)
    /* 9F9B8 800AF1B8 02004116 */  bne        $s2, $at, .L800AF1C4
    /* 9F9BC 800AF1BC 00000000 */   nop
    /* 9F9C0 800AF1C0 0D000600 */  break      6
  .L800AF1C4:
    /* 9F9C4 800AF1C4 12900000 */  mflo       $s2
    /* 9F9C8 800AF1C8 BD9E030C */  jal        SetTile
    /* 9F9CC 800AF1CC 1800A427 */   addiu     $a0, $sp, 0x18
    /* 9F9D0 800AF1D0 18001212 */  beq        $s0, $s2, .L800AF234
    /* 9F9D4 800AF1D4 5555023C */   lui       $v0, (0x55555556 >> 16)
    /* 9F9D8 800AF1D8 7800A397 */  lhu        $v1, 0x78($sp)
    /* 9F9DC 800AF1DC 00000000 */  nop
    /* 9F9E0 800AF1E0 2000A3A7 */  sh         $v1, 0x20($sp)
    /* 9F9E4 800AF1E4 7A00A497 */  lhu        $a0, 0x7A($sp)
    /* 9F9E8 800AF1E8 00000000 */  nop
    /* 9F9EC 800AF1EC 2200A4A7 */  sh         $a0, 0x22($sp)
    /* 9F9F0 800AF1F0 7C00A297 */  lhu        $v0, 0x7C($sp)
    /* 9F9F4 800AF1F4 00000000 */  nop
    /* 9F9F8 800AF1F8 23104300 */  subu       $v0, $v0, $v1
    /* 9F9FC 800AF1FC 2400A2A7 */  sh         $v0, 0x24($sp)
    /* 9FA00 800AF200 7E00A297 */  lhu        $v0, 0x7E($sp)
    /* 9FA04 800AF204 00000000 */  nop
    /* 9FA08 800AF208 23104400 */  subu       $v0, $v0, $a0
    /* 9FA0C 800AF20C 2600A2A7 */  sh         $v0, 0x26($sp)
    /* 9FA10 800AF210 10000224 */  addiu      $v0, $zero, 0x10
    /* 9FA14 800AF214 1C00A2A3 */  sb         $v0, 0x1C($sp)
    /* 9FA18 800AF218 1D00A2A3 */  sb         $v0, 0x1D($sp)
    /* 9FA1C 800AF21C 1E00A2A3 */  sb         $v0, 0x1E($sp)
    /* 9FA20 800AF220 928E030C */  jal        DrawPrim
    /* 9FA24 800AF224 1800A427 */   addiu     $a0, $sp, 0x18
    /* 9FA28 800AF228 2C8D030C */  jal        DrawSync
    /* 9FA2C 800AF22C 21200000 */   addu      $a0, $zero, $zero
    /* 9FA30 800AF230 5555023C */  lui        $v0, (0x55555556 >> 16)
  .L800AF234:
    /* 9FA34 800AF234 56554234 */  ori        $v0, $v0, (0x55555556 & 0xFFFF)
    /* 9FA38 800AF238 18002202 */  mult       $s1, $v0
    /* 9FA3C 800AF23C C3171100 */  sra        $v0, $s1, 31
    /* 9FA40 800AF240 10400000 */  mfhi       $t0
    /* 9FA44 800AF244 23100201 */  subu       $v0, $t0, $v0
    /* 9FA48 800AF248 2A106202 */  slt        $v0, $s3, $v0
    /* 9FA4C 800AF24C 06004010 */  beqz       $v0, .L800AF268
    /* 9FA50 800AF250 40101100 */   sll       $v0, $s1, 1
    /* 9FA54 800AF254 1C00A0A3 */  sb         $zero, 0x1C($sp)
    /* 9FA58 800AF258 88E9030C */  jal        func_800FA620
    /* 9FA5C 800AF25C FF000424 */   addiu     $a0, $zero, 0xFF
    /* 9FA60 800AF260 AEBC0208 */  j          .L800AF2B8
    /* 9FA64 800AF264 1D00A2A3 */   sb        $v0, 0x1D($sp)
  .L800AF268:
    /* 9FA68 800AF268 5555033C */  lui        $v1, (0x55555556 >> 16)
    /* 9FA6C 800AF26C 56556334 */  ori        $v1, $v1, (0x55555556 & 0xFFFF)
    /* 9FA70 800AF270 18004300 */  mult       $v0, $v1
    /* 9FA74 800AF274 C3170200 */  sra        $v0, $v0, 31
    /* 9FA78 800AF278 10400000 */  mfhi       $t0
    /* 9FA7C 800AF27C 23100201 */  subu       $v0, $t0, $v0
    /* 9FA80 800AF280 2A106202 */  slt        $v0, $s3, $v0
    /* 9FA84 800AF284 08004010 */  beqz       $v0, .L800AF2A8
    /* 9FA88 800AF288 00000000 */   nop
    /* 9FA8C 800AF28C 88E9030C */  jal        func_800FA620
    /* 9FA90 800AF290 FF000424 */   addiu     $a0, $zero, 0xFF
    /* 9FA94 800AF294 1C00A2A3 */  sb         $v0, 0x1C($sp)
    /* 9FA98 800AF298 88E9030C */  jal        func_800FA620
    /* 9FA9C 800AF29C FF000424 */   addiu     $a0, $zero, 0xFF
    /* 9FAA0 800AF2A0 AEBC0208 */  j          .L800AF2B8
    /* 9FAA4 800AF2A4 1D00A2A3 */   sb        $v0, 0x1D($sp)
  .L800AF2A8:
    /* 9FAA8 800AF2A8 88E9030C */  jal        func_800FA620
    /* 9FAAC 800AF2AC FF000424 */   addiu     $a0, $zero, 0xFF
    /* 9FAB0 800AF2B0 1C00A2A3 */  sb         $v0, 0x1C($sp)
    /* 9FAB4 800AF2B4 1D00A0A3 */  sb         $zero, 0x1D($sp)
  .L800AF2B8:
    /* 9FAB8 800AF2B8 1E004012 */  beqz       $s2, .L800AF334
    /* 9FABC 800AF2BC 1E00A0A3 */   sb        $zero, 0x1E($sp)
    /* 9FAC0 800AF2C0 7B00A28B */  lwl        $v0, 0x7B($sp)
    /* 9FAC4 800AF2C4 7800A29B */  lwr        $v0, 0x78($sp)
    /* 9FAC8 800AF2C8 7F00A38B */  lwl        $v1, 0x7F($sp)
    /* 9FACC 800AF2CC 7C00A39B */  lwr        $v1, 0x7C($sp)
    /* 9FAD0 800AF2D0 8300A2AB */  swl        $v0, 0x83($sp)
    /* 9FAD4 800AF2D4 8000A2BB */  swr        $v0, 0x80($sp)
    /* 9FAD8 800AF2D8 8700A3AB */  swl        $v1, 0x87($sp)
    /* 9FADC 800AF2DC 8400A3BB */  swr        $v1, 0x84($sp)
    /* 9FAE0 800AF2E0 23181202 */  subu       $v1, $s0, $s2
    /* 9FAE4 800AF2E4 8400A297 */  lhu        $v0, 0x84($sp)
    /* 9FAE8 800AF2E8 00000000 */  nop
    /* 9FAEC 800AF2EC 23104300 */  subu       $v0, $v0, $v1
    /* 9FAF0 800AF2F0 8400A2A7 */  sh         $v0, 0x84($sp)
    /* 9FAF4 800AF2F4 8000A397 */  lhu        $v1, 0x80($sp)
    /* 9FAF8 800AF2F8 00000000 */  nop
    /* 9FAFC 800AF2FC 2000A3A7 */  sh         $v1, 0x20($sp)
    /* 9FB00 800AF300 8200A497 */  lhu        $a0, 0x82($sp)
    /* 9FB04 800AF304 00000000 */  nop
    /* 9FB08 800AF308 2200A4A7 */  sh         $a0, 0x22($sp)
    /* 9FB0C 800AF30C 23104300 */  subu       $v0, $v0, $v1
    /* 9FB10 800AF310 2400A2A7 */  sh         $v0, 0x24($sp)
    /* 9FB14 800AF314 8600A297 */  lhu        $v0, 0x86($sp)
    /* 9FB18 800AF318 00000000 */  nop
    /* 9FB1C 800AF31C 23104400 */  subu       $v0, $v0, $a0
    /* 9FB20 800AF320 2600A2A7 */  sh         $v0, 0x26($sp)
    /* 9FB24 800AF324 928E030C */  jal        DrawPrim
    /* 9FB28 800AF328 1800A427 */   addiu     $a0, $sp, 0x18
    /* 9FB2C 800AF32C 2C8D030C */  jal        DrawSync
    /* 9FB30 800AF330 21200000 */   addu      $a0, $zero, $zero
  .L800AF334:
    /* 9FB34 800AF334 40101600 */  sll        $v0, $s6, 1
    /* 9FB38 800AF338 21105600 */  addu       $v0, $v0, $s6
    /* 9FB3C 800AF33C 80100200 */  sll        $v0, $v0, 2
    /* 9FB40 800AF340 21105600 */  addu       $v0, $v0, $s6
    /* 9FB44 800AF344 40200200 */  sll        $a0, $v0, 1
    /* 9FB48 800AF348 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 9FB4C 800AF34C 21082400 */  addu       $at, $at, $a0
    /* 9FB50 800AF350 BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 9FB54 800AF354 00000000 */  nop
    /* 9FB58 800AF358 80100300 */  sll        $v0, $v1, 2
    /* 9FB5C 800AF35C 21104300 */  addu       $v0, $v0, $v1
    /* 9FB60 800AF360 80100200 */  sll        $v0, $v0, 2
    /* 9FB64 800AF364 1180013C */  lui        $at, %hi(D_8010D285)
    /* 9FB68 800AF368 21082200 */  addu       $at, $at, $v0
    /* 9FB6C 800AF36C 85D22380 */  lb         $v1, %lo(D_8010D285)($at)
    /* 9FB70 800AF370 01000224 */  addiu      $v0, $zero, 0x1
    /* 9FB74 800AF374 25006214 */  bne        $v1, $v0, .L800AF40C
    /* 9FB78 800AF378 C0281700 */   sll       $a1, $s7, 3
    /* 9FB7C 800AF37C 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 9FB80 800AF380 21082400 */  addu       $at, $at, $a0
    /* 9FB84 800AF384 B4D62584 */  lh         $a1, %lo(D_8010D6B4)($at)
    /* 9FB88 800AF388 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 9FB8C 800AF38C 21082400 */  addu       $at, $at, $a0
    /* 9FB90 800AF390 B6D62384 */  lh         $v1, %lo(D_8010D6B6)($at)
    /* 9FB94 800AF394 00000000 */  nop
    /* 9FB98 800AF398 0D006004 */  bltz       $v1, .L800AF3D0
    /* 9FB9C 800AF39C 21200000 */   addu      $a0, $zero, $zero
    /* 9FBA0 800AF3A0 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 9FBA4 800AF3A4 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 9FBA8 800AF3A8 00000000 */  nop
    /* 9FBAC 800AF3AC 2A106200 */  slt        $v0, $v1, $v0
    /* 9FBB0 800AF3B0 07004010 */  beqz       $v0, .L800AF3D0
    /* 9FBB4 800AF3B4 00000000 */   nop
    /* 9FBB8 800AF3B8 0500A004 */  bltz       $a1, .L800AF3D0
    /* 9FBBC 800AF3BC 00000000 */   nop
    /* 9FBC0 800AF3C0 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 9FBC4 800AF3C4 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 9FBC8 800AF3C8 00000000 */  nop
    /* 9FBCC 800AF3CC 2A20A200 */  slt        $a0, $a1, $v0
  .L800AF3D0:
    /* 9FBD0 800AF3D0 0D008010 */  beqz       $a0, .L800AF408
    /* 9FBD4 800AF3D4 40101600 */   sll       $v0, $s6, 1
    /* 9FBD8 800AF3D8 21105600 */  addu       $v0, $v0, $s6
    /* 9FBDC 800AF3DC 80100200 */  sll        $v0, $v0, 2
    /* 9FBE0 800AF3E0 21105600 */  addu       $v0, $v0, $s6
    /* 9FBE4 800AF3E4 40100200 */  sll        $v0, $v0, 1
    /* 9FBE8 800AF3E8 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 9FBEC 800AF3EC 21082200 */  addu       $at, $at, $v0
    /* 9FBF0 800AF3F0 B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 9FBF4 800AF3F4 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 9FBF8 800AF3F8 21082200 */  addu       $at, $at, $v0
    /* 9FBFC 800AF3FC B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 9FC00 800AF400 2662020C */  jal        func_80098898
    /* 9FC04 800AF404 00000000 */   nop
  .L800AF408:
    /* 9FC08 800AF408 C0281700 */  sll        $a1, $s7, 3
  .L800AF40C:
    /* 9FC0C 800AF40C 2128B700 */  addu       $a1, $a1, $s7
    /* 9FC10 800AF410 80280500 */  sll        $a1, $a1, 2
    /* 9FC14 800AF414 2128B700 */  addu       $a1, $a1, $s7
    /* 9FC18 800AF418 80280500 */  sll        $a1, $a1, 2
    /* 9FC1C 800AF41C 1380033C */  lui        $v1, %hi(D_8012BF80)
    /* 9FC20 800AF420 80BF6324 */  addiu      $v1, $v1, %lo(D_8012BF80)
    /* 9FC24 800AF424 B000A88F */  lw         $t0, 0xB0($sp)
    /* 9FC28 800AF428 00000000 */  nop
    /* 9FC2C 800AF42C 00140800 */  sll        $v0, $t0, 16
    /* 9FC30 800AF430 038C0200 */  sra        $s1, $v0, 16
    /* 9FC34 800AF434 F000A88F */  lw         $t0, 0xF0($sp)
    /* 9FC38 800AF438 00000000 */  nop
    /* 9FC3C 800AF43C 00140800 */  sll        $v0, $t0, 16
    /* 9FC40 800AF440 03840200 */  sra        $s0, $v0, 16
    /* 9FC44 800AF444 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9FC48 800AF448 9800A427 */  addiu      $a0, $sp, 0x98
    /* 9FC4C 800AF44C 2128A300 */  addu       $a1, $a1, $v1
    /* 9FC50 800AF450 A800A68F */  lw         $a2, 0xA8($sp)
    /* 9FC54 800AF454 89EE030C */  jal        func_800FBA24
    /* 9FC58 800AF458 21382002 */   addu      $a3, $s1, $zero
    /* 9FC5C 800AF45C 40101600 */  sll        $v0, $s6, 1
    /* 9FC60 800AF460 21105600 */  addu       $v0, $v0, $s6
    /* 9FC64 800AF464 80100200 */  sll        $v0, $v0, 2
    /* 9FC68 800AF468 21105600 */  addu       $v0, $v0, $s6
    /* 9FC6C 800AF46C 40100200 */  sll        $v0, $v0, 1
    /* 9FC70 800AF470 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 9FC74 800AF474 21082200 */  addu       $at, $at, $v0
    /* 9FC78 800AF478 C3D62380 */  lb         $v1, %lo(D_8010D6C3)($at)
    /* 9FC7C 800AF47C 02000224 */  addiu      $v0, $zero, 0x2
    /* 9FC80 800AF480 09006214 */  bne        $v1, $v0, .L800AF4A8
    /* 9FC84 800AF484 40101600 */   sll       $v0, $s6, 1
    /* 9FC88 800AF488 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9FC8C 800AF48C A000A427 */  addiu      $a0, $sp, 0xA0
    /* 9FC90 800AF490 1380053C */  lui        $a1, %hi(D_8012DF4C)
    /* 9FC94 800AF494 4CDFA524 */  addiu      $a1, $a1, %lo(D_8012DF4C)
    /* 9FC98 800AF498 A800A68F */  lw         $a2, 0xA8($sp)
    /* 9FC9C 800AF49C 89EE030C */  jal        func_800FBA24
    /* 9FCA0 800AF4A0 21382002 */   addu      $a3, $s1, $zero
    /* 9FCA4 800AF4A4 40101600 */  sll        $v0, $s6, 1
  .L800AF4A8:
    /* 9FCA8 800AF4A8 21105600 */  addu       $v0, $v0, $s6
    /* 9FCAC 800AF4AC 80100200 */  sll        $v0, $v0, 2
    /* 9FCB0 800AF4B0 21105600 */  addu       $v0, $v0, $s6
    /* 9FCB4 800AF4B4 40100200 */  sll        $v0, $v0, 1
    /* 9FCB8 800AF4B8 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 9FCBC 800AF4BC 21082200 */  addu       $at, $at, $v0
    /* 9FCC0 800AF4C0 B4D62584 */  lh         $a1, %lo(D_8010D6B4)($at)
    /* 9FCC4 800AF4C4 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 9FCC8 800AF4C8 21082200 */  addu       $at, $at, $v0
    /* 9FCCC 800AF4CC B6D62384 */  lh         $v1, %lo(D_8010D6B6)($at)
    /* 9FCD0 800AF4D0 00000000 */  nop
    /* 9FCD4 800AF4D4 0D006004 */  bltz       $v1, .L800AF50C
    /* 9FCD8 800AF4D8 21200000 */   addu      $a0, $zero, $zero
    /* 9FCDC 800AF4DC 1280023C */  lui        $v0, %hi(D_8011C30A)
    /* 9FCE0 800AF4E0 0AC34284 */  lh         $v0, %lo(D_8011C30A)($v0)
    /* 9FCE4 800AF4E4 00000000 */  nop
    /* 9FCE8 800AF4E8 2A106200 */  slt        $v0, $v1, $v0
    /* 9FCEC 800AF4EC 07004010 */  beqz       $v0, .L800AF50C
    /* 9FCF0 800AF4F0 00000000 */   nop
    /* 9FCF4 800AF4F4 0500A004 */  bltz       $a1, .L800AF50C
    /* 9FCF8 800AF4F8 00000000 */   nop
    /* 9FCFC 800AF4FC 1280023C */  lui        $v0, %hi(D_8011C308)
    /* 9FD00 800AF500 08C34284 */  lh         $v0, %lo(D_8011C308)($v0)
    /* 9FD04 800AF504 00000000 */  nop
    /* 9FD08 800AF508 2A20A200 */  slt        $a0, $a1, $v0
  .L800AF50C:
    /* 9FD0C 800AF50C 1F008010 */  beqz       $a0, .L800AF58C
    /* 9FD10 800AF510 40101600 */   sll       $v0, $s6, 1
    /* 9FD14 800AF514 21105600 */  addu       $v0, $v0, $s6
    /* 9FD18 800AF518 80100200 */  sll        $v0, $v0, 2
    /* 9FD1C 800AF51C 21105600 */  addu       $v0, $v0, $s6
    /* 9FD20 800AF520 40100200 */  sll        $v0, $v0, 1
    /* 9FD24 800AF524 1180013C */  lui        $at, %hi(D_8010D6B4)
    /* 9FD28 800AF528 21082200 */  addu       $at, $at, $v0
    /* 9FD2C 800AF52C B4D62484 */  lh         $a0, %lo(D_8010D6B4)($at)
    /* 9FD30 800AF530 1180013C */  lui        $at, %hi(D_8010D6B6)
    /* 9FD34 800AF534 21082200 */  addu       $at, $at, $v0
    /* 9FD38 800AF538 B6D62584 */  lh         $a1, %lo(D_8010D6B6)($at)
    /* 9FD3C 800AF53C 6961020C */  jal        func_800985A4
    /* 9FD40 800AF540 00000000 */   nop
    /* 9FD44 800AF544 42004230 */  andi       $v0, $v0, 0x42
    /* 9FD48 800AF548 40000324 */  addiu      $v1, $zero, 0x40
    /* 9FD4C 800AF54C 10004314 */  bne        $v0, $v1, .L800AF590
    /* 9FD50 800AF550 01000424 */   addiu     $a0, $zero, 0x1
    /* 9FD54 800AF554 B000A88F */  lw         $t0, 0xB0($sp)
    /* 9FD58 800AF558 00000000 */  nop
    /* 9FD5C 800AF55C 003C0800 */  sll        $a3, $t0, 16
    /* 9FD60 800AF560 F000A88F */  lw         $t0, 0xF0($sp)
    /* 9FD64 800AF564 00000000 */  nop
    /* 9FD68 800AF568 00140800 */  sll        $v0, $t0, 16
    /* 9FD6C 800AF56C 03140200 */  sra        $v0, $v0, 16
    /* 9FD70 800AF570 1000A2AF */  sw         $v0, 0x10($sp)
    /* 9FD74 800AF574 A000A427 */  addiu      $a0, $sp, 0xA0
    /* 9FD78 800AF578 1380053C */  lui        $a1, %hi(D_8012E074)
    /* 9FD7C 800AF57C 74E0A524 */  addiu      $a1, $a1, %lo(D_8012E074)
    /* 9FD80 800AF580 A800A68F */  lw         $a2, 0xA8($sp)
    /* 9FD84 800AF584 89EE030C */  jal        func_800FBA24
    /* 9FD88 800AF588 033C0700 */   sra       $a3, $a3, 16
  .L800AF58C:
    /* 9FD8C 800AF58C 01000424 */  addiu      $a0, $zero, 0x1
  .L800AF590:
    /* 9FD90 800AF590 D0EC030C */  jal        func_800FB340
    /* 9FD94 800AF594 01000524 */   addiu     $a1, $zero, 0x1
    /* 9FD98 800AF598 DC00BF8F */  lw         $ra, 0xDC($sp)
    /* 9FD9C 800AF59C D800BE8F */  lw         $fp, 0xD8($sp)
    /* 9FDA0 800AF5A0 D400B78F */  lw         $s7, 0xD4($sp)
    /* 9FDA4 800AF5A4 D000B68F */  lw         $s6, 0xD0($sp)
    /* 9FDA8 800AF5A8 CC00B58F */  lw         $s5, 0xCC($sp)
    /* 9FDAC 800AF5AC C800B48F */  lw         $s4, 0xC8($sp)
    /* 9FDB0 800AF5B0 C400B38F */  lw         $s3, 0xC4($sp)
    /* 9FDB4 800AF5B4 C000B28F */  lw         $s2, 0xC0($sp)
    /* 9FDB8 800AF5B8 BC00B18F */  lw         $s1, 0xBC($sp)
    /* 9FDBC 800AF5BC B800B08F */  lw         $s0, 0xB8($sp)
    /* 9FDC0 800AF5C0 E000BD27 */  addiu      $sp, $sp, 0xE0
    /* 9FDC4 800AF5C4 0800E003 */  jr         $ra
    /* 9FDC8 800AF5C8 00000000 */   nop
endlabel func_800AED30
