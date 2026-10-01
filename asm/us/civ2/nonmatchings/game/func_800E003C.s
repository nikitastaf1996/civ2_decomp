.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E003C, 0x28

glabel func_800E003C
    /* D083C 800E003C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D0840 800E0040 1000BFAF */  sw         $ra, 0x10($sp)
    /* D0844 800E0044 1480043C */  lui        $a0, %hi(D_801388D0)
    /* D0848 800E0048 D0888424 */  addiu      $a0, $a0, %lo(D_801388D0)
    /* D084C 800E004C 9AE0030C */  jal        func_800F8268
    /* D0850 800E0050 00000000 */   nop
    /* D0854 800E0054 1000BF8F */  lw         $ra, 0x10($sp)
    /* D0858 800E0058 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D085C 800E005C 0800E003 */  jr         $ra
    /* D0860 800E0060 00000000 */   nop
endlabel func_800E003C
