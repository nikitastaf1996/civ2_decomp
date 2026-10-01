.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80070A50, 0x40

glabel func_80070A50
    /* 61250 80070A50 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 61254 80070A54 1000BFAF */  sw         $ra, 0x10($sp)
    /* 61258 80070A58 95FF0424 */  addiu      $a0, $zero, -0x6B
    /* 6125C 80070A5C 21280000 */  addu       $a1, $zero, $zero
    /* 61260 80070A60 01000624 */  addiu      $a2, $zero, 0x1
    /* 61264 80070A64 2B9D020C */  jal        func_800A74AC
    /* 61268 80070A68 21380000 */   addu      $a3, $zero, $zero
    /* 6126C 80070A6C 6C000424 */  addiu      $a0, $zero, 0x6C
    /* 61270 80070A70 21280000 */  addu       $a1, $zero, $zero
    /* 61274 80070A74 21300000 */  addu       $a2, $zero, $zero
    /* 61278 80070A78 2B9D020C */  jal        func_800A74AC
    /* 6127C 80070A7C 21380000 */   addu      $a3, $zero, $zero
    /* 61280 80070A80 1000BF8F */  lw         $ra, 0x10($sp)
    /* 61284 80070A84 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 61288 80070A88 0800E003 */  jr         $ra
    /* 6128C 80070A8C 00000000 */   nop
endlabel func_80070A50
