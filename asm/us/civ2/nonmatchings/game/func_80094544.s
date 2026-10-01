.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80094544, 0x4C

glabel func_80094544
    /* 84D44 80094544 58FFBD27 */  addiu      $sp, $sp, -0xA8
    /* 84D48 80094548 A000BFAF */  sw         $ra, 0xA0($sp)
    /* 84D4C 8009454C 21288000 */  addu       $a1, $a0, $zero
    /* 84D50 80094550 4651020C */  jal        func_80094518
    /* 84D54 80094554 1000A427 */   addiu     $a0, $sp, 0x10
    /* 84D58 80094558 1000A427 */  addiu      $a0, $sp, 0x10
    /* 84D5C 8009455C 87F4030C */  jal        func_800FD21C
    /* 84D60 80094560 9800A527 */   addiu     $a1, $sp, 0x98
    /* 84D64 80094564 00140200 */  sll        $v0, $v0, 16
    /* 84D68 80094568 05004010 */  beqz       $v0, .L80094580
    /* 84D6C 8009456C 21100000 */   addu      $v0, $zero, $zero
    /* 84D70 80094570 9800A48F */  lw         $a0, 0x98($sp)
    /* 84D74 80094574 CFF6030C */  jal        func_800FDB3C
    /* 84D78 80094578 00000000 */   nop
    /* 84D7C 8009457C 9800A28F */  lw         $v0, 0x98($sp)
  .L80094580:
    /* 84D80 80094580 A000BF8F */  lw         $ra, 0xA0($sp)
    /* 84D84 80094584 A800BD27 */  addiu      $sp, $sp, 0xA8
    /* 84D88 80094588 0800E003 */  jr         $ra
    /* 84D8C 8009458C 00000000 */   nop
endlabel func_80094544
