.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800142BC, 0x8

glabel func_800142BC
    /* 4ABC 800142BC 0800E003 */  jr         $ra
    /* 4AC0 800142C0 FF004230 */   andi      $v0, $v0, 0xFF
endlabel func_800142BC
