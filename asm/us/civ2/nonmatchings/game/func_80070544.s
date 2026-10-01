.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80070544, 0x60

glabel func_80070544
    /* 60D44 80070544 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 60D48 80070548 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 60D4C 8007054C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 60D50 80070550 1400B1AF */  sw         $s1, 0x14($sp)
    /* 60D54 80070554 1000B0AF */  sw         $s0, 0x10($sp)
    /* 60D58 80070558 21888000 */  addu       $s1, $a0, $zero
    /* 60D5C 8007055C 21800000 */  addu       $s0, $zero, $zero
    /* 60D60 80070560 01001224 */  addiu      $s2, $zero, 0x1
  .L80070564:
    /* 60D64 80070564 798A030C */  jal        func_800E29E4
    /* 60D68 80070568 21202002 */   addu      $a0, $s1, $zero
    /* 60D6C 8007056C 03005214 */  bne        $v0, $s2, .L8007057C
    /* 60D70 80070570 01001026 */   addiu     $s0, $s0, 0x1
    /* 60D74 80070574 62C10108 */  j          .L80070588
    /* 60D78 80070578 21100000 */   addu      $v0, $zero, $zero
  .L8007057C:
    /* 60D7C 8007057C 1400022A */  slti       $v0, $s0, 0x14
    /* 60D80 80070580 F8FF4014 */  bnez       $v0, .L80070564
    /* 60D84 80070584 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L80070588:
    /* 60D88 80070588 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 60D8C 8007058C 1800B28F */  lw         $s2, 0x18($sp)
    /* 60D90 80070590 1400B18F */  lw         $s1, 0x14($sp)
    /* 60D94 80070594 1000B08F */  lw         $s0, 0x10($sp)
    /* 60D98 80070598 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 60D9C 8007059C 0800E003 */  jr         $ra
    /* 60DA0 800705A0 00000000 */   nop
endlabel func_80070544
