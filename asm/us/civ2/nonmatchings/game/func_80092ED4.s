.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_80092ED4, 0x140

glabel func_80092ED4
    /* 836D4 80092ED4 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 836D8 80092ED8 1400BFAF */  sw         $ra, 0x14($sp)
    /* 836DC 80092EDC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 836E0 80092EE0 9AE0030C */  jal        func_800F8268
    /* 836E4 80092EE4 21808000 */   addu      $s0, $a0, $zero
    /* 836E8 80092EE8 EFE9030C */  jal        func_800FA7BC
    /* 836EC 80092EEC 2C000426 */   addiu     $a0, $s0, 0x2C
    /* 836F0 80092EF0 3C0000AE */  sw         $zero, 0x3C($s0)
    /* 836F4 80092EF4 400000AE */  sw         $zero, 0x40($s0)
    /* 836F8 80092EF8 440000AE */  sw         $zero, 0x44($s0)
    /* 836FC 80092EFC 480000AE */  sw         $zero, 0x48($s0)
    /* 83700 80092F00 4C0000AE */  sw         $zero, 0x4C($s0)
    /* 83704 80092F04 500000AE */  sw         $zero, 0x50($s0)
    /* 83708 80092F08 540000AE */  sw         $zero, 0x54($s0)
    /* 8370C 80092F0C 580000AE */  sw         $zero, 0x58($s0)
    /* 83710 80092F10 5C0000AE */  sw         $zero, 0x5C($s0)
    /* 83714 80092F14 600000AE */  sw         $zero, 0x60($s0)
    /* 83718 80092F18 640000AE */  sw         $zero, 0x64($s0)
    /* 8371C 80092F1C 680000AE */  sw         $zero, 0x68($s0)
    /* 83720 80092F20 6C0000AE */  sw         $zero, 0x6C($s0)
    /* 83724 80092F24 700000AE */  sw         $zero, 0x70($s0)
    /* 83728 80092F28 740000AE */  sw         $zero, 0x74($s0)
    /* 8372C 80092F2C 780000AE */  sw         $zero, 0x78($s0)
    /* 83730 80092F30 7C0000AE */  sw         $zero, 0x7C($s0)
    /* 83734 80092F34 800000AE */  sw         $zero, 0x80($s0)
    /* 83738 80092F38 840000AE */  sw         $zero, 0x84($s0)
    /* 8373C 80092F3C 880000AE */  sw         $zero, 0x88($s0)
    /* 83740 80092F40 8C0000AE */  sw         $zero, 0x8C($s0)
    /* 83744 80092F44 900000AE */  sw         $zero, 0x90($s0)
    /* 83748 80092F48 940000AE */  sw         $zero, 0x94($s0)
    /* 8374C 80092F4C 980000A6 */  sh         $zero, 0x98($s0)
    /* 83750 80092F50 9A0000A6 */  sh         $zero, 0x9A($s0)
    /* 83754 80092F54 00400224 */  addiu      $v0, $zero, 0x4000
    /* 83758 80092F58 9C0002A6 */  sh         $v0, 0x9C($s0)
    /* 8375C 80092F5C 9E0002A6 */  sh         $v0, 0x9E($s0)
    /* 83760 80092F60 A60000A6 */  sh         $zero, 0xA6($s0)
    /* 83764 80092F64 A80000A6 */  sh         $zero, 0xA8($s0)
    /* 83768 80092F68 A00000A6 */  sh         $zero, 0xA0($s0)
    /* 8376C 80092F6C 01000224 */  addiu      $v0, $zero, 0x1
    /* 83770 80092F70 A20002A6 */  sh         $v0, 0xA2($s0)
    /* 83774 80092F74 A40002A6 */  sh         $v0, 0xA4($s0)
    /* 83778 80092F78 B00000AE */  sw         $zero, 0xB0($s0)
    /* 8377C 80092F7C B40000AE */  sw         $zero, 0xB4($s0)
    /* 83780 80092F80 B80000AE */  sw         $zero, 0xB8($s0)
    /* 83784 80092F84 01000224 */  addiu      $v0, $zero, 0x1
    /* 83788 80092F88 BC0002A2 */  sb         $v0, 0xBC($s0)
    /* 8378C 80092F8C 0180023C */  lui        $v0, %hi(D_800138BC)
    /* 83790 80092F90 BC384224 */  addiu      $v0, $v0, %lo(D_800138BC)
    /* 83794 80092F94 280002AE */  sw         $v0, 0x28($s0)
    /* 83798 80092F98 B00000AE */  sw         $zero, 0xB0($s0)
    /* 8379C 80092F9C C00000AE */  sw         $zero, 0xC0($s0)
    /* 837A0 80092FA0 280002AE */  sw         $v0, 0x28($s0)
    /* 837A4 80092FA4 43D7030C */  jal        func_800F5D0C
    /* 837A8 80092FA8 C4000426 */   addiu     $a0, $s0, 0xC4
    /* 837AC 80092FAC 4C020426 */  addiu      $a0, $s0, 0x24C
    /* 837B0 80092FB0 ADC5020C */  jal        func_800B16B4
    /* 837B4 80092FB4 00200524 */   addiu     $a1, $zero, 0x2000
    /* 837B8 80092FB8 E80400AE */  sw         $zero, 0x4E8($s0)
    /* 837BC 80092FBC 0DDA030C */  jal        func_800F6834
    /* 837C0 80092FC0 500A0426 */   addiu     $a0, $s0, 0xA50
    /* 837C4 80092FC4 0DDA030C */  jal        func_800F6834
    /* 837C8 80092FC8 7C0A0426 */   addiu     $a0, $s0, 0xA7C
    /* 837CC 80092FCC 0DDA030C */  jal        func_800F6834
    /* 837D0 80092FD0 A80A0426 */   addiu     $a0, $s0, 0xAA8
    /* 837D4 80092FD4 0DDA030C */  jal        func_800F6834
    /* 837D8 80092FD8 D40A0426 */   addiu     $a0, $s0, 0xAD4
    /* 837DC 80092FDC 0DDA030C */  jal        func_800F6834
    /* 837E0 80092FE0 000B0426 */   addiu     $a0, $s0, 0xB00
    /* 837E4 80092FE4 0DDA030C */  jal        func_800F6834
    /* 837E8 80092FE8 2C0B0426 */   addiu     $a0, $s0, 0xB2C
    /* 837EC 80092FEC B0000224 */  addiu      $v0, $zero, 0xB0
    /* 837F0 80092FF0 460A02A6 */  sh         $v0, 0xA46($s0)
    /* 837F4 80092FF4 180500A6 */  sh         $zero, 0x518($s0)
    /* 837F8 80092FF8 1C0490AF */  sw         $s0, %gp_rel(D_801588F4)($gp)
    /* 837FC 80092FFC 21100002 */  addu       $v0, $s0, $zero
    /* 83800 80093000 1400BF8F */  lw         $ra, 0x14($sp)
    /* 83804 80093004 1000B08F */  lw         $s0, 0x10($sp)
    /* 83808 80093008 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 8380C 8009300C 0800E003 */  jr         $ra
    /* 83810 80093010 00000000 */   nop
endlabel func_80092ED4
