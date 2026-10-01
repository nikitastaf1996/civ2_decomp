.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6DCC, 0x34

glabel func_800C6DCC
    /* B75CC 800C6DCC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B75D0 800C6DD0 1000BFAF */  sw         $ra, 0x10($sp)
    /* B75D4 800C6DD4 1680023C */  lui        $v0, %hi(D_8015894C)
    /* B75D8 800C6DD8 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* B75DC 800C6DDC 80280500 */  sll        $a1, $a1, 2
    /* B75E0 800C6DE0 2128A200 */  addu       $a1, $a1, $v0
    /* B75E4 800C6DE4 0000A58C */  lw         $a1, 0x0($a1)
    /* B75E8 800C6DE8 651B030C */  jal        func_800C6D94
    /* B75EC 800C6DEC 00000000 */   nop
    /* B75F0 800C6DF0 1000BF8F */  lw         $ra, 0x10($sp)
    /* B75F4 800C6DF4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B75F8 800C6DF8 0800E003 */  jr         $ra
    /* B75FC 800C6DFC 00000000 */   nop
endlabel func_800C6DCC
