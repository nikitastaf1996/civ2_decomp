.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800990F8, 0x2C

glabel func_800990F8
    /* 898F8 800990F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 898FC 800990FC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 89900 80099100 21108000 */  addu       $v0, $a0, $zero
    /* 89904 80099104 00340500 */  sll        $a2, $a1, 16
    /* 89908 80099108 2E024584 */  lh         $a1, 0x22E($v0)
    /* 8990C 8009910C BC7B020C */  jal        func_8009EEF0
    /* 89910 80099110 03340600 */   sra       $a2, $a2, 16
    /* 89914 80099114 1000BF8F */  lw         $ra, 0x10($sp)
    /* 89918 80099118 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8991C 8009911C 0800E003 */  jr         $ra
    /* 89920 80099120 00000000 */   nop
endlabel func_800990F8
