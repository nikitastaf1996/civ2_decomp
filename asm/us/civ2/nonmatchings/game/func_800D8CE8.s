.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D8CE8, 0x68

glabel func_800D8CE8
    /* C94E8 800D8CE8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C94EC 800D8CEC 2400BFAF */  sw         $ra, 0x24($sp)
    /* C94F0 800D8CF0 2000B0AF */  sw         $s0, 0x20($sp)
    /* C94F4 800D8CF4 21808000 */  addu       $s0, $a0, $zero
    /* C94F8 800D8CF8 003C0500 */  sll        $a3, $a1, 16
    /* C94FC 800D8CFC 00340600 */  sll        $a2, $a2, 16
    /* C9500 800D8D00 03340600 */  sra        $a2, $a2, 16
    /* C9504 800D8D04 1000A6AF */  sw         $a2, 0x10($sp)
    /* C9508 800D8D08 20000224 */  addiu      $v0, $zero, 0x20
    /* C950C 800D8D0C 1400A2AF */  sw         $v0, 0x14($sp)
    /* C9510 800D8D10 10000224 */  addiu      $v0, $zero, 0x10
    /* C9514 800D8D14 1800A2AF */  sw         $v0, 0x18($sp)
    /* C9518 800D8D18 1680053C */  lui        $a1, %hi(D_8015EE88)
    /* C951C 800D8D1C 88EEA524 */  addiu      $a1, $a1, %lo(D_8015EE88)
    /* C9520 800D8D20 07000624 */  addiu      $a2, $zero, 0x7
    /* C9524 800D8D24 67ED030C */  jal        func_800FB59C
    /* C9528 800D8D28 033C0700 */   sra       $a3, $a3, 16
    /* C952C 800D8D2C 21200002 */  addu       $a0, $s0, $zero
    /* C9530 800D8D30 09000524 */  addiu      $a1, $zero, 0x9
    /* C9534 800D8D34 60EF030C */  jal        func_800FBD80
    /* C9538 800D8D38 07000624 */   addiu     $a2, $zero, 0x7
    /* C953C 800D8D3C 2400BF8F */  lw         $ra, 0x24($sp)
    /* C9540 800D8D40 2000B08F */  lw         $s0, 0x20($sp)
    /* C9544 800D8D44 2800BD27 */  addiu      $sp, $sp, 0x28
    /* C9548 800D8D48 0800E003 */  jr         $ra
    /* C954C 800D8D4C 00000000 */   nop
endlabel func_800D8CE8
