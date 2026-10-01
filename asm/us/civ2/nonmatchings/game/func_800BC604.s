.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800BC604, 0x8

glabel func_800BC604
    /* ACE04 800BC604 0800E003 */  jr         $ra
    /* ACE08 800BC608 00000000 */   nop
endlabel func_800BC604
