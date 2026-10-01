.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A2444, 0x78

glabel func_800A2444
    /* 92C44 800A2444 1800848C */  lw         $a0, 0x18($a0)
    /* 92C48 800A2448 00000000 */  nop
    /* 92C4C 800A244C 19008010 */  beqz       $a0, .L800A24B4
    /* 92C50 800A2450 21300000 */   addu      $a2, $zero, $zero
  .L800A2454:
    /* 92C54 800A2454 0400828C */  lw         $v0, 0x4($a0)
    /* 92C58 800A2458 00000000 */  nop
    /* 92C5C 800A245C 05004514 */  bne        $v0, $a1, .L800A2474
    /* 92C60 800A2460 00000000 */   nop
    /* 92C64 800A2464 2D890208 */  j          .L800A24B4
    /* 92C68 800A2468 21308000 */   addu      $a2, $a0, $zero
  .L800A246C:
    /* 92C6C 800A246C 29890208 */  j          .L800A24A4
    /* 92C70 800A2470 21306000 */   addu      $a2, $v1, $zero
  .L800A2474:
    /* 92C74 800A2474 1800838C */  lw         $v1, 0x18($a0)
    /* 92C78 800A2478 00000000 */  nop
    /* 92C7C 800A247C 09006010 */  beqz       $v1, .L800A24A4
    /* 92C80 800A2480 00000000 */   nop
  .L800A2484:
    /* 92C84 800A2484 0400628C */  lw         $v0, 0x4($v1)
    /* 92C88 800A2488 00000000 */  nop
    /* 92C8C 800A248C F7FF4510 */  beq        $v0, $a1, .L800A246C
    /* 92C90 800A2490 00000000 */   nop
    /* 92C94 800A2494 1000638C */  lw         $v1, 0x10($v1)
    /* 92C98 800A2498 00000000 */  nop
    /* 92C9C 800A249C F9FF6014 */  bnez       $v1, .L800A2484
    /* 92CA0 800A24A0 00000000 */   nop
  .L800A24A4:
    /* 92CA4 800A24A4 1000848C */  lw         $a0, 0x10($a0)
    /* 92CA8 800A24A8 00000000 */  nop
    /* 92CAC 800A24AC E9FF8014 */  bnez       $a0, .L800A2454
    /* 92CB0 800A24B0 00000000 */   nop
  .L800A24B4:
    /* 92CB4 800A24B4 0800E003 */  jr         $ra
    /* 92CB8 800A24B8 2110C000 */   addu      $v0, $a2, $zero
endlabel func_800A2444
