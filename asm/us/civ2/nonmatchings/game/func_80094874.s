.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094874, 0x38

glabel func_80094874
    /* 85074 80094874 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 85078 80094878 1400BFAF */  sw         $ra, 0x14($sp)
    /* 8507C 8009487C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 85080 80094880 AD87030C */  jal        func_800E1EB4
    /* 85084 80094884 21808000 */   addu      $s0, $a0, $zero
    /* 85088 80094888 21800202 */  addu       $s0, $s0, $v0
    /* 8508C 8009488C 0A000224 */  addiu      $v0, $zero, 0xA
    /* 85090 80094890 000002A2 */  sb         $v0, 0x0($s0)
    /* 85094 80094894 010000A2 */  sb         $zero, 0x1($s0)
    /* 85098 80094898 1400BF8F */  lw         $ra, 0x14($sp)
    /* 8509C 8009489C 1000B08F */  lw         $s0, 0x10($sp)
    /* 850A0 800948A0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 850A4 800948A4 0800E003 */  jr         $ra
    /* 850A8 800948A8 00000000 */   nop
endlabel func_80094874
