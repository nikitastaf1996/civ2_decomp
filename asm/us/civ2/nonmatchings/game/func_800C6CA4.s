.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6CA4, 0x28

glabel func_800C6CA4
    /* B74A4 800C6CA4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B74A8 800C6CA8 1000BFAF */  sw         $ra, 0x10($sp)
    /* B74AC 800C6CAC 1680053C */  lui        $a1, %hi(D_801590D0)
    /* B74B0 800C6CB0 D090A524 */  addiu      $a1, $a1, %lo(D_801590D0)
    /* B74B4 800C6CB4 9987030C */  jal        func_800E1E64
    /* B74B8 800C6CB8 00000000 */   nop
    /* B74BC 800C6CBC 1000BF8F */  lw         $ra, 0x10($sp)
    /* B74C0 800C6CC0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B74C4 800C6CC4 0800E003 */  jr         $ra
    /* B74C8 800C6CC8 00000000 */   nop
endlabel func_800C6CA4
