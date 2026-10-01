.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80084E10, 0x3C

glabel func_80084E10
    /* 75610 80084E10 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 75614 80084E14 1800BFAF */  sw         $ra, 0x18($sp)
    /* 75618 80084E18 002C0500 */  sll        $a1, $a1, 16
    /* 7561C 80084E1C 003C0700 */  sll        $a3, $a3, 16
    /* 75620 80084E20 033C0700 */  sra        $a3, $a3, 16
    /* 75624 80084E24 00140600 */  sll        $v0, $a2, 16
    /* 75628 80084E28 1000A7AF */  sw         $a3, 0x10($sp)
    /* 7562C 80084E2C 032C0500 */  sra        $a1, $a1, 16
    /* 75630 80084E30 2130E000 */  addu       $a2, $a3, $zero
    /* 75634 80084E34 86E7030C */  jal        func_800F9E18
    /* 75638 80084E38 033C0200 */   sra       $a3, $v0, 16
    /* 7563C 80084E3C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 75640 80084E40 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 75644 80084E44 0800E003 */  jr         $ra
    /* 75648 80084E48 00000000 */   nop
endlabel func_80084E10
