.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CE4D8, 0x24

glabel func_800CE4D8
    /* BECD8 800CE4D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BECDC 800CE4DC 1000BFAF */  sw         $ra, 0x10($sp)
    /* BECE0 800CE4E0 B80C848F */  lw         $a0, %gp_rel(D_80159190)($gp)
    /* BECE4 800CE4E4 B536030C */  jal        func_800CDAD4
    /* BECE8 800CE4E8 01000524 */   addiu     $a1, $zero, 0x1
    /* BECEC 800CE4EC 1000BF8F */  lw         $ra, 0x10($sp)
    /* BECF0 800CE4F0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* BECF4 800CE4F4 0800E003 */  jr         $ra
    /* BECF8 800CE4F8 00000000 */   nop
endlabel func_800CE4D8
