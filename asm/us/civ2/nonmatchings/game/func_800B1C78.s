.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1C78, 0x12C

glabel func_800B1C78
    /* A2478 800B1C78 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* A247C 800B1C7C 2000BFAF */  sw         $ra, 0x20($sp)
    /* A2480 800B1C80 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* A2484 800B1C84 1800B2AF */  sw         $s2, 0x18($sp)
    /* A2488 800B1C88 1400B1AF */  sw         $s1, 0x14($sp)
    /* A248C 800B1C8C 1000B0AF */  sw         $s0, 0x10($sp)
    /* A2490 800B1C90 21808000 */  addu       $s0, $a0, $zero
    /* A2494 800B1C94 2190A000 */  addu       $s2, $a1, $zero
    /* A2498 800B1C98 3800B38F */  lw         $s3, 0x38($sp)
    /* A249C 800B1C9C 3000028E */  lw         $v0, 0x30($s0)
    /* A24A0 800B1CA0 00000000 */  nop
    /* A24A4 800B1CA4 20004230 */  andi       $v0, $v0, 0x20
    /* A24A8 800B1CA8 0A004010 */  beqz       $v0, .L800B1CD4
    /* A24AC 800B1CAC 2188E000 */   addu      $s1, $a3, $zero
    /* A24B0 800B1CB0 BCC5020C */  jal        func_800B16F0
    /* A24B4 800B1CB4 00000000 */   nop
    /* A24B8 800B1CB8 02C5020C */  jal        func_800B1408
    /* A24BC 800B1CBC 21200002 */   addu      $a0, $s0, $zero
    /* A24C0 800B1CC0 A6010596 */  lhu        $a1, 0x1A6($s0)
    /* A24C4 800B1CC4 F0C4020C */  jal        func_800B13C0
    /* A24C8 800B1CC8 21200002 */   addu      $a0, $s0, $zero
    /* A24CC 800B1CCC 39C70208 */  j          .L800B1CE4
    /* A24D0 800B1CD0 00000000 */   nop
  .L800B1CD4:
    /* A24D4 800B1CD4 98010426 */  addiu      $a0, $s0, 0x198
    /* A24D8 800B1CD8 A6010696 */  lhu        $a2, 0x1A6($s0)
    /* A24DC 800B1CDC 8B52020C */  jal        func_80094A2C
    /* A24E0 800B1CE0 09000524 */   addiu     $a1, $zero, 0x9
  .L800B1CE4:
    /* A24E4 800B1CE4 B8C7020C */  jal        func_800B1EE0
    /* A24E8 800B1CE8 21200002 */   addu      $a0, $s0, $zero
    /* A24EC 800B1CEC 980002AE */  sw         $v0, 0x98($s0)
    /* A24F0 800B1CF0 000012AE */  sw         $s2, 0x0($s0)
    /* A24F4 800B1CF4 BC0000AE */  sw         $zero, 0xBC($s0)
    /* A24F8 800B1CF8 19002012 */  beqz       $s1, .L800B1D60
    /* A24FC 800B1CFC 300013AE */   sw        $s3, 0x30($s0)
    /* A2500 800B1D00 00002286 */  lh         $v0, 0x0($s1)
    /* A2504 800B1D04 00000000 */  nop
    /* A2508 800B1D08 CC0002AE */  sw         $v0, 0xCC($s0)
    /* A250C 800B1D0C 02002286 */  lh         $v0, 0x2($s1)
    /* A2510 800B1D10 00000000 */  nop
    /* A2514 800B1D14 D00002AE */  sw         $v0, 0xD0($s0)
    /* A2518 800B1D18 04002586 */  lh         $a1, 0x4($s1)
    /* A251C 800B1D1C 00002286 */  lh         $v0, 0x0($s1)
    /* A2520 800B1D20 00000000 */  nop
    /* A2524 800B1D24 2328A200 */  subu       $a1, $a1, $v0
    /* A2528 800B1D28 002C0500 */  sll        $a1, $a1, 16
    /* A252C 800B1D2C 21200002 */  addu       $a0, $s0, $zero
    /* A2530 800B1D30 39C8020C */  jal        func_800B20E4
    /* A2534 800B1D34 032C0500 */   sra       $a1, $a1, 16
    /* A2538 800B1D38 06002586 */  lh         $a1, 0x6($s1)
    /* A253C 800B1D3C 02002286 */  lh         $v0, 0x2($s1)
    /* A2540 800B1D40 00000000 */  nop
    /* A2544 800B1D44 2328A200 */  subu       $a1, $a1, $v0
    /* A2548 800B1D48 002C0500 */  sll        $a1, $a1, 16
    /* A254C 800B1D4C 21200002 */  addu       $a0, $s0, $zero
    /* A2550 800B1D50 58C8020C */  jal        func_800B2160
    /* A2554 800B1D54 032C0500 */   sra       $a1, $a1, 16
    /* A2558 800B1D58 5BC70208 */  j          .L800B1D6C
    /* A255C 800B1D5C 00000000 */   nop
  .L800B1D60:
    /* A2560 800B1D60 21200002 */  addu       $a0, $s0, $zero
    /* A2564 800B1D64 39C8020C */  jal        func_800B20E4
    /* A2568 800B1D68 B8010524 */   addiu     $a1, $zero, 0x1B8
  .L800B1D6C:
    /* A256C 800B1D6C 05004012 */  beqz       $s2, .L800B1D84
    /* A2570 800B1D70 00000000 */   nop
    /* A2574 800B1D74 3000028E */  lw         $v0, 0x30($s0)
    /* A2578 800B1D78 00000000 */  nop
    /* A257C 800B1D7C 10004234 */  ori        $v0, $v0, 0x10
    /* A2580 800B1D80 300002AE */  sw         $v0, 0x30($s0)
  .L800B1D84:
    /* A2584 800B1D84 2000BF8F */  lw         $ra, 0x20($sp)
    /* A2588 800B1D88 1C00B38F */  lw         $s3, 0x1C($sp)
    /* A258C 800B1D8C 1800B28F */  lw         $s2, 0x18($sp)
    /* A2590 800B1D90 1400B18F */  lw         $s1, 0x14($sp)
    /* A2594 800B1D94 1000B08F */  lw         $s0, 0x10($sp)
    /* A2598 800B1D98 2800BD27 */  addiu      $sp, $sp, 0x28
    /* A259C 800B1D9C 0800E003 */  jr         $ra
    /* A25A0 800B1DA0 00000000 */   nop
endlabel func_800B1C78
