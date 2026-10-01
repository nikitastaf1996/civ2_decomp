.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094CC4, 0x34

glabel func_80094CC4
    /* 854C4 80094CC4 09008010 */  beqz       $a0, .L80094CEC
    /* 854C8 80094CC8 00000000 */   nop
    /* 854CC 80094CCC 6C04828F */  lw         $v0, %gp_rel(D_80158944)($gp)
    /* 854D0 80094CD0 00000000 */  nop
    /* 854D4 80094CD4 26108200 */  xor        $v0, $a0, $v0
    /* 854D8 80094CD8 26208200 */  xor        $a0, $a0, $v0
    /* 854DC 80094CDC 26108200 */  xor        $v0, $a0, $v0
    /* 854E0 80094CE0 6C0482AF */  sw         $v0, %gp_rel(D_80158944)($gp)
    /* 854E4 80094CE4 3C530208 */  j          .L80094CF0
    /* 854E8 80094CE8 21108000 */   addu      $v0, $a0, $zero
  .L80094CEC:
    /* 854EC 80094CEC 21100000 */  addu       $v0, $zero, $zero
  .L80094CF0:
    /* 854F0 80094CF0 0800E003 */  jr         $ra
    /* 854F4 80094CF4 00000000 */   nop
endlabel func_80094CC4
