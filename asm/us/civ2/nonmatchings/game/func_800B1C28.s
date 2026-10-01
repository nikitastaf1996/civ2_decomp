.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800B1C28, 0x50

glabel func_800B1C28
    /* A2428 800B1C28 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A242C 800B1C2C 1800BFAF */  sw         $ra, 0x18($sp)
    /* A2430 800B1C30 1400B1AF */  sw         $s1, 0x14($sp)
    /* A2434 800B1C34 1000B0AF */  sw         $s0, 0x10($sp)
    /* A2438 800B1C38 21888000 */  addu       $s1, $a0, $zero
    /* A243C 800B1C3C BCC5020C */  jal        func_800B16F0
    /* A2440 800B1C40 2180A000 */   addu      $s0, $a1, $zero
    /* A2444 800B1C44 DC52020C */  jal        func_80094B70
    /* A2448 800B1C48 98012426 */   addiu     $a0, $s1, 0x198
    /* A244C 800B1C4C 01001032 */  andi       $s0, $s0, 0x1
    /* A2450 800B1C50 03000012 */  beqz       $s0, .L800B1C60
    /* A2454 800B1C54 00000000 */   nop
    /* A2458 800B1C58 3582030C */  jal        __builtin_delete
    /* A245C 800B1C5C 21202002 */   addu      $a0, $s1, $zero
  .L800B1C60:
    /* A2460 800B1C60 1800BF8F */  lw         $ra, 0x18($sp)
    /* A2464 800B1C64 1400B18F */  lw         $s1, 0x14($sp)
    /* A2468 800B1C68 1000B08F */  lw         $s0, 0x10($sp)
    /* A246C 800B1C6C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* A2470 800B1C70 0800E003 */  jr         $ra
    /* A2474 800B1C74 00000000 */   nop
endlabel func_800B1C28
