.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DF5A8, 0x8

glabel func_800DF5A8
    /* CFDA8 800DF5A8 0800E003 */  jr         $ra
    /* CFDAC 800DF5AC 21100000 */   addu      $v0, $zero, $zero
endlabel func_800DF5A8
