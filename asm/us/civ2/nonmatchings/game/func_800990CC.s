.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800990CC, 0x2C

glabel func_800990CC
    /* 898CC 800990CC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 898D0 800990D0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 898D4 800990D4 21108000 */  addu       $v0, $a0, $zero
    /* 898D8 800990D8 002C0500 */  sll        $a1, $a1, 16
    /* 898DC 800990DC 30024684 */  lh         $a2, 0x230($v0)
    /* 898E0 800990E0 BC7B020C */  jal        func_8009EEF0
    /* 898E4 800990E4 032C0500 */   sra       $a1, $a1, 16
    /* 898E8 800990E8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 898EC 800990EC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 898F0 800990F0 0800E003 */  jr         $ra
    /* 898F4 800990F4 00000000 */   nop
endlabel func_800990CC
