.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007B72C, 0x6C

glabel func_8007B72C
    /* 6BF2C 8007B72C 18008004 */  bltz       $a0, .L8007B790
    /* 6BF30 8007B730 00000000 */   nop
    /* 6BF34 8007B734 40100400 */  sll        $v0, $a0, 1
    /* 6BF38 8007B738 21184000 */  addu       $v1, $v0, $zero
    /* 6BF3C 8007B73C DBED0108 */  j          .L8007B76C
    /* 6BF40 8007B740 21104400 */   addu      $v0, $v0, $a0
  .L8007B744:
    /* 6BF44 8007B744 21106400 */  addu       $v0, $v1, $a0
    /* 6BF48 8007B748 80100200 */  sll        $v0, $v0, 2
    /* 6BF4C 8007B74C 21104400 */  addu       $v0, $v0, $a0
    /* 6BF50 8007B750 40100200 */  sll        $v0, $v0, 1
    /* 6BF54 8007B754 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 6BF58 8007B758 21082200 */  addu       $at, $at, $v0
    /* 6BF5C 8007B75C CCD62484 */  lh         $a0, %lo(D_8010D6CC)($at)
    /* 6BF60 8007B760 00000000 */  nop
    /* 6BF64 8007B764 40180400 */  sll        $v1, $a0, 1
    /* 6BF68 8007B768 21106400 */  addu       $v0, $v1, $a0
  .L8007B76C:
    /* 6BF6C 8007B76C 80100200 */  sll        $v0, $v0, 2
    /* 6BF70 8007B770 21104400 */  addu       $v0, $v0, $a0
    /* 6BF74 8007B774 40100200 */  sll        $v0, $v0, 1
    /* 6BF78 8007B778 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 6BF7C 8007B77C 21082200 */  addu       $at, $at, $v0
    /* 6BF80 8007B780 CCD62284 */  lh         $v0, %lo(D_8010D6CC)($at)
    /* 6BF84 8007B784 00000000 */  nop
    /* 6BF88 8007B788 EEFF4104 */  bgez       $v0, .L8007B744
    /* 6BF8C 8007B78C 00000000 */   nop
  .L8007B790:
    /* 6BF90 8007B790 0800E003 */  jr         $ra
    /* 6BF94 8007B794 21108000 */   addu      $v0, $a0, $zero
endlabel func_8007B72C
