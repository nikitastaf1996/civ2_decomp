.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D085C, 0x30

glabel func_800D085C
    /* C105C 800D085C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C1060 800D0860 1400BFAF */  sw         $ra, 0x14($sp)
    /* C1064 800D0864 1000B0AF */  sw         $s0, 0x10($sp)
    /* C1068 800D0868 0542030C */  jal        func_800D0814
    /* C106C 800D086C 21808000 */   addu      $s0, $a0, $zero
    /* C1070 800D0870 FC41030C */  jal        func_800D07F0
    /* C1074 800D0874 21200002 */   addu      $a0, $s0, $zero
    /* C1078 800D0878 1400BF8F */  lw         $ra, 0x14($sp)
    /* C107C 800D087C 1000B08F */  lw         $s0, 0x10($sp)
    /* C1080 800D0880 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C1084 800D0884 0800E003 */  jr         $ra
    /* C1088 800D0888 00000000 */   nop
endlabel func_800D085C
