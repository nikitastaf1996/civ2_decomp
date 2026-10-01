.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8002B528, 0x30

glabel func_8002B528
    /* 1BD28 8002B528 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1BD2C 8002B52C 2800BFAF */  sw         $ra, 0x28($sp)
    /* 1BD30 8002B530 21308000 */  addu       $a2, $a0, $zero
    /* 1BD34 8002B534 2138A000 */  addu       $a3, $a1, $zero
    /* 1BD38 8002B538 0180053C */  lui        $a1, %hi(D_800172BC)
    /* 1BD3C 8002B53C BC72A524 */  addiu      $a1, $a1, %lo(D_800172BC)
    /* 1BD40 8002B540 67B6000C */  jal        sprintf
    /* 1BD44 8002B544 1000A427 */   addiu     $a0, $sp, 0x10
    /* 1BD48 8002B548 2800BF8F */  lw         $ra, 0x28($sp)
    /* 1BD4C 8002B54C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1BD50 8002B550 0800E003 */  jr         $ra
    /* 1BD54 8002B554 00000000 */   nop
endlabel func_8002B528
