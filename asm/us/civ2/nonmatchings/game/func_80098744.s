.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098744, 0x24

glabel func_80098744
    /* 88F44 80098744 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 88F48 80098748 1000BFAF */  sw         $ra, 0x10($sp)
    /* 88F4C 8009874C BD60020C */  jal        func_800982F4
    /* 88F50 80098750 00000000 */   nop
    /* 88F54 80098754 05004290 */  lbu        $v0, 0x5($v0)
    /* 88F58 80098758 1000BF8F */  lw         $ra, 0x10($sp)
    /* 88F5C 8009875C 0F004230 */  andi       $v0, $v0, 0xF
    /* 88F60 80098760 0800E003 */  jr         $ra
    /* 88F64 80098764 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80098744
