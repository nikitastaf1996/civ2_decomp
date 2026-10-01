.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B5F0, 0x5C

glabel func_8002B5F0
    /* 1BDF0 8002B5F0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1BDF4 8002B5F4 1800BFAF */  sw         $ra, 0x18($sp)
    /* 1BDF8 8002B5F8 21288000 */  addu       $a1, $a0, $zero
    /* 1BDFC 8002B5FC 80180500 */  sll        $v1, $a1, 2
    /* 1BE00 8002B600 1280013C */  lui        $at, %hi(D_80127368)
    /* 1BE04 8002B604 21082300 */  addu       $at, $at, $v1
    /* 1BE08 8002B608 6873228C */  lw         $v0, %lo(D_80127368)($at)
    /* 1BE0C 8002B60C 00000000 */  nop
    /* 1BE10 8002B610 1000A2AF */  sw         $v0, 0x10($sp)
    /* 1BE14 8002B614 0180043C */  lui        $a0, %hi(D_800172E0)
    /* 1BE18 8002B618 E0728424 */  addiu      $a0, $a0, %lo(D_800172E0)
    /* 1BE1C 8002B61C 0180013C */  lui        $at, %hi(D_8001696C)
    /* 1BE20 8002B620 21082300 */  addu       $at, $at, $v1
    /* 1BE24 8002B624 6C69268C */  lw         $a2, %lo(D_8001696C)($at)
    /* 1BE28 8002B628 1380013C */  lui        $at, %hi(D_80129868)
    /* 1BE2C 8002B62C 21082300 */  addu       $at, $at, $v1
    /* 1BE30 8002B630 6898278C */  lw         $a3, %lo(D_80129868)($at)
    /* 1BE34 8002B634 5CAD000C */  jal        func_8002B570
    /* 1BE38 8002B638 00000000 */   nop
    /* 1BE3C 8002B63C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 1BE40 8002B640 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 1BE44 8002B644 0800E003 */  jr         $ra
    /* 1BE48 8002B648 00000000 */   nop
endlabel func_8002B5F0
