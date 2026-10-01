.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

nonmatching func_800C6728, 0xAC

glabel func_800C6728
    /* B6F28 800C6728 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B6F2C 800C672C 1280043C */  lui        $a0, %hi(D_8012109C)
    /* B6F30 800C6730 9C10848C */  lw         $a0, %lo(D_8012109C)($a0)
    /* B6F34 800C6734 0180023C */  lui        $v0, %hi(D_80012658)
    /* B6F38 800C6738 58264224 */  addiu      $v0, $v0, %lo(D_80012658)
    /* B6F3C 800C673C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B6F40 800C6740 1280103C */  lui        $s0, %hi(D_80120D84)
    /* B6F44 800C6744 840D1026 */  addiu      $s0, $s0, %lo(D_80120D84)
    /* B6F48 800C6748 1400B1AF */  sw         $s1, 0x14($sp)
    /* B6F4C 800C674C 1800BFAF */  sw         $ra, 0x18($sp)
    /* B6F50 800C6750 1280013C */  lui        $at, %hi(D_80120DAC)
    /* B6F54 800C6754 AC0D22AC */  sw         $v0, %lo(D_80120DAC)($at)
    /* B6F58 800C6758 03008010 */  beqz       $a0, .L800C6768
    /* B6F5C 800C675C 04031126 */   addiu     $s1, $s0, 0x304
    /* B6F60 800C6760 435D020C */  jal        func_8009750C
    /* B6F64 800C6764 00000000 */   nop
  .L800C6768:
    /* B6F68 800C6768 21202002 */  addu       $a0, $s1, $zero
    /* B6F6C 800C676C D5D8030C */  jal        func_800F6354
    /* B6F70 800C6770 02000524 */   addiu     $a1, $zero, 0x2
    /* B6F74 800C6774 D8020426 */  addiu      $a0, $s0, 0x2D8
    /* B6F78 800C6778 1BDA030C */  jal        func_800F686C
    /* B6F7C 800C677C 02000524 */   addiu     $a1, $zero, 0x2
    /* B6F80 800C6780 AC020426 */  addiu      $a0, $s0, 0x2AC
    /* B6F84 800C6784 1BDA030C */  jal        func_800F686C
    /* B6F88 800C6788 02000524 */   addiu     $a1, $zero, 0x2
    /* B6F8C 800C678C 80020426 */  addiu      $a0, $s0, 0x280
    /* B6F90 800C6790 1BDA030C */  jal        func_800F686C
    /* B6F94 800C6794 02000524 */   addiu     $a1, $zero, 0x2
    /* B6F98 800C6798 54020426 */  addiu      $a0, $s0, 0x254
    /* B6F9C 800C679C 1BDA030C */  jal        func_800F686C
    /* B6FA0 800C67A0 02000524 */   addiu     $a1, $zero, 0x2
    /* B6FA4 800C67A4 28020426 */  addiu      $a0, $s0, 0x228
    /* B6FA8 800C67A8 4CE1030C */  jal        func_800F8530
    /* B6FAC 800C67AC 02000524 */   addiu     $a1, $zero, 0x2
    /* B6FB0 800C67B0 21200002 */  addu       $a0, $s0, $zero
    /* B6FB4 800C67B4 D74A020C */  jal        func_80092B5C
    /* B6FB8 800C67B8 02000524 */   addiu     $a1, $zero, 0x2
    /* B6FBC 800C67BC 1800BF8F */  lw         $ra, 0x18($sp)
    /* B6FC0 800C67C0 1400B18F */  lw         $s1, 0x14($sp)
    /* B6FC4 800C67C4 1000B08F */  lw         $s0, 0x10($sp)
    /* B6FC8 800C67C8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* B6FCC 800C67CC 0800E003 */  jr         $ra
    /* B6FD0 800C67D0 00000000 */   nop
endlabel func_800C6728
