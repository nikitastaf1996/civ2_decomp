.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D8E24, 0x68

glabel func_800D8E24
    /* C9624 800D8E24 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C9628 800D8E28 2400BFAF */  sw         $ra, 0x24($sp)
    /* C962C 800D8E2C 2000B0AF */  sw         $s0, 0x20($sp)
    /* C9630 800D8E30 21808000 */  addu       $s0, $a0, $zero
    /* C9634 800D8E34 003C0500 */  sll        $a3, $a1, 16
    /* C9638 800D8E38 00340600 */  sll        $a2, $a2, 16
    /* C963C 800D8E3C 03340600 */  sra        $a2, $a2, 16
    /* C9640 800D8E40 1000A6AF */  sw         $a2, 0x10($sp)
    /* C9644 800D8E44 20000224 */  addiu      $v0, $zero, 0x20
    /* C9648 800D8E48 1400A2AF */  sw         $v0, 0x14($sp)
    /* C964C 800D8E4C 18000224 */  addiu      $v0, $zero, 0x18
    /* C9650 800D8E50 1800A2AF */  sw         $v0, 0x18($sp)
    /* C9654 800D8E54 1680053C */  lui        $a1, %hi(D_8015EE88)
    /* C9658 800D8E58 88EEA524 */  addiu      $a1, $a1, %lo(D_8015EE88)
    /* C965C 800D8E5C 07000624 */  addiu      $a2, $zero, 0x7
    /* C9660 800D8E60 67ED030C */  jal        func_800FB59C
    /* C9664 800D8E64 033C0700 */   sra       $a3, $a3, 16
    /* C9668 800D8E68 21200002 */  addu       $a0, $s0, $zero
    /* C966C 800D8E6C 09000524 */  addiu      $a1, $zero, 0x9
    /* C9670 800D8E70 60EF030C */  jal        func_800FBD80
    /* C9674 800D8E74 07000624 */   addiu     $a2, $zero, 0x7
    /* C9678 800D8E78 2400BF8F */  lw         $ra, 0x24($sp)
    /* C967C 800D8E7C 2000B08F */  lw         $s0, 0x20($sp)
    /* C9680 800D8E80 2800BD27 */  addiu      $sp, $sp, 0x28
    /* C9684 800D8E84 0800E003 */  jr         $ra
    /* C9688 800D8E88 00000000 */   nop
endlabel func_800D8E24
