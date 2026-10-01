.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A28B8, 0x18

glabel func_800A28B8
    /* 930B8 800A28B8 0300A010 */  beqz       $a1, .L800A28C8
    /* 930BC 800A28BC 00000000 */   nop
    /* 930C0 800A28C0 A40584AF */  sw         $a0, %gp_rel(D_80158A7C)($gp)
    /* 930C4 800A28C4 A00585AF */  sw         $a1, %gp_rel(D_80158A78)($gp)
  .L800A28C8:
    /* 930C8 800A28C8 0800E003 */  jr         $ra
    /* 930CC 800A28CC 00000000 */   nop
endlabel func_800A28B8
