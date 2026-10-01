.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800DD89C, 0x28

glabel func_800DD89C
    /* CE09C 800DD89C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* CE0A0 800DD8A0 1000BFAF */  sw         $ra, 0x10($sp)
    /* CE0A4 800DD8A4 E175030C */  jal        func_800DD784
    /* CE0A8 800DD8A8 00000000 */   nop
    /* CE0AC 800DD8AC 0B76030C */  jal        func_800DD82C
    /* CE0B0 800DD8B0 21204000 */   addu      $a0, $v0, $zero
    /* CE0B4 800DD8B4 1000BF8F */  lw         $ra, 0x10($sp)
    /* CE0B8 800DD8B8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* CE0BC 800DD8BC 0800E003 */  jr         $ra
    /* CE0C0 800DD8C0 00000000 */   nop
endlabel func_800DD89C
