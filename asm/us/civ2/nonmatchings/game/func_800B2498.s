.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B2498, 0x24

glabel func_800B2498
    /* A2C98 800B2498 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A2C9C 800B249C 1000BFAF */  sw         $ra, 0x10($sp)
    /* A2CA0 800B24A0 2130A000 */  addu       $a2, $a1, $zero
    /* A2CA4 800B24A4 17C9020C */  jal        func_800B245C
    /* A2CA8 800B24A8 21280000 */   addu      $a1, $zero, $zero
    /* A2CAC 800B24AC 1000BF8F */  lw         $ra, 0x10($sp)
    /* A2CB0 800B24B0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A2CB4 800B24B4 0800E003 */  jr         $ra
    /* A2CB8 800B24B8 00000000 */   nop
endlabel func_800B2498
