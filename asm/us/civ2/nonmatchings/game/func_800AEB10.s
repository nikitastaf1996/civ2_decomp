.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AEB10, 0x20

glabel func_800AEB10
    /* 9F310 800AEB10 05000324 */  addiu      $v1, $zero, 0x5
    /* 9F314 800AEB14 FC09828F */  lw         $v0, %gp_rel(D_80158ED4)($gp)
    /* 9F318 800AEB18 00000000 */  nop
    /* 9F31C 800AEB1C 02004310 */  beq        $v0, $v1, .L800AEB28
    /* 9F320 800AEB20 00000000 */   nop
    /* 9F324 800AEB24 FC0983AF */  sw         $v1, %gp_rel(D_80158ED4)($gp)
  .L800AEB28:
    /* 9F328 800AEB28 0800E003 */  jr         $ra
    /* 9F32C 800AEB2C 00000000 */   nop
endlabel func_800AEB10
