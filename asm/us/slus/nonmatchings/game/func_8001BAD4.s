.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_8001BAD4, 0x28

glabel func_8001BAD4
    /* C2D4 8001BAD4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* C2D8 8001BAD8 1000BFAF */  sw         $ra, 0x10($sp)
    /* C2DC 8001BADC 00340600 */  sll        $a2, $a2, 16
    /* C2E0 8001BAE0 03340600 */  sra        $a2, $a2, 16
    /* C2E4 8001BAE4 0168000C */  jal        func_8001A004
    /* C2E8 8001BAE8 01000724 */   addiu     $a3, $zero, 0x1
    /* C2EC 8001BAEC 1000BF8F */  lw         $ra, 0x10($sp)
    /* C2F0 8001BAF0 1800BD27 */  addiu      $sp, $sp, 0x18
    /* C2F4 8001BAF4 0800E003 */  jr         $ra
    /* C2F8 8001BAF8 00000000 */   nop
endlabel func_8001BAD4
