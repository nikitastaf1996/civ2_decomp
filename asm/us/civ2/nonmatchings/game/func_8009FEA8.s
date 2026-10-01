.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009FEA8, 0x30

glabel func_8009FEA8
    /* 906A8 8009FEA8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 906AC 8009FEAC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 906B0 8009FEB0 00240400 */  sll        $a0, $a0, 16
    /* 906B4 8009FEB4 002C0500 */  sll        $a1, $a1, 16
    /* 906B8 8009FEB8 03240400 */  sra        $a0, $a0, 16
    /* 906BC 8009FEBC 032C0500 */  sra        $a1, $a1, 16
    /* 906C0 8009FEC0 827E020C */  jal        func_8009FA08
    /* 906C4 8009FEC4 01000624 */   addiu     $a2, $zero, 0x1
    /* 906C8 8009FEC8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 906CC 8009FECC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 906D0 8009FED0 0800E003 */  jr         $ra
    /* 906D4 8009FED4 00000000 */   nop
endlabel func_8009FEA8
