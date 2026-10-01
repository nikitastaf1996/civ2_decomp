.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6C54, 0x28

glabel func_800C6C54
    /* B7454 800C6C54 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B7458 800C6C58 1000BFAF */  sw         $ra, 0x10($sp)
    /* B745C 800C6C5C 1680053C */  lui        $a1, %hi(D_801590C8)
    /* B7460 800C6C60 C890A524 */  addiu      $a1, $a1, %lo(D_801590C8)
    /* B7464 800C6C64 9987030C */  jal        func_800E1E64
    /* B7468 800C6C68 00000000 */   nop
    /* B746C 800C6C6C 1000BF8F */  lw         $ra, 0x10($sp)
    /* B7470 800C6C70 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B7474 800C6C74 0800E003 */  jr         $ra
    /* B7478 800C6C78 00000000 */   nop
endlabel func_800C6C54
