.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A2364, 0x40

glabel func_800A2364
    /* 92B64 800A2364 1800838C */  lw         $v1, 0x18($a0)
    /* 92B68 800A2368 00000000 */  nop
    /* 92B6C 800A236C 0B006010 */  beqz       $v1, .L800A239C
    /* 92B70 800A2370 21300000 */   addu      $a2, $zero, $zero
  .L800A2374:
    /* 92B74 800A2374 0400628C */  lw         $v0, 0x4($v1)
    /* 92B78 800A2378 00000000 */  nop
    /* 92B7C 800A237C 03004514 */  bne        $v0, $a1, .L800A238C
    /* 92B80 800A2380 00000000 */   nop
    /* 92B84 800A2384 E7880208 */  j          .L800A239C
    /* 92B88 800A2388 21306000 */   addu      $a2, $v1, $zero
  .L800A238C:
    /* 92B8C 800A238C 1000638C */  lw         $v1, 0x10($v1)
    /* 92B90 800A2390 00000000 */  nop
    /* 92B94 800A2394 F7FF6014 */  bnez       $v1, .L800A2374
    /* 92B98 800A2398 00000000 */   nop
  .L800A239C:
    /* 92B9C 800A239C 0800E003 */  jr         $ra
    /* 92BA0 800A23A0 2110C000 */   addu      $v0, $a2, $zero
endlabel func_800A2364
