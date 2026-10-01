.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CAC4C, 0x58

glabel func_800CAC4C
    /* BB44C 800CAC4C 1280023C */  lui        $v0, %hi(D_8011A250)
    /* BB450 800CAC50 50A24294 */  lhu        $v0, %lo(D_8011A250)($v0)
    /* BB454 800CAC54 00000000 */  nop
    /* BB458 800CAC58 80004230 */  andi       $v0, $v0, 0x80
    /* BB45C 800CAC5C 0F004014 */  bnez       $v0, .L800CAC9C
    /* BB460 800CAC60 21100000 */   addu      $v0, $zero, $zero
    /* BB464 800CAC64 1280043C */  lui        $a0, %hi(D_8011A374)
    /* BB468 800CAC68 74A38424 */  addiu      $a0, $a0, %lo(D_8011A374)
    /* BB46C 800CAC6C 00008384 */  lh         $v1, 0x0($a0)
    /* BB470 800CAC70 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* BB474 800CAC74 07006214 */  bne        $v1, $v0, .L800CAC94
    /* BB478 800CAC78 21280000 */   addu      $a1, $zero, $zero
    /* BB47C 800CAC7C BDFF8280 */  lb         $v0, -0x43($a0)
    /* BB480 800CAC80 01FF8390 */  lbu        $v1, -0xFF($a0)
    /* BB484 800CAC84 00000000 */  nop
    /* BB488 800CAC88 24104300 */  and        $v0, $v0, $v1
    /* BB48C 800CAC8C 03004010 */  beqz       $v0, .L800CAC9C
    /* BB490 800CAC90 2110A000 */   addu      $v0, $a1, $zero
  .L800CAC94:
    /* BB494 800CAC94 01000524 */  addiu      $a1, $zero, 0x1
    /* BB498 800CAC98 2110A000 */  addu       $v0, $a1, $zero
  .L800CAC9C:
    /* BB49C 800CAC9C 0800E003 */  jr         $ra
    /* BB4A0 800CACA0 00000000 */   nop
endlabel func_800CAC4C
