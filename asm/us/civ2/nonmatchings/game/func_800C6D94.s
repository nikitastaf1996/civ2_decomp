.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6D94, 0x38

glabel func_800C6D94
    /* B7594 800C6D94 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B7598 800C6D98 1400BFAF */  sw         $ra, 0x14($sp)
    /* B759C 800C6D9C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B75A0 800C6DA0 21808000 */  addu       $s0, $a0, $zero
    /* B75A4 800C6DA4 A63A030C */  jal        func_800CEA98
    /* B75A8 800C6DA8 2120A000 */   addu      $a0, $a1, $zero
    /* B75AC 800C6DAC 21200002 */  addu       $a0, $s0, $zero
    /* B75B0 800C6DB0 9987030C */  jal        func_800E1E64
    /* B75B4 800C6DB4 21284000 */   addu      $a1, $v0, $zero
    /* B75B8 800C6DB8 1400BF8F */  lw         $ra, 0x14($sp)
    /* B75BC 800C6DBC 1000B08F */  lw         $s0, 0x10($sp)
    /* B75C0 800C6DC0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B75C4 800C6DC4 0800E003 */  jr         $ra
    /* B75C8 800C6DC8 00000000 */   nop
endlabel func_800C6D94
