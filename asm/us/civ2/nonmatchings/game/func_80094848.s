.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094848, 0x2C

glabel func_80094848
    /* 85048 80094848 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 8504C 8009484C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 85050 80094850 B587030C */  jal        func_800E1ED4
    /* 85054 80094854 0A000524 */   addiu     $a1, $zero, 0xA
    /* 85058 80094858 02004010 */  beqz       $v0, .L80094864
    /* 8505C 8009485C 00000000 */   nop
    /* 85060 80094860 000040A0 */  sb         $zero, 0x0($v0)
  .L80094864:
    /* 85064 80094864 1000BF8F */  lw         $ra, 0x10($sp)
    /* 85068 80094868 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8506C 8009486C 0800E003 */  jr         $ra
    /* 85070 80094870 00000000 */   nop
endlabel func_80094848
