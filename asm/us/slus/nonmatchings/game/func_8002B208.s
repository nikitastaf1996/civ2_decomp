.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B208, 0x20

glabel func_8002B208
    /* 1BA08 8002B208 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 1BA0C 8002B20C 1000BFAF */  sw         $ra, 0x10($sp)
    /* 1BA10 8002B210 3EAD000C */  jal        func_8002B4F8
    /* 1BA14 8002B214 00000000 */   nop
    /* 1BA18 8002B218 1000BF8F */  lw         $ra, 0x10($sp)
    /* 1BA1C 8002B21C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 1BA20 8002B220 0800E003 */  jr         $ra
    /* 1BA24 8002B224 00000000 */   nop
endlabel func_8002B208
