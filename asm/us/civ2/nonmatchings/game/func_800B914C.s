.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B914C, 0x40

glabel func_800B914C
    /* A994C 800B914C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A9950 800B9150 1800BFAF */  sw         $ra, 0x18($sp)
    /* A9954 800B9154 3000A78F */  lw         $a3, 0x30($sp)
    /* A9958 800B9158 3400A28F */  lw         $v0, 0x34($sp)
    /* A995C 800B915C 00000000 */  nop
    /* A9960 800B9160 1000A2AF */  sw         $v0, 0x10($sp)
    /* A9964 800B9164 1400A0AF */  sw         $zero, 0x14($sp)
    /* A9968 800B9168 2120A000 */  addu       $a0, $a1, $zero
    /* A996C 800B916C 2128C000 */  addu       $a1, $a2, $zero
    /* A9970 800B9170 04000624 */  addiu      $a2, $zero, 0x4
    /* A9974 800B9174 4CBB020C */  jal        func_800AED30
    /* A9978 800B9178 0200E724 */   addiu     $a3, $a3, 0x2
    /* A997C 800B917C 1800BF8F */  lw         $ra, 0x18($sp)
    /* A9980 800B9180 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A9984 800B9184 0800E003 */  jr         $ra
    /* A9988 800B9188 00000000 */   nop
endlabel func_800B914C
