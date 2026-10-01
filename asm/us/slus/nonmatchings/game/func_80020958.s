.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80020958, 0x38

glabel func_80020958
    /* 11158 80020958 1380023C */  lui        $v0, %hi(D_8012AF5C)
    /* 1115C 8002095C 5CAF428C */  lw         $v0, %lo(D_8012AF5C)($v0)
    /* 11160 80020960 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* 11164 80020964 25104300 */  or         $v0, $v0, $v1
    /* 11168 80020968 1380013C */  lui        $at, %hi(D_8012AF5C)
    /* 1116C 8002096C 5CAF22AC */  sw         $v0, %lo(D_8012AF5C)($at)
    /* 11170 80020970 1380023C */  lui        $v0, %hi(D_8012AF80)
    /* 11174 80020974 80AF428C */  lw         $v0, %lo(D_8012AF80)($v0)
    /* 11178 80020978 00000000 */  nop
    /* 1117C 8002097C 25104300 */  or         $v0, $v0, $v1
    /* 11180 80020980 1380013C */  lui        $at, %hi(D_8012AF80)
    /* 11184 80020984 80AF22AC */  sw         $v0, %lo(D_8012AF80)($at)
    /* 11188 80020988 0800E003 */  jr         $ra
    /* 1118C 8002098C 00000000 */   nop
endlabel func_80020958
