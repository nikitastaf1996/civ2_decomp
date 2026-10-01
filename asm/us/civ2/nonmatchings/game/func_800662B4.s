.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800662B4, 0x78

glabel func_800662B4
    /* 56AB4 800662B4 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 56AB8 800662B8 1800BFAF */  sw         $ra, 0x18($sp)
    /* 56ABC 800662BC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 56AC0 800662C0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 56AC4 800662C4 2180A000 */  addu       $s0, $a1, $zero
    /* 56AC8 800662C8 08000006 */  bltz       $s0, .L800662EC
    /* 56ACC 800662CC 21888000 */   addu      $s1, $a0, $zero
    /* 56AD0 800662D0 1680023C */  lui        $v0, %hi(D_8015887C)
    /* 56AD4 800662D4 7C88428C */  lw         $v0, %lo(D_8015887C)($v0)
    /* 56AD8 800662D8 00000000 */  nop
    /* 56ADC 800662DC 03004014 */  bnez       $v0, .L800662EC
    /* 56AE0 800662E0 00000000 */   nop
    /* 56AE4 800662E4 731B030C */  jal        func_800C6DCC
    /* 56AE8 800662E8 01000524 */   addiu     $a1, $zero, 0x1
  .L800662EC:
    /* 56AEC 800662EC 0300001E */  bgtz       $s0, .L800662FC
    /* 56AF0 800662F0 21280002 */   addu      $a1, $s0, $zero
    /* 56AF4 800662F4 27281000 */  nor        $a1, $zero, $s0
    /* 56AF8 800662F8 0100A524 */  addiu      $a1, $a1, 0x1
  .L800662FC:
    /* 56AFC 800662FC 9C1B030C */  jal        func_800C6E70
    /* 56B00 80066300 21202002 */   addu      $a0, $s1, $zero
    /* 56B04 80066304 03000106 */  bgez       $s0, .L80066314
    /* 56B08 80066308 21202002 */   addu      $a0, $s1, $zero
    /* 56B0C 8006630C 731B030C */  jal        func_800C6DCC
    /* 56B10 80066310 21280000 */   addu      $a1, $zero, $zero
  .L80066314:
    /* 56B14 80066314 1800BF8F */  lw         $ra, 0x18($sp)
    /* 56B18 80066318 1400B18F */  lw         $s1, 0x14($sp)
    /* 56B1C 8006631C 1000B08F */  lw         $s0, 0x10($sp)
    /* 56B20 80066320 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 56B24 80066324 0800E003 */  jr         $ra
    /* 56B28 80066328 00000000 */   nop
endlabel func_800662B4
