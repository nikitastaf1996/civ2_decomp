.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800AB2F8, 0x34

glabel func_800AB2F8
    /* 9BAF8 800AB2F8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 9BAFC 800AB2FC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 9BB00 800AB300 1680023C */  lui        $v0, %hi(D_8015894C)
    /* 9BB04 800AB304 4C89428C */  lw         $v0, %lo(D_8015894C)($v0)
    /* 9BB08 800AB308 80280500 */  sll        $a1, $a1, 2
    /* 9BB0C 800AB30C 2128A200 */  addu       $a1, $a1, $v0
    /* 9BB10 800AB310 0000A58C */  lw         $a1, 0x0($a1)
    /* 9BB14 800AB314 ABAC020C */  jal        func_800AB2AC
    /* 9BB18 800AB318 00000000 */   nop
    /* 9BB1C 800AB31C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9BB20 800AB320 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 9BB24 800AB324 0800E003 */  jr         $ra
    /* 9BB28 800AB328 00000000 */   nop
endlabel func_800AB2F8
