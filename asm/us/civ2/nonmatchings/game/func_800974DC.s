.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800974DC, 0x8

glabel func_800974DC
    /* 87CDC 800974DC 0800E003 */  jr         $ra
    /* 87CE0 800974E0 21100000 */   addu      $v0, $zero, $zero
endlabel func_800974DC
