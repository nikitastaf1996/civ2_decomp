.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DFF60, 0x40

glabel func_800DFF60
    /* D0760 800DFF60 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* D0764 800DFF64 1000BFAF */  sw         $ra, 0x10($sp)
    /* D0768 800DFF68 1280023C */  lui        $v0, %hi(D_8011C308)
    /* D076C 800DFF6C 08C34224 */  addiu      $v0, $v0, %lo(D_8011C308)
    /* D0770 800DFF70 1480043C */  lui        $a0, %hi(D_801388D0)
    /* D0774 800DFF74 D0888424 */  addiu      $a0, $a0, %lo(D_801388D0)
    /* D0778 800DFF78 00004584 */  lh         $a1, 0x0($v0)
    /* D077C 800DFF7C 02004684 */  lh         $a2, 0x2($v0)
    /* D0780 800DFF80 F3E0030C */  jal        func_800F83CC
    /* D0784 800DFF84 00000000 */   nop
    /* D0788 800DFF88 227F030C */  jal        func_800DFC88
    /* D078C 800DFF8C 00000000 */   nop
    /* D0790 800DFF90 1000BF8F */  lw         $ra, 0x10($sp)
    /* D0794 800DFF94 1800BD27 */  addiu      $sp, $sp, 0x18
    /* D0798 800DFF98 0800E003 */  jr         $ra
    /* D079C 800DFF9C 00000000 */   nop
endlabel func_800DFF60
