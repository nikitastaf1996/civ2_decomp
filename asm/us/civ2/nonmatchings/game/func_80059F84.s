.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80059F84, 0x138

glabel func_80059F84
    /* 4A784 80059F84 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4A788 80059F88 1400BFAF */  sw         $ra, 0x14($sp)
    /* 4A78C 80059F8C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4A790 80059F90 21808000 */  addu       $s0, $a0, $zero
    /* 4A794 80059F94 1680013C */  lui        $at, %hi(D_80158872)
    /* 4A798 80059F98 728820A0 */  sb         $zero, %lo(D_80158872)($at)
    /* 4A79C 80059F9C 40101000 */  sll        $v0, $s0, 1
    /* 4A7A0 80059FA0 21105000 */  addu       $v0, $v0, $s0
    /* 4A7A4 80059FA4 80100200 */  sll        $v0, $v0, 2
    /* 4A7A8 80059FA8 21105000 */  addu       $v0, $v0, $s0
    /* 4A7AC 80059FAC 40100200 */  sll        $v0, $v0, 1
    /* 4A7B0 80059FB0 1180013C */  lui        $at, %hi(D_8010D6BB)
    /* 4A7B4 80059FB4 21082200 */  addu       $at, $at, $v0
    /* 4A7B8 80059FB8 BBD62380 */  lb         $v1, %lo(D_8010D6BB)($at)
    /* 4A7BC 80059FBC 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 4A7C0 80059FC0 21082200 */  addu       $at, $at, $v0
    /* 4A7C4 80059FC4 C3D62280 */  lb         $v0, %lo(D_8010D6C3)($at)
    /* 4A7C8 80059FC8 00000000 */  nop
    /* 4A7CC 80059FCC 10004230 */  andi       $v0, $v0, 0x10
    /* 4A7D0 80059FD0 05004010 */  beqz       $v0, .L80059FE8
    /* 4A7D4 80059FD4 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 4A7D8 80059FD8 1680013C */  lui        $at, %hi(D_80158AC4)
    /* 4A7DC 80059FDC C48A22AC */  sw         $v0, %lo(D_80158AC4)($at)
    /* 4A7E0 80059FE0 FC670108 */  j          .L80059FF0
    /* 4A7E4 80059FE4 00000000 */   nop
  .L80059FE8:
    /* 4A7E8 80059FE8 1680013C */  lui        $at, %hi(D_80158AC4)
    /* 4A7EC 80059FEC C48A23AC */  sw         $v1, %lo(D_80158AC4)($at)
  .L80059FF0:
    /* 4A7F0 80059FF0 2A99020C */  jal        func_800A64A8
    /* 4A7F4 80059FF4 21200002 */   addu      $a0, $s0, $zero
    /* 4A7F8 80059FF8 21284000 */  addu       $a1, $v0, $zero
    /* 4A7FC 80059FFC FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4A800 8005A000 1680013C */  lui        $at, %hi(D_80158AC4)
    /* 4A804 8005A004 C48A22AC */  sw         $v0, %lo(D_80158AC4)($at)
    /* 4A808 8005A008 08000224 */  addiu      $v0, $zero, 0x8
    /* 4A80C 8005A00C 2600A210 */  beq        $a1, $v0, .L8005A0A8
    /* 4A810 8005A010 00000000 */   nop
    /* 4A814 8005A014 2100A104 */  bgez       $a1, .L8005A09C
    /* 4A818 8005A018 00000000 */   nop
    /* 4A81C 8005A01C 2200A210 */  beq        $a1, $v0, .L8005A0A8
    /* 4A820 8005A020 40101000 */   sll       $v0, $s0, 1
    /* 4A824 8005A024 21105000 */  addu       $v0, $v0, $s0
    /* 4A828 8005A028 80100200 */  sll        $v0, $v0, 2
    /* 4A82C 8005A02C 21105000 */  addu       $v0, $v0, $s0
    /* 4A830 8005A030 40200200 */  sll        $a0, $v0, 1
    /* 4A834 8005A034 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 4A838 8005A038 1180013C */  lui        $at, %hi(D_8010D6C3)
    /* 4A83C 8005A03C 21082400 */  addu       $at, $at, $a0
    /* 4A840 8005A040 C3D622A0 */  sb         $v0, %lo(D_8010D6C3)($at)
    /* 4A844 8005A044 1180013C */  lui        $at, %hi(D_8010D6BA)
    /* 4A848 8005A048 21082400 */  addu       $at, $at, $a0
    /* 4A84C 8005A04C BAD62390 */  lbu        $v1, %lo(D_8010D6BA)($at)
    /* 4A850 8005A050 00000000 */  nop
    /* 4A854 8005A054 80100300 */  sll        $v0, $v1, 2
    /* 4A858 8005A058 21104300 */  addu       $v0, $v0, $v1
    /* 4A85C 8005A05C 80100200 */  sll        $v0, $v0, 2
    /* 4A860 8005A060 1180013C */  lui        $at, %hi(D_8010D28E)
    /* 4A864 8005A064 21082200 */  addu       $at, $at, $v0
    /* 4A868 8005A068 8ED22380 */  lb         $v1, %lo(D_8010D28E)($at)
    /* 4A86C 8005A06C 04000224 */  addiu      $v0, $zero, 0x4
    /* 4A870 8005A070 0D006214 */  bne        $v1, $v0, .L8005A0A8
    /* 4A874 8005A074 00000000 */   nop
    /* 4A878 8005A078 1280023C */  lui        $v0, %hi(D_8011A262)
    /* 4A87C 8005A07C 62A24290 */  lbu        $v0, %lo(D_8011A262)($v0)
    /* 4A880 8005A080 00000000 */  nop
    /* 4A884 8005A084 07004230 */  andi       $v0, $v0, 0x7
    /* 4A888 8005A088 1180013C */  lui        $at, %hi(D_8010D6C1)
    /* 4A88C 8005A08C 21082400 */  addu       $at, $at, $a0
    /* 4A890 8005A090 C1D622A0 */  sb         $v0, %lo(D_8010D6C1)($at)
    /* 4A894 8005A094 2A680108 */  j          .L8005A0A8
    /* 4A898 8005A098 00000000 */   nop
  .L8005A09C:
    /* 4A89C 8005A09C 21200002 */  addu       $a0, $s0, $zero
    /* 4A8A0 8005A0A0 8504020C */  jal        func_80081214
    /* 4A8A4 8005A0A4 03000624 */   addiu     $a2, $zero, 0x3
  .L8005A0A8:
    /* 4A8A8 8005A0A8 1400BF8F */  lw         $ra, 0x14($sp)
    /* 4A8AC 8005A0AC 1000B08F */  lw         $s0, 0x10($sp)
    /* 4A8B0 8005A0B0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4A8B4 8005A0B4 0800E003 */  jr         $ra
    /* 4A8B8 8005A0B8 00000000 */   nop
endlabel func_80059F84
