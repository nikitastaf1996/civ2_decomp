.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C1C60, 0x538

glabel func_800C1C60
    /* B2460 800C1C60 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* B2464 800C1C64 8800B4AF */  sw         $s4, 0x88($sp)
    /* B2468 800C1C68 21A00000 */  addu       $s4, $zero, $zero
    /* B246C 800C1C6C FFFF0424 */  addiu      $a0, $zero, -0x1
    /* B2470 800C1C70 1800A327 */  addiu      $v1, $sp, 0x18
    /* B2474 800C1C74 9C00BFAF */  sw         $ra, 0x9C($sp)
    /* B2478 800C1C78 9800BEAF */  sw         $fp, 0x98($sp)
    /* B247C 800C1C7C 9400B7AF */  sw         $s7, 0x94($sp)
    /* B2480 800C1C80 9000B6AF */  sw         $s6, 0x90($sp)
    /* B2484 800C1C84 8C00B5AF */  sw         $s5, 0x8C($sp)
    /* B2488 800C1C88 8400B3AF */  sw         $s3, 0x84($sp)
    /* B248C 800C1C8C 8000B2AF */  sw         $s2, 0x80($sp)
    /* B2490 800C1C90 7C00B1AF */  sw         $s1, 0x7C($sp)
    /* B2494 800C1C94 7800B0AF */  sw         $s0, 0x78($sp)
  .L800C1C98:
    /* B2498 800C1C98 180064AC */  sw         $a0, 0x18($v1)
    /* B249C 800C1C9C 000064AC */  sw         $a0, 0x0($v1)
    /* B24A0 800C1CA0 01009426 */  addiu      $s4, $s4, 0x1
    /* B24A4 800C1CA4 0500822A */  slti       $v0, $s4, 0x5
    /* B24A8 800C1CA8 FBFF4014 */  bnez       $v0, .L800C1C98
    /* B24AC 800C1CAC 04006324 */   addiu     $v1, $v1, 0x4
    /* B24B0 800C1CB0 1280033C */  lui        $v1, %hi(D_8011A282)
    /* B24B4 800C1CB4 82A26324 */  addiu      $v1, $v1, %lo(D_8011A282)
    /* B24B8 800C1CB8 00006284 */  lh         $v0, 0x0($v1)
    /* B24BC 800C1CBC 00000000 */  nop
    /* B24C0 800C1CC0 3C004018 */  blez       $v0, .L800C1DB4
    /* B24C4 800C1CC4 21A80000 */   addu      $s5, $zero, $zero
    /* B24C8 800C1CC8 C0006C24 */  addiu      $t4, $v1, 0xC0
    /* B24CC 800C1CCC 1800AA27 */  addiu      $t2, $sp, 0x18
    /* B24D0 800C1CD0 3400AB27 */  addiu      $t3, $sp, 0x34
    /* B24D4 800C1CD4 21480000 */  addu       $t1, $zero, $zero
  .L800C1CD8:
    /* B24D8 800C1CD8 21800000 */  addu       $s0, $zero, $zero
    /* B24DC 800C1CDC 21288001 */  addu       $a1, $t4, $zero
    /* B24E0 800C1CE0 1180013C */  lui        $at, %hi(D_80113ED9)
    /* B24E4 800C1CE4 21082900 */  addu       $at, $at, $t1
    /* B24E8 800C1CE8 D93E2280 */  lb         $v0, %lo(D_80113ED9)($at)
    /* B24EC 800C1CEC 1180013C */  lui        $at, %hi(D_80113F26)
    /* B24F0 800C1CF0 21082900 */  addu       $at, $at, $t1
    /* B24F4 800C1CF4 263F2380 */  lb         $v1, %lo(D_80113F26)($at)
    /* B24F8 800C1CF8 1180013C */  lui        $at, %hi(D_80113F27)
    /* B24FC 800C1CFC 21082900 */  addu       $at, $at, $t1
    /* B2500 800C1D00 273F2480 */  lb         $a0, %lo(D_80113F27)($at)
    /* B2504 800C1D04 21104300 */  addu       $v0, $v0, $v1
    /* B2508 800C1D08 23404400 */  subu       $t0, $v0, $a0
  .L800C1D0C:
    /* B250C 800C1D0C 0000A284 */  lh         $v0, 0x0($a1)
    /* B2510 800C1D10 00000000 */  nop
    /* B2514 800C1D14 02005514 */  bne        $v0, $s5, .L800C1D20
    /* B2518 800C1D18 00000000 */   nop
    /* B251C 800C1D1C 0A000825 */  addiu      $t0, $t0, 0xA
  .L800C1D20:
    /* B2520 800C1D20 01001026 */  addiu      $s0, $s0, 0x1
    /* B2524 800C1D24 1C00022A */  slti       $v0, $s0, 0x1C
    /* B2528 800C1D28 F8FF4014 */  bnez       $v0, .L800C1D0C
    /* B252C 800C1D2C 0200A524 */   addiu     $a1, $a1, 0x2
    /* B2530 800C1D30 21A00000 */  addu       $s4, $zero, $zero
    /* B2534 800C1D34 21384001 */  addu       $a3, $t2, $zero
  .L800C1D38:
    /* B2538 800C1D38 0000E28C */  lw         $v0, 0x0($a3)
    /* B253C 800C1D3C 00000000 */  nop
    /* B2540 800C1D40 2A104800 */  slt        $v0, $v0, $t0
    /* B2544 800C1D44 11004010 */  beqz       $v0, .L800C1D8C
    /* B2548 800C1D48 03000524 */   addiu     $a1, $zero, 0x3
    /* B254C 800C1D4C 2A10B400 */  slt        $v0, $a1, $s4
    /* B2550 800C1D50 0B004014 */  bnez       $v0, .L800C1D80
    /* B2554 800C1D54 0C006625 */   addiu     $a2, $t3, 0xC
    /* B2558 800C1D58 0C004425 */  addiu      $a0, $t2, 0xC
  .L800C1D5C:
    /* B255C 800C1D5C 0000828C */  lw         $v0, 0x0($a0)
    /* B2560 800C1D60 1800838C */  lw         $v1, 0x18($a0)
    /* B2564 800C1D64 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* B2568 800C1D68 040082AC */  sw         $v0, 0x4($a0)
    /* B256C 800C1D6C 0000C3AC */  sw         $v1, 0x0($a2)
    /* B2570 800C1D70 FCFFC624 */  addiu      $a2, $a2, -0x4
    /* B2574 800C1D74 2A10B400 */  slt        $v0, $a1, $s4
    /* B2578 800C1D78 F8FF4010 */  beqz       $v0, .L800C1D5C
    /* B257C 800C1D7C FCFF8424 */   addiu     $a0, $a0, -0x4
  .L800C1D80:
    /* B2580 800C1D80 0000E8AC */  sw         $t0, 0x0($a3)
    /* B2584 800C1D84 67070308 */  j          .L800C1D9C
    /* B2588 800C1D88 1800F5AC */   sw        $s5, 0x18($a3)
  .L800C1D8C:
    /* B258C 800C1D8C 01009426 */  addiu      $s4, $s4, 0x1
    /* B2590 800C1D90 0500822A */  slti       $v0, $s4, 0x5
    /* B2594 800C1D94 E8FF4014 */  bnez       $v0, .L800C1D38
    /* B2598 800C1D98 0400E724 */   addiu     $a3, $a3, 0x4
  .L800C1D9C:
    /* B259C 800C1D9C 1280023C */  lui        $v0, %hi(D_8011A282)
    /* B25A0 800C1DA0 82A24284 */  lh         $v0, %lo(D_8011A282)($v0)
    /* B25A4 800C1DA4 0100B526 */  addiu      $s5, $s5, 0x1
    /* B25A8 800C1DA8 2A10A202 */  slt        $v0, $s5, $v0
    /* B25AC 800C1DAC CAFF4014 */  bnez       $v0, .L800C1CD8
    /* B25B0 800C1DB0 58002925 */   addiu     $t1, $t1, 0x58
  .L800C1DB4:
    /* B25B4 800C1DB4 1280123C */  lui        $s2, %hi(D_80120D84)
    /* B25B8 800C1DB8 840D5226 */  addiu      $s2, $s2, %lo(D_80120D84)
    /* B25BC 800C1DBC DC49020C */  jal        func_80092770
    /* B25C0 800C1DC0 21204002 */   addu      $a0, $s2, $zero
    /* B25C4 800C1DC4 7907040C */  jal        func_80101DE4
    /* B25C8 800C1DC8 01000424 */   addiu     $a0, $zero, 0x1
    /* B25CC 800C1DCC 1280023C */  lui        $v0, %hi(D_80120DBC)
    /* B25D0 800C1DD0 BC0D428C */  lw         $v0, %lo(D_80120DBC)($v0)
    /* B25D4 800C1DD4 00000000 */  nop
    /* B25D8 800C1DD8 0400448C */  lw         $a0, 0x4($v0)
    /* B25DC 800C1DDC D707040C */  jal        func_80101F5C
    /* B25E0 800C1DE0 10001424 */   addiu     $s4, $zero, 0x10
    /* B25E4 800C1DE4 4800B127 */  addiu      $s1, $sp, 0x48
    /* B25E8 800C1DE8 21202002 */  addu       $a0, $s1, $zero
    /* B25EC 800C1DEC 21280000 */  addu       $a1, $zero, $zero
    /* B25F0 800C1DF0 40010224 */  addiu      $v0, $zero, 0x140
    /* B25F4 800C1DF4 4C00A2A7 */  sh         $v0, 0x4C($sp)
    /* B25F8 800C1DF8 F0000224 */  addiu      $v0, $zero, 0xF0
    /* B25FC 800C1DFC 4800A0A7 */  sh         $zero, 0x48($sp)
    /* B2600 800C1E00 4A00A0A7 */  sh         $zero, 0x4A($sp)
    /* B2604 800C1E04 A314020C */  jal        func_8008528C
    /* B2608 800C1E08 4E00A2A7 */   sh        $v0, 0x4E($sp)
    /* B260C 800C1E0C 28024426 */  addiu      $a0, $s2, 0x228
    /* B2610 800C1E10 2C004526 */  addiu      $a1, $s2, 0x2C
    /* B2614 800C1E14 5000A627 */  addiu      $a2, $sp, 0x50
    /* B2618 800C1E18 21382002 */  addu       $a3, $s1, $zero
    /* B261C 800C1E1C 06000324 */  addiu      $v1, $zero, 0x6
    /* B2620 800C1E20 3A010824 */  addiu      $t0, $zero, 0x13A
    /* B2624 800C1E24 D0000224 */  addiu      $v0, $zero, 0xD0
    /* B2628 800C1E28 E0001324 */  addiu      $s3, $zero, 0xE0
    /* B262C 800C1E2C 5000A3A7 */  sh         $v1, 0x50($sp)
    /* B2630 800C1E30 5200A0A7 */  sh         $zero, 0x52($sp)
    /* B2634 800C1E34 5400A8A7 */  sh         $t0, 0x54($sp)
    /* B2638 800C1E38 5600A2A7 */  sh         $v0, 0x56($sp)
    /* B263C 800C1E3C 4800A3A7 */  sh         $v1, 0x48($sp)
    /* B2640 800C1E40 4A00B4A7 */  sh         $s4, 0x4A($sp)
    /* B2644 800C1E44 4C00A8A7 */  sh         $t0, 0x4C($sp)
    /* B2648 800C1E48 1FE4030C */  jal        func_800F907C
    /* B264C 800C1E4C 4E00B3A7 */   sh        $s3, 0x4E($sp)
    /* B2650 800C1E50 1280103C */  lui        $s0, %hi(D_80120E5C)
    /* B2654 800C1E54 5C0E108E */  lw         $s0, %lo(D_80120E5C)($s0)
    /* B2658 800C1E58 1280023C */  lui        $v0, %hi(D_8012110C)
    /* B265C 800C1E5C 0C11428C */  lw         $v0, %lo(D_8012110C)($v0)
    /* B2660 800C1E60 00000000 */  nop
    /* B2664 800C1E64 1C004014 */  bnez       $v0, .L800C1ED8
    /* B2668 800C1E68 AC001526 */   addiu     $s5, $s0, 0xAC
    /* B266C 800C1E6C 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2670 800C1E70 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B2674 800C1E74 CB1A030C */  jal        func_800C6B2C
    /* B2678 800C1E78 00000000 */   nop
    /* B267C 800C1E7C 1680023C */  lui        $v0, %hi(D_8015894C)
    /* B2680 800C1E80 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* B2684 800C1E84 00000000 */  nop
    /* B2688 800C1E88 5405448C */  lw         $a0, 0x554($v0)
    /* B268C 800C1E8C A63A030C */  jal        func_800CEA98
    /* B2690 800C1E90 00000000 */   nop
    /* B2694 800C1E94 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2698 800C1E98 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B269C 800C1E9C 9987030C */  jal        func_800E1E64
    /* B26A0 800C1EA0 21284000 */   addu      $a1, $v0, $zero
    /* B26A4 800C1EA4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B26A8 800C1EA8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B26AC 800C1EAC 21282002 */  addu       $a1, $s1, $zero
    /* B26B0 800C1EB0 10000624 */  addiu      $a2, $zero, 0x10
    /* B26B4 800C1EB4 68000224 */  addiu      $v0, $zero, 0x68
    /* B26B8 800C1EB8 4800A2A7 */  sh         $v0, 0x48($sp)
    /* B26BC 800C1EBC 20000224 */  addiu      $v0, $zero, 0x20
    /* B26C0 800C1EC0 4A00B4A7 */  sh         $s4, 0x4A($sp)
    /* B26C4 800C1EC4 4C00B3A7 */  sh         $s3, 0x4C($sp)
    /* B26C8 800C1EC8 DC0F040C */  jal        func_80103F70
    /* B26CC 800C1ECC 4E00A2A7 */   sh        $v0, 0x4E($sp)
    /* B26D0 800C1ED0 1280013C */  lui        $at, %hi(D_8012110C)
    /* B26D4 800C1ED4 0C1122AC */  sw         $v0, %lo(D_8012110C)($at)
  .L800C1ED8:
    /* B26D8 800C1ED8 18001726 */  addiu      $s7, $s0, 0x18
    /* B26DC 800C1EDC 21A00000 */  addu       $s4, $zero, $zero
    /* B26E0 800C1EE0 30000D3C */  lui        $t5, (0x300000 >> 16)
    /* B26E4 800C1EE4 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B26E8 800C1EE8 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B26EC 800C1EEC 30001E24 */  addiu      $fp, $zero, 0x30
    /* B26F0 800C1EF0 7D11040C */  jal        func_801045F4
    /* B26F4 800C1EF4 7000ADAF */   sw        $t5, 0x70($sp)
    /* B26F8 800C1EF8 2320B702 */  subu       $a0, $s5, $s7
    /* B26FC 800C1EFC 20001724 */  addiu      $s7, $zero, 0x20
    /* B2700 800C1F00 1280033C */  lui        $v1, %hi(D_80121110)
    /* B2704 800C1F04 1011638C */  lw         $v1, %lo(D_80121110)($v1)
    /* B2708 800C1F08 18000224 */  addiu      $v0, $zero, 0x18
    /* B270C 800C1F0C 1280013C */  lui        $at, %hi(D_801210D8)
    /* B2710 800C1F10 D81022AC */  sw         $v0, %lo(D_801210D8)($at)
    /* B2714 800C1F14 20000226 */  addiu      $v0, $s0, 0x20
    /* B2718 800C1F18 1280013C */  lui        $at, %hi(D_801210D0)
    /* B271C 800C1F1C D01022AC */  sw         $v0, %lo(D_801210D0)($at)
    /* B2720 800C1F20 1280013C */  lui        $at, %hi(D_801210D4)
    /* B2724 800C1F24 D41024AC */  sw         $a0, %lo(D_801210D4)($at)
    /* B2728 800C1F28 0100632C */  sltiu      $v1, $v1, 0x1
    /* B272C 800C1F2C 6000A3AF */  sw         $v1, 0x60($sp)
  .L800C1F30:
    /* B2730 800C1F30 0500822A */  slti       $v0, $s4, 0x5
    /* B2734 800C1F34 84004010 */  beqz       $v0, .L800C2148
    /* B2738 800C1F38 80101400 */   sll       $v0, $s4, 2
    /* B273C 800C1F3C 2110A203 */  addu       $v0, $sp, $v0
    /* B2740 800C1F40 3000558C */  lw         $s5, 0x30($v0)
    /* B2744 800C1F44 00000000 */  nop
    /* B2748 800C1F48 7D00A006 */  bltz       $s5, .L800C2140
    /* B274C 800C1F4C 00000000 */   nop
    /* B2750 800C1F50 6000AD8F */  lw         $t5, 0x60($sp)
    /* B2754 800C1F54 00000000 */  nop
    /* B2758 800C1F58 4300A011 */  beqz       $t5, .L800C2068
    /* B275C 800C1F5C 00000000 */   nop
    /* B2760 800C1F60 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2764 800C1F64 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B2768 800C1F68 CB1A030C */  jal        func_800C6B2C
    /* B276C 800C1F6C 40801500 */   sll       $s0, $s5, 1
    /* B2770 800C1F70 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2774 800C1F74 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B2778 800C1F78 9C1B030C */  jal        func_800C6E70
    /* B277C 800C1F7C 01008526 */   addiu     $a1, $s4, 0x1
    /* B2780 800C1F80 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2784 800C1F84 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B2788 800C1F88 011B030C */  jal        func_800C6C04
    /* B278C 800C1F8C 21801502 */   addu      $s0, $s0, $s5
    /* B2790 800C1F90 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2794 800C1F94 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B2798 800C1F98 80801000 */  sll        $s0, $s0, 2
    /* B279C 800C1F9C 23801502 */  subu       $s0, $s0, $s5
    /* B27A0 800C1FA0 C0801000 */  sll        $s0, $s0, 3
    /* B27A4 800C1FA4 1180053C */  lui        $a1, %hi(D_80113EF2)
    /* B27A8 800C1FA8 F23EA524 */  addiu      $a1, $a1, %lo(D_80113EF2)
    /* B27AC 800C1FAC 9987030C */  jal        func_800E1E64
    /* B27B0 800C1FB0 21280502 */   addu      $a1, $s0, $a1
    /* B27B4 800C1FB4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B27B8 800C1FB8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B27BC 800C1FBC CD1A030C */  jal        func_800C6B34
    /* B27C0 800C1FC0 00000000 */   nop
    /* B27C4 800C1FC4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B27C8 800C1FC8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B27CC 800C1FCC 151B030C */  jal        func_800C6C54
    /* B27D0 800C1FD0 00000000 */   nop
    /* B27D4 800C1FD4 1180013C */  lui        $at, %hi(D_80113ED8)
    /* B27D8 800C1FD8 21083000 */  addu       $at, $at, $s0
    /* B27DC 800C1FDC D83E2480 */  lb         $a0, %lo(D_80113ED8)($at)
    /* B27E0 800C1FE0 8A54020C */  jal        func_80095228
    /* B27E4 800C1FE4 00000000 */   nop
    /* B27E8 800C1FE8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B27EC 800C1FEC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B27F0 800C1FF0 9987030C */  jal        func_800E1E64
    /* B27F4 800C1FF4 21284000 */   addu      $a1, $v0, $zero
    /* B27F8 800C1FF8 1280043C */  lui        $a0, %hi(D_80121340)
    /* B27FC 800C1FFC 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B2800 800C2000 1F1B030C */  jal        func_800C6C7C
    /* B2804 800C2004 00000000 */   nop
    /* B2808 800C2008 1280043C */  lui        $a0, %hi(D_80121110)
    /* B280C 800C200C 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* B2810 800C2010 30000224 */  addiu      $v0, $zero, 0x30
    /* B2814 800C2014 4800A2A7 */  sh         $v0, 0x48($sp)
    /* B2818 800C2018 30010224 */  addiu      $v0, $zero, 0x130
    /* B281C 800C201C 4C00A2A7 */  sh         $v0, 0x4C($sp)
    /* B2820 800C2020 0C00E226 */  addiu      $v0, $s7, 0xC
    /* B2824 800C2024 4A00B7A7 */  sh         $s7, 0x4A($sp)
    /* B2828 800C2028 0A008014 */  bnez       $a0, .L800C2054
    /* B282C 800C202C 4E00A2A7 */   sh        $v0, 0x4E($sp)
    /* B2830 800C2030 1280043C */  lui        $a0, %hi(D_80121340)
    /* B2834 800C2034 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B2838 800C2038 4800A527 */  addiu      $a1, $sp, 0x48
    /* B283C 800C203C DC0F040C */  jal        func_80103F70
    /* B2840 800C2040 10000624 */   addiu     $a2, $zero, 0x10
    /* B2844 800C2044 1280013C */  lui        $at, %hi(D_80121110)
    /* B2848 800C2048 101122AC */  sw         $v0, %lo(D_80121110)($at)
    /* B284C 800C204C 1A080308 */  j          .L800C2068
    /* B2850 800C2050 00000000 */   nop
  .L800C2054:
    /* B2854 800C2054 1280053C */  lui        $a1, %hi(D_80121340)
    /* B2858 800C2058 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B285C 800C205C 4800A627 */  addiu      $a2, $sp, 0x48
    /* B2860 800C2060 5511040C */  jal        func_80104554
    /* B2864 800C2064 10000724 */   addiu     $a3, $zero, 0x10
  .L800C2068:
    /* B2868 800C2068 1280043C */  lui        $a0, %hi(D_80120D84)
    /* B286C 800C206C 840D8424 */  addiu      $a0, $a0, %lo(D_80120D84)
    /* B2870 800C2070 2128A002 */  addu       $a1, $s5, $zero
    /* B2874 800C2074 00100624 */  addiu      $a2, $zero, 0x1000
    /* B2878 800C2078 10000724 */  addiu      $a3, $zero, 0x10
    /* B287C 800C207C 1000B7AF */  sw         $s7, 0x10($sp)
    /* B2880 800C2080 17C0020C */  jal        func_800B005C
    /* B2884 800C2084 1400A0AF */   sw        $zero, 0x14($sp)
    /* B2888 800C2088 0C25020C */  jal        func_80089430
    /* B288C 800C208C 2120A002 */   addu      $a0, $s5, $zero
    /* B2890 800C2090 30000424 */  addiu      $a0, $zero, 0x30
    /* B2894 800C2094 2128C003 */  addu       $a1, $fp, $zero
    /* B2898 800C2098 A0000624 */  addiu      $a2, $zero, 0xA0
    /* B289C 800C209C D0001224 */  addiu      $s2, $zero, 0xD0
    /* B28A0 800C20A0 21800000 */  addu       $s0, $zero, $zero
    /* B28A4 800C20A4 21980000 */  addu       $s3, $zero, $zero
    /* B28A8 800C20A8 1280113C */  lui        $s1, %hi(D_8011A342)
    /* B28AC 800C20AC 42A33126 */  addiu      $s1, $s1, %lo(D_8011A342)
    /* B28B0 800C20B0 1680023C */  lui        $v0, %hi(D_80158864)
    /* B28B4 800C20B4 6488428C */  lw         $v0, %lo(D_80158864)($v0)
    /* B28B8 800C20B8 7000AD8F */  lw         $t5, 0x70($sp)
    /* B28BC 800C20BC 56004780 */  lb         $a3, 0x56($v0)
    /* B28C0 800C20C0 57004280 */  lb         $v0, 0x57($v0)
    /* B28C4 800C20C4 03B40D00 */  sra        $s6, $t5, 16
    /* B28C8 800C20C8 1400A0AF */  sw         $zero, 0x14($sp)
    /* B28CC 800C20CC 8CF2020C */  jal        func_800BCA30
    /* B28D0 800C20D0 1000A2AF */   sw        $v0, 0x10($sp)
  .L800C20D4:
    /* B28D4 800C20D4 00002286 */  lh         $v0, 0x0($s1)
    /* B28D8 800C20D8 00000000 */  nop
    /* B28DC 800C20DC 0D005514 */  bne        $v0, $s5, .L800C2114
    /* B28E0 800C20E0 2801422A */   slti      $v0, $s2, 0x128
    /* B28E4 800C20E4 10004010 */  beqz       $v0, .L800C2128
    /* B28E8 800C20E8 5800A427 */   addiu     $a0, $sp, 0x58
    /* B28EC 800C20EC 1000B6AF */  sw         $s6, 0x10($sp)
    /* B28F0 800C20F0 1380053C */  lui        $a1, %hi(D_80132CC4)
    /* B28F4 800C20F4 C42CA524 */  addiu      $a1, $a1, %lo(D_80132CC4)
    /* B28F8 800C20F8 21286502 */  addu       $a1, $s3, $a1
    /* B28FC 800C20FC 1280063C */  lui        $a2, %hi(D_80120D84)
    /* B2900 800C2100 840DC624 */  addiu      $a2, $a2, %lo(D_80120D84)
    /* B2904 800C2104 003C1200 */  sll        $a3, $s2, 16
    /* B2908 800C2108 89EE030C */  jal        func_800FBA24
    /* B290C 800C210C 033C0700 */   sra       $a3, $a3, 16
    /* B2910 800C2110 14005226 */  addiu      $s2, $s2, 0x14
  .L800C2114:
    /* B2914 800C2114 94007326 */  addiu      $s3, $s3, 0x94
    /* B2918 800C2118 01001026 */  addiu      $s0, $s0, 0x1
    /* B291C 800C211C 1C00022A */  slti       $v0, $s0, 0x1C
    /* B2920 800C2120 ECFF4014 */  bnez       $v0, .L800C20D4
    /* B2924 800C2124 02003126 */   addiu     $s1, $s1, 0x2
  .L800C2128:
    /* B2928 800C2128 2400023C */  lui        $v0, (0x240000 >> 16)
    /* B292C 800C212C 2400DE27 */  addiu      $fp, $fp, 0x24
    /* B2930 800C2130 7000AD8F */  lw         $t5, 0x70($sp)
    /* B2934 800C2134 2400F726 */  addiu      $s7, $s7, 0x24
    /* B2938 800C2138 2168A201 */  addu       $t5, $t5, $v0
    /* B293C 800C213C 7000ADAF */  sw         $t5, 0x70($sp)
  .L800C2140:
    /* B2940 800C2140 CC070308 */  j          .L800C1F30
    /* B2944 800C2144 01009426 */   addiu     $s4, $s4, 0x1
  .L800C2148:
    /* B2948 800C2148 1280043C */  lui        $a0, %hi(D_80121110)
    /* B294C 800C214C 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* B2950 800C2150 00000000 */  nop
    /* B2954 800C2154 03008010 */  beqz       $a0, .L800C2164
    /* B2958 800C2158 00000000 */   nop
    /* B295C 800C215C 7D11040C */  jal        func_801045F4
    /* B2960 800C2160 00000000 */   nop
  .L800C2164:
    /* B2964 800C2164 9C00BF8F */  lw         $ra, 0x9C($sp)
    /* B2968 800C2168 9800BE8F */  lw         $fp, 0x98($sp)
    /* B296C 800C216C 9400B78F */  lw         $s7, 0x94($sp)
    /* B2970 800C2170 9000B68F */  lw         $s6, 0x90($sp)
    /* B2974 800C2174 8C00B58F */  lw         $s5, 0x8C($sp)
    /* B2978 800C2178 8800B48F */  lw         $s4, 0x88($sp)
    /* B297C 800C217C 8400B38F */  lw         $s3, 0x84($sp)
    /* B2980 800C2180 8000B28F */  lw         $s2, 0x80($sp)
    /* B2984 800C2184 7C00B18F */  lw         $s1, 0x7C($sp)
    /* B2988 800C2188 7800B08F */  lw         $s0, 0x78($sp)
    /* B298C 800C218C A000BD27 */  addiu      $sp, $sp, 0xA0
    /* B2990 800C2190 0800E003 */  jr         $ra
    /* B2994 800C2194 00000000 */   nop
endlabel func_800C1C60
