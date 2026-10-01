.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800193D8, 0x20

glabel func_800193D8
    /* 9BD8 800193D8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9BDC 800193DC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9BE0 800193E0 53B0000C */  jal        func_8002C14C
    /* 9BE4 800193E4 00000000 */   nop
    /* 9BE8 800193E8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9BEC 800193EC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9BF0 800193F0 0800E003 */  jr         $ra
    /* 9BF4 800193F4 00000000 */   nop
endlabel func_800193D8
