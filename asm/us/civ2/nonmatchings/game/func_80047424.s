.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80047424, 0x2C

glabel func_80047424
    /* 37C24 80047424 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 37C28 80047428 1000BFAF */  sw         $ra, 0x10($sp)
    /* 37C2C 8004742C 1280043C */  lui        $a0, %hi(D_8011A268)
    /* 37C30 80047430 68A28484 */  lh         $a0, %lo(D_8011A268)($a0)
    /* 37C34 80047434 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 37C38 80047438 8504020C */  jal        func_80081214
    /* 37C3C 8004743C 03000624 */   addiu     $a2, $zero, 0x3
    /* 37C40 80047440 1000BF8F */  lw         $ra, 0x10($sp)
    /* 37C44 80047444 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 37C48 80047448 0800E003 */  jr         $ra
    /* 37C4C 8004744C 00000000 */   nop
endlabel func_80047424
