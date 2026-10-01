.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094AC8, 0x48

glabel func_80094AC8
    /* 852C8 80094AC8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 852CC 80094ACC 1400BFAF */  sw         $ra, 0x14($sp)
    /* 852D0 80094AD0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 852D4 80094AD4 21808000 */  addu       $s0, $a0, $zero
    /* 852D8 80094AD8 0800028E */  lw         $v0, 0x8($s0)
    /* 852DC 80094ADC 00000000 */  nop
    /* 852E0 80094AE0 06004014 */  bnez       $v0, .L80094AFC
    /* 852E4 80094AE4 21100000 */   addu      $v0, $zero, $zero
    /* 852E8 80094AE8 0400048E */  lw         $a0, 0x4($s0)
    /* 852EC 80094AEC 7CD6030C */  jal        func_800F59F0
    /* 852F0 80094AF0 00000000 */   nop
    /* 852F4 80094AF4 080002AE */  sw         $v0, 0x8($s0)
    /* 852F8 80094AF8 21100000 */  addu       $v0, $zero, $zero
  .L80094AFC:
    /* 852FC 80094AFC 1400BF8F */  lw         $ra, 0x14($sp)
    /* 85300 80094B00 1000B08F */  lw         $s0, 0x10($sp)
    /* 85304 80094B04 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 85308 80094B08 0800E003 */  jr         $ra
    /* 8530C 80094B0C 00000000 */   nop
endlabel func_80094AC8
