.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DF55C, 0x24

glabel func_800DF55C
    /* CFD5C 800DF55C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* CFD60 800DF560 1000BFAF */  sw         $ra, 0x10($sp)
    /* CFD64 800DF564 3010848F */  lw         $a0, %gp_rel(D_80159508)($gp)
    /* CFD68 800DF568 31DE030C */  jal        func_800F78C4
    /* CFD6C 800DF56C 2C008424 */   addiu     $a0, $a0, 0x2C
    /* CFD70 800DF570 1000BF8F */  lw         $ra, 0x10($sp)
    /* CFD74 800DF574 1800BD27 */  addiu      $sp, $sp, 0x18
    /* CFD78 800DF578 0800E003 */  jr         $ra
    /* CFD7C 800DF57C 00000000 */   nop
endlabel func_800DF55C
