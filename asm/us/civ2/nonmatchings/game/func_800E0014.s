.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800E0014, 0x28

glabel func_800E0014
    /* D0814 800E0014 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D0818 800E0018 1000BFAF */  sw         $ra, 0x10($sp)
    /* D081C 800E001C 1480043C */  lui        $a0, %hi(D_801388D0)
    /* D0820 800E0020 D0888424 */  addiu      $a0, $a0, %lo(D_801388D0)
    /* D0824 800E0024 4CE1030C */  jal        func_800F8530
    /* D0828 800E0028 02000524 */   addiu     $a1, $zero, 0x2
    /* D082C 800E002C 1000BF8F */  lw         $ra, 0x10($sp)
    /* D0830 800E0030 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D0834 800E0034 0800E003 */  jr         $ra
    /* D0838 800E0038 00000000 */   nop
endlabel func_800E0014
