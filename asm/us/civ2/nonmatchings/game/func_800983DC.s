.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800983DC, 0x28

glabel func_800983DC
    /* 88BDC 800983DC E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 88BE0 800983E0 1000BFAF */  sw         $ra, 0x10($sp)
    /* 88BE4 800983E4 D560020C */  jal        func_80098354
    /* 88BE8 800983E8 00000000 */   nop
    /* 88BEC 800983EC FF004230 */  andi       $v0, $v0, 0xFF
    /* 88BF0 800983F0 0A004238 */  xori       $v0, $v0, 0xA
    /* 88BF4 800983F4 1000BF8F */  lw         $ra, 0x10($sp)
    /* 88BF8 800983F8 0100422C */  sltiu      $v0, $v0, 0x1
    /* 88BFC 800983FC 0800E003 */  jr         $ra
    /* 88C00 80098400 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800983DC
