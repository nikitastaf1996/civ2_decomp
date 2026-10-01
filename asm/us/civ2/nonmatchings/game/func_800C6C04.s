.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6C04, 0x28

glabel func_800C6C04
    /* B7404 800C6C04 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B7408 800C6C08 1000BFAF */  sw         $ra, 0x10($sp)
    /* B740C 800C6C0C 1680053C */  lui        $a1, %hi(D_801590C0)
    /* B7410 800C6C10 C090A524 */  addiu      $a1, $a1, %lo(D_801590C0)
    /* B7414 800C6C14 9987030C */  jal        func_800E1E64
    /* B7418 800C6C18 00000000 */   nop
    /* B741C 800C6C1C 1000BF8F */  lw         $ra, 0x10($sp)
    /* B7420 800C6C20 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B7424 800C6C24 0800E003 */  jr         $ra
    /* B7428 800C6C28 00000000 */   nop
endlabel func_800C6C04
