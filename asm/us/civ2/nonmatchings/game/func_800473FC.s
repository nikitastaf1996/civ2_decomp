.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800473FC, 0x28

glabel func_800473FC
    /* 37BFC 800473FC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 37C00 80047400 1000BFAF */  sw         $ra, 0x10($sp)
    /* 37C04 80047404 1180043C */  lui        $a0, %hi(D_8010BC94)
    /* 37C08 80047408 94BC8424 */  addiu      $a0, $a0, %lo(D_8010BC94)
    /* 37C0C 8004740C C488020C */  jal        func_800A2310
    /* 37C10 80047410 00100524 */   addiu     $a1, $zero, 0x1000
    /* 37C14 80047414 1000BF8F */  lw         $ra, 0x10($sp)
    /* 37C18 80047418 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 37C1C 8004741C 0800E003 */  jr         $ra
    /* 37C20 80047420 00000000 */   nop
endlabel func_800473FC
