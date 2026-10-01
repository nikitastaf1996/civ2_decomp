.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800144FC, 0x10

glabel func_800144FC
    /* 4CFC 800144FC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 4D00 80014500 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 4D04 80014504 0800E003 */  jr         $ra
    /* 4D08 80014508 00000000 */   nop
endlabel func_800144FC
