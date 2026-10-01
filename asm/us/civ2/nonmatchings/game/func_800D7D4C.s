.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D7D4C, 0x28

glabel func_800D7D4C
    /* C854C 800D7D4C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C8550 800D7D50 1000BFAF */  sw         $ra, 0x10($sp)
    /* C8554 800D7D54 1280043C */  lui        $a0, %hi(D_80121BF8)
    /* C8558 800D7D58 F81B8424 */  addiu      $a0, $a0, %lo(D_80121BF8)
    /* C855C 800D7D5C B358030C */  jal        func_800D62CC
    /* C8560 800D7D60 00000000 */   nop
    /* C8564 800D7D64 1000BF8F */  lw         $ra, 0x10($sp)
    /* C8568 800D7D68 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C856C 800D7D6C 0800E003 */  jr         $ra
    /* C8570 800D7D70 00000000 */   nop
endlabel func_800D7D4C
