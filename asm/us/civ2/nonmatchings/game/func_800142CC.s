.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800142CC, 0x74

glabel func_800142CC
    /* 4ACC 800142CC E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 4AD0 800142D0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 4AD4 800142D4 21888000 */  addu       $s1, $a0, $zero
    /* 4AD8 800142D8 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 4ADC 800142DC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 4AE0 800142E0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 4AE4 800142E4 00002492 */  lbu        $a0, 0x0($s1)
    /* 4AE8 800142E8 00000000 */  nop
    /* 4AEC 800142EC 0D008010 */  beqz       $a0, .L80014324
    /* 4AF0 800142F0 0A001224 */   addiu     $s2, $zero, 0xA
    /* 4AF4 800142F4 FF009030 */  andi       $s0, $a0, 0xFF
  .L800142F8:
    /* 4AF8 800142F8 03001216 */  bne        $s0, $s2, .L80014308
    /* 4AFC 800142FC 00000000 */   nop
    /* 4B00 80014300 B150000C */  jal        func_800142C4
    /* 4B04 80014304 0D000424 */   addiu     $a0, $zero, 0xD
  .L80014308:
    /* 4B08 80014308 B150000C */  jal        func_800142C4
    /* 4B0C 8001430C 21200002 */   addu      $a0, $s0, $zero
    /* 4B10 80014310 01003126 */  addiu      $s1, $s1, 0x1
    /* 4B14 80014314 00002492 */  lbu        $a0, 0x0($s1)
    /* 4B18 80014318 00000000 */  nop
    /* 4B1C 8001431C F6FF8014 */  bnez       $a0, .L800142F8
    /* 4B20 80014320 FF009030 */   andi      $s0, $a0, 0xFF
  .L80014324:
    /* 4B24 80014324 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 4B28 80014328 1800B28F */  lw         $s2, 0x18($sp)
    /* 4B2C 8001432C 1400B18F */  lw         $s1, 0x14($sp)
    /* 4B30 80014330 1000B08F */  lw         $s0, 0x10($sp)
    /* 4B34 80014334 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 4B38 80014338 0800E003 */  jr         $ra
    /* 4B3C 8001433C 00000000 */   nop
endlabel func_800142CC
