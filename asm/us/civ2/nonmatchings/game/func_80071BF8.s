.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80071BF8, 0x44

glabel func_80071BF8
    /* 623F8 80071BF8 21200000 */  addu       $a0, $zero, $zero
    /* 623FC 80071BFC 1180073C */  lui        $a3, %hi(D_8010CB38)
    /* 62400 80071C00 38CBE724 */  addiu      $a3, $a3, %lo(D_8010CB38)
    /* 62404 80071C04 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 62408 80071C08 1180063C */  lui        $a2, %hi(D_8010CB8C)
    /* 6240C 80071C0C 8CCBC624 */  addiu      $a2, $a2, %lo(D_8010CB8C)
  .L80071C10:
    /* 62410 80071C10 80100400 */  sll        $v0, $a0, 2
    /* 62414 80071C14 21184700 */  addu       $v1, $v0, $a3
    /* 62418 80071C18 000065AC */  sw         $a1, 0x0($v1)
    /* 6241C 80071C1C 21104600 */  addu       $v0, $v0, $a2
    /* 62420 80071C20 000045AC */  sw         $a1, 0x0($v0)
    /* 62424 80071C24 01008424 */  addiu      $a0, $a0, 0x1
    /* 62428 80071C28 15008228 */  slti       $v0, $a0, 0x15
    /* 6242C 80071C2C F8FF4014 */  bnez       $v0, .L80071C10
    /* 62430 80071C30 00000000 */   nop
    /* 62434 80071C34 0800E003 */  jr         $ra
    /* 62438 80071C38 00000000 */   nop
endlabel func_80071BF8
