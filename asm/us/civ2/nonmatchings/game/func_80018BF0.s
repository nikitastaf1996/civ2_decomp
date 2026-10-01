.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80018BF0, 0x40

glabel func_80018BF0
    /* 93F0 80018BF0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 93F4 80018BF4 1000BFAF */  sw         $ra, 0x10($sp)
    /* 93F8 80018BF8 9458000C */  jal        func_80016250
    /* 93FC 80018BFC 00000000 */   nop
    /* 9400 80018C00 8962000C */  jal        func_80018A24
    /* 9404 80018C04 00000000 */   nop
    /* 9408 80018C08 DB5A000C */  jal        func_80016B6C
    /* 940C 80018C0C 00000000 */   nop
    /* 9410 80018C10 105C000C */  jal        func_80017040
    /* 9414 80018C14 00000000 */   nop
    /* 9418 80018C18 C25F000C */  jal        func_80017F08
    /* 941C 80018C1C 00000000 */   nop
    /* 9420 80018C20 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9424 80018C24 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9428 80018C28 0800E003 */  jr         $ra
    /* 942C 80018C2C 00000000 */   nop
endlabel func_80018BF0
