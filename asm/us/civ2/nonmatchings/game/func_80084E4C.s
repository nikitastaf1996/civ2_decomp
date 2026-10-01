.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80084E4C, 0x40

glabel func_80084E4C
    /* 7564C 80084E4C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 75650 80084E50 1800BFAF */  sw         $ra, 0x18($sp)
    /* 75654 80084E54 2110A000 */  addu       $v0, $a1, $zero
    /* 75658 80084E58 002C0200 */  sll        $a1, $v0, 16
    /* 7565C 80084E5C 00340600 */  sll        $a2, $a2, 16
    /* 75660 80084E60 03340600 */  sra        $a2, $a2, 16
    /* 75664 80084E64 21104700 */  addu       $v0, $v0, $a3
    /* 75668 80084E68 00140200 */  sll        $v0, $v0, 16
    /* 7566C 80084E6C 1000A6AF */  sw         $a2, 0x10($sp)
    /* 75670 80084E70 032C0500 */  sra        $a1, $a1, 16
    /* 75674 80084E74 86E7030C */  jal        func_800F9E18
    /* 75678 80084E78 033C0200 */   sra       $a3, $v0, 16
    /* 7567C 80084E7C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 75680 80084E80 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 75684 80084E84 0800E003 */  jr         $ra
    /* 75688 80084E88 00000000 */   nop
endlabel func_80084E4C
