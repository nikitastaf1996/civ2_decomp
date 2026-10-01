.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800D0A78, 0x48

glabel func_800D0A78
    /* C1278 800D0A78 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* C127C 800D0A7C 1800BFAF */  sw         $ra, 0x18($sp)
    /* C1280 800D0A80 1400B1AF */  sw         $s1, 0x14($sp)
    /* C1284 800D0A84 1000B0AF */  sw         $s0, 0x10($sp)
    /* C1288 800D0A88 21808000 */  addu       $s0, $a0, $zero
    /* C128C 800D0A8C 7113020C */  jal        func_80084DC4
    /* C1290 800D0A90 2188A000 */   addu      $s1, $a1, $zero
    /* C1294 800D0A94 1980030C */  jal        func_800E0064
    /* C1298 800D0A98 21200002 */   addu      $a0, $s0, $zero
    /* C129C 800D0A9C 21200002 */  addu       $a0, $s0, $zero
    /* C12A0 800D0AA0 7742030C */  jal        func_800D09DC
    /* C12A4 800D0AA4 21282002 */   addu      $a1, $s1, $zero
    /* C12A8 800D0AA8 1800BF8F */  lw         $ra, 0x18($sp)
    /* C12AC 800D0AAC 1400B18F */  lw         $s1, 0x14($sp)
    /* C12B0 800D0AB0 1000B08F */  lw         $s0, 0x10($sp)
    /* C12B4 800D0AB4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* C12B8 800D0AB8 0800E003 */  jr         $ra
    /* C12BC 800D0ABC 00000000 */   nop
endlabel func_800D0A78
