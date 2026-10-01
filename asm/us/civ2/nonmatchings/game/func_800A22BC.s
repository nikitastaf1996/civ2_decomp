.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A22BC, 0xC

glabel func_800A22BC
    /* 92ABC 800A22BC 180080AC */  sw         $zero, 0x18($a0)
    /* 92AC0 800A22C0 0800E003 */  jr         $ra
    /* 92AC4 800A22C4 140080AC */   sw        $zero, 0x14($a0)
endlabel func_800A22BC
