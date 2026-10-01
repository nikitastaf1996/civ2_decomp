.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80092E04, 0xD0

glabel func_80092E04
    /* 83604 80092E04 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 83608 80092E08 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 8360C 80092E0C 2800B2AF */  sw         $s2, 0x28($sp)
    /* 83610 80092E10 2400B1AF */  sw         $s1, 0x24($sp)
    /* 83614 80092E14 2000B0AF */  sw         $s0, 0x20($sp)
    /* 83618 80092E18 21808000 */  addu       $s0, $a0, $zero
    /* 8361C 80092E1C 2188A000 */  addu       $s1, $a1, $zero
    /* 83620 80092E20 3E82030C */  jal        __builtin_new
    /* 83624 80092E24 580B0424 */   addiu     $a0, $zero, 0xB58
    /* 83628 80092E28 B54B020C */  jal        func_80092ED4
    /* 8362C 80092E2C 21204000 */   addu      $a0, $v0, $zero
    /* 83630 80092E30 659F020C */  jal        func_800A7D94
    /* 83634 80092E34 21904000 */   addu      $s2, $v0, $zero
    /* 83638 80092E38 00841000 */  sll        $s0, $s0, 16
    /* 8363C 80092E3C 008C1100 */  sll        $s1, $s1, 16
    /* 83640 80092E40 21204002 */  addu       $a0, $s2, $zero
    /* 83644 80092E44 032C1000 */  sra        $a1, $s0, 16
    /* 83648 80092E48 364C020C */  jal        func_800930D8
    /* 8364C 80092E4C 03341100 */   sra       $a2, $s1, 16
    /* 83650 80092E50 00140200 */  sll        $v0, $v0, 16
    /* 83654 80092E54 03004010 */  beqz       $v0, .L80092E64
    /* 83658 80092E58 00000000 */   nop
    /* 8365C 80092E5C 824D020C */  jal        func_80093608
    /* 83660 80092E60 21204002 */   addu      $a0, $s2, $zero
  .L80092E64:
    /* 83664 80092E64 03004012 */  beqz       $s2, .L80092E74
    /* 83668 80092E68 21204002 */   addu      $a0, $s2, $zero
    /* 8366C 80092E6C 054C020C */  jal        func_80093014
    /* 83670 80092E70 03000524 */   addiu     $a1, $zero, 0x3
  .L80092E74:
    /* 83674 80092E74 1800A0A7 */  sh         $zero, 0x18($sp)
    /* 83678 80092E78 20000224 */  addiu      $v0, $zero, 0x20
    /* 8367C 80092E7C 1A00A2A7 */  sh         $v0, 0x1A($sp)
    /* 83680 80092E80 40010224 */  addiu      $v0, $zero, 0x140
    /* 83684 80092E84 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* 83688 80092E88 D0000224 */  addiu      $v0, $zero, 0xD0
    /* 8368C 80092E8C 1E00A2A7 */  sh         $v0, 0x1E($sp)
    /* 83690 80092E90 1000A0AF */  sw         $zero, 0x10($sp)
    /* 83694 80092E94 1800A427 */  addiu      $a0, $sp, 0x18
    /* 83698 80092E98 A0000524 */  addiu      $a1, $zero, 0xA0
    /* 8369C 80092E9C 78000624 */  addiu      $a2, $zero, 0x78
    /* 836A0 80092EA0 011D040C */  jal        func_80107404
    /* 836A4 80092EA4 401F0724 */   addiu     $a3, $zero, 0x1F40
    /* 836A8 80092EA8 B31E040C */  jal        func_80107ACC
    /* 836AC 80092EAC 00000000 */   nop
    /* 836B0 80092EB0 AE9F020C */  jal        func_800A7EB8
    /* 836B4 80092EB4 00000000 */   nop
    /* 836B8 80092EB8 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 836BC 80092EBC 2800B28F */  lw         $s2, 0x28($sp)
    /* 836C0 80092EC0 2400B18F */  lw         $s1, 0x24($sp)
    /* 836C4 80092EC4 2000B08F */  lw         $s0, 0x20($sp)
    /* 836C8 80092EC8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 836CC 80092ECC 0800E003 */  jr         $ra
    /* 836D0 80092ED0 00000000 */   nop
endlabel func_80092E04
