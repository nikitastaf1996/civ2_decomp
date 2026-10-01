.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800193B8, 0x20

glabel func_800193B8
    /* 9BB8 800193B8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9BBC 800193BC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9BC0 800193C0 8FB0000C */  jal        func_8002C23C
    /* 9BC4 800193C4 00000000 */   nop
    /* 9BC8 800193C8 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9BCC 800193CC 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9BD0 800193D0 0800E003 */  jr         $ra
    /* 9BD4 800193D4 00000000 */   nop
endlabel func_800193B8
