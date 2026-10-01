.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6D44, 0x28

glabel func_800C6D44
    /* B7544 800C6D44 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B7548 800C6D48 1000BFAF */  sw         $ra, 0x10($sp)
    /* B754C 800C6D4C 1680053C */  lui        $a1, %hi(D_801590E0)
    /* B7550 800C6D50 E090A524 */  addiu      $a1, $a1, %lo(D_801590E0)
    /* B7554 800C6D54 9987030C */  jal        func_800E1E64
    /* B7558 800C6D58 00000000 */   nop
    /* B755C 800C6D5C 1000BF8F */  lw         $ra, 0x10($sp)
    /* B7560 800C6D60 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B7564 800C6D64 0800E003 */  jr         $ra
    /* B7568 800C6D68 00000000 */   nop
endlabel func_800C6D44
