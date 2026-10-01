.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800207B4, 0x38

glabel func_800207B4
    /* 10FB4 800207B4 1380023C */  lui        $v0, %hi(D_8012D704)
    /* 10FB8 800207B8 04D7428C */  lw         $v0, %lo(D_8012D704)($v0)
    /* 10FBC 800207BC 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* 10FC0 800207C0 25104300 */  or         $v0, $v0, $v1
    /* 10FC4 800207C4 1380013C */  lui        $at, %hi(D_8012D704)
    /* 10FC8 800207C8 04D722AC */  sw         $v0, %lo(D_8012D704)($at)
    /* 10FCC 800207CC 1380023C */  lui        $v0, %hi(D_8012D6E0)
    /* 10FD0 800207D0 E0D6428C */  lw         $v0, %lo(D_8012D6E0)($v0)
    /* 10FD4 800207D4 00000000 */  nop
    /* 10FD8 800207D8 25104300 */  or         $v0, $v0, $v1
    /* 10FDC 800207DC 1380013C */  lui        $at, %hi(D_8012D6E0)
    /* 10FE0 800207E0 E0D622AC */  sw         $v0, %lo(D_8012D6E0)($at)
    /* 10FE4 800207E4 0800E003 */  jr         $ra
    /* 10FE8 800207E8 00000000 */   nop
endlabel func_800207B4
