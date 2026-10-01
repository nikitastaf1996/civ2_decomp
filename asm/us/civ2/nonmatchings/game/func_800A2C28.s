.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A2C28, 0x54

glabel func_800A2C28
    /* 93428 800A2C28 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 9342C 800A2C2C 1800BFAF */  sw         $ra, 0x18($sp)
    /* 93430 800A2C30 1400B1AF */  sw         $s1, 0x14($sp)
    /* 93434 800A2C34 1000B0AF */  sw         $s0, 0x10($sp)
    /* 93438 800A2C38 1189020C */  jal        func_800A2444
    /* 9343C 800A2C3C 2188C000 */   addu      $s1, $a2, $zero
    /* 93440 800A2C40 21804000 */  addu       $s0, $v0, $zero
    /* 93444 800A2C44 07000012 */  beqz       $s0, .L800A2C64
    /* 93448 800A2C48 00000000 */   nop
    /* 9344C 800A2C4C 0000048E */  lw         $a0, 0x0($s0)
    /* 93450 800A2C50 A587030C */  jal        func_800E1E94
    /* 93454 800A2C54 21282002 */   addu      $a1, $s1, $zero
    /* 93458 800A2C58 0000048E */  lw         $a0, 0x0($s0)
    /* 9345C 800A2C5C 6889020C */  jal        func_800A25A0
    /* 93460 800A2C60 00000000 */   nop
  .L800A2C64:
    /* 93464 800A2C64 1800BF8F */  lw         $ra, 0x18($sp)
    /* 93468 800A2C68 1400B18F */  lw         $s1, 0x14($sp)
    /* 9346C 800A2C6C 1000B08F */  lw         $s0, 0x10($sp)
    /* 93470 800A2C70 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 93474 800A2C74 0800E003 */  jr         $ra
    /* 93478 800A2C78 00000000 */   nop
endlabel func_800A2C28
