.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80084DD0, 0x40

glabel func_80084DD0
    /* 755D0 80084DD0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 755D4 80084DD4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 755D8 80084DD8 002C0500 */  sll        $a1, $a1, 16
    /* 755DC 80084DDC 00340600 */  sll        $a2, $a2, 16
    /* 755E0 80084DE0 003C0700 */  sll        $a3, $a3, 16
    /* 755E4 80084DE4 3000A287 */  lh         $v0, 0x30($sp)
    /* 755E8 80084DE8 00000000 */  nop
    /* 755EC 80084DEC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 755F0 80084DF0 032C0500 */  sra        $a1, $a1, 16
    /* 755F4 80084DF4 03340600 */  sra        $a2, $a2, 16
    /* 755F8 80084DF8 86E7030C */  jal        func_800F9E18
    /* 755FC 80084DFC 033C0700 */   sra       $a3, $a3, 16
    /* 75600 80084E00 1800BF8F */  lw         $ra, 0x18($sp)
    /* 75604 80084E04 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 75608 80084E08 0800E003 */  jr         $ra
    /* 7560C 80084E0C 00000000 */   nop
endlabel func_80084DD0
