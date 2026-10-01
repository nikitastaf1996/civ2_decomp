.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009CCB4, 0x40

glabel func_8009CCB4
    /* 8D4B4 8009CCB4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8D4B8 8009CCB8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8D4BC 8009CCBC 3000A78F */  lw         $a3, 0x30($sp)
    /* 8D4C0 8009CCC0 3400A28F */  lw         $v0, 0x34($sp)
    /* 8D4C4 8009CCC4 00000000 */  nop
    /* 8D4C8 8009CCC8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8D4CC 8009CCCC 1400A0AF */  sw         $zero, 0x14($sp)
    /* 8D4D0 8009CCD0 2120A000 */  addu       $a0, $a1, $zero
    /* 8D4D4 8009CCD4 2128C000 */  addu       $a1, $a2, $zero
    /* 8D4D8 8009CCD8 21300000 */  addu       $a2, $zero, $zero
    /* 8D4DC 8009CCDC 17C0020C */  jal        func_800B005C
    /* 8D4E0 8009CCE0 0200E724 */   addiu     $a3, $a3, 0x2
    /* 8D4E4 8009CCE4 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8D4E8 8009CCE8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8D4EC 8009CCEC 0800E003 */  jr         $ra
    /* 8D4F0 8009CCF0 00000000 */   nop
endlabel func_8009CCB4
