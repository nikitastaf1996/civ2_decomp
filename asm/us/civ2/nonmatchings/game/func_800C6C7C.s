.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6C7C, 0x28

glabel func_800C6C7C
    /* B747C 800C6C7C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B7480 800C6C80 1000BFAF */  sw         $ra, 0x10($sp)
    /* B7484 800C6C84 1680053C */  lui        $a1, %hi(D_801590CC)
    /* B7488 800C6C88 CC90A524 */  addiu      $a1, $a1, %lo(D_801590CC)
    /* B748C 800C6C8C 9987030C */  jal        func_800E1E64
    /* B7490 800C6C90 00000000 */   nop
    /* B7494 800C6C94 1000BF8F */  lw         $ra, 0x10($sp)
    /* B7498 800C6C98 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B749C 800C6C9C 0800E003 */  jr         $ra
    /* B74A0 800C6CA0 00000000 */   nop
endlabel func_800C6C7C
