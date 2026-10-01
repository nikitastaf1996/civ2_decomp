.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6F4C, 0x40

glabel func_800C6F4C
    /* B774C 800C6F4C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* B7750 800C6F50 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* B7754 800C6F54 2800B0AF */  sw         $s0, 0x28($sp)
    /* B7758 800C6F58 21808000 */  addu       $s0, $a0, $zero
    /* B775C 800C6F5C 2120A000 */  addu       $a0, $a1, $zero
    /* B7760 800C6F60 1000A527 */  addiu      $a1, $sp, 0x10
    /* B7764 800C6F64 C50A040C */  jal        func_80102B14
    /* B7768 800C6F68 0A000624 */   addiu     $a2, $zero, 0xA
    /* B776C 800C6F6C 21200002 */  addu       $a0, $s0, $zero
    /* B7770 800C6F70 9987030C */  jal        func_800E1E64
    /* B7774 800C6F74 1000A527 */   addiu     $a1, $sp, 0x10
    /* B7778 800C6F78 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* B777C 800C6F7C 2800B08F */  lw         $s0, 0x28($sp)
    /* B7780 800C6F80 3000BD27 */  addiu      $sp, $sp, 0x30
    /* B7784 800C6F84 0800E003 */  jr         $ra
    /* B7788 800C6F88 00000000 */   nop
endlabel func_800C6F4C
