.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80084ECC, 0x44

glabel func_80084ECC
    /* 756CC 80084ECC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 756D0 80084ED0 1800BFAF */  sw         $ra, 0x18($sp)
    /* 756D4 80084ED4 00140500 */  sll        $v0, $a1, 16
    /* 756D8 80084ED8 03140200 */  sra        $v0, $v0, 16
    /* 756DC 80084EDC 001C0600 */  sll        $v1, $a2, 16
    /* 756E0 80084EE0 2130C700 */  addu       $a2, $a2, $a3
    /* 756E4 80084EE4 00340600 */  sll        $a2, $a2, 16
    /* 756E8 80084EE8 03340600 */  sra        $a2, $a2, 16
    /* 756EC 80084EEC 1000A6AF */  sw         $a2, 0x10($sp)
    /* 756F0 80084EF0 21284000 */  addu       $a1, $v0, $zero
    /* 756F4 80084EF4 03340300 */  sra        $a2, $v1, 16
    /* 756F8 80084EF8 86E7030C */  jal        func_800F9E18
    /* 756FC 80084EFC 21384000 */   addu      $a3, $v0, $zero
    /* 75700 80084F00 1800BF8F */  lw         $ra, 0x18($sp)
    /* 75704 80084F04 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 75708 80084F08 0800E003 */  jr         $ra
    /* 7570C 80084F0C 00000000 */   nop
endlabel func_80084ECC
