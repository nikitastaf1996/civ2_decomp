.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80098354, 0x24

glabel func_80098354
    /* 88B54 80098354 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 88B58 80098358 1000BFAF */  sw         $ra, 0x10($sp)
    /* 88B5C 8009835C BD60020C */  jal        func_800982F4
    /* 88B60 80098360 00000000 */   nop
    /* 88B64 80098364 00004290 */  lbu        $v0, 0x0($v0)
    /* 88B68 80098368 1000BF8F */  lw         $ra, 0x10($sp)
    /* 88B6C 8009836C 0F004230 */  andi       $v0, $v0, 0xF
    /* 88B70 80098370 0800E003 */  jr         $ra
    /* 88B74 80098374 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_80098354
