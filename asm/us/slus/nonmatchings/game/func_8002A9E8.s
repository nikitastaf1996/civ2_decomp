.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002A9E8, 0x38

glabel func_8002A9E8
    /* 1B1E8 8002A9E8 1380023C */  lui        $v0, %hi(D_8012CC0C)
    /* 1B1EC 8002A9EC 0CCC428C */  lw         $v0, %lo(D_8012CC0C)($v0)
    /* 1B1F0 8002A9F0 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* 1B1F4 8002A9F4 25104300 */  or         $v0, $v0, $v1
    /* 1B1F8 8002A9F8 1380013C */  lui        $at, %hi(D_8012CC0C)
    /* 1B1FC 8002A9FC 0CCC22AC */  sw         $v0, %lo(D_8012CC0C)($at)
    /* 1B200 8002AA00 1380023C */  lui        $v0, %hi(D_8012CC30)
    /* 1B204 8002AA04 30CC428C */  lw         $v0, %lo(D_8012CC30)($v0)
    /* 1B208 8002AA08 00000000 */  nop
    /* 1B20C 8002AA0C 25104300 */  or         $v0, $v0, $v1
    /* 1B210 8002AA10 1380013C */  lui        $at, %hi(D_8012CC30)
    /* 1B214 8002AA14 30CC22AC */  sw         $v0, %lo(D_8012CC30)($at)
    /* 1B218 8002AA18 0800E003 */  jr         $ra
    /* 1B21C 8002AA1C 00000000 */   nop
endlabel func_8002A9E8
