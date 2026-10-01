.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8005A6DC, 0x20

glabel func_8005A6DC
    /* 4AEDC 8005A6DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4AEE0 8005A6E0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 4AEE4 8005A6E4 8369010C */  jal        func_8005A60C
    /* 4AEE8 8005A6E8 00000000 */   nop
    /* 4AEEC 8005A6EC 1000BF8F */  lw         $ra, 0x10($sp)
    /* 4AEF0 8005A6F0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4AEF4 8005A6F4 0800E003 */  jr         $ra
    /* 4AEF8 8005A6F8 00000000 */   nop
endlabel func_8005A6DC
