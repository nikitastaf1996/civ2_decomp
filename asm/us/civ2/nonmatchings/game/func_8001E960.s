.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001E960, 0x14

glabel func_8001E960
    /* F160 8001E960 F00080AF */  sw         $zero, %gp_rel(D_801585C8)($gp)
    /* F164 8001E964 01000224 */  addiu      $v0, $zero, 0x1
    /* F168 8001E968 F40082AF */  sw         $v0, %gp_rel(D_801585CC)($gp)
    /* F16C 8001E96C 0800E003 */  jr         $ra
    /* F170 8001E970 00000000 */   nop
endlabel func_8001E960
