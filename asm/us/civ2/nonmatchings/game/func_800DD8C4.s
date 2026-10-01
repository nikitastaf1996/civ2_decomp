.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DD8C4, 0x20

glabel func_800DD8C4
    /* CE0C4 800DD8C4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* CE0C8 800DD8C8 1000BFAF */  sw         $ra, 0x10($sp)
    /* CE0CC 800DD8CC 2776030C */  jal        func_800DD89C
    /* CE0D0 800DD8D0 00000000 */   nop
    /* CE0D4 800DD8D4 1000BF8F */  lw         $ra, 0x10($sp)
    /* CE0D8 800DD8D8 04004228 */  slti       $v0, $v0, 0x4
    /* CE0DC 800DD8DC 0800E003 */  jr         $ra
    /* CE0E0 800DD8E0 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800DD8C4
