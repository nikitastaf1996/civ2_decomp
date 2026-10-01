.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009FE78, 0x30

glabel func_8009FE78
    /* 90678 8009FE78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9067C 8009FE7C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 90680 8009FE80 00240400 */  sll        $a0, $a0, 16
    /* 90684 8009FE84 002C0500 */  sll        $a1, $a1, 16
    /* 90688 8009FE88 03240400 */  sra        $a0, $a0, 16
    /* 9068C 8009FE8C 032C0500 */  sra        $a1, $a1, 16
    /* 90690 8009FE90 827E020C */  jal        func_8009FA08
    /* 90694 8009FE94 21300000 */   addu      $a2, $zero, $zero
    /* 90698 8009FE98 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9069C 8009FE9C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 906A0 8009FEA0 0800E003 */  jr         $ra
    /* 906A4 8009FEA4 00000000 */   nop
endlabel func_8009FE78
