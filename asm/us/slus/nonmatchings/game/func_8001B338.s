.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B338, 0x20

glabel func_8001B338
    /* BB38 8001B338 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BB3C 8001B33C 1000BFAF */  sw         $ra, 0x10($sp)
    /* BB40 8001B340 5BB6000C */  jal        func_8002D96C
    /* BB44 8001B344 00000000 */   nop
    /* BB48 8001B348 1000BF8F */  lw         $ra, 0x10($sp)
    /* BB4C 8001B34C FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* BB50 8001B350 0800E003 */  jr         $ra
    /* BB54 8001B354 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8001B338
