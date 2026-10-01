.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80095D0C, 0x54

glabel func_80095D0C
    /* 8650C 80095D0C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 86510 80095D10 1400BFAF */  sw         $ra, 0x14($sp)
    /* 86514 80095D14 1000B0AF */  sw         $s0, 0x10($sp)
    /* 86518 80095D18 27D9030C */  jal        func_800F649C
    /* 8651C 80095D1C 21808000 */   addu      $s0, $a0, $zero
    /* 86520 80095D20 03000324 */  addiu      $v1, $zero, 0x3
    /* 86524 80095D24 09004310 */  beq        $v0, $v1, .L80095D4C
    /* 86528 80095D28 00000000 */   nop
    /* 8652C 80095D2C 2AD9030C */  jal        func_800F64A8
    /* 86530 80095D30 21200002 */   addu      $a0, $s0, $zero
    /* 86534 80095D34 05004010 */  beqz       $v0, .L80095D4C
    /* 86538 80095D38 00000000 */   nop
    /* 8653C 80095D3C 2AD9030C */  jal        func_800F64A8
    /* 86540 80095D40 21200002 */   addu      $a0, $s0, $zero
    /* 86544 80095D44 9619040C */  jal        func_80106658
    /* 86548 80095D48 21204000 */   addu      $a0, $v0, $zero
  .L80095D4C:
    /* 8654C 80095D4C 1400BF8F */  lw         $ra, 0x14($sp)
    /* 86550 80095D50 1000B08F */  lw         $s0, 0x10($sp)
    /* 86554 80095D54 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 86558 80095D58 0800E003 */  jr         $ra
    /* 8655C 80095D5C 00000000 */   nop
endlabel func_80095D0C
