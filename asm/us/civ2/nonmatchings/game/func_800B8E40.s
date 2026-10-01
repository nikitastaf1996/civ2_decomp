.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B8E40, 0x38

glabel func_800B8E40
    /* A9640 800B8E40 0500A010 */  beqz       $a1, .L800B8E58
    /* A9644 800B8E44 01000224 */   addiu     $v0, $zero, 0x1
    /* A9648 800B8E48 04108200 */  sllv       $v0, $v0, $a0
    /* A964C 800B8E4C FC0A838F */  lw         $v1, %gp_rel(D_80158FD4)($gp)
    /* A9650 800B8E50 9BE30208 */  j          .L800B8E6C
    /* A9654 800B8E54 25104300 */   or        $v0, $v0, $v1
  .L800B8E58:
    /* A9658 800B8E58 04108200 */  sllv       $v0, $v0, $a0
    /* A965C 800B8E5C 27100200 */  nor        $v0, $zero, $v0
    /* A9660 800B8E60 FC0A838F */  lw         $v1, %gp_rel(D_80158FD4)($gp)
    /* A9664 800B8E64 00000000 */  nop
    /* A9668 800B8E68 24104300 */  and        $v0, $v0, $v1
  .L800B8E6C:
    /* A966C 800B8E6C FC0A82AF */  sw         $v0, %gp_rel(D_80158FD4)($gp)
    /* A9670 800B8E70 0800E003 */  jr         $ra
    /* A9674 800B8E74 00000000 */   nop
endlabel func_800B8E40
