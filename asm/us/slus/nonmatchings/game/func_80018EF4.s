.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80018EF4, 0x30

glabel func_80018EF4
    /* 96F4 80018EF4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 96F8 80018EF8 1000BFAF */  sw         $ra, 0x10($sp)
    /* 96FC 80018EFC 00008290 */  lbu        $v0, 0x0($a0)
    /* 9700 80018F00 00000000 */  nop
    /* 9704 80018F04 00120200 */  sll        $v0, $v0, 8
    /* 9708 80018F08 01008490 */  lbu        $a0, 0x1($a0)
    /* 970C 80018F0C DBC9000C */  jal        func_8003276C
    /* 9710 80018F10 25208200 */   or        $a0, $a0, $v0
    /* 9714 80018F14 1000BF8F */  lw         $ra, 0x10($sp)
    /* 9718 80018F18 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 971C 80018F1C 0800E003 */  jr         $ra
    /* 9720 80018F20 00000000 */   nop
endlabel func_80018EF4
