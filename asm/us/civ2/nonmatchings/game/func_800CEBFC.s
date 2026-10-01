.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800CEBFC, 0x18

glabel func_800CEBFC
    /* BF3FC 800CEBFC 0000838C */  lw         $v1, 0x0($a0)
    /* BF400 800CEC00 0000A28C */  lw         $v0, 0x0($a1)
    /* BF404 800CEC04 00000000 */  nop
    /* BF408 800CEC08 000082AC */  sw         $v0, 0x0($a0)
    /* BF40C 800CEC0C 0800E003 */  jr         $ra
    /* BF410 800CEC10 0000A3AC */   sw        $v1, 0x0($a1)
endlabel func_800CEBFC
