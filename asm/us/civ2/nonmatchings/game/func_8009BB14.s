.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8009BB14, 0x38

glabel func_8009BB14
    /* 8C314 8009BB14 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 8C318 8009BB18 1800BFAF */  sw         $ra, 0x18($sp)
    /* 8C31C 8009BB1C 1280023C */  lui        $v0, %hi(D_8011ACB4)
    /* 8C320 8009BB20 B4AC428C */  lw         $v0, %lo(D_8011ACB4)($v0)
    /* 8C324 8009BB24 00000000 */  nop
    /* 8C328 8009BB28 1000A2AF */  sw         $v0, 0x10($sp)
    /* 8C32C 8009BB2C 01000224 */  addiu      $v0, $zero, 0x1
    /* 8C330 8009BB30 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8C334 8009BB34 8F6E020C */  jal        func_8009BA3C
    /* 8C338 8009BB38 21380000 */   addu      $a3, $zero, $zero
    /* 8C33C 8009BB3C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 8C340 8009BB40 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 8C344 8009BB44 0800E003 */  jr         $ra
    /* 8C348 8009BB48 00000000 */   nop
endlabel func_8009BB14
