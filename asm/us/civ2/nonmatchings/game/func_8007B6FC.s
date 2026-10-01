.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007B6FC, 0x30

glabel func_8007B6FC
    /* 6BEFC 8007B6FC 09008004 */  bltz       $a0, .L8007B724
    /* 6BF00 8007B700 00000000 */   nop
    /* 6BF04 8007B704 40100400 */  sll        $v0, $a0, 1
    /* 6BF08 8007B708 21104400 */  addu       $v0, $v0, $a0
    /* 6BF0C 8007B70C 80100200 */  sll        $v0, $v0, 2
    /* 6BF10 8007B710 21104400 */  addu       $v0, $v0, $a0
    /* 6BF14 8007B714 40100200 */  sll        $v0, $v0, 1
    /* 6BF18 8007B718 1180013C */  lui        $at, %hi(D_8010D6CC)
    /* 6BF1C 8007B71C 21082200 */  addu       $at, $at, $v0
    /* 6BF20 8007B720 CCD62484 */  lh         $a0, %lo(D_8010D6CC)($at)
  .L8007B724:
    /* 6BF24 8007B724 0800E003 */  jr         $ra
    /* 6BF28 8007B728 21108000 */   addu      $v0, $a0, $zero
endlabel func_8007B6FC
