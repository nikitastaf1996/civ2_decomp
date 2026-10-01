.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007BD28, 0x20

glabel func_8007BD28
    /* 6C528 8007BD28 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 6C52C 8007BD2C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 6C530 8007BD30 36EF010C */  jal        func_8007BCD8
    /* 6C534 8007BD34 2130A000 */   addu      $a2, $a1, $zero
    /* 6C538 8007BD38 1000BF8F */  lw         $ra, 0x10($sp)
    /* 6C53C 8007BD3C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 6C540 8007BD40 0800E003 */  jr         $ra
    /* 6C544 8007BD44 00000000 */   nop
endlabel func_8007BD28
