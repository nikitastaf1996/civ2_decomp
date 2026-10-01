.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B98A0, 0x30

glabel func_800B98A0
    /* AA0A0 800B98A0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* AA0A4 800B98A4 1800BFAF */  sw         $ra, 0x18($sp)
    /* AA0A8 800B98A8 5803828C */  lw         $v0, 0x358($a0)
    /* AA0AC 800B98AC 21280000 */  addu       $a1, $zero, $zero
    /* AA0B0 800B98B0 1000A2AF */  sw         $v0, 0x10($sp)
    /* AA0B4 800B98B4 7003878C */  lw         $a3, 0x370($a0)
    /* AA0B8 800B98B8 10E6020C */  jal        func_800B9840
    /* AA0BC 800B98BC 21300000 */   addu      $a2, $zero, $zero
    /* AA0C0 800B98C0 1800BF8F */  lw         $ra, 0x18($sp)
    /* AA0C4 800B98C4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* AA0C8 800B98C8 0800E003 */  jr         $ra
    /* AA0CC 800B98CC 00000000 */   nop
endlabel func_800B98A0
