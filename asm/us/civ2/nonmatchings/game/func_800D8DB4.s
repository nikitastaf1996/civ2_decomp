.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D8DB4, 0x70

glabel func_800D8DB4
    /* C95B4 800D8DB4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* C95B8 800D8DB8 2400BFAF */  sw         $ra, 0x24($sp)
    /* C95BC 800D8DBC 2000B0AF */  sw         $s0, 0x20($sp)
    /* C95C0 800D8DC0 21808000 */  addu       $s0, $a0, $zero
    /* C95C4 800D8DC4 001C0500 */  sll        $v1, $a1, 16
    /* C95C8 800D8DC8 00340600 */  sll        $a2, $a2, 16
    /* C95CC 800D8DCC 03340600 */  sra        $a2, $a2, 16
    /* C95D0 800D8DD0 1000A6AF */  sw         $a2, 0x10($sp)
    /* C95D4 800D8DD4 003C0700 */  sll        $a3, $a3, 16
    /* C95D8 800D8DD8 033C0700 */  sra        $a3, $a3, 16
    /* C95DC 800D8DDC 1400A7AF */  sw         $a3, 0x14($sp)
    /* C95E0 800D8DE0 3800A287 */  lh         $v0, 0x38($sp)
    /* C95E4 800D8DE4 00000000 */  nop
    /* C95E8 800D8DE8 1800A2AF */  sw         $v0, 0x18($sp)
    /* C95EC 800D8DEC 1680053C */  lui        $a1, %hi(D_8015EE88)
    /* C95F0 800D8DF0 88EEA524 */  addiu      $a1, $a1, %lo(D_8015EE88)
    /* C95F4 800D8DF4 07000624 */  addiu      $a2, $zero, 0x7
    /* C95F8 800D8DF8 67ED030C */  jal        func_800FB59C
    /* C95FC 800D8DFC 033C0300 */   sra       $a3, $v1, 16
    /* C9600 800D8E00 21200002 */  addu       $a0, $s0, $zero
    /* C9604 800D8E04 09000524 */  addiu      $a1, $zero, 0x9
    /* C9608 800D8E08 60EF030C */  jal        func_800FBD80
    /* C960C 800D8E0C 07000624 */   addiu     $a2, $zero, 0x7
    /* C9610 800D8E10 2400BF8F */  lw         $ra, 0x24($sp)
    /* C9614 800D8E14 2000B08F */  lw         $s0, 0x20($sp)
    /* C9618 800D8E18 2800BD27 */  addiu      $sp, $sp, 0x28
    /* C961C 800D8E1C 0800E003 */  jr         $ra
    /* C9620 800D8E20 00000000 */   nop
endlabel func_800D8DB4
