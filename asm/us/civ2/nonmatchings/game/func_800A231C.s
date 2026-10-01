.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A231C, 0x48

glabel func_800A231C
    /* 92B1C 800A231C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 92B20 800A2320 1800BFAF */  sw         $ra, 0x18($sp)
    /* 92B24 800A2324 1400B1AF */  sw         $s1, 0x14($sp)
    /* 92B28 800A2328 1000B0AF */  sw         $s0, 0x10($sp)
    /* 92B2C 800A232C 21888000 */  addu       $s1, $a0, $zero
    /* 92B30 800A2330 DC52020C */  jal        func_80094B70
    /* 92B34 800A2334 2180A000 */   addu      $s0, $a1, $zero
    /* 92B38 800A2338 01001032 */  andi       $s0, $s0, 0x1
    /* 92B3C 800A233C 03000012 */  beqz       $s0, .L800A234C
    /* 92B40 800A2340 00000000 */   nop
    /* 92B44 800A2344 3582030C */  jal        __builtin_delete
    /* 92B48 800A2348 21202002 */   addu      $a0, $s1, $zero
  .L800A234C:
    /* 92B4C 800A234C 1800BF8F */  lw         $ra, 0x18($sp)
    /* 92B50 800A2350 1400B18F */  lw         $s1, 0x14($sp)
    /* 92B54 800A2354 1000B08F */  lw         $s0, 0x10($sp)
    /* 92B58 800A2358 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 92B5C 800A235C 0800E003 */  jr         $ra
    /* 92B60 800A2360 00000000 */   nop
endlabel func_800A231C
