.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8007EEE4, 0x48

glabel func_8007EEE4
    /* 6F6E4 8007EEE4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 6F6E8 8007EEE8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 6F6EC 8007EEEC 3000A78F */  lw         $a3, 0x30($sp)
    /* 6F6F0 8007EEF0 3400A28F */  lw         $v0, 0x34($sp)
    /* 6F6F4 8007EEF4 00000000 */  nop
    /* 6F6F8 8007EEF8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 6F6FC 8007EEFC EC02828F */  lw         $v0, %gp_rel(D_801587C4)($gp)
    /* 6F700 8007EF00 00000000 */  nop
    /* 6F704 8007EF04 1400A2AF */  sw         $v0, 0x14($sp)
    /* 6F708 8007EF08 2120A000 */  addu       $a0, $a1, $zero
    /* 6F70C 8007EF0C 2128C000 */  addu       $a1, $a2, $zero
    /* 6F710 8007EF10 04000624 */  addiu      $a2, $zero, 0x4
    /* 6F714 8007EF14 4CBB020C */  jal        func_800AED30
    /* 6F718 8007EF18 0200E724 */   addiu     $a3, $a3, 0x2
    /* 6F71C 8007EF1C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 6F720 8007EF20 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 6F724 8007EF24 0800E003 */  jr         $ra
    /* 6F728 8007EF28 00000000 */   nop
endlabel func_8007EEE4
