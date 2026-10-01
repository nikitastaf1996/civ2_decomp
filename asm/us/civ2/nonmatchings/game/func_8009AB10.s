.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009AB10, 0x38

glabel func_8009AB10
    /* 8B310 8009AB10 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8B314 8009AB14 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8B318 8009AB18 3000A28F */  lw         $v0, 0x30($sp)
    /* 8B31C 8009AB1C 00000000 */  nop
    /* 8B320 8009AB20 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8B324 8009AB24 32028284 */  lh         $v0, 0x232($a0)
    /* 8B328 8009AB28 00000000 */  nop
    /* 8B32C 8009AB2C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8B330 8009AB30 4CBB020C */  jal        func_800AED30
    /* 8B334 8009AB34 0300C634 */   ori       $a2, $a2, 0x3
    /* 8B338 8009AB38 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8B33C 8009AB3C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8B340 8009AB40 0800E003 */  jr         $ra
    /* 8B344 8009AB44 00000000 */   nop
endlabel func_8009AB10
