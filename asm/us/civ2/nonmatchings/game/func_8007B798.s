.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007B798, 0x78

glabel func_8007B798
    /* 6BF98 8007B798 1B008004 */  bltz       $a0, .L8007B808
    /* 6BF9C 8007B79C 00000000 */   nop
    /* 6BFA0 8007B7A0 40100400 */  sll        $v0, $a0, 1
    /* 6BFA4 8007B7A4 21184000 */  addu       $v1, $v0, $zero
    /* 6BFA8 8007B7A8 F9ED0108 */  j          .L8007B7E4
    /* 6BFAC 8007B7AC 21104400 */   addu      $v0, $v0, $a0
  .L8007B7B0:
    /* 6BFB0 8007B7B0 21106400 */  addu       $v0, $v1, $a0
    /* 6BFB4 8007B7B4 80100200 */  sll        $v0, $v0, 2
    /* 6BFB8 8007B7B8 21104400 */  addu       $v0, $v0, $a0
    /* 6BFBC 8007B7BC 40100200 */  sll        $v0, $v0, 1
    /* 6BFC0 8007B7C0 1180013C */  lui        $at, %hi(D_8010D6CA)
    /* 6BFC4 8007B7C4 21082200 */  addu       $at, $at, $v0
    /* 6BFC8 8007B7C8 CAD62284 */  lh         $v0, %lo(D_8010D6CA)($at)
    /* 6BFCC 8007B7CC 00000000 */  nop
    /* 6BFD0 8007B7D0 0D008210 */  beq        $a0, $v0, .L8007B808
    /* 6BFD4 8007B7D4 00000000 */   nop
    /* 6BFD8 8007B7D8 21204000 */  addu       $a0, $v0, $zero
    /* 6BFDC 8007B7DC 40180200 */  sll        $v1, $v0, 1
    /* 6BFE0 8007B7E0 21106400 */  addu       $v0, $v1, $a0
  .L8007B7E4:
    /* 6BFE4 8007B7E4 80100200 */  sll        $v0, $v0, 2
    /* 6BFE8 8007B7E8 21104400 */  addu       $v0, $v0, $a0
    /* 6BFEC 8007B7EC 40100200 */  sll        $v0, $v0, 1
    /* 6BFF0 8007B7F0 1180013C */  lui        $at, %hi(D_8010D6CA)
    /* 6BFF4 8007B7F4 21082200 */  addu       $at, $at, $v0
    /* 6BFF8 8007B7F8 CAD62284 */  lh         $v0, %lo(D_8010D6CA)($at)
    /* 6BFFC 8007B7FC 00000000 */  nop
    /* 6C000 8007B800 EBFF4104 */  bgez       $v0, .L8007B7B0
    /* 6C004 8007B804 00000000 */   nop
  .L8007B808:
    /* 6C008 8007B808 0800E003 */  jr         $ra
    /* 6C00C 8007B80C 21108000 */   addu      $v0, $a0, $zero
endlabel func_8007B798
