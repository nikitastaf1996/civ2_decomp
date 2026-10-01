.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B13C0, 0x48

glabel func_800B13C0
    /* A1BC0 800B13C0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A1BC4 800B13C4 1800BFAF */  sw         $ra, 0x18($sp)
    /* A1BC8 800B13C8 1400B1AF */  sw         $s1, 0x14($sp)
    /* A1BCC 800B13CC 1000B0AF */  sw         $s0, 0x10($sp)
    /* A1BD0 800B13D0 2188A000 */  addu       $s1, $a1, $zero
    /* A1BD4 800B13D4 98019024 */  addiu      $s0, $a0, 0x198
    /* A1BD8 800B13D8 DC52020C */  jal        func_80094B70
    /* A1BDC 800B13DC 21200002 */   addu      $a0, $s0, $zero
    /* A1BE0 800B13E0 21200002 */  addu       $a0, $s0, $zero
    /* A1BE4 800B13E4 09000524 */  addiu      $a1, $zero, 0x9
    /* A1BE8 800B13E8 8B52020C */  jal        func_80094A2C
    /* A1BEC 800B13EC FFFF2632 */   andi      $a2, $s1, 0xFFFF
    /* A1BF0 800B13F0 1800BF8F */  lw         $ra, 0x18($sp)
    /* A1BF4 800B13F4 1400B18F */  lw         $s1, 0x14($sp)
    /* A1BF8 800B13F8 1000B08F */  lw         $s0, 0x10($sp)
    /* A1BFC 800B13FC 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A1C00 800B1400 0800E003 */  jr         $ra
    /* A1C04 800B1404 00000000 */   nop
endlabel func_800B13C0
