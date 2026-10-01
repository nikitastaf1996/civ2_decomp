.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A47F0, 0x38

glabel func_800A47F0
    /* 94FF0 800A47F0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 94FF4 800A47F4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 94FF8 800A47F8 21308000 */  addu       $a2, $a0, $zero
    /* 94FFC 800A47FC 1C000224 */  addiu      $v0, $zero, 0x1C
    /* 95000 800A4800 1000A2AF */  sw         $v0, 0x10($sp)
    /* 95004 800A4804 1800A427 */  addiu      $a0, $sp, 0x18
    /* 95008 800A4808 F404C524 */  addiu      $a1, $a2, 0x4F4
    /* 9500C 800A480C 8C00C624 */  addiu      $a2, $a2, 0x8C
    /* 95010 800A4810 89EE030C */  jal        func_800FBA24
    /* 95014 800A4814 68000724 */   addiu     $a3, $zero, 0x68
    /* 95018 800A4818 2000BF8F */  lw         $ra, 0x20($sp)
    /* 9501C 800A481C 01000224 */  addiu      $v0, $zero, 0x1
    /* 95020 800A4820 0800E003 */  jr         $ra
    /* 95024 800A4824 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800A47F0
