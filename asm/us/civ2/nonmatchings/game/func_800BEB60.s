.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BEB60, 0xD54

glabel func_800BEB60
    /* AF360 800BEB60 A8FEBD27 */  addiu      $sp, $sp, -0x158
    /* AF364 800BEB64 3001B0AF */  sw         $s0, 0x130($sp)
    /* AF368 800BEB68 1280103C */  lui        $s0, %hi(D_801210C4)
    /* AF36C 800BEB6C C4101026 */  addiu      $s0, $s0, %lo(D_801210C4)
    /* AF370 800BEB70 5401BFAF */  sw         $ra, 0x154($sp)
    /* AF374 800BEB74 5001BEAF */  sw         $fp, 0x150($sp)
    /* AF378 800BEB78 4C01B7AF */  sw         $s7, 0x14C($sp)
    /* AF37C 800BEB7C 4801B6AF */  sw         $s6, 0x148($sp)
    /* AF380 800BEB80 4401B5AF */  sw         $s5, 0x144($sp)
    /* AF384 800BEB84 4001B4AF */  sw         $s4, 0x140($sp)
    /* AF388 800BEB88 3C01B3AF */  sw         $s3, 0x13C($sp)
    /* AF38C 800BEB8C 3801B2AF */  sw         $s2, 0x138($sp)
    /* AF390 800BEB90 3401B1AF */  sw         $s1, 0x134($sp)
    /* AF394 800BEB94 0000148E */  lw         $s4, 0x0($s0)
    /* AF398 800BEB98 1280153C */  lui        $s5, %hi(D_80121104)
    /* AF39C 800BEB9C 0411B58E */  lw         $s5, %lo(D_80121104)($s5)
    /* AF3A0 800BEBA0 DC49020C */  jal        func_80092770
    /* AF3A4 800BEBA4 C0FC0426 */   addiu     $a0, $s0, -0x340
    /* AF3A8 800BEBA8 7907040C */  jal        func_80101DE4
    /* AF3AC 800BEBAC 01000424 */   addiu     $a0, $zero, 0x1
    /* AF3B0 800BEBB0 1280023C */  lui        $v0, %hi(D_80120DBC)
    /* AF3B4 800BEBB4 BC0D428C */  lw         $v0, %lo(D_80120DBC)($v0)
    /* AF3B8 800BEBB8 00000000 */  nop
    /* AF3BC 800BEBBC 0400448C */  lw         $a0, 0x4($v0)
    /* AF3C0 800BEBC0 D707040C */  jal        func_80101F5C
    /* AF3C4 800BEBC4 10001624 */   addiu     $s6, $zero, 0x10
    /* AF3C8 800BEBC8 6000B327 */  addiu      $s3, $sp, 0x60
    /* AF3CC 800BEBCC 21206002 */  addu       $a0, $s3, $zero
    /* AF3D0 800BEBD0 21280000 */  addu       $a1, $zero, $zero
    /* AF3D4 800BEBD4 40010224 */  addiu      $v0, $zero, 0x140
    /* AF3D8 800BEBD8 6400A2A7 */  sh         $v0, 0x64($sp)
    /* AF3DC 800BEBDC F0000224 */  addiu      $v0, $zero, 0xF0
    /* AF3E0 800BEBE0 6000A0A7 */  sh         $zero, 0x60($sp)
    /* AF3E4 800BEBE4 6200A0A7 */  sh         $zero, 0x62($sp)
    /* AF3E8 800BEBE8 A314020C */  jal        func_8008528C
    /* AF3EC 800BEBEC 6600A2A7 */   sh        $v0, 0x66($sp)
    /* AF3F0 800BEBF0 E8FE0426 */  addiu      $a0, $s0, -0x118
    /* AF3F4 800BEBF4 ECFC1026 */  addiu      $s0, $s0, -0x314
    /* AF3F8 800BEBF8 21280002 */  addu       $a1, $s0, $zero
    /* AF3FC 800BEBFC 6800A627 */  addiu      $a2, $sp, 0x68
    /* AF400 800BEC00 21386002 */  addu       $a3, $s3, $zero
    /* AF404 800BEC04 06000324 */  addiu      $v1, $zero, 0x6
    /* AF408 800BEC08 3A010824 */  addiu      $t0, $zero, 0x13A
    /* AF40C 800BEC0C D0000224 */  addiu      $v0, $zero, 0xD0
    /* AF410 800BEC10 6E00A2A7 */  sh         $v0, 0x6E($sp)
    /* AF414 800BEC14 E0000224 */  addiu      $v0, $zero, 0xE0
    /* AF418 800BEC18 6800A3A7 */  sh         $v1, 0x68($sp)
    /* AF41C 800BEC1C 6A00A0A7 */  sh         $zero, 0x6A($sp)
    /* AF420 800BEC20 6C00A8A7 */  sh         $t0, 0x6C($sp)
    /* AF424 800BEC24 6000A3A7 */  sh         $v1, 0x60($sp)
    /* AF428 800BEC28 6200B6A7 */  sh         $s6, 0x62($sp)
    /* AF42C 800BEC2C 6400A8A7 */  sh         $t0, 0x64($sp)
    /* AF430 800BEC30 1FE4030C */  jal        func_800F907C
    /* AF434 800BEC34 6600A2A7 */   sh        $v0, 0x66($sp)
    /* AF438 800BEC38 1280023C */  lui        $v0, %hi(D_8012110C)
    /* AF43C 800BEC3C 0C11428C */  lw         $v0, %lo(D_8012110C)($v0)
    /* AF440 800BEC40 00000000 */  nop
    /* AF444 800BEC44 D9004014 */  bnez       $v0, .L800BEFAC
    /* AF448 800BEC48 00000000 */   nop
    /* AF44C 800BEC4C 1280043C */  lui        $a0, %hi(D_80121340)
    /* AF450 800BEC50 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AF454 800BEC54 CB1A030C */  jal        func_800C6B2C
    /* AF458 800BEC58 98001124 */   addiu     $s1, $zero, 0x98
    /* AF45C 800BEC5C 5D54020C */  jal        func_80095174
    /* AF460 800BEC60 2120A002 */   addu      $a0, $s5, $zero
    /* AF464 800BEC64 1280043C */  lui        $a0, %hi(D_80121340)
    /* AF468 800BEC68 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AF46C 800BEC6C 9987030C */  jal        func_800E1E64
    /* AF470 800BEC70 21284000 */   addu      $a1, $v0, $zero
    /* AF474 800BEC74 1280123C */  lui        $s2, %hi(D_80121340)
    /* AF478 800BEC78 40135226 */  addiu      $s2, $s2, %lo(D_80121340)
    /* AF47C 800BEC7C 21204002 */  addu       $a0, $s2, $zero
    /* AF480 800BEC80 21286002 */  addu       $a1, $s3, $zero
    /* AF484 800BEC84 10000624 */  addiu      $a2, $zero, 0x10
    /* AF488 800BEC88 20001024 */  addiu      $s0, $zero, 0x20
    /* AF48C 800BEC8C 6000B6A7 */  sh         $s6, 0x60($sp)
    /* AF490 800BEC90 6200B6A7 */  sh         $s6, 0x62($sp)
    /* AF494 800BEC94 6400B1A7 */  sh         $s1, 0x64($sp)
    /* AF498 800BEC98 DC0F040C */  jal        func_80103F70
    /* AF49C 800BEC9C 6600B0A7 */   sh        $s0, 0x66($sp)
    /* AF4A0 800BECA0 1280013C */  lui        $at, %hi(D_8012110C)
    /* AF4A4 800BECA4 0C1122AC */  sw         $v0, %lo(D_8012110C)($at)
    /* AF4A8 800BECA8 CB1A030C */  jal        func_800C6B2C
    /* AF4AC 800BECAC 21204002 */   addu      $a0, $s2, $zero
    /* AF4B0 800BECB0 F853020C */  jal        func_80094FE0
    /* AF4B4 800BECB4 2120A002 */   addu      $a0, $s5, $zero
    /* AF4B8 800BECB8 21204002 */  addu       $a0, $s2, $zero
    /* AF4BC 800BECBC 9987030C */  jal        func_800E1E64
    /* AF4C0 800BECC0 21284000 */   addu      $a1, $v0, $zero
    /* AF4C4 800BECC4 21284002 */  addu       $a1, $s2, $zero
    /* AF4C8 800BECC8 21306002 */  addu       $a2, $s3, $zero
    /* AF4CC 800BECCC 10000724 */  addiu      $a3, $zero, 0x10
    /* AF4D0 800BECD0 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AF4D4 800BECD4 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AF4D8 800BECD8 A8000224 */  addiu      $v0, $zero, 0xA8
    /* AF4DC 800BECDC 6000A2A7 */  sh         $v0, 0x60($sp)
    /* AF4E0 800BECE0 28010224 */  addiu      $v0, $zero, 0x128
    /* AF4E4 800BECE4 6200B6A7 */  sh         $s6, 0x62($sp)
    /* AF4E8 800BECE8 6400A2A7 */  sh         $v0, 0x64($sp)
    /* AF4EC 800BECEC 5511040C */  jal        func_80104554
    /* AF4F0 800BECF0 6600B0A7 */   sh        $s0, 0x66($sp)
    /* AF4F4 800BECF4 CB1A030C */  jal        func_800C6B2C
    /* AF4F8 800BECF8 21204002 */   addu      $a0, $s2, $zero
    /* AF4FC 800BECFC 21208002 */  addu       $a0, $s4, $zero
    /* AF500 800BED00 6928010C */  jal        func_8004A1A4
    /* AF504 800BED04 2128A002 */   addu      $a1, $s5, $zero
    /* AF508 800BED08 1680043C */  lui        $a0, %hi(D_80158654)
    /* AF50C 800BED0C 5486848C */  lw         $a0, %lo(D_80158654)($a0)
    /* AF510 800BED10 0B76030C */  jal        func_800DD82C
    /* AF514 800BED14 00000000 */   nop
    /* AF518 800BED18 80100200 */  sll        $v0, $v0, 2
    /* AF51C 800BED1C 1280013C */  lui        $at, %hi(D_8011A708)
    /* AF520 800BED20 21082200 */  addu       $at, $at, $v0
    /* AF524 800BED24 08A7258C */  lw         $a1, %lo(D_8011A708)($at)
    /* AF528 800BED28 651B030C */  jal        func_800C6D94
    /* AF52C 800BED2C 21204002 */   addu      $a0, $s2, $zero
    /* AF530 800BED30 21284002 */  addu       $a1, $s2, $zero
    /* AF534 800BED34 21306002 */  addu       $a2, $s3, $zero
    /* AF538 800BED38 10000724 */  addiu      $a3, $zero, 0x10
    /* AF53C 800BED3C 1280043C */  lui        $a0, %hi(D_8012110C)
    /* AF540 800BED40 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* AF544 800BED44 30000224 */  addiu      $v0, $zero, 0x30
    /* AF548 800BED48 6000B6A7 */  sh         $s6, 0x60($sp)
    /* AF54C 800BED4C 6200B0A7 */  sh         $s0, 0x62($sp)
    /* AF550 800BED50 6400B1A7 */  sh         $s1, 0x64($sp)
    /* AF554 800BED54 5511040C */  jal        func_80104554
    /* AF558 800BED58 6600A2A7 */   sh        $v0, 0x66($sp)
    /* AF55C 800BED5C CB1A030C */  jal        func_800C6B2C
    /* AF560 800BED60 21204002 */   addu      $a0, $s2, $zero
    /* AF564 800BED64 40101400 */  sll        $v0, $s4, 1
    /* AF568 800BED68 21105400 */  addu       $v0, $v0, $s4
    /* AF56C 800BED6C 80100200 */  sll        $v0, $v0, 2
    /* AF570 800BED70 23105400 */  subu       $v0, $v0, $s4
    /* AF574 800BED74 00110200 */  sll        $v0, $v0, 4
    /* AF578 800BED78 23105400 */  subu       $v0, $v0, $s4
    /* AF57C 800BED7C C0100200 */  sll        $v0, $v0, 3
    /* AF580 800BED80 1180043C */  lui        $a0, %hi(D_801176B4)
    /* AF584 800BED84 B4768424 */  addiu      $a0, $a0, %lo(D_801176B4)
    /* AF588 800BED88 80181500 */  sll        $v1, $s5, 2
    /* AF58C 800BED8C 21104400 */  addu       $v0, $v0, $a0
    /* AF590 800BED90 21186200 */  addu       $v1, $v1, $v0
    /* AF594 800BED94 0000638C */  lw         $v1, 0x0($v1)
    /* AF598 800BED98 00000000 */  nop
    /* AF59C 800BED9C 00206230 */  andi       $v0, $v1, 0x2000
    /* AF5A0 800BEDA0 03004010 */  beqz       $v0, .L800BEDB0
    /* AF5A4 800BEDA4 21204002 */   addu      $a0, $s2, $zero
    /* AF5A8 800BEDA8 7AFB0208 */  j          .L800BEDE8
    /* AF5AC 800BEDAC 90000524 */   addiu     $a1, $zero, 0x90
  .L800BEDB0:
    /* AF5B0 800BEDB0 08006230 */  andi       $v0, $v1, 0x8
    /* AF5B4 800BEDB4 0C004014 */  bnez       $v0, .L800BEDE8
    /* AF5B8 800BEDB8 8D000524 */   addiu     $a1, $zero, 0x8D
    /* AF5BC 800BEDBC 04006230 */  andi       $v0, $v1, 0x4
    /* AF5C0 800BEDC0 05004010 */  beqz       $v0, .L800BEDD8
    /* AF5C4 800BEDC4 21204002 */   addu      $a0, $s2, $zero
    /* AF5C8 800BEDC8 7AFB0208 */  j          .L800BEDE8
    /* AF5CC 800BEDCC 8E000524 */   addiu     $a1, $zero, 0x8E
  .L800BEDD0:
    /* AF5D0 800BEDD0 35FC0208 */  j          .L800BF0D4
    /* AF5D4 800BEDD4 21900002 */   addu      $s2, $s0, $zero
  .L800BEDD8:
    /* AF5D8 800BEDD8 02006230 */  andi       $v0, $v1, 0x2
    /* AF5DC 800BEDDC 04004010 */  beqz       $v0, .L800BEDF0
    /* AF5E0 800BEDE0 8F000524 */   addiu     $a1, $zero, 0x8F
    /* AF5E4 800BEDE4 21204002 */  addu       $a0, $s2, $zero
  .L800BEDE8:
    /* AF5E8 800BEDE8 731B030C */  jal        func_800C6DCC
    /* AF5EC 800BEDEC 00000000 */   nop
  .L800BEDF0:
    /* AF5F0 800BEDF0 1280103C */  lui        $s0, %hi(D_80121340)
    /* AF5F4 800BEDF4 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* AF5F8 800BEDF8 21280002 */  addu       $a1, $s0, $zero
    /* AF5FC 800BEDFC 6000B627 */  addiu      $s6, $sp, 0x60
    /* AF600 800BEE00 2130C002 */  addu       $a2, $s6, $zero
    /* AF604 800BEE04 10000724 */  addiu      $a3, $zero, 0x10
    /* AF608 800BEE08 1280173C */  lui        $s7, %hi(D_8012110C)
    /* AF60C 800BEE0C 0C11F726 */  addiu      $s7, $s7, %lo(D_8012110C)
    /* AF610 800BEE10 0000E48E */  lw         $a0, 0x0($s7)
    /* AF614 800BEE14 A8000224 */  addiu      $v0, $zero, 0xA8
    /* AF618 800BEE18 6000A2A7 */  sh         $v0, 0x60($sp)
    /* AF61C 800BEE1C 20000224 */  addiu      $v0, $zero, 0x20
    /* AF620 800BEE20 6200A2A7 */  sh         $v0, 0x62($sp)
    /* AF624 800BEE24 28010224 */  addiu      $v0, $zero, 0x128
    /* AF628 800BEE28 30001424 */  addiu      $s4, $zero, 0x30
    /* AF62C 800BEE2C 6400A2A7 */  sh         $v0, 0x64($sp)
    /* AF630 800BEE30 5511040C */  jal        func_80104554
    /* AF634 800BEE34 6600B4A7 */   sh        $s4, 0x66($sp)
    /* AF638 800BEE38 CB1A030C */  jal        func_800C6B2C
    /* AF63C 800BEE3C 21200002 */   addu      $a0, $s0, $zero
    /* AF640 800BEE40 40101500 */  sll        $v0, $s5, 1
    /* AF644 800BEE44 21105500 */  addu       $v0, $v0, $s5
    /* AF648 800BEE48 80100200 */  sll        $v0, $v0, 2
    /* AF64C 800BEE4C 23105500 */  subu       $v0, $v0, $s5
    /* AF650 800BEE50 00110200 */  sll        $v0, $v0, 4
    /* AF654 800BEE54 23105500 */  subu       $v0, $v0, $s5
    /* AF658 800BEE58 C0100200 */  sll        $v0, $v0, 3
    /* AF65C 800BEE5C 1180013C */  lui        $at, %hi(D_80117698)
    /* AF660 800BEE60 21082200 */  addu       $at, $at, $v0
    /* AF664 800BEE64 98762384 */  lh         $v1, %lo(D_80117698)($at)
    /* AF668 800BEE68 00000000 */  nop
    /* AF66C 800BEE6C 40100300 */  sll        $v0, $v1, 1
    /* AF670 800BEE70 21104300 */  addu       $v0, $v0, $v1
    /* AF674 800BEE74 00890200 */  sll        $s1, $v0, 4
    /* AF678 800BEE78 1180013C */  lui        $at, %hi(D_80116AD0)
    /* AF67C 800BEE7C 21083100 */  addu       $at, $at, $s1
    /* AF680 800BEE80 D06A2280 */  lb         $v0, %lo(D_80116AD0)($at)
    /* AF684 800BEE84 01001324 */  addiu      $s3, $zero, 0x1
    /* AF688 800BEE88 0A005314 */  bne        $v0, $s3, .L800BEEB4
    /* AF68C 800BEE8C FFFF1224 */   addiu     $s2, $zero, -0x1
    /* AF690 800BEE90 21200002 */  addu       $a0, $s0, $zero
    /* AF694 800BEE94 731B030C */  jal        func_800C6DCC
    /* AF698 800BEE98 92000524 */   addiu     $a1, $zero, 0x92
    /* AF69C 800BEE9C CD1A030C */  jal        func_800C6B34
    /* AF6A0 800BEEA0 21200002 */   addu      $a0, $s0, $zero
    /* AF6A4 800BEEA4 1180013C */  lui        $at, %hi(D_80116AD0)
    /* AF6A8 800BEEA8 21083100 */  addu       $at, $at, $s1
    /* AF6AC 800BEEAC D06A2280 */  lb         $v0, %lo(D_80116AD0)($at)
    /* AF6B0 800BEEB0 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L800BEEB4:
    /* AF6B4 800BEEB4 06005214 */  bne        $v0, $s2, .L800BEED0
    /* AF6B8 800BEEB8 00000000 */   nop
    /* AF6BC 800BEEBC 21200002 */  addu       $a0, $s0, $zero
    /* AF6C0 800BEEC0 731B030C */  jal        func_800C6DCC
    /* AF6C4 800BEEC4 93000524 */   addiu     $a1, $zero, 0x93
    /* AF6C8 800BEEC8 CD1A030C */  jal        func_800C6B34
    /* AF6CC 800BEECC 21200002 */   addu      $a0, $s0, $zero
  .L800BEED0:
    /* AF6D0 800BEED0 1180013C */  lui        $at, %hi(D_80116AD2)
    /* AF6D4 800BEED4 21083100 */  addu       $at, $at, $s1
    /* AF6D8 800BEED8 D26A2280 */  lb         $v0, %lo(D_80116AD2)($at)
    /* AF6DC 800BEEDC 00000000 */  nop
    /* AF6E0 800BEEE0 09005314 */  bne        $v0, $s3, .L800BEF08
    /* AF6E4 800BEEE4 00000000 */   nop
    /* AF6E8 800BEEE8 21200002 */  addu       $a0, $s0, $zero
    /* AF6EC 800BEEEC 731B030C */  jal        func_800C6DCC
    /* AF6F0 800BEEF0 96000524 */   addiu     $a1, $zero, 0x96
    /* AF6F4 800BEEF4 CD1A030C */  jal        func_800C6B34
    /* AF6F8 800BEEF8 21200002 */   addu      $a0, $s0, $zero
    /* AF6FC 800BEEFC 1180013C */  lui        $at, %hi(D_80116AD2)
    /* AF700 800BEF00 21083100 */  addu       $at, $at, $s1
    /* AF704 800BEF04 D26A2280 */  lb         $v0, %lo(D_80116AD2)($at)
  .L800BEF08:
    /* AF708 800BEF08 00000000 */  nop
    /* AF70C 800BEF0C 06005214 */  bne        $v0, $s2, .L800BEF28
    /* AF710 800BEF10 00000000 */   nop
    /* AF714 800BEF14 21200002 */  addu       $a0, $s0, $zero
    /* AF718 800BEF18 731B030C */  jal        func_800C6DCC
    /* AF71C 800BEF1C 97000524 */   addiu     $a1, $zero, 0x97
    /* AF720 800BEF20 CD1A030C */  jal        func_800C6B34
    /* AF724 800BEF24 21200002 */   addu      $a0, $s0, $zero
  .L800BEF28:
    /* AF728 800BEF28 1180013C */  lui        $at, %hi(D_80116AD1)
    /* AF72C 800BEF2C 21083100 */  addu       $at, $at, $s1
    /* AF730 800BEF30 D16A2280 */  lb         $v0, %lo(D_80116AD1)($at)
    /* AF734 800BEF34 00000000 */  nop
    /* AF738 800BEF38 09005314 */  bne        $v0, $s3, .L800BEF60
    /* AF73C 800BEF3C 00000000 */   nop
    /* AF740 800BEF40 21200002 */  addu       $a0, $s0, $zero
    /* AF744 800BEF44 731B030C */  jal        func_800C6DCC
    /* AF748 800BEF48 94000524 */   addiu     $a1, $zero, 0x94
    /* AF74C 800BEF4C CD1A030C */  jal        func_800C6B34
    /* AF750 800BEF50 21200002 */   addu      $a0, $s0, $zero
    /* AF754 800BEF54 1180013C */  lui        $at, %hi(D_80116AD1)
    /* AF758 800BEF58 21083100 */  addu       $at, $at, $s1
    /* AF75C 800BEF5C D16A2280 */  lb         $v0, %lo(D_80116AD1)($at)
  .L800BEF60:
    /* AF760 800BEF60 00000000 */  nop
    /* AF764 800BEF64 07005214 */  bne        $v0, $s2, .L800BEF84
    /* AF768 800BEF68 21280002 */   addu      $a1, $s0, $zero
    /* AF76C 800BEF6C 21200002 */  addu       $a0, $s0, $zero
    /* AF770 800BEF70 731B030C */  jal        func_800C6DCC
    /* AF774 800BEF74 95000524 */   addiu     $a1, $zero, 0x95
    /* AF778 800BEF78 CD1A030C */  jal        func_800C6B34
    /* AF77C 800BEF7C 21200002 */   addu      $a0, $s0, $zero
    /* AF780 800BEF80 21280002 */  addu       $a1, $s0, $zero
  .L800BEF84:
    /* AF784 800BEF84 2130C002 */  addu       $a2, $s6, $zero
    /* AF788 800BEF88 10000724 */  addiu      $a3, $zero, 0x10
    /* AF78C 800BEF8C 0000E48E */  lw         $a0, 0x0($s7)
    /* AF790 800BEF90 10010224 */  addiu      $v0, $zero, 0x110
    /* AF794 800BEF94 6400A2A7 */  sh         $v0, 0x64($sp)
    /* AF798 800BEF98 40000224 */  addiu      $v0, $zero, 0x40
    /* AF79C 800BEF9C 6000B4A7 */  sh         $s4, 0x60($sp)
    /* AF7A0 800BEFA0 6200B4A7 */  sh         $s4, 0x62($sp)
    /* AF7A4 800BEFA4 5511040C */  jal        func_80104554
    /* AF7A8 800BEFA8 6600A2A7 */   sh        $v0, 0x66($sp)
  .L800BEFAC:
    /* AF7AC 800BEFAC 1280113C */  lui        $s1, %hi(D_8012110C)
    /* AF7B0 800BEFB0 0C113126 */  addiu      $s1, $s1, %lo(D_8012110C)
    /* AF7B4 800BEFB4 0000248E */  lw         $a0, 0x0($s1)
    /* AF7B8 800BEFB8 7D11040C */  jal        func_801045F4
    /* AF7BC 800BEFBC 00000000 */   nop
    /* AF7C0 800BEFC0 0400228E */  lw         $v0, 0x4($s1)
    /* AF7C4 800BEFC4 00000000 */  nop
    /* AF7C8 800BEFC8 29024014 */  bnez       $v0, .L800BF870
    /* AF7CC 800BEFCC 00000000 */   nop
    /* AF7D0 800BEFD0 1280043C */  lui        $a0, %hi(D_80121340)
    /* AF7D4 800BEFD4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AF7D8 800BEFD8 CB1A030C */  jal        func_800C6B2C
    /* AF7DC 800BEFDC FFFF1224 */   addiu     $s2, $zero, -0x1
    /* AF7E0 800BEFE0 1280043C */  lui        $a0, %hi(D_80121340)
    /* AF7E4 800BEFE4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AF7E8 800BEFE8 731B030C */  jal        func_800C6DCC
    /* AF7EC 800BEFEC 98000524 */   addiu     $a1, $zero, 0x98
    /* AF7F0 800BEFF0 1280043C */  lui        $a0, %hi(D_80121340)
    /* AF7F4 800BEFF4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AF7F8 800BEFF8 F71A030C */  jal        func_800C6BDC
    /* AF7FC 800BEFFC 21800000 */   addu      $s0, $zero, $zero
    /* AF800 800BF000 40101500 */  sll        $v0, $s5, 1
    /* AF804 800BF004 21105500 */  addu       $v0, $v0, $s5
    /* AF808 800BF008 80100200 */  sll        $v0, $v0, 2
    /* AF80C 800BF00C 23105500 */  subu       $v0, $v0, $s5
    /* AF810 800BF010 00110200 */  sll        $v0, $v0, 4
    /* AF814 800BF014 23105500 */  subu       $v0, $v0, $s5
    /* AF818 800BF018 C0100200 */  sll        $v0, $v0, 3
    /* AF81C 800BF01C 1180013C */  lui        $at, %hi(D_801176A7)
    /* AF820 800BF020 21082200 */  addu       $at, $at, $v0
    /* AF824 800BF024 A7762290 */  lbu        $v0, %lo(D_801176A7)($at)
    /* AF828 800BF028 1280043C */  lui        $a0, %hi(D_80121340)
    /* AF82C 800BF02C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AF830 800BF030 80100200 */  sll        $v0, $v0, 2
    /* AF834 800BF034 1280013C */  lui        $at, %hi(D_8011A65C)
    /* AF838 800BF038 21082200 */  addu       $at, $at, $v0
    /* AF83C 800BF03C 5CA6258C */  lw         $a1, %lo(D_8011A65C)($at)
    /* AF840 800BF040 651B030C */  jal        func_800C6D94
    /* AF844 800BF044 00000000 */   nop
    /* AF848 800BF048 1280043C */  lui        $a0, %hi(D_80121340)
    /* AF84C 800BF04C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AF850 800BF050 6000A527 */  addiu      $a1, $sp, 0x60
    /* AF854 800BF054 10000624 */  addiu      $a2, $zero, 0x10
    /* AF858 800BF058 20000224 */  addiu      $v0, $zero, 0x20
    /* AF85C 800BF05C 6000A2A7 */  sh         $v0, 0x60($sp)
    /* AF860 800BF060 40000224 */  addiu      $v0, $zero, 0x40
    /* AF864 800BF064 6200A2A7 */  sh         $v0, 0x62($sp)
    /* AF868 800BF068 F0000224 */  addiu      $v0, $zero, 0xF0
    /* AF86C 800BF06C 6400A2A7 */  sh         $v0, 0x64($sp)
    /* AF870 800BF070 50000224 */  addiu      $v0, $zero, 0x50
    /* AF874 800BF074 DC0F040C */  jal        func_80103F70
    /* AF878 800BF078 6600A2A7 */   sh        $v0, 0x66($sp)
    /* AF87C 800BF07C 1280033C */  lui        $v1, %hi(D_8011A282)
    /* AF880 800BF080 82A26384 */  lh         $v1, %lo(D_8011A282)($v1)
    /* AF884 800BF084 00000000 */  nop
    /* AF888 800BF088 12006018 */  blez       $v1, .L800BF0D4
    /* AF88C 800BF08C 040022AE */   sw        $v0, 0x4($s1)
    /* AF890 800BF090 21880000 */  addu       $s1, $zero, $zero
  .L800BF094:
    /* AF894 800BF094 1180013C */  lui        $at, %hi(D_80113ED8)
    /* AF898 800BF098 21083100 */  addu       $at, $at, $s1
    /* AF89C 800BF09C D83E2280 */  lb         $v0, %lo(D_80113ED8)($at)
    /* AF8A0 800BF0A0 00000000 */  nop
    /* AF8A4 800BF0A4 05005514 */  bne        $v0, $s5, .L800BF0BC
    /* AF8A8 800BF0A8 21200002 */   addu      $a0, $s0, $zero
    /* AF8AC 800BF0AC C826020C */  jal        func_80089B20
    /* AF8B0 800BF0B0 01000524 */   addiu     $a1, $zero, 0x1
    /* AF8B4 800BF0B4 46FF4014 */  bnez       $v0, .L800BEDD0
    /* AF8B8 800BF0B8 00000000 */   nop
  .L800BF0BC:
    /* AF8BC 800BF0BC 1280023C */  lui        $v0, %hi(D_8011A282)
    /* AF8C0 800BF0C0 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* AF8C4 800BF0C4 01001026 */  addiu      $s0, $s0, 0x1
    /* AF8C8 800BF0C8 2A100202 */  slt        $v0, $s0, $v0
    /* AF8CC 800BF0CC F1FF4014 */  bnez       $v0, .L800BF094
    /* AF8D0 800BF0D0 58003126 */   addiu     $s1, $s1, 0x58
  .L800BF0D4:
    /* AF8D4 800BF0D4 1280043C */  lui        $a0, %hi(D_80121340)
    /* AF8D8 800BF0D8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AF8DC 800BF0DC CB1A030C */  jal        func_800C6B2C
    /* AF8E0 800BF0E0 00000000 */   nop
    /* AF8E4 800BF0E4 1280043C */  lui        $a0, %hi(D_80121340)
    /* AF8E8 800BF0E8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AF8EC 800BF0EC 0180053C */  lui        $a1, %hi(D_80012410)
    /* AF8F0 800BF0F0 1024A524 */  addiu      $a1, $a1, %lo(D_80012410)
    /* AF8F4 800BF0F4 9987030C */  jal        func_800E1E64
    /* AF8F8 800BF0F8 00000000 */   nop
    /* AF8FC 800BF0FC 1280043C */  lui        $a0, %hi(D_80121340)
    /* AF900 800BF100 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AF904 800BF104 F71A030C */  jal        func_800C6BDC
    /* AF908 800BF108 00000000 */   nop
    /* AF90C 800BF10C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* AF910 800BF110 09004216 */  bne        $s2, $v0, .L800BF138
    /* AF914 800BF114 00000000 */   nop
    /* AF918 800BF118 1280043C */  lui        $a0, %hi(D_80121340)
    /* AF91C 800BF11C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AF920 800BF120 1680053C */  lui        $a1, %hi(D_80158FFC)
    /* AF924 800BF124 FC8FA524 */  addiu      $a1, $a1, %lo(D_80158FFC)
    /* AF928 800BF128 9987030C */  jal        func_800E1E64
    /* AF92C 800BF12C 00000000 */   nop
    /* AF930 800BF130 52FC0208 */  j          .L800BF148
    /* AF934 800BF134 00000000 */   nop
  .L800BF138:
    /* AF938 800BF138 1280043C */  lui        $a0, %hi(D_80121340)
    /* AF93C 800BF13C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* AF940 800BF140 A331020C */  jal        func_8008C68C
    /* AF944 800BF144 21284002 */   addu      $a1, $s2, $zero
  .L800BF148:
    /* AF948 800BF148 1280103C */  lui        $s0, %hi(D_80121340)
    /* AF94C 800BF14C 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* AF950 800BF150 21280002 */  addu       $a1, $s0, $zero
    /* AF954 800BF154 6000A627 */  addiu      $a2, $sp, 0x60
    /* AF958 800BF158 10000724 */  addiu      $a3, $zero, 0x10
    /* AF95C 800BF15C 1280043C */  lui        $a0, %hi(D_80121110)
    /* AF960 800BF160 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* AF964 800BF164 20000224 */  addiu      $v0, $zero, 0x20
    /* AF968 800BF168 6000A2A7 */  sh         $v0, 0x60($sp)
    /* AF96C 800BF16C 50000224 */  addiu      $v0, $zero, 0x50
    /* AF970 800BF170 6200A2A7 */  sh         $v0, 0x62($sp)
    /* AF974 800BF174 F0000224 */  addiu      $v0, $zero, 0xF0
    /* AF978 800BF178 6400A2A7 */  sh         $v0, 0x64($sp)
    /* AF97C 800BF17C 60000224 */  addiu      $v0, $zero, 0x60
    /* AF980 800BF180 5511040C */  jal        func_80104554
    /* AF984 800BF184 6600A2A7 */   sh        $v0, 0x66($sp)
    /* AF988 800BF188 CB1A030C */  jal        func_800C6B2C
    /* AF98C 800BF18C 21200002 */   addu      $a0, $s0, $zero
    /* AF990 800BF190 21200002 */  addu       $a0, $s0, $zero
    /* AF994 800BF194 731B030C */  jal        func_800C6DCC
    /* AF998 800BF198 EC000524 */   addiu     $a1, $zero, 0xEC
    /* AF99C 800BF19C F71A030C */  jal        func_800C6BDC
    /* AF9A0 800BF1A0 21200002 */   addu      $a0, $s0, $zero
    /* AF9A4 800BF1A4 40101500 */  sll        $v0, $s5, 1
    /* AF9A8 800BF1A8 21105500 */  addu       $v0, $v0, $s5
    /* AF9AC 800BF1AC 80100200 */  sll        $v0, $v0, 2
    /* AF9B0 800BF1B0 23105500 */  subu       $v0, $v0, $s5
    /* AF9B4 800BF1B4 00110200 */  sll        $v0, $v0, 4
    /* AF9B8 800BF1B8 23105500 */  subu       $v0, $v0, $s5
    /* AF9BC 800BF1BC C0100200 */  sll        $v0, $v0, 3
    /* AF9C0 800BF1C0 1180013C */  lui        $at, %hi(D_8011769C)
    /* AF9C4 800BF1C4 21082200 */  addu       $at, $at, $v0
    /* AF9C8 800BF1C8 9C762284 */  lh         $v0, %lo(D_8011769C)($at)
    /* AF9CC 800BF1CC 00000000 */  nop
    /* AF9D0 800BF1D0 09004004 */  bltz       $v0, .L800BF1F8
    /* AF9D4 800BF1D4 00110200 */   sll       $v0, $v0, 4
    /* AF9D8 800BF1D8 1180013C */  lui        $at, %hi(D_8010C2A0)
    /* AF9DC 800BF1DC 21082200 */  addu       $at, $at, $v0
    /* AF9E0 800BF1E0 A0C2248C */  lw         $a0, %lo(D_8010C2A0)($at)
    /* AF9E4 800BF1E4 A63A030C */  jal        func_800CEA98
    /* AF9E8 800BF1E8 00000000 */   nop
    /* AF9EC 800BF1EC 21200002 */  addu       $a0, $s0, $zero
    /* AF9F0 800BF1F0 81FC0208 */  j          .L800BF204
    /* AF9F4 800BF1F4 21284000 */   addu      $a1, $v0, $zero
  .L800BF1F8:
    /* AF9F8 800BF1F8 21200002 */  addu       $a0, $s0, $zero
    /* AF9FC 800BF1FC 1680053C */  lui        $a1, %hi(D_80158FFC)
    /* AFA00 800BF200 FC8FA524 */  addiu      $a1, $a1, %lo(D_80158FFC)
  .L800BF204:
    /* AFA04 800BF204 9987030C */  jal        func_800E1E64
    /* AFA08 800BF208 20001624 */   addiu     $s6, $zero, 0x20
    /* AFA0C 800BF20C 1280143C */  lui        $s4, %hi(D_80121340)
    /* AFA10 800BF210 40139426 */  addiu      $s4, $s4, %lo(D_80121340)
    /* AFA14 800BF214 21288002 */  addu       $a1, $s4, $zero
    /* AFA18 800BF218 6000B127 */  addiu      $s1, $sp, 0x60
    /* AFA1C 800BF21C 21302002 */  addu       $a2, $s1, $zero
    /* AFA20 800BF220 10000724 */  addiu      $a3, $zero, 0x10
    /* AFA24 800BF224 1280173C */  lui        $s7, %hi(D_80121110)
    /* AFA28 800BF228 1011F726 */  addiu      $s7, $s7, %lo(D_80121110)
    /* AFA2C 800BF22C 60000224 */  addiu      $v0, $zero, 0x60
    /* AFA30 800BF230 F0001324 */  addiu      $s3, $zero, 0xF0
    /* AFA34 800BF234 0000E48E */  lw         $a0, 0x0($s7)
    /* AFA38 800BF238 70001024 */  addiu      $s0, $zero, 0x70
    /* AFA3C 800BF23C 6000B6A7 */  sh         $s6, 0x60($sp)
    /* AFA40 800BF240 6200A2A7 */  sh         $v0, 0x62($sp)
    /* AFA44 800BF244 6400B3A7 */  sh         $s3, 0x64($sp)
    /* AFA48 800BF248 5511040C */  jal        func_80104554
    /* AFA4C 800BF24C 6600B0A7 */   sh        $s0, 0x66($sp)
    /* AFA50 800BF250 CB1A030C */  jal        func_800C6B2C
    /* AFA54 800BF254 21208002 */   addu      $a0, $s4, $zero
    /* AFA58 800BF258 21208002 */  addu       $a0, $s4, $zero
    /* AFA5C 800BF25C 731B030C */  jal        func_800C6DCC
    /* AFA60 800BF260 9A000524 */   addiu     $a1, $zero, 0x9A
    /* AFA64 800BF264 F71A030C */  jal        func_800C6BDC
    /* AFA68 800BF268 21208002 */   addu      $a0, $s4, $zero
    /* AFA6C 800BF26C 40101500 */  sll        $v0, $s5, 1
    /* AFA70 800BF270 21105500 */  addu       $v0, $v0, $s5
    /* AFA74 800BF274 80100200 */  sll        $v0, $v0, 2
    /* AFA78 800BF278 23105500 */  subu       $v0, $v0, $s5
    /* AFA7C 800BF27C 00110200 */  sll        $v0, $v0, 4
    /* AFA80 800BF280 23105500 */  subu       $v0, $v0, $s5
    /* AFA84 800BF284 C0900200 */  sll        $s2, $v0, 3
    /* AFA88 800BF288 1180013C */  lui        $at, %hi(D_80117694)
    /* AFA8C 800BF28C 21083200 */  addu       $at, $at, $s2
    /* AFA90 800BF290 9476258C */  lw         $a1, %lo(D_80117694)($at)
    /* AFA94 800BF294 131C030C */  jal        func_800C704C
    /* AFA98 800BF298 21208002 */   addu      $a0, $s4, $zero
    /* AFA9C 800BF29C 21288002 */  addu       $a1, $s4, $zero
    /* AFAA0 800BF2A0 21302002 */  addu       $a2, $s1, $zero
    /* AFAA4 800BF2A4 0000E48E */  lw         $a0, 0x0($s7)
    /* AFAA8 800BF2A8 10000724 */  addiu      $a3, $zero, 0x10
    /* AFAAC 800BF2AC 6200B0A7 */  sh         $s0, 0x62($sp)
    /* AFAB0 800BF2B0 80001024 */  addiu      $s0, $zero, 0x80
    /* AFAB4 800BF2B4 6000B6A7 */  sh         $s6, 0x60($sp)
    /* AFAB8 800BF2B8 6400B3A7 */  sh         $s3, 0x64($sp)
    /* AFABC 800BF2BC 5511040C */  jal        func_80104554
    /* AFAC0 800BF2C0 6600B0A7 */   sh        $s0, 0x66($sp)
    /* AFAC4 800BF2C4 1280023C */  lui        $v0, %hi(D_8011A272)
    /* AFAC8 800BF2C8 72A24290 */  lbu        $v0, %lo(D_8011A272)($v0)
    /* AFACC 800BF2CC 00000000 */  nop
    /* AFAD0 800BF2D0 0200422C */  sltiu      $v0, $v0, 0x2
    /* AFAD4 800BF2D4 23004010 */  beqz       $v0, .L800BF364
    /* AFAD8 800BF2D8 21F00000 */   addu      $fp, $zero, $zero
    /* AFADC 800BF2DC CB1A030C */  jal        func_800C6B2C
    /* AFAE0 800BF2E0 21208002 */   addu      $a0, $s4, $zero
    /* AFAE4 800BF2E4 21208002 */  addu       $a0, $s4, $zero
    /* AFAE8 800BF2E8 731B030C */  jal        func_800C6DCC
    /* AFAEC 800BF2EC 9B000524 */   addiu     $a1, $zero, 0x9B
    /* AFAF0 800BF2F0 1680053C */  lui        $a1, %hi(D_80159004)
    /* AFAF4 800BF2F4 0490A524 */  addiu      $a1, $a1, %lo(D_80159004)
    /* AFAF8 800BF2F8 9987030C */  jal        func_800E1E64
    /* AFAFC 800BF2FC 21208002 */   addu      $a0, $s4, $zero
    /* AFB00 800BF300 F71A030C */  jal        func_800C6BDC
    /* AFB04 800BF304 21208002 */   addu      $a0, $s4, $zero
    /* AFB08 800BF308 CD1A030C */  jal        func_800C6B34
    /* AFB0C 800BF30C 21208002 */   addu      $a0, $s4, $zero
    /* AFB10 800BF310 1180013C */  lui        $at, %hi(D_801176F8)
    /* AFB14 800BF314 21083200 */  addu       $at, $at, $s2
    /* AFB18 800BF318 F8762584 */  lh         $a1, %lo(D_801176F8)($at)
    /* AFB1C 800BF31C 9C1B030C */  jal        func_800C6E70
    /* AFB20 800BF320 21208002 */   addu      $a0, $s4, $zero
    /* AFB24 800BF324 CD1A030C */  jal        func_800C6B34
    /* AFB28 800BF328 21208002 */   addu      $a0, $s4, $zero
    /* AFB2C 800BF32C 21208002 */  addu       $a0, $s4, $zero
    /* AFB30 800BF330 731B030C */  jal        func_800C6DCC
    /* AFB34 800BF334 19000524 */   addiu     $a1, $zero, 0x19
    /* AFB38 800BF338 21288002 */  addu       $a1, $s4, $zero
    /* AFB3C 800BF33C 21302002 */  addu       $a2, $s1, $zero
    /* AFB40 800BF340 10000724 */  addiu      $a3, $zero, 0x10
    /* AFB44 800BF344 0000E48E */  lw         $a0, 0x0($s7)
    /* AFB48 800BF348 90000224 */  addiu      $v0, $zero, 0x90
    /* AFB4C 800BF34C 6000B6A7 */  sh         $s6, 0x60($sp)
    /* AFB50 800BF350 6200B0A7 */  sh         $s0, 0x62($sp)
    /* AFB54 800BF354 6400B3A7 */  sh         $s3, 0x64($sp)
    /* AFB58 800BF358 5511040C */  jal        func_80104554
    /* AFB5C 800BF35C 6600A2A7 */   sh        $v0, 0x66($sp)
    /* AFB60 800BF360 21F00000 */  addu       $fp, $zero, $zero
  .L800BF364:
    /* AFB64 800BF364 21208002 */  addu       $a0, $s4, $zero
    /* AFB68 800BF368 2001A0AF */  sw         $zero, 0x120($sp)
    /* AFB6C 800BF36C 1801A0AF */  sw         $zero, 0x118($sp)
    /* AFB70 800BF370 CB1A030C */  jal        func_800C6B2C
    /* AFB74 800BF374 1001A0AF */   sw        $zero, 0x110($sp)
    /* AFB78 800BF378 0180053C */  lui        $a1, %hi(D_80012420)
    /* AFB7C 800BF37C 2024A524 */  addiu      $a1, $a1, %lo(D_80012420)
    /* AFB80 800BF380 9987030C */  jal        func_800E1E64
    /* AFB84 800BF384 21208002 */   addu      $a0, $s4, $zero
    /* AFB88 800BF388 F71A030C */  jal        func_800C6BDC
    /* AFB8C 800BF38C 21208002 */   addu      $a0, $s4, $zero
    /* AFB90 800BF390 7000B227 */  addiu      $s2, $sp, 0x70
    /* AFB94 800BF394 CB1A030C */  jal        func_800C6B2C
    /* AFB98 800BF398 21204002 */   addu      $a0, $s2, $zero
    /* AFB9C 800BF39C 0180053C */  lui        $a1, %hi(D_80012430)
    /* AFBA0 800BF3A0 3024A524 */  addiu      $a1, $a1, %lo(D_80012430)
    /* AFBA4 800BF3A4 9987030C */  jal        func_800E1E64
    /* AFBA8 800BF3A8 21204002 */   addu      $a0, $s2, $zero
    /* AFBAC 800BF3AC F71A030C */  jal        func_800C6BDC
    /* AFBB0 800BF3B0 21204002 */   addu      $a0, $s2, $zero
    /* AFBB4 800BF3B4 C000B127 */  addiu      $s1, $sp, 0xC0
    /* AFBB8 800BF3B8 CB1A030C */  jal        func_800C6B2C
    /* AFBBC 800BF3BC 21202002 */   addu      $a0, $s1, $zero
    /* AFBC0 800BF3C0 0180053C */  lui        $a1, %hi(D_80012440)
    /* AFBC4 800BF3C4 4024A524 */  addiu      $a1, $a1, %lo(D_80012440)
    /* AFBC8 800BF3C8 9987030C */  jal        func_800E1E64
    /* AFBCC 800BF3CC 21202002 */   addu      $a0, $s1, $zero
    /* AFBD0 800BF3D0 F71A030C */  jal        func_800C6BDC
    /* AFBD4 800BF3D4 21202002 */   addu      $a0, $s1, $zero
    /* AFBD8 800BF3D8 CB1A030C */  jal        func_800C6B2C
    /* AFBDC 800BF3DC 1000A427 */   addiu     $a0, $sp, 0x10
    /* AFBE0 800BF3E0 1000B027 */  addiu      $s0, $sp, 0x10
    /* AFBE4 800BF3E4 0180053C */  lui        $a1, %hi(D_80012450)
    /* AFBE8 800BF3E8 5024A524 */  addiu      $a1, $a1, %lo(D_80012450)
    /* AFBEC 800BF3EC 9987030C */  jal        func_800E1E64
    /* AFBF0 800BF3F0 21200002 */   addu      $a0, $s0, $zero
    /* AFBF4 800BF3F4 F71A030C */  jal        func_800C6BDC
    /* AFBF8 800BF3F8 21200002 */   addu      $a0, $s0, $zero
    /* AFBFC 800BF3FC 01001324 */  addiu      $s3, $zero, 0x1
    /* AFC00 800BF400 1180173C */  lui        $s7, %hi(D_801176B4)
    /* AFC04 800BF404 B476F726 */  addiu      $s7, $s7, %lo(D_801176B4)
    /* AFC08 800BF408 21B00002 */  addu       $s6, $s0, $zero
  .L800BF40C:
    /* AFC0C 800BF40C 0800622A */  slti       $v0, $s3, 0x8
    /* AFC10 800BF410 76004010 */  beqz       $v0, .L800BF5EC
    /* AFC14 800BF414 7000A527 */   addiu     $a1, $sp, 0x70
    /* AFC18 800BF418 72007512 */  beq        $s3, $s5, .L800BF5E4
    /* AFC1C 800BF41C 40101500 */   sll       $v0, $s5, 1
    /* AFC20 800BF420 21105500 */  addu       $v0, $v0, $s5
    /* AFC24 800BF424 80100200 */  sll        $v0, $v0, 2
    /* AFC28 800BF428 23105500 */  subu       $v0, $v0, $s5
    /* AFC2C 800BF42C 00110200 */  sll        $v0, $v0, 4
    /* AFC30 800BF430 23105500 */  subu       $v0, $v0, $s5
    /* AFC34 800BF434 C0100200 */  sll        $v0, $v0, 3
    /* AFC38 800BF438 80181300 */  sll        $v1, $s3, 2
    /* AFC3C 800BF43C 21105700 */  addu       $v0, $v0, $s7
    /* AFC40 800BF440 21186200 */  addu       $v1, $v1, $v0
    /* AFC44 800BF444 0000638C */  lw         $v1, 0x0($v1)
    /* AFC48 800BF448 00000000 */  nop
    /* AFC4C 800BF44C 01006230 */  andi       $v0, $v1, 0x1
    /* AFC50 800BF450 64004010 */  beqz       $v0, .L800BF5E4
    /* AFC54 800BF454 00206230 */   andi      $v0, $v1, 0x2000
    /* AFC58 800BF458 18004010 */  beqz       $v0, .L800BF4BC
    /* AFC5C 800BF45C 08006230 */   andi      $v0, $v1, 0x8
    /* AFC60 800BF460 AD87030C */  jal        func_800E1EB4
    /* AFC64 800BF464 1000A427 */   addiu     $a0, $sp, 0x10
    /* AFC68 800BF468 21206002 */  addu       $a0, $s3, $zero
    /* AFC6C 800BF46C 5D54020C */  jal        func_80095174
    /* AFC70 800BF470 21804000 */   addu      $s0, $v0, $zero
    /* AFC74 800BF474 AD87030C */  jal        func_800E1EB4
    /* AFC78 800BF478 21204000 */   addu      $a0, $v0, $zero
    /* AFC7C 800BF47C 21800202 */  addu       $s0, $s0, $v0
    /* AFC80 800BF480 2400102E */  sltiu      $s0, $s0, 0x24
    /* AFC84 800BF484 08000012 */  beqz       $s0, .L800BF4A8
    /* AFC88 800BF488 00000000 */   nop
    /* AFC8C 800BF48C 5D54020C */  jal        func_80095174
    /* AFC90 800BF490 21206002 */   addu      $a0, $s3, $zero
    /* AFC94 800BF494 2120C002 */  addu       $a0, $s6, $zero
    /* AFC98 800BF498 9987030C */  jal        func_800E1E64
    /* AFC9C 800BF49C 21284000 */   addu      $a1, $v0, $zero
    /* AFCA0 800BF4A0 71FD0208 */  j          .L800BF5C4
    /* AFCA4 800BF4A4 2120C002 */   addu      $a0, $s6, $zero
  .L800BF4A8:
    /* AFCA8 800BF4A8 2001A98F */  lw         $t1, 0x120($sp)
    /* AFCAC 800BF4AC 00000000 */  nop
    /* AFCB0 800BF4B0 01002925 */  addiu      $t1, $t1, 0x1
    /* AFCB4 800BF4B4 79FD0208 */  j          .L800BF5E4
    /* AFCB8 800BF4B8 2001A9AF */   sw        $t1, 0x120($sp)
  .L800BF4BC:
    /* AFCBC 800BF4BC 15004010 */  beqz       $v0, .L800BF514
    /* AFCC0 800BF4C0 04006230 */   andi      $v0, $v1, 0x4
    /* AFCC4 800BF4C4 AD87030C */  jal        func_800E1EB4
    /* AFCC8 800BF4C8 21204002 */   addu      $a0, $s2, $zero
    /* AFCCC 800BF4CC 21206002 */  addu       $a0, $s3, $zero
    /* AFCD0 800BF4D0 5D54020C */  jal        func_80095174
    /* AFCD4 800BF4D4 21804000 */   addu      $s0, $v0, $zero
    /* AFCD8 800BF4D8 AD87030C */  jal        func_800E1EB4
    /* AFCDC 800BF4DC 21204000 */   addu      $a0, $v0, $zero
    /* AFCE0 800BF4E0 21800202 */  addu       $s0, $s0, $v0
    /* AFCE4 800BF4E4 2400102E */  sltiu      $s0, $s0, 0x24
    /* AFCE8 800BF4E8 08000012 */  beqz       $s0, .L800BF50C
    /* AFCEC 800BF4EC 00000000 */   nop
    /* AFCF0 800BF4F0 5D54020C */  jal        func_80095174
    /* AFCF4 800BF4F4 21206002 */   addu      $a0, $s3, $zero
    /* AFCF8 800BF4F8 21204002 */  addu       $a0, $s2, $zero
    /* AFCFC 800BF4FC 9987030C */  jal        func_800E1E64
    /* AFD00 800BF500 21284000 */   addu      $a1, $v0, $zero
    /* AFD04 800BF504 71FD0208 */  j          .L800BF5C4
    /* AFD08 800BF508 21204002 */   addu      $a0, $s2, $zero
  .L800BF50C:
    /* AFD0C 800BF50C 79FD0208 */  j          .L800BF5E4
    /* AFD10 800BF510 0100DE27 */   addiu     $fp, $fp, 0x1
  .L800BF514:
    /* AFD14 800BF514 18004010 */  beqz       $v0, .L800BF578
    /* AFD18 800BF518 02006230 */   andi      $v0, $v1, 0x2
    /* AFD1C 800BF51C AD87030C */  jal        func_800E1EB4
    /* AFD20 800BF520 21208002 */   addu      $a0, $s4, $zero
    /* AFD24 800BF524 21206002 */  addu       $a0, $s3, $zero
    /* AFD28 800BF528 5D54020C */  jal        func_80095174
    /* AFD2C 800BF52C 21804000 */   addu      $s0, $v0, $zero
    /* AFD30 800BF530 AD87030C */  jal        func_800E1EB4
    /* AFD34 800BF534 21204000 */   addu      $a0, $v0, $zero
    /* AFD38 800BF538 21800202 */  addu       $s0, $s0, $v0
    /* AFD3C 800BF53C 2400102E */  sltiu      $s0, $s0, 0x24
    /* AFD40 800BF540 08000012 */  beqz       $s0, .L800BF564
    /* AFD44 800BF544 00000000 */   nop
    /* AFD48 800BF548 5D54020C */  jal        func_80095174
    /* AFD4C 800BF54C 21206002 */   addu      $a0, $s3, $zero
    /* AFD50 800BF550 21208002 */  addu       $a0, $s4, $zero
    /* AFD54 800BF554 9987030C */  jal        func_800E1E64
    /* AFD58 800BF558 21284000 */   addu      $a1, $v0, $zero
    /* AFD5C 800BF55C 71FD0208 */  j          .L800BF5C4
    /* AFD60 800BF560 21208002 */   addu      $a0, $s4, $zero
  .L800BF564:
    /* AFD64 800BF564 1001A98F */  lw         $t1, 0x110($sp)
    /* AFD68 800BF568 00000000 */  nop
    /* AFD6C 800BF56C 01002925 */  addiu      $t1, $t1, 0x1
    /* AFD70 800BF570 79FD0208 */  j          .L800BF5E4
    /* AFD74 800BF574 1001A9AF */   sw        $t1, 0x110($sp)
  .L800BF578:
    /* AFD78 800BF578 1A004010 */  beqz       $v0, .L800BF5E4
    /* AFD7C 800BF57C 00000000 */   nop
    /* AFD80 800BF580 AD87030C */  jal        func_800E1EB4
    /* AFD84 800BF584 21202002 */   addu      $a0, $s1, $zero
    /* AFD88 800BF588 21206002 */  addu       $a0, $s3, $zero
    /* AFD8C 800BF58C 5D54020C */  jal        func_80095174
    /* AFD90 800BF590 21804000 */   addu      $s0, $v0, $zero
    /* AFD94 800BF594 AD87030C */  jal        func_800E1EB4
    /* AFD98 800BF598 21204000 */   addu      $a0, $v0, $zero
    /* AFD9C 800BF59C 21800202 */  addu       $s0, $s0, $v0
    /* AFDA0 800BF5A0 2400102E */  sltiu      $s0, $s0, 0x24
    /* AFDA4 800BF5A4 0B000012 */  beqz       $s0, .L800BF5D4
    /* AFDA8 800BF5A8 00000000 */   nop
    /* AFDAC 800BF5AC 5D54020C */  jal        func_80095174
    /* AFDB0 800BF5B0 21206002 */   addu      $a0, $s3, $zero
    /* AFDB4 800BF5B4 21202002 */  addu       $a0, $s1, $zero
    /* AFDB8 800BF5B8 9987030C */  jal        func_800E1E64
    /* AFDBC 800BF5BC 21284000 */   addu      $a1, $v0, $zero
    /* AFDC0 800BF5C0 21202002 */  addu       $a0, $s1, $zero
  .L800BF5C4:
    /* AFDC4 800BF5C4 D71A030C */  jal        func_800C6B5C
    /* AFDC8 800BF5C8 01000524 */   addiu     $a1, $zero, 0x1
    /* AFDCC 800BF5CC 03FD0208 */  j          .L800BF40C
    /* AFDD0 800BF5D0 01007326 */   addiu     $s3, $s3, 0x1
  .L800BF5D4:
    /* AFDD4 800BF5D4 1801A98F */  lw         $t1, 0x118($sp)
    /* AFDD8 800BF5D8 00000000 */  nop
    /* AFDDC 800BF5DC 01002925 */  addiu      $t1, $t1, 0x1
    /* AFDE0 800BF5E0 1801A9AF */  sw         $t1, 0x118($sp)
  .L800BF5E4:
    /* AFDE4 800BF5E4 03FD0208 */  j          .L800BF40C
    /* AFDE8 800BF5E8 01007326 */   addiu     $s3, $s3, 0x1
  .L800BF5EC:
    /* AFDEC 800BF5EC 6000B227 */  addiu      $s2, $sp, 0x60
    /* AFDF0 800BF5F0 21304002 */  addu       $a2, $s2, $zero
    /* AFDF4 800BF5F4 10000724 */  addiu      $a3, $zero, 0x10
    /* AFDF8 800BF5F8 1280143C */  lui        $s4, %hi(D_80121110)
    /* AFDFC 800BF5FC 10119426 */  addiu      $s4, $s4, %lo(D_80121110)
    /* AFE00 800BF600 20001124 */  addiu      $s1, $zero, 0x20
    /* AFE04 800BF604 90000924 */  addiu      $t1, $zero, 0x90
    /* AFE08 800BF608 F0001024 */  addiu      $s0, $zero, 0xF0
    /* AFE0C 800BF60C 0000848E */  lw         $a0, 0x0($s4)
    /* AFE10 800BF610 A0001624 */  addiu      $s6, $zero, 0xA0
    /* AFE14 800BF614 6000B1A7 */  sh         $s1, 0x60($sp)
    /* AFE18 800BF618 6200A9A7 */  sh         $t1, 0x62($sp)
    /* AFE1C 800BF61C 6400B0A7 */  sh         $s0, 0x64($sp)
    /* AFE20 800BF620 5511040C */  jal        func_80104554
    /* AFE24 800BF624 6600B6A7 */   sh        $s6, 0x66($sp)
    /* AFE28 800BF628 1280133C */  lui        $s3, %hi(D_80121340)
    /* AFE2C 800BF62C 40137326 */  addiu      $s3, $s3, %lo(D_80121340)
    /* AFE30 800BF630 21286002 */  addu       $a1, $s3, $zero
    /* AFE34 800BF634 21304002 */  addu       $a2, $s2, $zero
    /* AFE38 800BF638 10000724 */  addiu      $a3, $zero, 0x10
    /* AFE3C 800BF63C 0000848E */  lw         $a0, 0x0($s4)
    /* AFE40 800BF640 B0001724 */  addiu      $s7, $zero, 0xB0
    /* AFE44 800BF644 6000B1A7 */  sh         $s1, 0x60($sp)
    /* AFE48 800BF648 6200B6A7 */  sh         $s6, 0x62($sp)
    /* AFE4C 800BF64C 6400B0A7 */  sh         $s0, 0x64($sp)
    /* AFE50 800BF650 5511040C */  jal        func_80104554
    /* AFE54 800BF654 6600B7A7 */   sh        $s7, 0x66($sp)
    /* AFE58 800BF658 C000A527 */  addiu      $a1, $sp, 0xC0
    /* AFE5C 800BF65C 21304002 */  addu       $a2, $s2, $zero
    /* AFE60 800BF660 10000724 */  addiu      $a3, $zero, 0x10
    /* AFE64 800BF664 0000848E */  lw         $a0, 0x0($s4)
    /* AFE68 800BF668 C0000924 */  addiu      $t1, $zero, 0xC0
    /* AFE6C 800BF66C 6000B1A7 */  sh         $s1, 0x60($sp)
    /* AFE70 800BF670 6200B7A7 */  sh         $s7, 0x62($sp)
    /* AFE74 800BF674 6400B0A7 */  sh         $s0, 0x64($sp)
    /* AFE78 800BF678 5511040C */  jal        func_80104554
    /* AFE7C 800BF67C 6600A9A7 */   sh        $t1, 0x66($sp)
    /* AFE80 800BF680 1000A527 */  addiu      $a1, $sp, 0x10
    /* AFE84 800BF684 21304002 */  addu       $a2, $s2, $zero
    /* AFE88 800BF688 10000724 */  addiu      $a3, $zero, 0x10
    /* AFE8C 800BF68C 0000848E */  lw         $a0, 0x0($s4)
    /* AFE90 800BF690 C0000924 */  addiu      $t1, $zero, 0xC0
    /* AFE94 800BF694 6400B0A7 */  sh         $s0, 0x64($sp)
    /* AFE98 800BF698 D0001024 */  addiu      $s0, $zero, 0xD0
    /* AFE9C 800BF69C 6000B1A7 */  sh         $s1, 0x60($sp)
    /* AFEA0 800BF6A0 6200A9A7 */  sh         $t1, 0x62($sp)
    /* AFEA4 800BF6A4 5511040C */  jal        func_80104554
    /* AFEA8 800BF6A8 6600B0A7 */   sh        $s0, 0x66($sp)
    /* AFEAC 800BF6AC 1100C01B */  blez       $fp, .L800BF6F4
    /* AFEB0 800BF6B0 21206002 */   addu      $a0, $s3, $zero
    /* AFEB4 800BF6B4 0180053C */  lui        $a1, %hi(D_80012460)
    /* AFEB8 800BF6B8 6024A524 */  addiu      $a1, $a1, %lo(D_80012460)
    /* AFEBC 800BF6BC E187030C */  jal        sprintf
    /* AFEC0 800BF6C0 2130C003 */   addu      $a2, $fp, $zero
    /* AFEC4 800BF6C4 21286002 */  addu       $a1, $s3, $zero
    /* AFEC8 800BF6C8 21304002 */  addu       $a2, $s2, $zero
    /* AFECC 800BF6CC 10000724 */  addiu      $a3, $zero, 0x10
    /* AFED0 800BF6D0 00010224 */  addiu      $v0, $zero, 0x100
    /* AFED4 800BF6D4 0000848E */  lw         $a0, 0x0($s4)
    /* AFED8 800BF6D8 90000924 */  addiu      $t1, $zero, 0x90
    /* AFEDC 800BF6DC 6000A2A7 */  sh         $v0, 0x60($sp)
    /* AFEE0 800BF6E0 30010224 */  addiu      $v0, $zero, 0x130
    /* AFEE4 800BF6E4 6200A9A7 */  sh         $t1, 0x62($sp)
    /* AFEE8 800BF6E8 6400A2A7 */  sh         $v0, 0x64($sp)
    /* AFEEC 800BF6EC 5511040C */  jal        func_80104554
    /* AFEF0 800BF6F0 6600B6A7 */   sh        $s6, 0x66($sp)
  .L800BF6F4:
    /* AFEF4 800BF6F4 1001A98F */  lw         $t1, 0x110($sp)
    /* AFEF8 800BF6F8 00000000 */  nop
    /* AFEFC 800BF6FC 11002019 */  blez       $t1, .L800BF744
    /* AFF00 800BF700 00000000 */   nop
    /* AFF04 800BF704 1001A68F */  lw         $a2, 0x110($sp)
    /* AFF08 800BF708 0180053C */  lui        $a1, %hi(D_80012460)
    /* AFF0C 800BF70C 6024A524 */  addiu      $a1, $a1, %lo(D_80012460)
    /* AFF10 800BF710 E187030C */  jal        sprintf
    /* AFF14 800BF714 21206002 */   addu      $a0, $s3, $zero
    /* AFF18 800BF718 21286002 */  addu       $a1, $s3, $zero
    /* AFF1C 800BF71C 21304002 */  addu       $a2, $s2, $zero
    /* AFF20 800BF720 10000724 */  addiu      $a3, $zero, 0x10
    /* AFF24 800BF724 0000848E */  lw         $a0, 0x0($s4)
    /* AFF28 800BF728 00010224 */  addiu      $v0, $zero, 0x100
    /* AFF2C 800BF72C 6000A2A7 */  sh         $v0, 0x60($sp)
    /* AFF30 800BF730 30010224 */  addiu      $v0, $zero, 0x130
    /* AFF34 800BF734 6200B6A7 */  sh         $s6, 0x62($sp)
    /* AFF38 800BF738 6400A2A7 */  sh         $v0, 0x64($sp)
    /* AFF3C 800BF73C 5511040C */  jal        func_80104554
    /* AFF40 800BF740 6600B7A7 */   sh        $s7, 0x66($sp)
  .L800BF744:
    /* AFF44 800BF744 1801A98F */  lw         $t1, 0x118($sp)
    /* AFF48 800BF748 00000000 */  nop
    /* AFF4C 800BF74C 12002019 */  blez       $t1, .L800BF798
    /* AFF50 800BF750 00000000 */   nop
    /* AFF54 800BF754 1801A68F */  lw         $a2, 0x118($sp)
    /* AFF58 800BF758 0180053C */  lui        $a1, %hi(D_80012460)
    /* AFF5C 800BF75C 6024A524 */  addiu      $a1, $a1, %lo(D_80012460)
    /* AFF60 800BF760 E187030C */  jal        sprintf
    /* AFF64 800BF764 21206002 */   addu      $a0, $s3, $zero
    /* AFF68 800BF768 21286002 */  addu       $a1, $s3, $zero
    /* AFF6C 800BF76C 21304002 */  addu       $a2, $s2, $zero
    /* AFF70 800BF770 10000724 */  addiu      $a3, $zero, 0x10
    /* AFF74 800BF774 0000848E */  lw         $a0, 0x0($s4)
    /* AFF78 800BF778 00010224 */  addiu      $v0, $zero, 0x100
    /* AFF7C 800BF77C 6000A2A7 */  sh         $v0, 0x60($sp)
    /* AFF80 800BF780 30010224 */  addiu      $v0, $zero, 0x130
    /* AFF84 800BF784 C0000924 */  addiu      $t1, $zero, 0xC0
    /* AFF88 800BF788 6200B7A7 */  sh         $s7, 0x62($sp)
    /* AFF8C 800BF78C 6400A2A7 */  sh         $v0, 0x64($sp)
    /* AFF90 800BF790 5511040C */  jal        func_80104554
    /* AFF94 800BF794 6600A9A7 */   sh        $t1, 0x66($sp)
  .L800BF798:
    /* AFF98 800BF798 2001A98F */  lw         $t1, 0x120($sp)
    /* AFF9C 800BF79C 00000000 */  nop
    /* AFFA0 800BF7A0 13002019 */  blez       $t1, .L800BF7F0
    /* AFFA4 800BF7A4 21880000 */   addu      $s1, $zero, $zero
    /* AFFA8 800BF7A8 2001A68F */  lw         $a2, 0x120($sp)
    /* AFFAC 800BF7AC 0180053C */  lui        $a1, %hi(D_80012460)
    /* AFFB0 800BF7B0 6024A524 */  addiu      $a1, $a1, %lo(D_80012460)
    /* AFFB4 800BF7B4 E187030C */  jal        sprintf
    /* AFFB8 800BF7B8 21206002 */   addu      $a0, $s3, $zero
    /* AFFBC 800BF7BC 21286002 */  addu       $a1, $s3, $zero
    /* AFFC0 800BF7C0 21304002 */  addu       $a2, $s2, $zero
    /* AFFC4 800BF7C4 10000724 */  addiu      $a3, $zero, 0x10
    /* AFFC8 800BF7C8 00010224 */  addiu      $v0, $zero, 0x100
    /* AFFCC 800BF7CC 0000848E */  lw         $a0, 0x0($s4)
    /* AFFD0 800BF7D0 C0000924 */  addiu      $t1, $zero, 0xC0
    /* AFFD4 800BF7D4 6000A2A7 */  sh         $v0, 0x60($sp)
    /* AFFD8 800BF7D8 30010224 */  addiu      $v0, $zero, 0x130
    /* AFFDC 800BF7DC 6200A9A7 */  sh         $t1, 0x62($sp)
    /* AFFE0 800BF7E0 6400A2A7 */  sh         $v0, 0x64($sp)
    /* AFFE4 800BF7E4 5511040C */  jal        func_80104554
    /* AFFE8 800BF7E8 6600B0A7 */   sh        $s0, 0x66($sp)
    /* AFFEC 800BF7EC 21880000 */  addu       $s1, $zero, $zero
  .L800BF7F0:
    /* AFFF0 800BF7F0 21800000 */  addu       $s0, $zero, $zero
    /* AFFF4 800BF7F4 2120A002 */  addu       $a0, $s5, $zero
  .L800BF7F8:
    /* AFFF8 800BF7F8 8ACA010C */  jal        func_80072A28
    /* AFFFC 800BF7FC 21280002 */   addu      $a1, $s0, $zero
    /* B0000 800BF800 02004010 */  beqz       $v0, .L800BF80C
    /* B0004 800BF804 00000000 */   nop
    /* B0008 800BF808 01003126 */  addiu      $s1, $s1, 0x1
  .L800BF80C:
    /* B000C 800BF80C 01001026 */  addiu      $s0, $s0, 0x1
    /* B0010 800BF810 5D00022A */  slti       $v0, $s0, 0x5D
    /* B0014 800BF814 F8FF4014 */  bnez       $v0, .L800BF7F8
    /* B0018 800BF818 2120A002 */   addu      $a0, $s5, $zero
    /* B001C 800BF81C 1280103C */  lui        $s0, %hi(D_80121340)
    /* B0020 800BF820 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* B0024 800BF824 21200002 */  addu       $a0, $s0, $zero
    /* B0028 800BF828 0180053C */  lui        $a1, %hi(D_80012470)
    /* B002C 800BF82C 7024A524 */  addiu      $a1, $a1, %lo(D_80012470)
    /* B0030 800BF830 E187030C */  jal        sprintf
    /* B0034 800BF834 21302002 */   addu      $a2, $s1, $zero
    /* B0038 800BF838 21280002 */  addu       $a1, $s0, $zero
    /* B003C 800BF83C 6000A627 */  addiu      $a2, $sp, 0x60
    /* B0040 800BF840 10000724 */  addiu      $a3, $zero, 0x10
    /* B0044 800BF844 1280043C */  lui        $a0, %hi(D_80121110)
    /* B0048 800BF848 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* B004C 800BF84C 20000224 */  addiu      $v0, $zero, 0x20
    /* B0050 800BF850 6000A2A7 */  sh         $v0, 0x60($sp)
    /* B0054 800BF854 D0000224 */  addiu      $v0, $zero, 0xD0
    /* B0058 800BF858 6200A2A7 */  sh         $v0, 0x62($sp)
    /* B005C 800BF85C F0000224 */  addiu      $v0, $zero, 0xF0
    /* B0060 800BF860 6400A2A7 */  sh         $v0, 0x64($sp)
    /* B0064 800BF864 E0000224 */  addiu      $v0, $zero, 0xE0
    /* B0068 800BF868 5511040C */  jal        func_80104554
    /* B006C 800BF86C 6600A2A7 */   sh        $v0, 0x66($sp)
  .L800BF870:
    /* B0070 800BF870 1280043C */  lui        $a0, %hi(D_80121110)
    /* B0074 800BF874 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* B0078 800BF878 7D11040C */  jal        func_801045F4
    /* B007C 800BF87C 00000000 */   nop
    /* B0080 800BF880 5401BF8F */  lw         $ra, 0x154($sp)
    /* B0084 800BF884 5001BE8F */  lw         $fp, 0x150($sp)
    /* B0088 800BF888 4C01B78F */  lw         $s7, 0x14C($sp)
    /* B008C 800BF88C 4801B68F */  lw         $s6, 0x148($sp)
    /* B0090 800BF890 4401B58F */  lw         $s5, 0x144($sp)
    /* B0094 800BF894 4001B48F */  lw         $s4, 0x140($sp)
    /* B0098 800BF898 3C01B38F */  lw         $s3, 0x13C($sp)
    /* B009C 800BF89C 3801B28F */  lw         $s2, 0x138($sp)
    /* B00A0 800BF8A0 3401B18F */  lw         $s1, 0x134($sp)
    /* B00A4 800BF8A4 3001B08F */  lw         $s0, 0x130($sp)
    /* B00A8 800BF8A8 5801BD27 */  addiu      $sp, $sp, 0x158
    /* B00AC 800BF8AC 0800E003 */  jr         $ra
    /* B00B0 800BF8B0 00000000 */   nop
endlabel func_800BEB60
