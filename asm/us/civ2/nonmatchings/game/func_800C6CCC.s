.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6CCC, 0x28

glabel func_800C6CCC
    /* B74CC 800C6CCC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B74D0 800C6CD0 1000BFAF */  sw         $ra, 0x10($sp)
    /* B74D4 800C6CD4 1680053C */  lui        $a1, %hi(D_801590D4)
    /* B74D8 800C6CD8 D490A524 */  addiu      $a1, $a1, %lo(D_801590D4)
    /* B74DC 800C6CDC 9987030C */  jal        func_800E1E64
    /* B74E0 800C6CE0 00000000 */   nop
    /* B74E4 800C6CE4 1000BF8F */  lw         $ra, 0x10($sp)
    /* B74E8 800C6CE8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B74EC 800C6CEC 0800E003 */  jr         $ra
    /* B74F0 800C6CF0 00000000 */   nop
endlabel func_800C6CCC
