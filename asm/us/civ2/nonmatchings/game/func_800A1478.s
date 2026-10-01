.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A1478, 0x4C

glabel func_800A1478
    /* 91C78 800A1478 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 91C7C 800A147C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 91C80 800A1480 35DE030C */  jal        func_800F78D4
    /* 91C84 800A1484 00000000 */   nop
    /* 91C88 800A1488 02004014 */  bnez       $v0, .L800A1494
    /* 91C8C 800A148C D4FF4424 */   addiu     $a0, $v0, -0x2C
    /* 91C90 800A1490 21200000 */  addu       $a0, $zero, $zero
  .L800A1494:
    /* 91C94 800A1494 28028584 */  lh         $a1, 0x228($a0)
    /* 91C98 800A1498 00000000 */  nop
    /* 91C9C 800A149C C0280500 */  sll        $a1, $a1, 3
    /* 91CA0 800A14A0 1280023C */  lui        $v0, %hi(D_8011A5A6)
    /* 91CA4 800A14A4 A6A54224 */  addiu      $v0, $v0, %lo(D_8011A5A6)
    /* 91CA8 800A14A8 2C008424 */  addiu      $a0, $a0, 0x2C
    /* 91CAC 800A14AC 2DEC030C */  jal        func_800FB0B4
    /* 91CB0 800A14B0 2128A200 */   addu      $a1, $a1, $v0
    /* 91CB4 800A14B4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 91CB8 800A14B8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 91CBC 800A14BC 0800E003 */  jr         $ra
    /* 91CC0 800A14C0 00000000 */   nop
endlabel func_800A1478
