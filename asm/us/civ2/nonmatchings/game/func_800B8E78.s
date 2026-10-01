.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8E78, 0x14

glabel func_800B8E78
    /* A9678 800B8E78 01000224 */  addiu      $v0, $zero, 0x1
    /* A967C 800B8E7C 04108200 */  sllv       $v0, $v0, $a0
    /* A9680 800B8E80 FC0A838F */  lw         $v1, %gp_rel(D_80158FD4)($gp)
    /* A9684 800B8E84 0800E003 */  jr         $ra
    /* A9688 800B8E88 24104300 */   and       $v0, $v0, $v1
endlabel func_800B8E78
