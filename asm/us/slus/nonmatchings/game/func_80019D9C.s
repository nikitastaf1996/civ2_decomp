.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80019D9C, 0x38

glabel func_80019D9C
    /* A59C 80019D9C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A5A0 80019DA0 1000BFAF */  sw         $ra, 0x10($sp)
    /* A5A4 80019DA4 1380043C */  lui        $a0, %hi(D_8012A038)
    /* A5A8 80019DA8 38A08424 */  addiu      $a0, $a0, %lo(D_8012A038)
    /* A5AC 80019DAC 826D000C */  jal        func_8001B608
    /* A5B0 80019DB0 60000524 */   addiu     $a1, $zero, 0x60
    /* A5B4 80019DB4 1380043C */  lui        $a0, %hi(D_8012A038)
    /* A5B8 80019DB8 38A08424 */  addiu      $a0, $a0, %lo(D_8012A038)
    /* A5BC 80019DBC B7B8000C */  jal        CdGetToc
    /* A5C0 80019DC0 00000000 */   nop
    /* A5C4 80019DC4 1000BF8F */  lw         $ra, 0x10($sp)
    /* A5C8 80019DC8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A5CC 80019DCC 0800E003 */  jr         $ra
    /* A5D0 80019DD0 00000000 */   nop
endlabel func_80019D9C
