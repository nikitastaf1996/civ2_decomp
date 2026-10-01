.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C03E4, 0x700

glabel func_800C03E4
    /* B0BE4 800C03E4 88FFBD27 */  addiu      $sp, $sp, -0x78
    /* B0BE8 800C03E8 5000B0AF */  sw         $s0, 0x50($sp)
    /* B0BEC 800C03EC 1280103C */  lui        $s0, %hi(D_801210C4)
    /* B0BF0 800C03F0 C4101026 */  addiu      $s0, $s0, %lo(D_801210C4)
    /* B0BF4 800C03F4 C0FC0426 */  addiu      $a0, $s0, -0x340
    /* B0BF8 800C03F8 7400BFAF */  sw         $ra, 0x74($sp)
    /* B0BFC 800C03FC 7000BEAF */  sw         $fp, 0x70($sp)
    /* B0C00 800C0400 6C00B7AF */  sw         $s7, 0x6C($sp)
    /* B0C04 800C0404 6800B6AF */  sw         $s6, 0x68($sp)
    /* B0C08 800C0408 6400B5AF */  sw         $s5, 0x64($sp)
    /* B0C0C 800C040C 6000B4AF */  sw         $s4, 0x60($sp)
    /* B0C10 800C0410 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* B0C14 800C0414 5800B2AF */  sw         $s2, 0x58($sp)
    /* B0C18 800C0418 DC49020C */  jal        func_80092770
    /* B0C1C 800C041C 5400B1AF */   sw        $s1, 0x54($sp)
    /* B0C20 800C0420 7907040C */  jal        func_80101DE4
    /* B0C24 800C0424 01000424 */   addiu     $a0, $zero, 0x1
    /* B0C28 800C0428 1280023C */  lui        $v0, %hi(D_80120DBC)
    /* B0C2C 800C042C BC0D428C */  lw         $v0, %lo(D_80120DBC)($v0)
    /* B0C30 800C0430 00000000 */  nop
    /* B0C34 800C0434 0400448C */  lw         $a0, 0x4($v0)
    /* B0C38 800C0438 D707040C */  jal        func_80101F5C
    /* B0C3C 800C043C 03001224 */   addiu     $s2, $zero, 0x3
    /* B0C40 800C0440 2800B127 */  addiu      $s1, $sp, 0x28
    /* B0C44 800C0444 21202002 */  addu       $a0, $s1, $zero
    /* B0C48 800C0448 21280000 */  addu       $a1, $zero, $zero
    /* B0C4C 800C044C 40010224 */  addiu      $v0, $zero, 0x140
    /* B0C50 800C0450 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* B0C54 800C0454 F0000224 */  addiu      $v0, $zero, 0xF0
    /* B0C58 800C0458 2800A0A7 */  sh         $zero, 0x28($sp)
    /* B0C5C 800C045C 2A00A0A7 */  sh         $zero, 0x2A($sp)
    /* B0C60 800C0460 A314020C */  jal        func_8008528C
    /* B0C64 800C0464 2E00A2A7 */   sh        $v0, 0x2E($sp)
    /* B0C68 800C0468 E8FE0426 */  addiu      $a0, $s0, -0x118
    /* B0C6C 800C046C ECFC1026 */  addiu      $s0, $s0, -0x314
    /* B0C70 800C0470 21280002 */  addu       $a1, $s0, $zero
    /* B0C74 800C0474 3000A627 */  addiu      $a2, $sp, 0x30
    /* B0C78 800C0478 21382002 */  addu       $a3, $s1, $zero
    /* B0C7C 800C047C 06000324 */  addiu      $v1, $zero, 0x6
    /* B0C80 800C0480 3A010824 */  addiu      $t0, $zero, 0x13A
    /* B0C84 800C0484 D0000224 */  addiu      $v0, $zero, 0xD0
    /* B0C88 800C0488 3600A2A7 */  sh         $v0, 0x36($sp)
    /* B0C8C 800C048C 10000224 */  addiu      $v0, $zero, 0x10
    /* B0C90 800C0490 2A00A2A7 */  sh         $v0, 0x2A($sp)
    /* B0C94 800C0494 E0000224 */  addiu      $v0, $zero, 0xE0
    /* B0C98 800C0498 3000A3A7 */  sh         $v1, 0x30($sp)
    /* B0C9C 800C049C 3200A0A7 */  sh         $zero, 0x32($sp)
    /* B0CA0 800C04A0 3400A8A7 */  sh         $t0, 0x34($sp)
    /* B0CA4 800C04A4 2800A3A7 */  sh         $v1, 0x28($sp)
    /* B0CA8 800C04A8 2C00A8A7 */  sh         $t0, 0x2C($sp)
    /* B0CAC 800C04AC 1FE4030C */  jal        func_800F907C
    /* B0CB0 800C04B0 2E00A2A7 */   sh        $v0, 0x2E($sp)
    /* B0CB4 800C04B4 1280023C */  lui        $v0, %hi(D_80120E5C)
    /* B0CB8 800C04B8 5C0E428C */  lw         $v0, %lo(D_80120E5C)($v0)
    /* B0CBC 800C04BC 2400A327 */  addiu      $v1, $sp, 0x24
    /* B0CC0 800C04C0 02005624 */  addiu      $s6, $v0, 0x2
    /* B0CC4 800C04C4 AC005724 */  addiu      $s7, $v0, 0xAC
  .L800C04C8:
    /* B0CC8 800C04C8 000060AC */  sw         $zero, 0x0($v1)
    /* B0CCC 800C04CC FFFF5226 */  addiu      $s2, $s2, -0x1
    /* B0CD0 800C04D0 FDFF4106 */  bgez       $s2, .L800C04C8
    /* B0CD4 800C04D4 FCFF6324 */   addiu     $v1, $v1, -0x4
    /* B0CD8 800C04D8 21980000 */  addu       $s3, $zero, $zero
    /* B0CDC 800C04DC 21880000 */  addu       $s1, $zero, $zero
    /* B0CE0 800C04E0 FFFF0724 */  addiu      $a3, $zero, -0x1
    /* B0CE4 800C04E4 4992063C */  lui        $a2, (0x92492493 >> 16)
    /* B0CE8 800C04E8 9324C634 */  ori        $a2, $a2, (0x92492493 & 0xFFFF)
    /* B0CEC 800C04EC 1800A527 */  addiu      $a1, $sp, 0x18
    /* B0CF0 800C04F0 1280043C */  lui        $a0, %hi(D_8011A342)
    /* B0CF4 800C04F4 42A38424 */  addiu      $a0, $a0, %lo(D_8011A342)
  .L800C04F8:
    /* B0CF8 800C04F8 00008284 */  lh         $v0, 0x0($a0)
    /* B0CFC 800C04FC 00000000 */  nop
    /* B0D00 800C0500 0F004710 */  beq        $v0, $a3, .L800C0540
    /* B0D04 800C0504 18002602 */   mult      $s1, $a2
    /* B0D08 800C0508 C31F1100 */  sra        $v1, $s1, 31
    /* B0D0C 800C050C 10480000 */  mfhi       $t1
    /* B0D10 800C0510 21103101 */  addu       $v0, $t1, $s1
    /* B0D14 800C0514 83100200 */  sra        $v0, $v0, 2
    /* B0D18 800C0518 23904300 */  subu       $s2, $v0, $v1
    /* B0D1C 800C051C 80101200 */  sll        $v0, $s2, 2
    /* B0D20 800C0520 21184500 */  addu       $v1, $v0, $a1
    /* B0D24 800C0524 0000628C */  lw         $v0, 0x0($v1)
    /* B0D28 800C0528 00000000 */  nop
    /* B0D2C 800C052C 02004014 */  bnez       $v0, .L800C0538
    /* B0D30 800C0530 01007326 */   addiu     $s3, $s3, 0x1
    /* B0D34 800C0534 01007326 */  addiu      $s3, $s3, 0x1
  .L800C0538:
    /* B0D38 800C0538 01004224 */  addiu      $v0, $v0, 0x1
    /* B0D3C 800C053C 000062AC */  sw         $v0, 0x0($v1)
  .L800C0540:
    /* B0D40 800C0540 01003126 */  addiu      $s1, $s1, 0x1
    /* B0D44 800C0544 1C00222A */  slti       $v0, $s1, 0x1C
    /* B0D48 800C0548 EBFF4014 */  bnez       $v0, .L800C04F8
    /* B0D4C 800C054C 02008424 */   addiu     $a0, $a0, 0x2
    /* B0D50 800C0550 1280123C */  lui        $s2, %hi(D_8012110C)
    /* B0D54 800C0554 0C115226 */  addiu      $s2, $s2, %lo(D_8012110C)
    /* B0D58 800C0558 0000428E */  lw         $v0, 0x0($s2)
    /* B0D5C 800C055C 00000000 */  nop
    /* B0D60 800C0560 32004014 */  bnez       $v0, .L800C062C
    /* B0D64 800C0564 00000000 */   nop
    /* B0D68 800C0568 1280043C */  lui        $a0, %hi(D_80121340)
    /* B0D6C 800C056C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0D70 800C0570 CB1A030C */  jal        func_800C6B2C
    /* B0D74 800C0574 00000000 */   nop
    /* B0D78 800C0578 1680023C */  lui        $v0, %hi(D_8015894C)
    /* B0D7C 800C057C 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* B0D80 800C0580 00000000 */  nop
    /* B0D84 800C0584 5005448C */  lw         $a0, 0x550($v0)
    /* B0D88 800C0588 A63A030C */  jal        func_800CEA98
    /* B0D8C 800C058C 00000000 */   nop
    /* B0D90 800C0590 1280043C */  lui        $a0, %hi(D_80121340)
    /* B0D94 800C0594 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B0D98 800C0598 9987030C */  jal        func_800E1E64
    /* B0D9C 800C059C 21284000 */   addu      $a1, $v0, $zero
    /* B0DA0 800C05A0 2800B127 */  addiu      $s1, $sp, 0x28
    /* B0DA4 800C05A4 21202002 */  addu       $a0, $s1, $zero
    /* B0DA8 800C05A8 1280103C */  lui        $s0, %hi(D_80121340)
    /* B0DAC 800C05AC 40131026 */  addiu      $s0, $s0, %lo(D_80121340)
    /* B0DB0 800C05B0 21280002 */  addu       $a1, $s0, $zero
    /* B0DB4 800C05B4 7FE6020C */  jal        func_800B99FC
    /* B0DB8 800C05B8 10000624 */   addiu     $a2, $zero, 0x10
    /* B0DBC 800C05BC 21200002 */  addu       $a0, $s0, $zero
    /* B0DC0 800C05C0 21282002 */  addu       $a1, $s1, $zero
    /* B0DC4 800C05C4 DC0F040C */  jal        func_80103F70
    /* B0DC8 800C05C8 10000624 */   addiu     $a2, $zero, 0x10
    /* B0DCC 800C05CC 17006016 */  bnez       $s3, .L800C062C
    /* B0DD0 800C05D0 000042AE */   sw        $v0, 0x0($s2)
    /* B0DD4 800C05D4 CB1A030C */  jal        func_800C6B2C
    /* B0DD8 800C05D8 21200002 */   addu      $a0, $s0, $zero
    /* B0DDC 800C05DC 1680053C */  lui        $a1, %hi(D_80159010)
    /* B0DE0 800C05E0 1090A524 */  addiu      $a1, $a1, %lo(D_80159010)
    /* B0DE4 800C05E4 9987030C */  jal        func_800E1E64
    /* B0DE8 800C05E8 21200002 */   addu      $a0, $s0, $zero
    /* B0DEC 800C05EC 21200002 */  addu       $a0, $s0, $zero
    /* B0DF0 800C05F0 731B030C */  jal        func_800C6DCC
    /* B0DF4 800C05F4 25010524 */   addiu     $a1, $zero, 0x125
    /* B0DF8 800C05F8 1680053C */  lui        $a1, %hi(D_80159014)
    /* B0DFC 800C05FC 1490A524 */  addiu      $a1, $a1, %lo(D_80159014)
    /* B0E00 800C0600 9987030C */  jal        func_800E1E64
    /* B0E04 800C0604 21200002 */   addu      $a0, $s0, $zero
    /* B0E08 800C0608 21202002 */  addu       $a0, $s1, $zero
    /* B0E0C 800C060C 21280002 */  addu       $a1, $s0, $zero
    /* B0E10 800C0610 7FE6020C */  jal        func_800B99FC
    /* B0E14 800C0614 30000624 */   addiu     $a2, $zero, 0x30
    /* B0E18 800C0618 0000448E */  lw         $a0, 0x0($s2)
    /* B0E1C 800C061C 21280002 */  addu       $a1, $s0, $zero
    /* B0E20 800C0620 21302002 */  addu       $a2, $s1, $zero
    /* B0E24 800C0624 5511040C */  jal        func_80104554
    /* B0E28 800C0628 10000724 */   addiu     $a3, $zero, 0x10
  .L800C062C:
    /* B0E2C 800C062C 1280043C */  lui        $a0, %hi(D_8012110C)
    /* B0E30 800C0630 0C11848C */  lw         $a0, %lo(D_8012110C)($a0)
    /* B0E34 800C0634 7D11040C */  jal        func_801045F4
    /* B0E38 800C0638 30001524 */   addiu     $s5, $zero, 0x30
    /* B0E3C 800C063C 05006426 */  addiu      $a0, $s3, 0x5
    /* B0E40 800C0640 06000924 */  addiu      $t1, $zero, 0x6
    /* B0E44 800C0644 1A008900 */  div        $zero, $a0, $t1
    /* B0E48 800C0648 02002015 */  bnez       $t1, .L800C0654
    /* B0E4C 800C064C 00000000 */   nop
    /* B0E50 800C0650 0D000700 */  break      7
  .L800C0654:
    /* B0E54 800C0654 FFFF0124 */  addiu      $at, $zero, -0x1
    /* B0E58 800C0658 04002115 */  bne        $t1, $at, .L800C066C
    /* B0E5C 800C065C 0080013C */   lui       $at, (0x80000000 >> 16)
    /* B0E60 800C0660 02008114 */  bne        $a0, $at, .L800C066C
    /* B0E64 800C0664 00000000 */   nop
    /* B0E68 800C0668 0D000600 */  break      6
  .L800C066C:
    /* B0E6C 800C066C 12200000 */  mflo       $a0
    /* B0E70 800C0670 21A00000 */  addu       $s4, $zero, $zero
    /* B0E74 800C0674 03001224 */  addiu      $s2, $zero, 0x3
    /* B0E78 800C0678 01000524 */  addiu      $a1, $zero, 0x1
    /* B0E7C 800C067C 20000924 */  addiu      $t1, $zero, 0x20
    /* B0E80 800C0680 2310F602 */  subu       $v0, $s7, $s6
    /* B0E84 800C0684 1280013C */  lui        $at, %hi(D_801210D8)
    /* B0E88 800C0688 D81029AC */  sw         $t1, %lo(D_801210D8)($at)
    /* B0E8C 800C068C 06000924 */  addiu      $t1, $zero, 0x6
    /* B0E90 800C0690 1280013C */  lui        $at, %hi(D_801210D0)
    /* B0E94 800C0694 D01036AC */  sw         $s6, %lo(D_801210D0)($at)
    /* B0E98 800C0698 1280013C */  lui        $at, %hi(D_801210D4)
    /* B0E9C 800C069C D41022AC */  sw         $v0, %lo(D_801210D4)($at)
    /* B0EA0 800C06A0 1280013C */  lui        $at, %hi(D_801210CC)
    /* B0EA4 800C06A4 CC1029AC */  sw         $t1, %lo(D_801210CC)($at)
    /* B0EA8 800C06A8 F53A030C */  jal        func_800CEBD4
    /* B0EAC 800C06AC 63000624 */   addiu     $a2, $zero, 0x63
    /* B0EB0 800C06B0 FFFF6426 */  addiu      $a0, $s3, -0x1
    /* B0EB4 800C06B4 21280000 */  addu       $a1, $zero, $zero
    /* B0EB8 800C06B8 1280013C */  lui        $at, %hi(D_801210C0)
    /* B0EBC 800C06BC C01022AC */  sw         $v0, %lo(D_801210C0)($at)
    /* B0EC0 800C06C0 F53A030C */  jal        func_800CEBD4
    /* B0EC4 800C06C4 E7030624 */   addiu     $a2, $zero, 0x3E7
    /* B0EC8 800C06C8 21280000 */  addu       $a1, $zero, $zero
    /* B0ECC 800C06CC 1280043C */  lui        $a0, %hi(D_801210C8)
    /* B0ED0 800C06D0 C810848C */  lw         $a0, %lo(D_801210C8)($a0)
    /* B0ED4 800C06D4 F53A030C */  jal        func_800CEBD4
    /* B0ED8 800C06D8 21304000 */   addu      $a2, $v0, $zero
    /* B0EDC 800C06DC 2400A427 */  addiu      $a0, $sp, 0x24
    /* B0EE0 800C06E0 1280033C */  lui        $v1, %hi(D_80121110)
    /* B0EE4 800C06E4 1011638C */  lw         $v1, %lo(D_80121110)($v1)
    /* B0EE8 800C06E8 21B84000 */  addu       $s7, $v0, $zero
    /* B0EEC 800C06EC 1280013C */  lui        $at, %hi(D_801210C8)
    /* B0EF0 800C06F0 C81037AC */  sw         $s7, %lo(D_801210C8)($at)
    /* B0EF4 800C06F4 0100632C */  sltiu      $v1, $v1, 0x1
    /* B0EF8 800C06F8 4000A3AF */  sw         $v1, 0x40($sp)
  .L800C06FC:
    /* B0EFC 800C06FC 000080AC */  sw         $zero, 0x0($a0)
    /* B0F00 800C0700 FFFF5226 */  addiu      $s2, $s2, -0x1
    /* B0F04 800C0704 FDFF4106 */  bgez       $s2, .L800C06FC
    /* B0F08 800C0708 FCFF8424 */   addiu     $a0, $a0, -0x4
    /* B0F0C 800C070C 21880000 */  addu       $s1, $zero, $zero
    /* B0F10 800C0710 2800A927 */  addiu      $t1, $sp, 0x28
    /* B0F14 800C0714 4800A9AF */  sw         $t1, 0x48($sp)
    /* B0F18 800C0718 21F00000 */  addu       $fp, $zero, $zero
    /* B0F1C 800C071C 1280133C */  lui        $s3, %hi(D_8011A342)
    /* B0F20 800C0720 42A37326 */  addiu      $s3, $s3, %lo(D_8011A342)
  .L800C0724:
    /* B0F24 800C0724 1C00222A */  slti       $v0, $s1, 0x1C
    /* B0F28 800C0728 D9004010 */  beqz       $v0, .L800C0A90
    /* B0F2C 800C072C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* B0F30 800C0730 00006386 */  lh         $v1, 0x0($s3)
    /* B0F34 800C0734 00000000 */  nop
    /* B0F38 800C0738 D1006210 */  beq        $v1, $v0, .L800C0A80
    /* B0F3C 800C073C 4992023C */   lui       $v0, (0x92492493 >> 16)
    /* B0F40 800C0740 93244234 */  ori        $v0, $v0, (0x92492493 & 0xFFFF)
    /* B0F44 800C0744 18002202 */  mult       $s1, $v0
    /* B0F48 800C0748 C31F1100 */  sra        $v1, $s1, 31
    /* B0F4C 800C074C 10480000 */  mfhi       $t1
    /* B0F50 800C0750 21103101 */  addu       $v0, $t1, $s1
    /* B0F54 800C0754 83100200 */  sra        $v0, $v0, 2
    /* B0F58 800C0758 23904300 */  subu       $s2, $v0, $v1
    /* B0F5C 800C075C 80801200 */  sll        $s0, $s2, 2
    /* B0F60 800C0760 1800A227 */  addiu      $v0, $sp, 0x18
    /* B0F64 800C0764 21180202 */  addu       $v1, $s0, $v0
    /* B0F68 800C0768 0000628C */  lw         $v0, 0x0($v1)
    /* B0F6C 800C076C 00000000 */  nop
    /* B0F70 800C0770 2A004014 */  bnez       $v0, .L800C081C
    /* B0F74 800C0774 27003626 */   addiu     $s6, $s1, 0x27
    /* B0F78 800C0778 01000224 */  addiu      $v0, $zero, 0x1
    /* B0F7C 800C077C 000062AC */  sw         $v0, 0x0($v1)
    /* B0F80 800C0780 2A109702 */  slt        $v0, $s4, $s7
    /* B0F84 800C0784 24004014 */  bnez       $v0, .L800C0818
    /* B0F88 800C0788 0600E226 */   addiu     $v0, $s7, 0x6
    /* B0F8C 800C078C 2A108202 */  slt        $v0, $s4, $v0
    /* B0F90 800C0790 21004010 */  beqz       $v0, .L800C0818
    /* B0F94 800C0794 00000000 */   nop
    /* B0F98 800C0798 4000A98F */  lw         $t1, 0x40($sp)
    /* B0F9C 800C079C 00000000 */  nop
    /* B0FA0 800C07A0 1C002011 */  beqz       $t1, .L800C0814
    /* B0FA4 800C07A4 00000000 */   nop
    /* B0FA8 800C07A8 3E0C040C */  jal        func_801030F8
    /* B0FAC 800C07AC 01000424 */   addiu     $a0, $zero, 0x1
    /* B0FB0 800C07B0 21101202 */  addu       $v0, $s0, $s2
    /* B0FB4 800C07B4 C0100200 */  sll        $v0, $v0, 3
    /* B0FB8 800C07B8 1280033C */  lui        $v1, %hi(D_80121138)
    /* B0FBC 800C07BC 38116324 */  addiu      $v1, $v1, %lo(D_80121138)
    /* B0FC0 800C07C0 21804300 */  addu       $s0, $v0, $v1
    /* B0FC4 800C07C4 21280002 */  addu       $a1, $s0, $zero
    /* B0FC8 800C07C8 4800A48F */  lw         $a0, 0x48($sp)
    /* B0FCC 800C07CC 7FE6020C */  jal        func_800B99FC
    /* B0FD0 800C07D0 2130A002 */   addu      $a2, $s5, $zero
    /* B0FD4 800C07D4 1280043C */  lui        $a0, %hi(D_80121110)
    /* B0FD8 800C07D8 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* B0FDC 800C07DC 00000000 */  nop
    /* B0FE0 800C07E0 09008014 */  bnez       $a0, .L800C0808
    /* B0FE4 800C07E4 21280002 */   addu      $a1, $s0, $zero
    /* B0FE8 800C07E8 21200002 */  addu       $a0, $s0, $zero
    /* B0FEC 800C07EC 4800A58F */  lw         $a1, 0x48($sp)
    /* B0FF0 800C07F0 DC0F040C */  jal        func_80103F70
    /* B0FF4 800C07F4 10000624 */   addiu     $a2, $zero, 0x10
    /* B0FF8 800C07F8 1280013C */  lui        $at, %hi(D_80121110)
    /* B0FFC 800C07FC 101122AC */  sw         $v0, %lo(D_80121110)($at)
    /* B1000 800C0800 06020308 */  j          .L800C0818
    /* B1004 800C0804 2000B526 */   addiu     $s5, $s5, 0x20
  .L800C0808:
    /* B1008 800C0808 4800A68F */  lw         $a2, 0x48($sp)
    /* B100C 800C080C 5511040C */  jal        func_80104554
    /* B1010 800C0810 10000724 */   addiu     $a3, $zero, 0x10
  .L800C0814:
    /* B1014 800C0814 2000B526 */  addiu      $s5, $s5, 0x20
  .L800C0818:
    /* B1018 800C0818 01009426 */  addiu      $s4, $s4, 0x1
  .L800C081C:
    /* B101C 800C081C 2A109702 */  slt        $v0, $s4, $s7
    /* B1020 800C0820 96004014 */  bnez       $v0, .L800C0A7C
    /* B1024 800C0824 0600E226 */   addiu     $v0, $s7, 0x6
    /* B1028 800C0828 2A108202 */  slt        $v0, $s4, $v0
    /* B102C 800C082C 93004010 */  beqz       $v0, .L800C0A7C
    /* B1030 800C0830 00000000 */   nop
    /* B1034 800C0834 1280043C */  lui        $a0, %hi(D_80121340)
    /* B1038 800C0838 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B103C 800C083C CB1A030C */  jal        func_800C6B2C
    /* B1040 800C0840 00000000 */   nop
    /* B1044 800C0844 C0101600 */  sll        $v0, $s6, 3
    /* B1048 800C0848 1180013C */  lui        $at, %hi(D_8010D064)
    /* B104C 800C084C 21082200 */  addu       $at, $at, $v0
    /* B1050 800C0850 64D0258C */  lw         $a1, %lo(D_8010D064)($at)
    /* B1054 800C0854 1280043C */  lui        $a0, %hi(D_80121340)
    /* B1058 800C0858 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B105C 800C085C 651B030C */  jal        func_800C6D94
    /* B1060 800C0860 00000000 */   nop
    /* B1064 800C0864 00006286 */  lh         $v0, 0x0($s3)
    /* B1068 800C0868 00000000 */  nop
    /* B106C 800C086C 0F004104 */  bgez       $v0, .L800C08AC
    /* B1070 800C0870 00000000 */   nop
    /* B1074 800C0874 1280043C */  lui        $a0, %hi(D_80121340)
    /* B1078 800C0878 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B107C 800C087C 151B030C */  jal        func_800C6C54
    /* B1080 800C0880 00000000 */   nop
    /* B1084 800C0884 1280043C */  lui        $a0, %hi(D_80121340)
    /* B1088 800C0888 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B108C 800C088C 731B030C */  jal        func_800C6DCC
    /* B1090 800C0890 AC000524 */   addiu     $a1, $zero, 0xAC
    /* B1094 800C0894 1280043C */  lui        $a0, %hi(D_80121340)
    /* B1098 800C0898 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B109C 800C089C 1F1B030C */  jal        func_800C6C7C
    /* B10A0 800C08A0 00000000 */   nop
    /* B10A4 800C08A4 51020308 */  j          .L800C0944
    /* B10A8 800C08A8 21180000 */   addu      $v1, $zero, $zero
  .L800C08AC:
    /* B10AC 800C08AC 1280043C */  lui        $a0, %hi(D_80121340)
    /* B10B0 800C08B0 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B10B4 800C08B4 1680053C */  lui        $a1, %hi(D_8015900C)
    /* B10B8 800C08B8 0C90A524 */  addiu      $a1, $a1, %lo(D_8015900C)
    /* B10BC 800C08BC 9987030C */  jal        func_800E1E64
    /* B10C0 800C08C0 00000000 */   nop
    /* B10C4 800C08C4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B10C8 800C08C8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B10CC 800C08CC 00006286 */  lh         $v0, 0x0($s3)
    /* B10D0 800C08D0 1180053C */  lui        $a1, %hi(D_80113EF2)
    /* B10D4 800C08D4 F23EA524 */  addiu      $a1, $a1, %lo(D_80113EF2)
    /* B10D8 800C08D8 40800200 */  sll        $s0, $v0, 1
    /* B10DC 800C08DC 21800202 */  addu       $s0, $s0, $v0
    /* B10E0 800C08E0 80801000 */  sll        $s0, $s0, 2
    /* B10E4 800C08E4 23800202 */  subu       $s0, $s0, $v0
    /* B10E8 800C08E8 C0801000 */  sll        $s0, $s0, 3
    /* B10EC 800C08EC 9987030C */  jal        func_800E1E64
    /* B10F0 800C08F0 21280502 */   addu      $a1, $s0, $a1
    /* B10F4 800C08F4 1280043C */  lui        $a0, %hi(D_80121340)
    /* B10F8 800C08F8 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B10FC 800C08FC 151B030C */  jal        func_800C6C54
    /* B1100 800C0900 00000000 */   nop
    /* B1104 800C0904 1180013C */  lui        $at, %hi(D_80113ED8)
    /* B1108 800C0908 21083000 */  addu       $at, $at, $s0
    /* B110C 800C090C D83E2480 */  lb         $a0, %lo(D_80113ED8)($at)
    /* B1110 800C0910 8A54020C */  jal        func_80095228
    /* B1114 800C0914 00000000 */   nop
    /* B1118 800C0918 1280043C */  lui        $a0, %hi(D_80121340)
    /* B111C 800C091C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B1120 800C0920 9987030C */  jal        func_800E1E64
    /* B1124 800C0924 21284000 */   addu      $a1, $v0, $zero
    /* B1128 800C0928 1280043C */  lui        $a0, %hi(D_80121340)
    /* B112C 800C092C 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B1130 800C0930 1F1B030C */  jal        func_800C6C7C
    /* B1134 800C0934 00000000 */   nop
    /* B1138 800C0938 1180013C */  lui        $at, %hi(D_80113ED8)
    /* B113C 800C093C 21083000 */  addu       $at, $at, $s0
    /* B1140 800C0940 D83E2380 */  lb         $v1, %lo(D_80113ED8)($at)
  .L800C0944:
    /* B1144 800C0944 00000000 */  nop
    /* B1148 800C0948 13006010 */  beqz       $v1, .L800C0998
    /* B114C 800C094C 40100300 */   sll       $v0, $v1, 1
    /* B1150 800C0950 21104300 */  addu       $v0, $v0, $v1
    /* B1154 800C0954 80100200 */  sll        $v0, $v0, 2
    /* B1158 800C0958 23104300 */  subu       $v0, $v0, $v1
    /* B115C 800C095C 00110200 */  sll        $v0, $v0, 4
    /* B1160 800C0960 23104300 */  subu       $v0, $v0, $v1
    /* B1164 800C0964 C0100200 */  sll        $v0, $v0, 3
    /* B1168 800C0968 1180013C */  lui        $at, %hi(D_80117698)
    /* B116C 800C096C 21082200 */  addu       $at, $at, $v0
    /* B1170 800C0970 98762384 */  lh         $v1, %lo(D_80117698)($at)
    /* B1174 800C0974 00000000 */  nop
    /* B1178 800C0978 40100300 */  sll        $v0, $v1, 1
    /* B117C 800C097C 21104300 */  addu       $v0, $v0, $v1
    /* B1180 800C0980 00110200 */  sll        $v0, $v0, 4
    /* B1184 800C0984 1180013C */  lui        $at, %hi(D_80116AD6)
    /* B1188 800C0988 21082200 */  addu       $at, $at, $v0
    /* B118C 800C098C D66A2284 */  lh         $v0, %lo(D_80116AD6)($at)
    /* B1190 800C0990 67020308 */  j          .L800C099C
    /* B1194 800C0994 C0100200 */   sll       $v0, $v0, 3
  .L800C0998:
    /* B1198 800C0998 21100000 */  addu       $v0, $zero, $zero
  .L800C099C:
    /* B119C 800C099C 1180013C */  lui        $at, %hi(D_80117654)
    /* B11A0 800C09A0 21082200 */  addu       $at, $at, $v0
    /* B11A4 800C09A4 54762484 */  lh         $a0, %lo(D_80117654)($at)
    /* B11A8 800C09A8 3E0C040C */  jal        func_801030F8
    /* B11AC 800C09AC 00000000 */   nop
    /* B11B0 800C09B0 1280043C */  lui        $a0, %hi(D_80121340)
    /* B11B4 800C09B4 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B11B8 800C09B8 AD87030C */  jal        func_800E1EB4
    /* B11BC 800C09BC 00000000 */   nop
    /* B11C0 800C09C0 3800A427 */  addiu      $a0, $sp, 0x38
    /* B11C4 800C09C4 1380053C */  lui        $a1, %hi(D_80132CC4)
    /* B11C8 800C09C8 C42CA524 */  addiu      $a1, $a1, %lo(D_80132CC4)
    /* B11CC 800C09CC 2128C503 */  addu       $a1, $fp, $a1
    /* B11D0 800C09D0 1280063C */  lui        $a2, %hi(D_80120D84)
    /* B11D4 800C09D4 840DC624 */  addiu      $a2, $a2, %lo(D_80120D84)
    /* B11D8 800C09D8 40180200 */  sll        $v1, $v0, 1
    /* B11DC 800C09DC 21186200 */  addu       $v1, $v1, $v0
    /* B11E0 800C09E0 40180300 */  sll        $v1, $v1, 1
    /* B11E4 800C09E4 14006324 */  addiu      $v1, $v1, 0x14
    /* B11E8 800C09E8 43180300 */  sra        $v1, $v1, 1
    /* B11EC 800C09EC A0000224 */  addiu      $v0, $zero, 0xA0
    /* B11F0 800C09F0 23804300 */  subu       $s0, $v0, $v1
    /* B11F4 800C09F4 003C1000 */  sll        $a3, $s0, 16
    /* B11F8 800C09F8 033C0700 */  sra        $a3, $a3, 16
    /* B11FC 800C09FC 00141500 */  sll        $v0, $s5, 16
    /* B1200 800C0A00 03140200 */  sra        $v0, $v0, 16
    /* B1204 800C0A04 89EE030C */  jal        func_800FBA24
    /* B1208 800C0A08 1000A2AF */   sw        $v0, 0x10($sp)
    /* B120C 800C0A0C 4000A98F */  lw         $t1, 0x40($sp)
    /* B1210 800C0A10 00000000 */  nop
    /* B1214 800C0A14 18002011 */  beqz       $t1, .L800C0A78
    /* B1218 800C0A18 14000226 */   addiu     $v0, $s0, 0x14
    /* B121C 800C0A1C 1280043C */  lui        $a0, %hi(D_80121110)
    /* B1220 800C0A20 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* B1224 800C0A24 2800A2A7 */  sh         $v0, 0x28($sp)
    /* B1228 800C0A28 30010224 */  addiu      $v0, $zero, 0x130
    /* B122C 800C0A2C 2C00A2A7 */  sh         $v0, 0x2C($sp)
    /* B1230 800C0A30 0C00A226 */  addiu      $v0, $s5, 0xC
    /* B1234 800C0A34 2A00B5A7 */  sh         $s5, 0x2A($sp)
    /* B1238 800C0A38 0A008014 */  bnez       $a0, .L800C0A64
    /* B123C 800C0A3C 2E00A2A7 */   sh        $v0, 0x2E($sp)
    /* B1240 800C0A40 1280043C */  lui        $a0, %hi(D_80121340)
    /* B1244 800C0A44 40138424 */  addiu      $a0, $a0, %lo(D_80121340)
    /* B1248 800C0A48 2800A527 */  addiu      $a1, $sp, 0x28
    /* B124C 800C0A4C DC0F040C */  jal        func_80103F70
    /* B1250 800C0A50 10000624 */   addiu     $a2, $zero, 0x10
    /* B1254 800C0A54 1280013C */  lui        $at, %hi(D_80121110)
    /* B1258 800C0A58 101122AC */  sw         $v0, %lo(D_80121110)($at)
    /* B125C 800C0A5C 9F020308 */  j          .L800C0A7C
    /* B1260 800C0A60 2000B526 */   addiu     $s5, $s5, 0x20
  .L800C0A64:
    /* B1264 800C0A64 1280053C */  lui        $a1, %hi(D_80121340)
    /* B1268 800C0A68 4013A524 */  addiu      $a1, $a1, %lo(D_80121340)
    /* B126C 800C0A6C 2800A627 */  addiu      $a2, $sp, 0x28
    /* B1270 800C0A70 5511040C */  jal        func_80104554
    /* B1274 800C0A74 10000724 */   addiu     $a3, $zero, 0x10
  .L800C0A78:
    /* B1278 800C0A78 2000B526 */  addiu      $s5, $s5, 0x20
  .L800C0A7C:
    /* B127C 800C0A7C 01009426 */  addiu      $s4, $s4, 0x1
  .L800C0A80:
    /* B1280 800C0A80 9400DE27 */  addiu      $fp, $fp, 0x94
    /* B1284 800C0A84 02007326 */  addiu      $s3, $s3, 0x2
    /* B1288 800C0A88 C9010308 */  j          .L800C0724
    /* B128C 800C0A8C 01003126 */   addiu     $s1, $s1, 0x1
  .L800C0A90:
    /* B1290 800C0A90 1280043C */  lui        $a0, %hi(D_80121110)
    /* B1294 800C0A94 1011848C */  lw         $a0, %lo(D_80121110)($a0)
    /* B1298 800C0A98 7D11040C */  jal        func_801045F4
    /* B129C 800C0A9C 00000000 */   nop
    /* B12A0 800C0AA0 1280013C */  lui        $at, %hi(D_80121136)
    /* B12A4 800C0AA4 361134A4 */  sh         $s4, %lo(D_80121136)($at)
    /* B12A8 800C0AA8 3E0C040C */  jal        func_801030F8
    /* B12AC 800C0AAC 01000424 */   addiu     $a0, $zero, 0x1
    /* B12B0 800C0AB0 7400BF8F */  lw         $ra, 0x74($sp)
    /* B12B4 800C0AB4 7000BE8F */  lw         $fp, 0x70($sp)
    /* B12B8 800C0AB8 6C00B78F */  lw         $s7, 0x6C($sp)
    /* B12BC 800C0ABC 6800B68F */  lw         $s6, 0x68($sp)
    /* B12C0 800C0AC0 6400B58F */  lw         $s5, 0x64($sp)
    /* B12C4 800C0AC4 6000B48F */  lw         $s4, 0x60($sp)
    /* B12C8 800C0AC8 5C00B38F */  lw         $s3, 0x5C($sp)
    /* B12CC 800C0ACC 5800B28F */  lw         $s2, 0x58($sp)
    /* B12D0 800C0AD0 5400B18F */  lw         $s1, 0x54($sp)
    /* B12D4 800C0AD4 5000B08F */  lw         $s0, 0x50($sp)
    /* B12D8 800C0AD8 7800BD27 */  addiu      $sp, $sp, 0x78
    /* B12DC 800C0ADC 0800E003 */  jr         $ra
    /* B12E0 800C0AE0 00000000 */   nop
endlabel func_800C03E4
