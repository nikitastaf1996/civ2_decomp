.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80095D60, 0x90

glabel func_80095D60
    /* 86560 80095D60 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 86564 80095D64 2000BFAF */  sw         $ra, 0x20($sp)
    /* 86568 80095D68 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 8656C 80095D6C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 86570 80095D70 1400B1AF */  sw         $s1, 0x14($sp)
    /* 86574 80095D74 1000B0AF */  sw         $s0, 0x10($sp)
    /* 86578 80095D78 21908000 */  addu       $s2, $a0, $zero
    /* 8657C 80095D7C 2198A000 */  addu       $s3, $a1, $zero
    /* 86580 80095D80 12004012 */  beqz       $s2, .L80095DCC
    /* 86584 80095D84 21880000 */   addu      $s1, $zero, $zero
    /* 86588 80095D88 FED4030C */  jal        func_800F53F8
    /* 8658C 80095D8C 1C000424 */   addiu     $a0, $zero, 0x1C
    /* 86590 80095D90 21804000 */  addu       $s0, $v0, $zero
    /* 86594 80095D94 7CD6030C */  jal        func_800F59F0
    /* 86598 80095D98 21200002 */   addu      $a0, $s0, $zero
    /* 8659C 80095D9C 21884000 */  addu       $s1, $v0, $zero
    /* 865A0 80095DA0 080020A6 */  sh         $zero, 0x8($s1)
    /* 865A4 80095DA4 000030AE */  sw         $s0, 0x0($s1)
    /* 865A8 80095DA8 040033AE */  sw         $s3, 0x4($s1)
    /* 865AC 80095DAC 0A0020A6 */  sh         $zero, 0xA($s1)
    /* 865B0 80095DB0 0C0020A6 */  sh         $zero, 0xC($s1)
    /* 865B4 80095DB4 0E0020A6 */  sh         $zero, 0xE($s1)
    /* 865B8 80095DB8 180020AE */  sw         $zero, 0x18($s1)
    /* 865BC 80095DBC 21204002 */  addu       $a0, $s2, $zero
    /* 865C0 80095DC0 21280000 */  addu       $a1, $zero, $zero
    /* 865C4 80095DC4 161C040C */  jal        func_80107058
    /* 865C8 80095DC8 21302002 */   addu      $a2, $s1, $zero
  .L80095DCC:
    /* 865CC 80095DCC 21102002 */  addu       $v0, $s1, $zero
    /* 865D0 80095DD0 2000BF8F */  lw         $ra, 0x20($sp)
    /* 865D4 80095DD4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 865D8 80095DD8 1800B28F */  lw         $s2, 0x18($sp)
    /* 865DC 80095DDC 1400B18F */  lw         $s1, 0x14($sp)
    /* 865E0 80095DE0 1000B08F */  lw         $s0, 0x10($sp)
    /* 865E4 80095DE4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 865E8 80095DE8 0800E003 */  jr         $ra
    /* 865EC 80095DEC 00000000 */   nop
endlabel func_80095D60
