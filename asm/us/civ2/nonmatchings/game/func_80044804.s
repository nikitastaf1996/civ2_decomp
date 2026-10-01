.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80044804, 0x20

glabel func_80044804
    /* 35004 80044804 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 35008 80044808 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3500C 8004480C 90E3020C */  jal        func_800B8E40
    /* 35010 80044810 2B280500 */   sltu      $a1, $zero, $a1
    /* 35014 80044814 1000BF8F */  lw         $ra, 0x10($sp)
    /* 35018 80044818 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3501C 8004481C 0800E003 */  jr         $ra
    /* 35020 80044820 00000000 */   nop
endlabel func_80044804
