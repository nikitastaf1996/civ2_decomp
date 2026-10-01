.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80084E8C, 0x40

glabel func_80084E8C
    /* 7568C 80084E8C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 75690 80084E90 1800BFAF */  sw         $ra, 0x18($sp)
    /* 75694 80084E94 00140500 */  sll        $v0, $a1, 16
    /* 75698 80084E98 03140200 */  sra        $v0, $v0, 16
    /* 7569C 80084E9C 00340600 */  sll        $a2, $a2, 16
    /* 756A0 80084EA0 003C0700 */  sll        $a3, $a3, 16
    /* 756A4 80084EA4 033C0700 */  sra        $a3, $a3, 16
    /* 756A8 80084EA8 1000A7AF */  sw         $a3, 0x10($sp)
    /* 756AC 80084EAC 21284000 */  addu       $a1, $v0, $zero
    /* 756B0 80084EB0 03340600 */  sra        $a2, $a2, 16
    /* 756B4 80084EB4 86E7030C */  jal        func_800F9E18
    /* 756B8 80084EB8 21384000 */   addu      $a3, $v0, $zero
    /* 756BC 80084EBC 1800BF8F */  lw         $ra, 0x18($sp)
    /* 756C0 80084EC0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 756C4 80084EC4 0800E003 */  jr         $ra
    /* 756C8 80084EC8 00000000 */   nop
endlabel func_80084E8C
