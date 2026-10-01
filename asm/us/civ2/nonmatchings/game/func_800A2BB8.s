.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800A2BB8, 0x70

glabel func_800A2BB8
    /* 933B8 800A2BB8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 933BC 800A2BBC 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 933C0 800A2BC0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 933C4 800A2BC4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 933C8 800A2BC8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 933CC 800A2BCC 21888000 */  addu       $s1, $a0, $zero
    /* 933D0 800A2BD0 D988020C */  jal        func_800A2364
    /* 933D4 800A2BD4 2190C000 */   addu      $s2, $a2, $zero
    /* 933D8 800A2BD8 0C004010 */  beqz       $v0, .L800A2C0C
    /* 933DC 800A2BDC 00000000 */   nop
    /* 933E0 800A2BE0 1800508C */  lw         $s0, 0x18($v0)
    /* 933E4 800A2BE4 00000000 */  nop
    /* 933E8 800A2BE8 08000012 */  beqz       $s0, .L800A2C0C
    /* 933EC 800A2BEC 21202002 */   addu      $a0, $s1, $zero
  .L800A2BF0:
    /* 933F0 800A2BF0 0400058E */  lw         $a1, 0x4($s0)
    /* 933F4 800A2BF4 9A8A020C */  jal        func_800A2A68
    /* 933F8 800A2BF8 21304002 */   addu      $a2, $s2, $zero
    /* 933FC 800A2BFC 1000108E */  lw         $s0, 0x10($s0)
    /* 93400 800A2C00 00000000 */  nop
    /* 93404 800A2C04 FAFF0016 */  bnez       $s0, .L800A2BF0
    /* 93408 800A2C08 21202002 */   addu      $a0, $s1, $zero
  .L800A2C0C:
    /* 9340C 800A2C0C 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 93410 800A2C10 1800B28F */  lw         $s2, 0x18($sp)
    /* 93414 800A2C14 1400B18F */  lw         $s1, 0x14($sp)
    /* 93418 800A2C18 1000B08F */  lw         $s0, 0x10($sp)
    /* 9341C 800A2C1C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 93420 800A2C20 0800E003 */  jr         $ra
    /* 93424 800A2C24 00000000 */   nop
endlabel func_800A2BB8
