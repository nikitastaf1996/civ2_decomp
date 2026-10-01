.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D0814, 0x48

glabel func_800D0814
    /* C1014 800D0814 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C1018 800D0818 1400BFAF */  sw         $ra, 0x14($sp)
    /* C101C 800D081C 1000B0AF */  sw         $s0, 0x10($sp)
    /* C1020 800D0820 28029024 */  addiu      $s0, $a0, 0x228
    /* C1024 800D0824 21200002 */  addu       $a0, $s0, $zero
    /* C1028 800D0828 082C030C */  jal        func_800CB020
    /* C102C 800D082C 01000524 */   addiu     $a1, $zero, 0x1
    /* C1030 800D0830 21200002 */  addu       $a0, $s0, $zero
    /* C1034 800D0834 082C030C */  jal        func_800CB020
    /* C1038 800D0838 03000524 */   addiu     $a1, $zero, 0x3
    /* C103C 800D083C 21200002 */  addu       $a0, $s0, $zero
    /* C1040 800D0840 082C030C */  jal        func_800CB020
    /* C1044 800D0844 04000524 */   addiu     $a1, $zero, 0x4
    /* C1048 800D0848 1400BF8F */  lw         $ra, 0x14($sp)
    /* C104C 800D084C 1000B08F */  lw         $s0, 0x10($sp)
    /* C1050 800D0850 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C1054 800D0854 0800E003 */  jr         $ra
    /* C1058 800D0858 00000000 */   nop
endlabel func_800D0814
