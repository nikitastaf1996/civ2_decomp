.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D8D50, 0x64

glabel func_800D8D50
    /* C9550 800D8D50 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C9554 800D8D54 2400BFAF */  sw         $ra, 0x24($sp)
    /* C9558 800D8D58 2000B0AF */  sw         $s0, 0x20($sp)
    /* C955C 800D8D5C 21808000 */  addu       $s0, $a0, $zero
    /* C9560 800D8D60 003C0500 */  sll        $a3, $a1, 16
    /* C9564 800D8D64 00340600 */  sll        $a2, $a2, 16
    /* C9568 800D8D68 03340600 */  sra        $a2, $a2, 16
    /* C956C 800D8D6C 1000A6AF */  sw         $a2, 0x10($sp)
    /* C9570 800D8D70 10000224 */  addiu      $v0, $zero, 0x10
    /* C9574 800D8D74 1400A2AF */  sw         $v0, 0x14($sp)
    /* C9578 800D8D78 1800A2AF */  sw         $v0, 0x18($sp)
    /* C957C 800D8D7C 1680053C */  lui        $a1, %hi(D_8015EE88)
    /* C9580 800D8D80 88EEA524 */  addiu      $a1, $a1, %lo(D_8015EE88)
    /* C9584 800D8D84 07000624 */  addiu      $a2, $zero, 0x7
    /* C9588 800D8D88 67ED030C */  jal        func_800FB59C
    /* C958C 800D8D8C 033C0700 */   sra       $a3, $a3, 16
    /* C9590 800D8D90 21200002 */  addu       $a0, $s0, $zero
    /* C9594 800D8D94 09000524 */  addiu      $a1, $zero, 0x9
    /* C9598 800D8D98 60EF030C */  jal        func_800FBD80
    /* C959C 800D8D9C 07000624 */   addiu     $a2, $zero, 0x7
    /* C95A0 800D8DA0 2400BF8F */  lw         $ra, 0x24($sp)
    /* C95A4 800D8DA4 2000B08F */  lw         $s0, 0x20($sp)
    /* C95A8 800D8DA8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* C95AC 800D8DAC 0800E003 */  jr         $ra
    /* C95B0 800D8DB0 00000000 */   nop
endlabel func_800D8D50
