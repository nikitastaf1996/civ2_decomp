.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001B358, 0x20

glabel func_8001B358
    /* BB58 8001B358 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* BB5C 8001B35C 1000BFAF */  sw         $ra, 0x10($sp)
    /* BB60 8001B360 5BB6000C */  jal        func_8002D96C
    /* BB64 8001B364 00000000 */   nop
    /* BB68 8001B368 1000BF8F */  lw         $ra, 0x10($sp)
    /* BB6C 8001B36C FF004230 */  andi       $v0, $v0, 0xFF
    /* BB70 8001B370 0800E003 */  jr         $ra
    /* BB74 8001B374 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_8001B358
