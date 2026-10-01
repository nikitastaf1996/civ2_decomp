.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80097AB8, 0x2C

glabel func_80097AB8
    /* 882B8 80097AB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 882BC 80097ABC 1000BFAF */  sw         $ra, 0x10($sp)
    /* 882C0 80097AC0 1280043C */  lui        $a0, %hi(D_8011C238)
    /* 882C4 80097AC4 38C28424 */  addiu      $a0, $a0, %lo(D_8011C238)
    /* 882C8 80097AC8 21280000 */  addu       $a1, $zero, $zero
    /* 882CC 80097ACC A9E0030C */  jal        func_800F82A4
    /* 882D0 80097AD0 21300000 */   addu      $a2, $zero, $zero
    /* 882D4 80097AD4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 882D8 80097AD8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 882DC 80097ADC 0800E003 */  jr         $ra
    /* 882E0 80097AE0 00000000 */   nop
endlabel func_80097AB8
