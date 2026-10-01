.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1390, 0x30

glabel func_800B1390
    /* A1B90 800B1390 1000A28F */  lw         $v0, 0x10($sp)
    /* A1B94 800B1394 1400A38F */  lw         $v1, 0x14($sp)
    /* A1B98 800B1398 1800A88F */  lw         $t0, 0x18($sp)
    /* A1B9C 800B139C 300A84AF */  sw         $a0, %gp_rel(D_80158F08)($gp)
    /* A1BA0 800B13A0 340A85AF */  sw         $a1, %gp_rel(D_80158F0C)($gp)
    /* A1BA4 800B13A4 380A86AF */  sw         $a2, %gp_rel(D_80158F10)($gp)
    /* A1BA8 800B13A8 3C0A87AF */  sw         $a3, %gp_rel(D_80158F14)($gp)
    /* A1BAC 800B13AC 400A82AF */  sw         $v0, %gp_rel(D_80158F18)($gp)
    /* A1BB0 800B13B0 440A83AF */  sw         $v1, %gp_rel(D_80158F1C)($gp)
    /* A1BB4 800B13B4 480A88AF */  sw         $t0, %gp_rel(D_80158F20)($gp)
    /* A1BB8 800B13B8 0800E003 */  jr         $ra
    /* A1BBC 800B13BC 00000000 */   nop
endlabel func_800B1390
